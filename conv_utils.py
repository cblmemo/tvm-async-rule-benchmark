from typing import Tuple

import tvm
import numpy as np
from tvm import te, tir, topi


def conv2d_nhwc(  # pylint: disable=invalid-name,missing-docstring
    N: int,
    H: int,
    W: int,
    CI: int,
    CO: int,
    kernel_size: int,
    stride: int = 1,
    padding: int = 0,
    dilation: int = 1,
    groups: int = 1,
    in_dtype: str = "float32",
    out_dtype: str = "float32",
) -> Tuple[te.Tensor, te.Tensor, te.Tensor]:
    inputs = te.placeholder((N, H, W, CI), name="inputs", dtype=in_dtype)
    weight = te.placeholder(
        (kernel_size, kernel_size, CI // groups, CO), name="weight", dtype=in_dtype
    )
    batch_size, in_h, in_w, _ = inputs.shape
    k_h, k_w, channel_per_group, out_channel = weight.shape
    out_channel_per_group = out_channel // groups

    out_h = (in_h + 2 * padding - dilation * (k_h - 1) - 1) // stride + 1
    out_w = (in_w + 2 * padding - dilation * (k_w - 1) - 1) // stride + 1
    rh = te.reduce_axis((0, k_h), name="rh")
    rw = te.reduce_axis((0, k_w), name="rw")
    rc = te.reduce_axis((0, channel_per_group), name="rc")

    padded = topi.nn.pad(inputs, [0, padding, padding, 0])
    output = te.compute(
        (batch_size, out_h, out_w, out_channel),
        lambda n, h, w, co: te.sum(
            (
                padded[
                    n,
                    h * stride + rh * dilation,
                    w * stride + rw * dilation,
                    co // out_channel_per_group * channel_per_group + rc,
                ].astype(out_dtype)
                * weight[rh, rw, rc, co].astype(out_dtype)
            ),
            axis=[rh, rw, rc],
        ),
        name="conv2d_nhwc",
    )
    return (inputs, weight, output)


def create_conv_workload(N, H, W, C, K, R, S, STR, PAD, DIL) -> tir.PrimFunc:
    assert R == S
    return te.create_prim_func(conv2d_nhwc(N, H, W, C, K, R, STR, PAD, DIL))  # type: ignore


def eval_conv_sch(
    sch: tir.Schedule, N, H, W, C, K, R, S, STR, PAD, DIL, caption="conv2d"
):
    assert R == S
    P = ((H + 2 * PAD - R * DIL) // STR) + 1
    Q = ((W + 2 * PAD - S * DIL) // STR) + 1
    mod = sch.mod
    with tvm.transform.PassContext(config={"tir.use_async_copy": 1}):
        rt_mod = tvm.build(mod, target="cuda")
    dev = tvm.cuda(0)
    input_np = np.random.uniform(size=(N, H, W, C)).astype("float32")
    weight_np = np.random.uniform(size=(R, S, C, K)).astype("float32")
    input_nd = tvm.nd.array(input_np, dev)
    weight_nd = tvm.nd.array(weight_np, dev)
    output_nd = tvm.nd.array(np.zeros((N, P, Q, K), dtype="float32"), dev)
    gemm_m, gemm_n, gemm_k = N * P * Q, K, R * S * C
    num_flop = 2 * (gemm_m * gemm_n * gemm_k + gemm_m * gemm_n)
    evaluator = rt_mod.time_evaluator("main", dev, number=100)
    times = evaluator(input_nd, weight_nd, output_nd).mean
    GFLOPs = num_flop / times / 1e9
    print("%s time: %f ms" % (caption, (times * 1e3)))
    print("%s speed: %f GFLOPS" % (caption, GFLOPs))
    return GFLOPs, times
