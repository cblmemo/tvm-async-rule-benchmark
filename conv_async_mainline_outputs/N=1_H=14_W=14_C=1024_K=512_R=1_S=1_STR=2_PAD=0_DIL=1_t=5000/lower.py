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
        T.launch_thread(blockIdx_x, 112)
        conv2d_nhwc_local = T.allocate([7], "float32", "local")
        conv2d_nhwc_local_1 = T.buffer_decl([7], dtype="float32", data=conv2d_nhwc_local, scope="local")
        PadInput_shared = T.allocate([2496], "float32", "shared")
        PadInput_shared_1 = T.buffer_decl([2496], dtype="float32", data=PadInput_shared, scope="shared")
        weight_shared = T.allocate([6144], "float32", "shared")
        weight_shared_1 = T.buffer_decl([6144], dtype="float32", data=weight_shared, scope="shared")
        T.launch_thread(threadIdx_x, 32)
        conv2d_nhwc_local_1[0] = T.float32(0)
        conv2d_nhwc_local_1[1] = T.float32(0)
        conv2d_nhwc_local_1[2] = T.float32(0)
        conv2d_nhwc_local_1[3] = T.float32(0)
        conv2d_nhwc_local_1[4] = T.float32(0)
        conv2d_nhwc_local_1[5] = T.float32(0)
        conv2d_nhwc_local_1[6] = T.float32(0)
        with T.attr(0, "async_commit_queue_scope", 0):
            with T.attr(0, "async_scope", 1):
                for ax0_ax1_ax2_ax3_fused_0 in T.serial(26):
                    PadInput_shared_1[ax0_ax1_ax2_ax3_fused_0 * 32 + threadIdx_x] = inputs_1[ax0_ax1_ax2_ax3_fused_0 // 2 * 14336 + blockIdx_x // 16 * 2048 + ax0_ax1_ax2_ax3_fused_0 % 2 * 32 + threadIdx_x]
            T.attr(0, "async_scope", 1)
            weight_shared_1[threadIdx_x * 4:threadIdx_x * 4 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 4]
            weight_shared_1[threadIdx_x * 4 + 128:threadIdx_x * 4 + 128 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 2048:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 2048 + 4]
            weight_shared_1[threadIdx_x * 4 + 256:threadIdx_x * 4 + 256 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 4096:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 4096 + 4]
            weight_shared_1[threadIdx_x * 4 + 384:threadIdx_x * 4 + 384 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 6144:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 6144 + 4]
            weight_shared_1[threadIdx_x * 4 + 512:threadIdx_x * 4 + 512 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 8192:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 8192 + 4]
            weight_shared_1[threadIdx_x * 4 + 640:threadIdx_x * 4 + 640 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 10240:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 10240 + 4]
            weight_shared_1[threadIdx_x * 4 + 768:threadIdx_x * 4 + 768 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 12288:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 12288 + 4]
            weight_shared_1[threadIdx_x * 4 + 896:threadIdx_x * 4 + 896 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 14336:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 14336 + 4]
            weight_shared_1[threadIdx_x * 4 + 1024:threadIdx_x * 4 + 1024 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 16384:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 16384 + 4]
            weight_shared_1[threadIdx_x * 4 + 1152:threadIdx_x * 4 + 1152 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 18432:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 18432 + 4]
            weight_shared_1[threadIdx_x * 4 + 1280:threadIdx_x * 4 + 1280 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 20480:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 20480 + 4]
            weight_shared_1[threadIdx_x * 4 + 1408:threadIdx_x * 4 + 1408 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 22528:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 22528 + 4]
            weight_shared_1[threadIdx_x * 4 + 1536:threadIdx_x * 4 + 1536 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 24576:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 24576 + 4]
            weight_shared_1[threadIdx_x * 4 + 1664:threadIdx_x * 4 + 1664 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 26624:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 26624 + 4]
            weight_shared_1[threadIdx_x * 4 + 1792:threadIdx_x * 4 + 1792 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 28672:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 28672 + 4]
            weight_shared_1[threadIdx_x * 4 + 1920:threadIdx_x * 4 + 1920 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 30720:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 30720 + 4]
        with T.attr(0, "async_commit_queue_scope", 0):
            with T.attr(0, "async_scope", 1):
                for ax0_ax1_ax2_ax3_fused_0 in T.serial(26):
                    PadInput_shared_1[ax0_ax1_ax2_ax3_fused_0 * 32 + threadIdx_x + 832] = inputs_1[ax0_ax1_ax2_ax3_fused_0 // 2 * 14336 + blockIdx_x // 16 * 2048 + ax0_ax1_ax2_ax3_fused_0 % 2 * 32 + threadIdx_x + 64]
            T.attr(0, "async_scope", 1)
            weight_shared_1[threadIdx_x * 4 + 2048:threadIdx_x * 4 + 2048 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 32768:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 32768 + 4]
            weight_shared_1[threadIdx_x * 4 + 2176:threadIdx_x * 4 + 2176 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 34816:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 34816 + 4]
            weight_shared_1[threadIdx_x * 4 + 2304:threadIdx_x * 4 + 2304 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 36864:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 36864 + 4]
            weight_shared_1[threadIdx_x * 4 + 2432:threadIdx_x * 4 + 2432 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 38912:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 38912 + 4]
            weight_shared_1[threadIdx_x * 4 + 2560:threadIdx_x * 4 + 2560 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 40960:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 40960 + 4]
            weight_shared_1[threadIdx_x * 4 + 2688:threadIdx_x * 4 + 2688 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 43008:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 43008 + 4]
            weight_shared_1[threadIdx_x * 4 + 2816:threadIdx_x * 4 + 2816 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 45056:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 45056 + 4]
            weight_shared_1[threadIdx_x * 4 + 2944:threadIdx_x * 4 + 2944 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 47104:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 47104 + 4]
            weight_shared_1[threadIdx_x * 4 + 3072:threadIdx_x * 4 + 3072 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 49152:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 49152 + 4]
            weight_shared_1[threadIdx_x * 4 + 3200:threadIdx_x * 4 + 3200 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 51200:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 51200 + 4]
            weight_shared_1[threadIdx_x * 4 + 3328:threadIdx_x * 4 + 3328 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 53248:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 53248 + 4]
            weight_shared_1[threadIdx_x * 4 + 3456:threadIdx_x * 4 + 3456 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 55296:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 55296 + 4]
            weight_shared_1[threadIdx_x * 4 + 3584:threadIdx_x * 4 + 3584 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 57344:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 57344 + 4]
            weight_shared_1[threadIdx_x * 4 + 3712:threadIdx_x * 4 + 3712 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 59392:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 59392 + 4]
            weight_shared_1[threadIdx_x * 4 + 3840:threadIdx_x * 4 + 3840 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 61440:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 61440 + 4]
            weight_shared_1[threadIdx_x * 4 + 3968:threadIdx_x * 4 + 3968 + 4] = weight_1[threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 63488:threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 63488 + 4]
        for rh_0_rw_0_rc_0_fused in T.serial(14):
            with T.attr(0, "async_commit_queue_scope", 0):
                with T.attr(0, "async_scope", 1):
                    for ax0_ax1_ax2_ax3_fused_0 in T.serial(26):
                        PadInput_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 832 + ax0_ax1_ax2_ax3_fused_0 * 32 + threadIdx_x] = inputs_1[ax0_ax1_ax2_ax3_fused_0 // 2 * 14336 + blockIdx_x // 16 * 2048 + rh_0_rw_0_rc_0_fused * 64 + ax0_ax1_ax2_ax3_fused_0 % 2 * 32 + threadIdx_x + 128]
                T.attr(0, "async_scope", 1)
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 65536:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 65536 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 128:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 128 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 67584:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 67584 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 256:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 256 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 69632:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 69632 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 384:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 384 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 71680:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 71680 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 512:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 512 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 73728:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 73728 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 640:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 640 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 75776:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 75776 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 768:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 768 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 77824:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 77824 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 896:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 896 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 79872:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 79872 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1024:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1024 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 81920:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 81920 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1152:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1152 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 83968:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 83968 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1280:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1280 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 86016:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 86016 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1408:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1408 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 88064:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 88064 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1536:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1536 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 90112:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 90112 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1664:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1664 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 92160:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 92160 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1792:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1792 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 94208:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 94208 + 4]
                weight_shared_1[(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1920:(rh_0_rw_0_rc_0_fused + 2) % 3 * 2048 + threadIdx_x * 4 + 1920 + 4] = weight_1[rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 96256:rh_0_rw_0_rc_0_fused * 32768 + threadIdx_x // 8 * 512 + blockIdx_x % 16 * 32 + threadIdx_x % 8 * 4 + 96256 + 4]
            T.attr(0, "async_wait_queue_scope", 0)
            T.attr(0, "async_wait_inflight_count", 2)
            for h_3, rc_2 in T.grid(7, 64):
                cse_var_1: T.int32 = rh_0_rw_0_rc_0_fused % 3
                conv2d_nhwc_local_1[h_3] = conv2d_nhwc_local_1[h_3] + PadInput_shared_1[cse_var_1 * 832 + h_3 * 128 + rc_2] * weight_shared_1[cse_var_1 * 2048 + rc_2 * 32 + threadIdx_x]
        with T.attr(0, "async_wait_queue_scope", 0):
            T.attr(0, "async_wait_inflight_count", 1)
            for h_3, rc_2 in T.grid(7, 64):
                conv2d_nhwc_local_1[h_3] = conv2d_nhwc_local_1[h_3] + PadInput_shared_1[h_3 * 128 + rc_2 + 1664] * weight_shared_1[rc_2 * 32 + threadIdx_x + 4096]
        with T.attr(0, "async_wait_queue_scope", 0):
            T.attr(0, "async_wait_inflight_count", 0)
            for h_3, rc_2 in T.grid(7, 64):
                conv2d_nhwc_local_1[h_3] = conv2d_nhwc_local_1[h_3] + PadInput_shared_1[h_3 * 128 + rc_2] * weight_shared_1[rc_2 * 32 + threadIdx_x]
        conv2d_nhwc_1[blockIdx_x * 32 + threadIdx_x] = conv2d_nhwc_local_1[0]
        conv2d_nhwc_1[blockIdx_x * 32 + threadIdx_x + 3584] = conv2d_nhwc_local_1[1]
        conv2d_nhwc_1[blockIdx_x * 32 + threadIdx_x + 7168] = conv2d_nhwc_local_1[2]
        conv2d_nhwc_1[blockIdx_x * 32 + threadIdx_x + 10752] = conv2d_nhwc_local_1[3]
        conv2d_nhwc_1[blockIdx_x * 32 + threadIdx_x + 14336] = conv2d_nhwc_local_1[4]
        conv2d_nhwc_1[blockIdx_x * 32 + threadIdx_x + 17920] = conv2d_nhwc_local_1[5]
        conv2d_nhwc_1[blockIdx_x * 32 + threadIdx_x + 21504] = conv2d_nhwc_local_1[6]
    

