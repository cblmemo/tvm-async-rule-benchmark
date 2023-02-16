import os
from util import get_conv_dirn

# from ResNet50
tasks = [
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 224, 224, 3, 64, 7, 7, 2, 3, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 56, 56, 64, 64, 1, 1, 1, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 56, 56, 64, 64, 3, 3, 1, 1, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 56, 56, 64, 256, 1, 1, 1, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 56, 56, 256, 64, 1, 1, 1, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 56, 56, 256, 128, 1, 1, 2, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 28, 28, 128, 128, 3, 3, 1, 1, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 28, 28, 128, 512, 1, 1, 1, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 28, 28, 512, 128, 1, 1, 1, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 28, 28, 512, 256, 1, 1, 2, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 14, 14, 256, 256, 3, 3, 1, 1, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 14, 14, 256, 1024, 1, 1, 1, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 14, 14, 1024, 256, 1, 1, 1, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 14, 14, 1024, 512, 1, 1, 2, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 7, 7, 512, 512, 3, 3, 1, 1, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 7, 7, 512, 2048, 1, 1, 1, 0, 1",
    "N, H, W, C, K, R, S, STR, PAD, DIL = 1, 7, 7, 2048, 512, 1, 1, 1, 0, 1",
]

t = 5000

for ta in tasks:
    N, H, W, C, K, R, S, STR, PAD, DIL = map(int, ta.split(" = ")[1].split(", "))
    dirn = get_conv_dirn(N, H, W, C, K, R, S, STR, PAD, DIL, t)
    print(dirn)
    os.system(f"rm -rf db/{dirn}")
    os.system(f"rm -rf outputs/{dirn}")
    os.system(f"mkdir outputs/{dirn}")
    os.system(
        f"python3 -B Conv2dRuleGenerate.py {N} {H} {W} {C} {K} {R} {S} {STR} {PAD} {DIL} {t}"
        f" > outputs/{dirn}/tune_outputs.txt"
    )
    os.system(
        f"python3 -B convPerf.py {N} {H} {W} {C} {K} {R} {S} {STR} {PAD} {DIL} {t}"
        f" > outputs/{dirn}/perf_result.txt"
    )
