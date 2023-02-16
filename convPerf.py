import os, time, sys
from tvm.tir import Schedule

from util import get_conv_dirn
from conv_utils import create_conv_workload, eval_conv_sch

sys.dont_write_bytecode = True

N, H, W, C, K, R, S, STR, PAD, DIL, t = map(int, sys.argv[1:])
dirn = get_conv_dirn(N, H, W, C, K, R, S, STR, PAD, DIL, t)

mod = create_conv_workload(N, H, W, C, K, R, S, STR, PAD, DIL)
sch = Schedule(mod)
os.system(f"cp outputs/{dirn}/trace.py sch_trace.py")

with open("sch_trace.py", "r+") as f:
    content = f.read()
    f.seek(0, 0)
    f.write("from tvm import tir\nfrom tvm.tir import floordiv, floormod\n" + content)
time.sleep(1)

from sch_trace import apply_trace

apply_trace(sch)
eval_conv_sch(sch, N, H, W, C, K, R, S, STR, PAD, DIL)
