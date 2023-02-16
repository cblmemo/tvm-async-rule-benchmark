import sys
import os
import numpy as np
import traceback

import tvm
import tvm.testing
from tvm import te, topi
from tvm import meta_schedule as ms
from tvm.ir.module import IRModule
from tvm.target import Target

from typing import Callable, Dict, List, Optional, Union
from tvm.meta_schedule.builder import LocalBuilder
from tvm.runtime import NDArray, Module
from tvm._ffi import register_func

from conv_utils import create_conv_workload
from util import get_conv_dirn

sys.dont_write_bytecode = True

N, H, W, C, K, R, S, STR, PAD, DIL, t = map(int, sys.argv[1:])
dirn = get_conv_dirn(N, H, W, C, K, R, S, STR, PAD, DIL, t)

assert R == S
conv_workload = create_conv_workload(N, H, W, C, K, R, S, STR, PAD, DIL)
ConvModule = tvm.IRModule({"main": conv_workload.with_attr({"global_symbol": "main"})})

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
    mod=ConvModule,
    target="nvidia/geforce-rtx-3080",
    work_dir=f"./db/{dirn}",
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
sch = db.query_schedule(ConvModule, target=Target("nvidia/geforce-rtx-3080"), workload_name="main")

with open(f"outputs/{dirn}/script.py", "w") as f:
    print(sch.mod.script(), file=f)
with open(f"outputs/{dirn}/lower.py", "w") as f:
    print(tvm.lower(sch.mod).script(), file=f)
with open(f"outputs/{dirn}/trace.py", "w") as f:
    print(sch.trace, file=f)
with tvm.transform.PassContext(config={"tir.use_async_copy": 1}):
    rt_mod = tvm.build(sch.mod, target="cuda")
with open(f"outputs/{dirn}/cuda.cu", "w") as f:
    print(rt_mod.imported_modules[0].get_source(), file=f)