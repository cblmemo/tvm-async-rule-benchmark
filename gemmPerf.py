import sys
import os
import numpy as np
import traceback
import importlib

import tvm
import tvm.testing
from tvm import te
from tvm import meta_schedule as ms
from tvm.ir.module import IRModule
from tvm.target import Target
from tvm.tir import Schedule

from typing import Callable, Dict, List, Optional, Union
from tvm.meta_schedule.builder import LocalBuilder
from tvm.runtime import NDArray, Module
from tvm._ffi import register_func

from util import get_mm_dirn

M = int(sys.argv[1])
N = int(sys.argv[2])
K = int(sys.argv[3])
t = int(sys.argv[4])

A = te.placeholder((M, K), "float32", name="A")
B = te.placeholder((K, N), "float32", name="B")
k = te.reduce_axis((0, K), name="k")
Y = te.compute((M, N), lambda i, j: te.sum(A[i, k] * B[k, j], axis=k), name="Y")
GemmFunc = te.create_prim_func([A, B, Y]).with_attr({"global_symbol": "main"})
GemmModule = tvm.IRModule({"main": GemmFunc})

sch = Schedule(GemmModule)

with open(f'outputs/{get_mm_dirn(M, N, K, t)}/trace.py', 'r+') as f:
    old = f.read()
    f.seek(0)
    f.write('from tvm import tir\nfrom tvm.tir import floordiv, floormod\n')
    f.write(old)

trace_module = importlib.import_module(f'outputs.{get_mm_dirn(M, N, K, t)}.trace')
method = getattr(trace_module, 'apply_trace')
method(sch)

with tvm.transform.PassContext(config={"tir.use_async_copy": 1}):
    rt_mod = tvm.build(sch.mod, target="cuda")

a_np = np.random.rand(M, K).astype(A.dtype)
b_np = np.random.rand(K, N).astype(B.dtype)
c_np = a_np @ b_np
a_tvm = tvm.nd.array(a_np, device=tvm.cuda(0))
b_tvm = tvm.nd.array(b_np, device=tvm.cuda(0))
c_tvm = tvm.nd.array(np.empty((M, N)).astype(Y.dtype), device=tvm.cuda(0))
rt_mod(a_tvm, b_tvm, c_tvm)
assert np.allclose(c_tvm.numpy(), c_np)

time_f = rt_mod.time_evaluator(rt_mod.entry_name, dev=tvm.cuda(0), number=100)
time = time_f(a_tvm, b_tvm, c_tvm).mean

flop = (M * N * K + M * N) * 2
print("GFLOPS: %.2f" % (flop / time / 1e9))