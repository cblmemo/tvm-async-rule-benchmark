# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(A: T.Buffer[(4096, 4096), "float32"], B: T.Buffer[(4096, 4096), "float32"], Y: T.Buffer[(4096, 4096), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # var definition
        threadIdx_x = T.env_thread("threadIdx.x")
        blockIdx_x = T.env_thread("blockIdx.x")
        # buffer definition
        A_1 = T.buffer_decl([16777216], dtype="float32", data=A.data)
        B_1 = T.buffer_decl([16777216], dtype="float32", data=B.data)
        Y_1 = T.buffer_decl([16777216], dtype="float32", data=Y.data)
        # body
        T.launch_thread(blockIdx_x, 512)
        Y_local = T.allocate([64], "float32", "local")
        Y_local_1 = T.buffer_decl([1024], dtype="float32", data=Y_local, scope="local")
        A_shared = T.allocate([4096], "float32", "shared")
        A_shared_1 = T.buffer_decl([4096], dtype="float32", data=A_shared, scope="shared")
        B_shared = T.allocate([8192], "float32", "shared")
        B_shared_1 = T.buffer_decl([8192], dtype="float32", data=B_shared, scope="shared")
        T.launch_thread(threadIdx_x, 512)
        for i_3_init, i_4_init, j_4_init in T.grid(4, 2, 4):
            cse_var_1: T.int32 = i_3_init * 8 + i_4_init * 4 + j_4_init
            Y_local_1[cse_var_1] = T.float32(0)
            Y_local_1[cse_var_1 + 32] = T.float32(0)
        for k_0 in T.serial(128):
            for ax0_ax1_fused_0 in T.serial(2):
                A_shared_1[ax0_ax1_fused_0 * 2048 + threadIdx_x * 4:ax0_ax1_fused_0 * 2048 + threadIdx_x * 4 + 4] = A_1[blockIdx_x // 16 * 524288 + ax0_ax1_fused_0 * 262144 + threadIdx_x // 8 * 4096 + k_0 * 32 + threadIdx_x % 8 * 4:blockIdx_x // 16 * 524288 + ax0_ax1_fused_0 * 262144 + threadIdx_x // 8 * 4096 + k_0 * 32 + threadIdx_x % 8 * 4 + 4]
            for ax0_ax1_fused_0 in T.serial(4):
                B_shared_1[ax0_ax1_fused_0 * 2048 + threadIdx_x * 4:ax0_ax1_fused_0 * 2048 + threadIdx_x * 4 + 4] = B_1[k_0 * 131072 + ax0_ax1_fused_0 * 32768 + threadIdx_x // 64 * 4096 + blockIdx_x % 16 * 256 + threadIdx_x % 64 * 4:k_0 * 131072 + ax0_ax1_fused_0 * 32768 + threadIdx_x // 64 * 4096 + blockIdx_x % 16 * 256 + threadIdx_x % 64 * 4 + 4]
            for k_1, i_3, k_2, i_4, j_4 in T.grid(2, 4, 16, 2, 4):
                cse_var_3: T.int32 = i_3 * 8 + i_4 * 4 + j_4
                cse_var_2: T.int32 = cse_var_3 + 32
                Y_local_1[cse_var_3] = Y_local_1[cse_var_3] + A_shared_1[threadIdx_x // 32 * 256 + i_3 * 64 + i_4 * 32 + k_1 * 16 + k_2] * B_shared_1[k_1 * 4096 + k_2 * 256 + threadIdx_x % 32 * 4 + j_4]
                Y_local_1[cse_var_2] = Y_local_1[cse_var_2] + A_shared_1[threadIdx_x // 32 * 256 + i_3 * 64 + i_4 * 32 + k_1 * 16 + k_2] * B_shared_1[k_1 * 4096 + k_2 * 256 + threadIdx_x % 32 * 4 + j_4 + 128]
        for ax0, ax1 in T.grid(8, 4):
            cse_var_4: T.int32 = ax0 * 4 + ax1
            Y_1[blockIdx_x // 16 * 524288 + threadIdx_x // 32 * 32768 + ax0 * 4096 + blockIdx_x % 16 * 256 + threadIdx_x % 32 * 4 + ax1] = Y_local_1[cse_var_4]
            Y_1[blockIdx_x // 16 * 524288 + threadIdx_x // 32 * 32768 + ax0 * 4096 + blockIdx_x % 16 * 256 + threadIdx_x % 32 * 4 + ax1 + 128] = Y_local_1[cse_var_4 + 32]
    

