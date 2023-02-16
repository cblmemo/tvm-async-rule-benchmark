# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(inputs: T.Buffer[(1, 28, 28, 512), "float32"], weight: T.Buffer[(1, 1, 512, 128), "float32"], conv2d_nhwc: T.Buffer[(1, 28, 28, 128), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # var definition
        threadIdx_x = T.env_thread("threadIdx.x")
        blockIdx_x = T.env_thread("blockIdx.x")
        # buffer definition
        conv2d_nhwc_1 = T.buffer_decl([100352], dtype="float32", data=conv2d_nhwc.data)
        inputs_1 = T.buffer_decl([401408], dtype="float32", data=inputs.data)
        weight_1 = T.buffer_decl([65536], dtype="float32", data=weight.data)
        # body
        T.launch_thread(blockIdx_x, 196)
        conv2d_nhwc_local = T.allocate([8], "float32", "local")
        conv2d_nhwc_local_1 = T.buffer_decl([8], dtype="float32", data=conv2d_nhwc_local, scope="local")
        PadInput_shared = T.allocate([512], "float32", "shared")
        PadInput_shared_1 = T.buffer_decl([512], dtype="float32", data=PadInput_shared, scope="shared")
        weight_shared = T.allocate([1024], "float32", "shared")
        weight_shared_1 = T.buffer_decl([1024], dtype="float32", data=weight_shared, scope="shared")
        T.launch_thread(threadIdx_x, 64)
        for h_3_init, co_3_init in T.grid(4, 2):
            conv2d_nhwc_local_1[h_3_init * 2 + co_3_init] = T.float32(0)
        for rc_0 in T.serial(16):
            for ax0_ax1_ax2_ax3_fused_0 in T.serial(4):
                PadInput_shared_1[ax0_ax1_ax2_ax3_fused_0 * 128 + threadIdx_x * 2:ax0_ax1_ax2_ax3_fused_0 * 128 + threadIdx_x * 2 + 2] = inputs_1[blockIdx_x // 28 * 57344 + ax0_ax1_ax2_ax3_fused_0 * 14336 + blockIdx_x % 28 // 4 * 2048 + threadIdx_x // 16 * 512 + rc_0 * 32 + threadIdx_x % 16 * 2:blockIdx_x // 28 * 57344 + ax0_ax1_ax2_ax3_fused_0 * 14336 + blockIdx_x % 28 // 4 * 2048 + threadIdx_x // 16 * 512 + rc_0 * 32 + threadIdx_x % 16 * 2 + 2]
            for ax0_ax1_ax2_ax3_fused_0 in T.serial(4):
                weight_shared_1[ax0_ax1_ax2_ax3_fused_0 * 256 + threadIdx_x * 4:ax0_ax1_ax2_ax3_fused_0 * 256 + threadIdx_x * 4 + 4] = weight_1[rc_0 * 4096 + ax0_ax1_ax2_ax3_fused_0 * 1024 + threadIdx_x // 8 * 128 + blockIdx_x % 4 * 32 + threadIdx_x % 8 * 4:rc_0 * 4096 + ax0_ax1_ax2_ax3_fused_0 * 1024 + threadIdx_x // 8 * 128 + blockIdx_x % 4 * 32 + threadIdx_x % 8 * 4 + 4]
            for h_3, co_3, rc_2 in T.grid(4, 2, 32):
                cse_var_1: T.int32 = h_3 * 2 + co_3
                conv2d_nhwc_local_1[cse_var_1] = conv2d_nhwc_local_1[cse_var_1] + PadInput_shared_1[h_3 * 128 + threadIdx_x // 16 * 32 + rc_2] * weight_shared_1[rc_2 * 32 + threadIdx_x % 16 * 2 + co_3]
        for ax1, ax3 in T.grid(4, 2):
            conv2d_nhwc_1[blockIdx_x // 28 * 14336 + ax1 * 3584 + blockIdx_x % 28 // 4 * 512 + threadIdx_x // 16 * 128 + blockIdx_x % 4 * 32 + threadIdx_x % 16 * 2 + ax3] = conv2d_nhwc_local_1[ax1 * 2 + ax3]
    

