# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(inputs: T.Buffer[(1, 14, 14, 1024), "float32"], weight: T.Buffer[(1, 1, 1024, 512), "float32"], conv2d_nhwc: T.Buffer[(1, 7, 7, 512), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # var definition
        threadIdx_x = T.env_thread("threadIdx.x")
        blockIdx_x = T.env_thread("blockIdx.x")
        # buffer definition
        conv2d_nhwc_1 = T.buffer_decl([25088], dtype="float32", data=conv2d_nhwc.data)
        inputs_1 = T.buffer_decl([200704], dtype="float32", data=inputs.data)
        weight_1 = T.buffer_decl([524288], dtype="float32", data=weight.data)
        # body
        T.launch_thread(blockIdx_x, 56)
        conv2d_nhwc_local = T.allocate([7], "float32", "local")
        conv2d_nhwc_local_1 = T.buffer_decl([7], dtype="float32", data=conv2d_nhwc_local, scope="local")
        PadInput_shared = T.allocate([832], "float32", "shared")
        PadInput_shared_1 = T.buffer_decl([832], dtype="float32", data=PadInput_shared, scope="shared")
        weight_shared = T.allocate([4096], "float32", "shared")
        weight_shared_1 = T.buffer_decl([4096], dtype="float32", data=weight_shared, scope="shared")
        T.launch_thread(threadIdx_x, 64)
        conv2d_nhwc_local_1[0] = T.float32(0)
        conv2d_nhwc_local_1[1] = T.float32(0)
        conv2d_nhwc_local_1[2] = T.float32(0)
        conv2d_nhwc_local_1[3] = T.float32(0)
        conv2d_nhwc_local_1[4] = T.float32(0)
        conv2d_nhwc_local_1[5] = T.float32(0)
        conv2d_nhwc_local_1[6] = T.float32(0)
        for rc_0 in T.serial(16):
            PadInput_shared_1[threadIdx_x * 4] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4]
            PadInput_shared_1[threadIdx_x * 4 + 1] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 1]
            PadInput_shared_1[threadIdx_x * 4 + 2] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 2]
            PadInput_shared_1[threadIdx_x * 4 + 3] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 3]
            PadInput_shared_1[threadIdx_x * 4 + 256] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 4096]
            PadInput_shared_1[threadIdx_x * 4 + 257] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 4097]
            PadInput_shared_1[threadIdx_x * 4 + 258] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 4098]
            PadInput_shared_1[threadIdx_x * 4 + 259] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 4099]
            PadInput_shared_1[threadIdx_x * 4 + 512] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 8192]
            PadInput_shared_1[threadIdx_x * 4 + 513] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 8193]
            PadInput_shared_1[threadIdx_x * 4 + 514] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 8194]
            PadInput_shared_1[threadIdx_x * 4 + 515] = inputs_1[blockIdx_x // 8 * 28672 + threadIdx_x // 16 * 1024 + rc_0 * 64 + threadIdx_x % 16 * 4 + 8195]
            if threadIdx_x < 16:
                PadInput_shared_1[threadIdx_x * 4 + 768] = inputs_1[blockIdx_x // 8 * 28672 + rc_0 * 64 + threadIdx_x * 4 + 12288]
            if threadIdx_x < 16:
                PadInput_shared_1[threadIdx_x * 4 + 769] = inputs_1[blockIdx_x // 8 * 28672 + rc_0 * 64 + threadIdx_x * 4 + 12289]
            if threadIdx_x < 16:
                PadInput_shared_1[threadIdx_x * 4 + 770] = inputs_1[blockIdx_x // 8 * 28672 + rc_0 * 64 + threadIdx_x * 4 + 12290]
            if threadIdx_x < 16:
                PadInput_shared_1[threadIdx_x * 4 + 771] = inputs_1[blockIdx_x // 8 * 28672 + rc_0 * 64 + threadIdx_x * 4 + 12291]
            weight_shared_1[threadIdx_x * 4:threadIdx_x * 4 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 4]
            weight_shared_1[threadIdx_x * 4 + 256:threadIdx_x * 4 + 256 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 2048:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 2048 + 4]
            weight_shared_1[threadIdx_x * 4 + 512:threadIdx_x * 4 + 512 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 4096:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 4096 + 4]
            weight_shared_1[threadIdx_x * 4 + 768:threadIdx_x * 4 + 768 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 6144:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 6144 + 4]
            weight_shared_1[threadIdx_x * 4 + 1024:threadIdx_x * 4 + 1024 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 8192:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 8192 + 4]
            weight_shared_1[threadIdx_x * 4 + 1280:threadIdx_x * 4 + 1280 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 10240:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 10240 + 4]
            weight_shared_1[threadIdx_x * 4 + 1536:threadIdx_x * 4 + 1536 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 12288:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 12288 + 4]
            weight_shared_1[threadIdx_x * 4 + 1792:threadIdx_x * 4 + 1792 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 14336:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 14336 + 4]
            weight_shared_1[threadIdx_x * 4 + 2048:threadIdx_x * 4 + 2048 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 16384:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 16384 + 4]
            weight_shared_1[threadIdx_x * 4 + 2304:threadIdx_x * 4 + 2304 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 18432:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 18432 + 4]
            weight_shared_1[threadIdx_x * 4 + 2560:threadIdx_x * 4 + 2560 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 20480:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 20480 + 4]
            weight_shared_1[threadIdx_x * 4 + 2816:threadIdx_x * 4 + 2816 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 22528:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 22528 + 4]
            weight_shared_1[threadIdx_x * 4 + 3072:threadIdx_x * 4 + 3072 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 24576:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 24576 + 4]
            weight_shared_1[threadIdx_x * 4 + 3328:threadIdx_x * 4 + 3328 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 26624:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 26624 + 4]
            weight_shared_1[threadIdx_x * 4 + 3584:threadIdx_x * 4 + 3584 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 28672:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 28672 + 4]
            weight_shared_1[threadIdx_x * 4 + 3840:threadIdx_x * 4 + 3840 + 4] = weight_1[rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 30720:rc_0 * 32768 + threadIdx_x // 16 * 512 + blockIdx_x % 8 * 64 + threadIdx_x % 16 * 4 + 30720 + 4]
            for w_3 in T.serial(7):
                cse_var_1: T.int32 = w_3 * 128
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1] * weight_shared_1[threadIdx_x]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 1] * weight_shared_1[threadIdx_x + 64]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 2] * weight_shared_1[threadIdx_x + 128]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 3] * weight_shared_1[threadIdx_x + 192]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 4] * weight_shared_1[threadIdx_x + 256]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 5] * weight_shared_1[threadIdx_x + 320]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 6] * weight_shared_1[threadIdx_x + 384]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 7] * weight_shared_1[threadIdx_x + 448]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 8] * weight_shared_1[threadIdx_x + 512]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 9] * weight_shared_1[threadIdx_x + 576]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 10] * weight_shared_1[threadIdx_x + 640]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 11] * weight_shared_1[threadIdx_x + 704]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 12] * weight_shared_1[threadIdx_x + 768]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 13] * weight_shared_1[threadIdx_x + 832]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 14] * weight_shared_1[threadIdx_x + 896]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 15] * weight_shared_1[threadIdx_x + 960]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 16] * weight_shared_1[threadIdx_x + 1024]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 17] * weight_shared_1[threadIdx_x + 1088]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 18] * weight_shared_1[threadIdx_x + 1152]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 19] * weight_shared_1[threadIdx_x + 1216]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 20] * weight_shared_1[threadIdx_x + 1280]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 21] * weight_shared_1[threadIdx_x + 1344]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 22] * weight_shared_1[threadIdx_x + 1408]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 23] * weight_shared_1[threadIdx_x + 1472]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 24] * weight_shared_1[threadIdx_x + 1536]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 25] * weight_shared_1[threadIdx_x + 1600]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 26] * weight_shared_1[threadIdx_x + 1664]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 27] * weight_shared_1[threadIdx_x + 1728]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 28] * weight_shared_1[threadIdx_x + 1792]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 29] * weight_shared_1[threadIdx_x + 1856]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 30] * weight_shared_1[threadIdx_x + 1920]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 31] * weight_shared_1[threadIdx_x + 1984]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 32] * weight_shared_1[threadIdx_x + 2048]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 33] * weight_shared_1[threadIdx_x + 2112]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 34] * weight_shared_1[threadIdx_x + 2176]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 35] * weight_shared_1[threadIdx_x + 2240]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 36] * weight_shared_1[threadIdx_x + 2304]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 37] * weight_shared_1[threadIdx_x + 2368]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 38] * weight_shared_1[threadIdx_x + 2432]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 39] * weight_shared_1[threadIdx_x + 2496]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 40] * weight_shared_1[threadIdx_x + 2560]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 41] * weight_shared_1[threadIdx_x + 2624]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 42] * weight_shared_1[threadIdx_x + 2688]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 43] * weight_shared_1[threadIdx_x + 2752]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 44] * weight_shared_1[threadIdx_x + 2816]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 45] * weight_shared_1[threadIdx_x + 2880]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 46] * weight_shared_1[threadIdx_x + 2944]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 47] * weight_shared_1[threadIdx_x + 3008]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 48] * weight_shared_1[threadIdx_x + 3072]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 49] * weight_shared_1[threadIdx_x + 3136]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 50] * weight_shared_1[threadIdx_x + 3200]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 51] * weight_shared_1[threadIdx_x + 3264]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 52] * weight_shared_1[threadIdx_x + 3328]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 53] * weight_shared_1[threadIdx_x + 3392]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 54] * weight_shared_1[threadIdx_x + 3456]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 55] * weight_shared_1[threadIdx_x + 3520]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 56] * weight_shared_1[threadIdx_x + 3584]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 57] * weight_shared_1[threadIdx_x + 3648]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 58] * weight_shared_1[threadIdx_x + 3712]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 59] * weight_shared_1[threadIdx_x + 3776]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 60] * weight_shared_1[threadIdx_x + 3840]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 61] * weight_shared_1[threadIdx_x + 3904]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 62] * weight_shared_1[threadIdx_x + 3968]
                conv2d_nhwc_local_1[w_3] = conv2d_nhwc_local_1[w_3] + PadInput_shared_1[cse_var_1 + 63] * weight_shared_1[threadIdx_x + 4032]
        conv2d_nhwc_1[blockIdx_x // 8 * 3584 + blockIdx_x % 8 * 64 + threadIdx_x] = conv2d_nhwc_local_1[0]
        conv2d_nhwc_1[blockIdx_x // 8 * 3584 + blockIdx_x % 8 * 64 + threadIdx_x + 512] = conv2d_nhwc_local_1[1]
        conv2d_nhwc_1[blockIdx_x // 8 * 3584 + blockIdx_x % 8 * 64 + threadIdx_x + 1024] = conv2d_nhwc_local_1[2]
        conv2d_nhwc_1[blockIdx_x // 8 * 3584 + blockIdx_x % 8 * 64 + threadIdx_x + 1536] = conv2d_nhwc_local_1[3]
        conv2d_nhwc_1[blockIdx_x // 8 * 3584 + blockIdx_x % 8 * 64 + threadIdx_x + 2048] = conv2d_nhwc_local_1[4]
        conv2d_nhwc_1[blockIdx_x // 8 * 3584 + blockIdx_x % 8 * 64 + threadIdx_x + 2560] = conv2d_nhwc_local_1[5]
        conv2d_nhwc_1[blockIdx_x // 8 * 3584 + blockIdx_x % 8 * 64 + threadIdx_x + 3072] = conv2d_nhwc_local_1[6]
    

