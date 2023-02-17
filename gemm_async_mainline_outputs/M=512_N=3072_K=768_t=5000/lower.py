# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(A: T.Buffer[(512, 768), "float32"], B: T.Buffer[(768, 3072), "float32"], Y: T.Buffer[(512, 3072), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # var definition
        threadIdx_x = T.env_thread("threadIdx.x")
        blockIdx_x = T.env_thread("blockIdx.x")
        # buffer definition
        A_1 = T.buffer_decl([393216], dtype="float32", data=A.data)
        B_1 = T.buffer_decl([2359296], dtype="float32", data=B.data)
        Y_1 = T.buffer_decl([1572864], dtype="float32", data=Y.data)
        # body
        T.launch_thread(blockIdx_x, 384)
        Y_local = T.allocate([64], "float32", "local")
        Y_local_1 = T.buffer_decl([4], dtype="float32", data=Y_local, scope="local")
        A_shared = T.allocate([768], "float32", "shared")
        A_shared_1 = T.buffer_decl([768], dtype="float32", data=A_shared, scope="shared")
        B_shared = T.allocate([3072], "float32", "shared")
        B_shared_1 = T.buffer_decl([3072], dtype="float32", data=B_shared, scope="shared")
        T.launch_thread(threadIdx_x, 64)
        for j_4_init, vthread_x_s in T.grid(2, 32):
            Y_local_1[vthread_x_s * 2 + j_4_init] = T.float32(0)
        with T.attr(0, "async_commit_queue_scope", 0):
            with T.attr(0, "async_scope", 1):
                A_shared_1[threadIdx_x * 4:threadIdx_x * 4 + 4] = A_1[blockIdx_x // 24 * 24576 + threadIdx_x // 2 * 768 + threadIdx_x % 2 * 4:blockIdx_x // 24 * 24576 + threadIdx_x // 2 * 768 + threadIdx_x % 2 * 4 + 4]
            T.attr(0, "async_scope", 1)
            B_shared_1[threadIdx_x * 4:threadIdx_x * 4 + 4] = B_1[threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4:threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 4]
            B_shared_1[threadIdx_x * 4 + 256:threadIdx_x * 4 + 256 + 4] = B_1[threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 6144:threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 6144 + 4]
            B_shared_1[threadIdx_x * 4 + 512:threadIdx_x * 4 + 512 + 4] = B_1[threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 12288:threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 12288 + 4]
            B_shared_1[threadIdx_x * 4 + 768:threadIdx_x * 4 + 768 + 4] = B_1[threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 18432:threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 18432 + 4]
        with T.attr(0, "async_commit_queue_scope", 0):
            with T.attr(0, "async_scope", 1):
                A_shared_1[threadIdx_x * 4 + 256:threadIdx_x * 4 + 256 + 4] = A_1[blockIdx_x // 24 * 24576 + threadIdx_x // 2 * 768 + threadIdx_x % 2 * 4 + 8:blockIdx_x // 24 * 24576 + threadIdx_x // 2 * 768 + threadIdx_x % 2 * 4 + 8 + 4]
            T.attr(0, "async_scope", 1)
            B_shared_1[threadIdx_x * 4 + 1024:threadIdx_x * 4 + 1024 + 4] = B_1[threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 24576:threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 24576 + 4]
            B_shared_1[threadIdx_x * 4 + 1280:threadIdx_x * 4 + 1280 + 4] = B_1[threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 30720:threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 30720 + 4]
            B_shared_1[threadIdx_x * 4 + 1536:threadIdx_x * 4 + 1536 + 4] = B_1[threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 36864:threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 36864 + 4]
            B_shared_1[threadIdx_x * 4 + 1792:threadIdx_x * 4 + 1792 + 4] = B_1[threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 43008:threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 43008 + 4]
        for k_0_fused in T.serial(94):
            cse_var_1: T.int32 = (k_0_fused + 2) % 3
            with T.attr(0, "async_commit_queue_scope", 0):
                with T.attr(0, "async_scope", 1):
                    A_shared_1[cse_var_1 * 256 + threadIdx_x * 4:cse_var_1 * 256 + threadIdx_x * 4 + 4] = A_1[blockIdx_x // 24 * 24576 + threadIdx_x // 2 * 768 + k_0_fused * 8 + threadIdx_x % 2 * 4 + 16:blockIdx_x // 24 * 24576 + threadIdx_x // 2 * 768 + k_0_fused * 8 + threadIdx_x % 2 * 4 + 16 + 4]
                T.attr(0, "async_scope", 1)
                B_shared_1[cse_var_1 * 1024 + threadIdx_x * 4:cse_var_1 * 1024 + threadIdx_x * 4 + 4] = B_1[k_0_fused * 24576 + threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 49152:k_0_fused * 24576 + threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 49152 + 4]
                B_shared_1[cse_var_1 * 1024 + threadIdx_x * 4 + 256:cse_var_1 * 1024 + threadIdx_x * 4 + 256 + 4] = B_1[k_0_fused * 24576 + threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 55296:k_0_fused * 24576 + threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 55296 + 4]
                B_shared_1[cse_var_1 * 1024 + threadIdx_x * 4 + 512:cse_var_1 * 1024 + threadIdx_x * 4 + 512 + 4] = B_1[k_0_fused * 24576 + threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 61440:k_0_fused * 24576 + threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 61440 + 4]
                B_shared_1[cse_var_1 * 1024 + threadIdx_x * 4 + 768:cse_var_1 * 1024 + threadIdx_x * 4 + 768 + 4] = B_1[k_0_fused * 24576 + threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 67584:k_0_fused * 24576 + threadIdx_x // 32 * 3072 + blockIdx_x % 24 * 128 + threadIdx_x % 32 * 4 + 67584 + 4]
            T.attr(0, "async_wait_queue_scope", 0)
            T.attr(0, "async_wait_inflight_count", 2)
            for k_1, k_2, j_4, vthread_x_s in T.grid(2, 4, 2, 32):
                cse_var_3: T.int32 = k_0_fused % 3
                cse_var_2: T.int32 = vthread_x_s * 2 + j_4
                Y_local_1[cse_var_2] = Y_local_1[cse_var_2] + A_shared_1[cse_var_3 * 256 + vthread_x_s // 4 * 32 + threadIdx_x // 16 * 8 + k_1 * 4 + k_2] * B_shared_1[cse_var_3 * 1024 + k_1 * 512 + k_2 * 128 + vthread_x_s % 4 * 32 + threadIdx_x % 16 * 2 + j_4]
        with T.attr(0, "async_wait_queue_scope", 0):
            T.attr(0, "async_wait_inflight_count", 1)
            for k_1, k_2, j_4, vthread_x_s in T.grid(2, 4, 2, 32):
                cse_var_4: T.int32 = vthread_x_s * 2 + j_4
                Y_local_1[cse_var_4] = Y_local_1[cse_var_4] + A_shared_1[vthread_x_s // 4 * 32 + threadIdx_x // 16 * 8 + k_1 * 4 + k_2 + 256] * B_shared_1[k_1 * 512 + k_2 * 128 + vthread_x_s % 4 * 32 + threadIdx_x % 16 * 2 + j_4 + 1024]
        with T.attr(0, "async_wait_queue_scope", 0):
            T.attr(0, "async_wait_inflight_count", 0)
            for k_1, k_2, j_4, vthread_x_s in T.grid(2, 4, 2, 32):
                cse_var_5: T.int32 = vthread_x_s * 2 + j_4
                Y_local_1[cse_var_5] = Y_local_1[cse_var_5] + A_shared_1[vthread_x_s // 4 * 32 + threadIdx_x // 16 * 8 + k_1 * 4 + k_2 + 512] * B_shared_1[k_1 * 512 + k_2 * 128 + vthread_x_s % 4 * 32 + threadIdx_x % 16 * 2 + j_4 + 2048]
        for ax1, vthread_x_s in T.grid(2, 32):
            Y_1[blockIdx_x // 24 * 98304 + vthread_x_s // 4 * 12288 + threadIdx_x // 16 * 3072 + blockIdx_x % 24 * 128 + vthread_x_s % 4 * 32 + threadIdx_x % 16 * 2 + ax1] = Y_local_1[vthread_x_s * 2 + ax1]
    

