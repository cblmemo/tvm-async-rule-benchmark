# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(A: T.Buffer[(4096, 4096), "float32"], B: T.Buffer[(4096, 4096), "float32"], Y: T.Buffer[(4096, 4096), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # body
        # with T.block("root")
        Y_local = T.alloc_buffer([4096, 4096], dtype="float32", scope="local")
        A_shared = T.alloc_buffer([4096, 4096], dtype="float32", scope="shared")
        B_shared = T.alloc_buffer([4096, 4096], dtype="float32", scope="shared")
        for i_0_j_0_fused in T.thread_binding(1024, thread="blockIdx.x", annotations={"pragma_auto_unroll_max_step":1024, "pragma_unroll_explicit":1}):
            for i_1_j_1_fused in T.thread_binding(2, thread="vthread.x"):
                for i_2_j_2_fused in T.thread_binding(128, thread="threadIdx.x"):
                    for i_3_init, j_3_init, i_4_init, j_4_init in T.grid(16, 1, 1, 4):
                        with T.block("Y_init"):
                            v_i = T.axis.spatial(4096, i_4_init + i_0_j_0_fused // 32 * 128 + i_2_j_2_fused // 16 * 16 + i_3_init)
                            v_j = T.axis.spatial(4096, i_0_j_0_fused % 32 * 128 + i_1_j_1_fused * 64 + i_2_j_2_fused % 16 * 4 + j_3_init * 4 + j_4_init)
                            T.reads()
                            T.writes(Y_local[v_i, v_j])
                            T.block_attr({"meta_schedule.thread_extent_high_inclusive":1024, "meta_schedule.thread_extent_low_inclusive":32, "meta_schedule.tiling_structure":"SSSRRSRS"})
                            Y_local[v_i, v_j] = T.float32(0)
                    for k_0_fused in T.serial(256, annotations={"software_pipeline_async_stages":[0], "software_pipeline_order":[0, 1, 2], "software_pipeline_stage":[0, 0, 2]}):
                        for ax0_ax1_fused_0 in T.serial(4):
                            for ax0_ax1_fused_1 in T.thread_binding(128, thread="threadIdx.x"):
                                for ax0_ax1_fused_2 in T.vectorized(4):
                                    with T.block("A_shared"):
                                        v0 = T.axis.spatial(4096, i_0_j_0_fused // 32 * 128 + (ax0_ax1_fused_0 * 512 + ax0_ax1_fused_1 * 4 + ax0_ax1_fused_2) // 16)
                                        v1 = T.axis.spatial(4096, k_0_fused * 16 + (ax0_ax1_fused_0 * 512 + ax0_ax1_fused_1 * 4 + ax0_ax1_fused_2) % 16)
                                        T.reads(A[v0, v1])
                                        T.writes(A_shared[v0, v1])
                                        A_shared[v0, v1] = A[v0, v1]
                        for ax0_ax1_fused_0 in T.serial(4):
                            for ax0_ax1_fused_1 in T.thread_binding(128, thread="threadIdx.x"):
                                for ax0_ax1_fused_2 in T.vectorized(4):
                                    with T.block("B_shared"):
                                        v0 = T.axis.spatial(4096, k_0_fused * 16 + (ax0_ax1_fused_0 * 512 + ax0_ax1_fused_1 * 4 + ax0_ax1_fused_2) // 128)
                                        v1 = T.axis.spatial(4096, i_0_j_0_fused % 32 * 128 + (ax0_ax1_fused_0 * 512 + ax0_ax1_fused_1 * 4 + ax0_ax1_fused_2) % 128)
                                        T.reads(B[v0, v1])
                                        T.writes(B_shared[v0, v1])
                                        B_shared[v0, v1] = B[v0, v1]
                        for k_1, i_3, j_3, k_2, i_4, j_4 in T.grid(2, 16, 1, 8, 1, 4):
                            with T.block("Y_update"):
                                v_i = T.axis.spatial(4096, i_4 + i_0_j_0_fused // 32 * 128 + i_2_j_2_fused // 16 * 16 + i_3)
                                v_j = T.axis.spatial(4096, i_0_j_0_fused % 32 * 128 + i_1_j_1_fused * 64 + i_2_j_2_fused % 16 * 4 + j_3 * 4 + j_4)
                                v_k = T.axis.reduce(4096, k_0_fused * 16 + k_1 * 8 + k_2)
                                T.reads(Y_local[v_i, v_j], A_shared[v_i, v_k], B_shared[v_k, v_j])
                                T.writes(Y_local[v_i, v_j])
                                T.block_attr({"meta_schedule.thread_extent_high_inclusive":1024, "meta_schedule.thread_extent_low_inclusive":32, "meta_schedule.tiling_structure":"SSSRRSRS"})
                                Y_local[v_i, v_j] = Y_local[v_i, v_j] + A_shared[v_i, v_k] * B_shared[v_k, v_j]
                    for ax0, ax1 in T.grid(16, 4):
                        with T.block("Y_local"):
                            v0 = T.axis.spatial(4096, i_0_j_0_fused // 32 * 128 + i_2_j_2_fused // 16 * 16 + ax0)
                            v1 = T.axis.spatial(4096, i_0_j_0_fused % 32 * 128 + i_1_j_1_fused * 64 + i_2_j_2_fused % 16 * 4 + ax1)
                            T.reads(Y_local[v0, v1])
                            T.writes(Y[v0, v1])
                            Y[v0, v1] = Y_local[v0, v1]
    

