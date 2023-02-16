## Current Results

Tested under commit `afbfb7aa7e43732cb716f8e443df696110be6afc`.

Workload: Conv2d NHWC

|Shape|Mainline TVM|Mainline TVM with Async|
|-|-|-|
|N=1_H=224_W=224_C=3_K=64_R=7_S=7_STR=2_PAD=3_DIL=1|13838.05219|14687.89452|
|N=1_H=56_W=56_C=64_K=64_R=1_S=1_STR=1_PAD=0_DIL=1|5398.305085|5613.892553|
|N=1_H=56_W=56_C=64_K=64_R=3_S=3_STR=1_PAD=1_DIL=1|11652.96825|13157.88249|
|N=1_H=56_W=56_C=64_K=256_R=1_S=1_STR=1_PAD=0_DIL=1|10638.8309|11674.68499|
|N=1_H=56_W=56_C=256_K=64_R=1_S=1_STR=1_PAD=0_DIL=1|8692.32829|9469.264089|
|N=1_H=56_W=56_C=256_K=128_R=1_S=1_STR=2_PAD=0_DIL=1|4685.767442|5698.19634|
|N=1_H=28_W=28_C=128_K=128_R=3_S=3_STR=1_PAD=1_DIL=1|9872.787087|10404.60405|
|N=1_H=28_W=28_C=128_K=512_R=1_S=1_STR=1_PAD=0_DIL=1|9974.281496|10073.31657|
|N=1_H=28_W=28_C=512_K=128_R=1_S=1_STR=1_PAD=0_DIL=1|7075.866932|8564.572712|
|N=1_H=28_W=28_C=512_K=256_R=1_S=1_STR=2_PAD=0_DIL=1|3648.330914|4021.923142|
|N=1_H=14_W=14_C=256_K=256_R=3_S=3_STR=1_PAD=1_DIL=1|8192.954618|9160.182054|
|N=1_H=14_W=14_C=256_K=1024_R=1_S=1_STR=1_PAD=0_DIL=1|8008.870153|9362.825279|
|N=1_H=14_W=14_C=1024_K=256_R=1_S=1_STR=1_PAD=0_DIL=1|5210.062241|6051.208379|
|N=1_H=14_W=14_C=1024_K=512_R=1_S=1_STR=2_PAD=0_DIL=1|2550.787202|3587.902938|
|N=1_H=7_W=7_C=512_K=512_R=3_S=3_STR=1_PAD=1_DIL=1|4350.626084|5432.788068|
|N=1_H=7_W=7_C=512_K=2048_R=1_S=1_STR=1_PAD=0_DIL=1|6672.068026|7663.725217|
|N=1_H=7_W=7_C=2048_K=512_R=1_S=1_STR=1_PAD=0_DIL=1|3142.564263|4297.988014|