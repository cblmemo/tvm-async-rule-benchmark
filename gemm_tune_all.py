import os
from util import get_mm_dirn

tasks = [
    "M=512 N=256 K=640",
    "M=512 N=384 K=256",
    "M=512 N=512 K=512",
    "M=512 N=3072 K=768",
    "M=512 N=768 K=3072",
    "M=896 N=896 K=896",
    "M=1024 N=1024 K=1024",
    "M=1152 N=1152 K=1152",
    "M=1536 N=1536 K=1536",
    "M=2048 N=2048 K=2048",
    "M=3072 N=3072 K=3072",
    "M=4096 N=4096 K=4096",
]

t = 5000

for ta in tasks:
    M, N, K = map(int, [i.split('=')[1] for i in ta.split(' ')])
    dirn = get_mm_dirn(M, N, K, t)
    print(dirn)
    os.system(f'rm -rf db/{dirn}')
    os.system(f'rm -rf outputs/{dirn}')
    os.system(f'mkdir outputs/{dirn}')
    os.system(f'python3 GemmRuleGenerate.py {M} {N} {K} {t} > outputs/{dirn}/tune_outputs.txt')
    os.system(f'python3 gemmPerf.py {M} {N} {K} {t} > outputs/{dirn}/perf_result.txt')
