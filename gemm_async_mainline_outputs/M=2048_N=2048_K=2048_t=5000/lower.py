# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(A: T.Buffer[(2048, 2048), "float32"], B: T.Buffer[(2048, 2048), "float32"], Y: T.Buffer[(2048, 2048), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # var definition
        threadIdx_x = T.env_thread("threadIdx.x")
        blockIdx_x = T.env_thread("blockIdx.x")
        # buffer definition
        A_1 = T.buffer_decl([4194304], dtype="float32", data=A.data)
        B_1 = T.buffer_decl([4194304], dtype="float32", data=B.data)
        Y_1 = T.buffer_decl([4194304], dtype="float32", data=Y.data)
        # body
        T.launch_thread(blockIdx_x, 512)
        Y_local = T.allocate([128], "float32", "local")
        Y_local_1 = T.buffer_decl([4096], dtype="float32", data=Y_local, scope="local")
        A_shared = T.allocate([1536], "float32", "shared")
        A_shared_1 = T.buffer_decl([1536], dtype="float32", data=A_shared, scope="shared")
        B_shared = T.allocate([3072], "float32", "shared")
        B_shared_1 = T.buffer_decl([3072], dtype="float32", data=B_shared, scope="shared")
        T.launch_thread(threadIdx_x, 64)
        for i_4_init, j_4_init in T.grid(16, 4):
            cse_var_1: T.int32 = i_4_init * 4 + j_4_init
            Y_local_1[cse_var_1] = T.float32(0)
            Y_local_1[cse_var_1 + 64] = T.float32(0)
        with T.attr(0, "async_commit_queue_scope", 0):
            with T.attr(0, "async_scope", 1):
                for ax0_ax1_fused_0 in T.serial(2):
                    A_shared_1[ax0_ax1_fused_0 * 256 + threadIdx_x * 4:ax0_ax1_fused_0 * 256 + threadIdx_x * 4 + 4] = A_1[blockIdx_x // 16 * 131072 + ax0_ax1_fused_0 * 65536 + threadIdx_x // 2 * 2048 + threadIdx_x % 2 * 4:blockIdx_x // 16 * 131072 + ax0_ax1_fused_0 * 65536 + threadIdx_x // 2 * 2048 + threadIdx_x % 2 * 4 + 4]
            T.attr(0, "async_scope", 1)
            for ax0_ax1_fused_0 in T.serial(4):
                B_shared_1[ax0_ax1_fused_0 * 256 + threadIdx_x * 4:ax0_ax1_fused_0 * 256 + threadIdx_x * 4 + 4] = B_1[ax0_ax1_fused_0 * 4096 + threadIdx_x // 32 * 2048 + blockIdx_x % 16 * 128 + threadIdx_x % 32 * 4:ax0_ax1_fused_0 * 4096 + threadIdx_x // 32 * 2048 + blockIdx_x % 16 * 128 + threadIdx_x % 32 * 4 + 4]
        with T.attr(0, "async_commit_queue_scope", 0):
            with T.attr(0, "async_scope", 1):
                for ax0_ax1_fused_0 in T.serial(2):
                    A_shared_1[ax0_ax1_fused_0 * 256 + threadIdx_x * 4 + 512:ax0_ax1_fused_0 * 256 + threadIdx_x * 4 + 512 + 4] = A_1[blockIdx_x // 16 * 131072 + ax0_ax1_fused_0 * 65536 + threadIdx_x // 2 * 2048 + threadIdx_x % 2 * 4 + 8:blockIdx_x // 16 * 131072 + ax0_ax1_fused_0 * 65536 + threadIdx_x // 2 * 2048 + threadIdx_x % 2 * 4 + 8 + 4]
            T.attr(0, "async_scope", 1)
            for ax0_ax1_fused_0 in T.serial(4):
                B_shared_1[ax0_ax1_fused_0 * 256 + threadIdx_x * 4 + 1024:ax0_ax1_fused_0 * 256 + threadIdx_x * 4 + 1024 + 4] = B_1[ax0_ax1_fused_0 * 4096 + threadIdx_x // 32 * 2048 + blockIdx_x % 16 * 128 + threadIdx_x % 32 * 4 + 16384:ax0_ax1_fused_0 * 4096 + threadIdx_x // 32 * 2048 + blockIdx_x % 16 * 128 + threadIdx_x % 32 * 4 + 16384 + 4]
        for k_0_fused in T.serial(254):
            with T.attr(0, "async_commit_queue_scope", 0):
                with T.attr(0, "async_scope", 1):
                    for ax0_ax1_fused_0 in T.serial(2):
                        A_shared_1[(k_0_fused + 2) % 3 * 512 + ax0_ax1_fused_0 * 256 + threadIdx_x * 4:(k_0_fused + 2) % 3 * 512 + ax0_ax1_fused_0 * 256 + threadIdx_x * 4 + 4] = A_1[blockIdx_x // 16 * 131072 + ax0_ax1_fused_0 * 65536 + threadIdx_x // 2 * 2048 + k_0_fused * 8 + threadIdx_x % 2 * 4 + 16:blockIdx_x // 16 * 131072 + ax0_ax1_fused_0 * 65536 + threadIdx_x // 2 * 2048 + k_0_fused * 8 + threadIdx_x % 2 * 4 + 16 + 4]
                T.attr(0, "async_scope", 1)
                for ax0_ax1_fused_0 in T.serial(4):
                    B_shared_1[(k_0_fused + 2) % 3 * 1024 + ax0_ax1_fused_0 * 256 + threadIdx_x * 4:(k_0_fused + 2) % 3 * 1024 + ax0_ax1_fused_0 * 256 + threadIdx_x * 4 + 4] = B_1[k_0_fused * 16384 + ax0_ax1_fused_0 * 4096 + threadIdx_x // 32 * 2048 + blockIdx_x % 16 * 128 + threadIdx_x % 32 * 4 + 32768:k_0_fused * 16384 + ax0_ax1_fused_0 * 4096 + threadIdx_x // 32 * 2048 + blockIdx_x % 16 * 128 + threadIdx_x % 32 * 4 + 32768 + 4]
            T.attr(0, "async_wait_queue_scope", 0)
            T.attr(0, "async_wait_inflight_count", 2)
            for k_1, k_2, i_4, j_4 in T.grid(4, 2, 16, 4):
                cse_var_4: T.int32 = k_0_fused % 3
                cse_var_3: T.int32 = i_4 * 4 + j_4
                cse_var_2: T.int32 = cse_var_3 + 64
                Y_local_1[cse_var_3] = Y_local_1[cse_var_3] + A_shared_1[cse_var_4 * 512 + threadIdx_x // 16 * 128 + i_4 * 8 + k_1 * 2 + k_2] * B_shared_1[cse_var_4 * 1024 + k_1 * 256 + k_2 * 128 + threadIdx_x % 16 * 4 + j_4]
                Y_local_1[cse_var_2] = Y_local_1[cse_var_2] + A_shared_1[cse_var_4 * 512 + threadIdx_x // 16 * 128 + i_4 * 8 + k_1 * 2 + k_2] * B_shared_1[cse_var_4 * 1024 + k_1 * 256 + k_2 * 128 + threadIdx_x % 16 * 4 + j_4 + 64]
        with T.attr(0, "async_wait_queue_scope", 0):
            T.attr(0, "async_wait_inflight_count", 1)
            for k_1, k_2, i_4, j_4 in T.grid(4, 2, 16, 4):
                cse_var_6: T.int32 = i_4 * 4 + j_4
                cse_var_5: T.int32 = cse_var_6 + 64
                Y_local_1[cse_var_6] = Y_local_1[cse_var_6] + A_shared_1[threadIdx_x // 16 * 128 + i_4 * 8 + k_1 * 2 + k_2 + 1024] * B_shared_1[k_1 * 256 + k_2 * 128 + threadIdx_x % 16 * 4 + j_4 + 2048]
                Y_local_1[cse_var_5] = Y_local_1[cse_var_5] + A_shared_1[threadIdx_x // 16 * 128 + i_4 * 8 + k_1 * 2 + k_2 + 1024] * B_shared_1[k_1 * 256 + k_2 * 128 + threadIdx_x % 16 * 4 + j_4 + 2112]
        with T.attr(0, "async_wait_queue_scope", 0):
            T.attr(0, "async_wait_inflight_count", 0)
            for k_1, k_2, i_4, j_4 in T.grid(4, 2, 16, 4):
                cse_var_8: T.int32 = i_4 * 4 + j_4
                cse_var_7: T.int32 = cse_var_8 + 64
                Y_local_1[cse_var_8] = Y_local_1[cse_var_8] + A_shared_1[threadIdx_x // 16 * 128 + i_4 * 8 + k_1 * 2 + k_2] * B_shared_1[k_1 * 256 + k_2 * 128 + threadIdx_x % 16 * 4 + j_4]
                Y_local_1[cse_var_7] = Y_local_1[cse_var_7] + A_shared_1[threadIdx_x // 16 * 128 + i_4 * 8 + k_1 * 2 + k_2] * B_shared_1[k_1 * 256 + k_2 * 128 + threadIdx_x % 16 * 4 + j_4 + 64]
        for ax0, ax1 in T.grid(16, 4):
            cse_var_9: T.int32 = ax0 * 4 + ax1
            Y_1[blockIdx_x // 16 * 131072 + threadIdx_x // 16 * 32768 + ax0 * 2048 + blockIdx_x % 16 * 128 + threadIdx_x % 16 * 4 + ax1] = Y_local_1[cse_var_9]
            Y_1[blockIdx_x // 16 * 131072 + threadIdx_x // 16 * 32768 + ax0 * 2048 + blockIdx_x % 16 * 128 + threadIdx_x % 16 * 4 + ax1 + 64] = Y_local_1[cse_var_9 + 64]
    

