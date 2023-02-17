import sys
import os
import numpy as np
import traceback

import tvm
import tvm.testing
from tvm import te
from tvm import meta_schedule as ms
from tvm.ir.module import IRModule
from tvm.target import Target

from typing import Callable, Dict, List, Optional, Union
from tvm.meta_schedule.builder import LocalBuilder
from tvm.runtime import NDArray, Module
from tvm._ffi import register_func

from util import get_mm_dirn


M = int(sys.argv[1])
N = int(sys.argv[2])
K = int(sys.argv[3])
t = int(sys.argv[4])

original_block_name = "Y"

A = te.placeholder((M, K), "float32", name="A")
B = te.placeholder((K, N), "float32", name="B")
k = te.reduce_axis((0, K), name="k")
Y = te.compute((M, N), lambda i, j: te.sum(A[i, k] * B[k, j], axis=k), name=original_block_name)
GemmFunc = te.create_prim_func([A, B, Y]).with_attr({"global_symbol": "main"})
GemmModule = tvm.IRModule({"main": GemmFunc})
# exit(0)

def initializer():
    @register_func("meta_schedule.builder.async_build")
    def async_build(mod: IRModule, target: Target, _params: Optional[Dict[str, NDArray]]) -> Module:
        """Async build function.

        Parameters
        ----------
        mod : IRModule
            The IRModule to be built.
        target : Target
            The target to be built.
        _params : Optional[Dict[str, NDArray]]
            The parameters to be used for the build. Must be None.

        Returns
        -------
        rt_mod : Module
            The built Module with async copy.
        """
        # pylint: disable=import-outside-toplevel
        from tvm.driver import build as tvm_build
        from tvm.tir.transform import RemoveWeightLayoutRewriteBlock

        # pylint: enable=import-outside-toplevel
        mod = RemoveWeightLayoutRewriteBlock(skip_ndarray_rewrite=True)(mod)
        with tvm.transform.PassContext(config={"tir.use_async_copy": 1}):
            rt_mod = tvm_build(mod, target=target)
        return rt_mod

db = ms.tir_integration.tune_tir(
    mod=GemmModule,
    target="nvidia/geforce-rtx-3080",
    work_dir=f"./db/{get_mm_dirn(M, N, K, t)}",
    max_trials_global=t,
    builder=LocalBuilder(
        f_build="meta_schedule.builder.async_build",
        initializer=initializer
    ),
    runner=ms.runner.RPCRunner(  # type: ignore
        rpc_config=ms.runner.RPCConfig(
            tracker_host="172.16.2.241",
            tracker_port=4445,
            tracker_key="rtx-3080",
            session_timeout_sec=600,
        ),
        alloc_repeat=1,
    ),
)
sch = db.query_schedule(GemmModule, target=Target("nvidia/geforce-rtx-3080"), workload_name="main")

os.makedirs(f"outputs/{get_mm_dirn(M, N, K, t)}", exist_ok=True)

with open(f"outputs/{get_mm_dirn(M, N, K, t)}/script.py", "w") as f:
    print(sch.mod.script(), file=f)
with open(f"outputs/{get_mm_dirn(M, N, K, t)}/lower.py", "w") as f:
    print(tvm.lower(sch.mod).script(), file=f)
with open(f"outputs/{get_mm_dirn(M, N, K, t)}/trace.py", "w") as f:
    print(sch.trace, file=f)
with tvm.transform.PassContext(config={"tir.use_async_copy": 1}):
    rt_mod = tvm.build(sch.mod, target="cuda")
with open(f"outputs/{get_mm_dirn(M, N, K, t)}/cuda.cu", "w") as f:
    print(rt_mod.imported_modules[0].get_source(), file=f)
