# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(A: T.Buffer[(1024, 1024), "float32"], B: T.Buffer[(1024, 1024), "float32"], Y: T.Buffer[(1024, 1024), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # var definition
        threadIdx_x = T.env_thread("threadIdx.x")
        blockIdx_x = T.env_thread("blockIdx.x")
        # buffer definition
        A_1 = T.buffer_decl([1048576], dtype="float32", data=A.data)
        B_1 = T.buffer_decl([1048576], dtype="float32", data=B.data)
        Y_1 = T.buffer_decl([1048576], dtype="float32", data=Y.data)
        # body
        T.launch_thread(blockIdx_x, 256)
        Y_local = T.allocate([64], "float32", "local")
        Y_local_1 = T.buffer_decl([4], dtype="float32", data=Y_local, scope="local")
        A_shared = T.allocate([3072], "float32", "shared")
        A_shared_1 = T.buffer_decl([3072], dtype="float32", data=A_shared, scope="shared")
        B_shared = T.allocate([3072], "float32", "shared")
        B_shared_1 = T.buffer_decl([3072], dtype="float32", data=B_shared, scope="shared")
        T.launch_thread(threadIdx_x, 64)
        for j_4_init, vthread_x_s in T.grid(2, 32):
            Y_local_1[vthread_x_s * 2 + j_4_init] = T.float32(0)
        with T.attr(0, "async_commit_queue_scope", 0):
            with T.attr(0, "async_scope", 1):
                A_shared_1[threadIdx_x * 4:threadIdx_x * 4 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 4]
                A_shared_1[threadIdx_x * 4 + 256:threadIdx_x * 4 + 256 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 16384:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 16384 + 4]
                A_shared_1[threadIdx_x * 4 + 512:threadIdx_x * 4 + 512 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 32768:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 32768 + 4]
                A_shared_1[threadIdx_x * 4 + 768:threadIdx_x * 4 + 768 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 49152:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 49152 + 4]
            T.attr(0, "async_scope", 1)
            B_shared_1[threadIdx_x * 4:threadIdx_x * 4 + 4] = B_1[threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4:threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 4]
            B_shared_1[threadIdx_x * 4 + 256:threadIdx_x * 4 + 256 + 4] = B_1[threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 4096:threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 4096 + 4]
            B_shared_1[threadIdx_x * 4 + 512:threadIdx_x * 4 + 512 + 4] = B_1[threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 8192:threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 8192 + 4]
            B_shared_1[threadIdx_x * 4 + 768:threadIdx_x * 4 + 768 + 4] = B_1[threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 12288:threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 12288 + 4]
        with T.attr(0, "async_commit_queue_scope", 0):
            with T.attr(0, "async_scope", 1):
                A_shared_1[threadIdx_x * 4 + 1024:threadIdx_x * 4 + 1024 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 16:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 16 + 4]
                A_shared_1[threadIdx_x * 4 + 1280:threadIdx_x * 4 + 1280 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 16400:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 16400 + 4]
                A_shared_1[threadIdx_x * 4 + 1536:threadIdx_x * 4 + 1536 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 32784:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 32784 + 4]
                A_shared_1[threadIdx_x * 4 + 1792:threadIdx_x * 4 + 1792 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 49168:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + threadIdx_x % 4 * 4 + 49168 + 4]
            T.attr(0, "async_scope", 1)
            B_shared_1[threadIdx_x * 4 + 1024:threadIdx_x * 4 + 1024 + 4] = B_1[threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 16384:threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 16384 + 4]
            B_shared_1[threadIdx_x * 4 + 1280:threadIdx_x * 4 + 1280 + 4] = B_1[threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 20480:threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 20480 + 4]
            B_shared_1[threadIdx_x * 4 + 1536:threadIdx_x * 4 + 1536 + 4] = B_1[threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 24576:threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 24576 + 4]
            B_shared_1[threadIdx_x * 4 + 1792:threadIdx_x * 4 + 1792 + 4] = B_1[threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 28672:threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 28672 + 4]
        for k_0_fused in T.serial(62):
            with T.attr(0, "async_commit_queue_scope", 0):
                with T.attr(0, "async_scope", 1):
                    A_shared_1[(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4:(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + k_0_fused * 16 + threadIdx_x % 4 * 4 + 32:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + k_0_fused * 16 + threadIdx_x % 4 * 4 + 32 + 4]
                    A_shared_1[(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 256:(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 256 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + k_0_fused * 16 + threadIdx_x % 4 * 4 + 16416:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + k_0_fused * 16 + threadIdx_x % 4 * 4 + 16416 + 4]
                    A_shared_1[(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 512:(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 512 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + k_0_fused * 16 + threadIdx_x % 4 * 4 + 32800:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + k_0_fused * 16 + threadIdx_x % 4 * 4 + 32800 + 4]
                    A_shared_1[(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 768:(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 768 + 4] = A_1[blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + k_0_fused * 16 + threadIdx_x % 4 * 4 + 49184:blockIdx_x // 16 * 65536 + threadIdx_x // 4 * 1024 + k_0_fused * 16 + threadIdx_x % 4 * 4 + 49184 + 4]
                T.attr(0, "async_scope", 1)
                B_shared_1[(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4:(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 4] = B_1[k_0_fused * 16384 + threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 32768:k_0_fused * 16384 + threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 32768 + 4]
                B_shared_1[(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 256:(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 256 + 4] = B_1[k_0_fused * 16384 + threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 36864:k_0_fused * 16384 + threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 36864 + 4]
                B_shared_1[(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 512:(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 512 + 4] = B_1[k_0_fused * 16384 + threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 40960:k_0_fused * 16384 + threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 40960 + 4]
                B_shared_1[(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 768:(k_0_fused + 2) % 3 * 1024 + threadIdx_x * 4 + 768 + 4] = B_1[k_0_fused * 16384 + threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 45056:k_0_fused * 16384 + threadIdx_x // 16 * 1024 + blockIdx_x % 16 * 64 + threadIdx_x % 16 * 4 + 45056 + 4]
            T.attr(0, "async_wait_queue_scope", 0)
            T.attr(0, "async_wait_inflight_count", 2)
            for k_1, k_2, j_4, vthread_x_s in T.grid(2, 8, 2, 32):
                cse_var_2: T.int32 = k_0_fused % 3 * 1024
                cse_var_1: T.int32 = vthread_x_s * 2 + j_4
                Y_local_1[cse_var_1] = Y_local_1[cse_var_1] + A_shared_1[cse_var_2 + vthread_x_s // 4 * 128 + threadIdx_x // 8 * 16 + k_1 * 8 + k_2] * B_shared_1[cse_var_2 + k_1 * 512 + k_2 * 64 + vthread_x_s % 4 * 16 + threadIdx_x % 8 * 2 + j_4]
        with T.attr(0, "async_wait_queue_scope", 0):
            T.attr(0, "async_wait_inflight_count", 1)
            for k_1, k_2, j_4, vthread_x_s in T.grid(2, 8, 2, 32):
                cse_var_3: T.int32 = vthread_x_s * 2 + j_4
                Y_local_1[cse_var_3] = Y_local_1[cse_var_3] + A_shared_1[vthread_x_s // 4 * 128 + threadIdx_x // 8 * 16 + k_1 * 8 + k_2 + 2048] * B_shared_1[k_1 * 512 + k_2 * 64 + vthread_x_s % 4 * 16 + threadIdx_x % 8 * 2 + j_4 + 2048]
        with T.attr(0, "async_wait_queue_scope", 0):
            T.attr(0, "async_wait_inflight_count", 0)
            for k_1, k_2, j_4, vthread_x_s in T.grid(2, 8, 2, 32):
                cse_var_4: T.int32 = vthread_x_s * 2 + j_4
                Y_local_1[cse_var_4] = Y_local_1[cse_var_4] + A_shared_1[vthread_x_s // 4 * 128 + threadIdx_x // 8 * 16 + k_1 * 8 + k_2] * B_shared_1[k_1 * 512 + k_2 * 64 + vthread_x_s % 4 * 16 + threadIdx_x % 8 * 2 + j_4]
        for ax1, vthread_x_s in T.grid(2, 32):
            Y_1[blockIdx_x // 16 * 65536 + vthread_x_s // 4 * 8192 + threadIdx_x // 8 * 1024 + blockIdx_x % 16 * 64 + vthread_x_s % 4 * 16 + threadIdx_x % 8 * 2 + ax1] = Y_local_1[vthread_x_s * 2 + ax1]
    

