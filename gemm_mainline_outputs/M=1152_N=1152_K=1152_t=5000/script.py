# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(A: T.Buffer[(1152, 1152), "float32"], B: T.Buffer[(1152, 1152), "float32"], Y: T.Buffer[(1152, 1152), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # body
        # with T.block("root")
        Y_local = T.alloc_buffer([1152, 1152], dtype="float32", scope="local")
        A_shared = T.alloc_buffer([1152, 1152], dtype="float32", scope="shared")
        B_shared = T.alloc_buffer([1152, 1152], dtype="float32", scope="shared")
        for i_0_j_0_fused in T.thread_binding(128, thread="blockIdx.x", annotations={"pragma_auto_unroll_max_step":512, "pragma_unroll_explicit":1}):
            for i_1_j_1_fused in T.thread_binding(6, thread="vthread.x"):
                for i_2_j_2_fused in T.thread_binding(108, thread="threadIdx.x"):
                    for i_3_init, j_3_init, i_4_init, j_4_init in T.grid(8, 2, 1, 1):
                        with T.block("Y_init"):
                            v_i = T.axis.spatial(1152, i_0_j_0_fused // 16 * 144 + i_2_j_2_fused // 6 * 8 + i_3_init + i_4_init)
                            v_j = T.axis.spatial(1152, j_4_init + i_0_j_0_fused % 16 * 72 + i_1_j_1_fused * 12 + i_2_j_2_fused % 6 * 2 + j_3_init)
                            T.reads()
                            T.writes(Y_local[v_i, v_j])
                            T.block_attr({"meta_schedule.thread_extent_high_inclusive":1024, "meta_schedule.thread_extent_low_inclusive":32, "meta_schedule.tiling_structure":"SSSRRSRS"})
                            Y_local[v_i, v_j] = T.float32(0)
                    for k_0 in T.serial(48):
                        for ax0_ax1_fused_0 in T.serial(8):
                            for ax0_ax1_fused_1 in T.thread_binding(108, thread="threadIdx.x"):
                                for ax0_ax1_fused_2 in T.vectorized(4):
                                    with T.block("A_shared"):
                                        v0 = T.axis.spatial(1152, i_0_j_0_fused // 16 * 144 + (ax0_ax1_fused_0 * 432 + ax0_ax1_fused_1 * 4 + ax0_ax1_fused_2) // 24)
                                        v1 = T.axis.spatial(1152, k_0 * 24 + (ax0_ax1_fused_0 * 432 + ax0_ax1_fused_1 * 4 + ax0_ax1_fused_2) % 24)
                                        T.reads(A[v0, v1])
                                        T.writes(A_shared[v0, v1])
                                        A_shared[v0, v1] = A[v0, v1]
                        for ax0_ax1_fused_0 in T.serial(8):
                            for ax0_ax1_fused_1 in T.thread_binding(108, thread="threadIdx.x"):
                                for ax0_ax1_fused_2 in T.vectorized(2):
                                    with T.block("B_shared"):
                                        v0 = T.axis.spatial(1152, k_0 * 24 + (ax0_ax1_fused_0 * 216 + ax0_ax1_fused_1 * 2 + ax0_ax1_fused_2) // 72)
                                        v1 = T.axis.spatial(1152, i_0_j_0_fused % 16 * 72 + (ax0_ax1_fused_0 * 216 + ax0_ax1_fused_1 * 2 + ax0_ax1_fused_2) % 72)
                                        T.reads(B[v0, v1])
                                        T.writes(B_shared[v0, v1])
                                        B_shared[v0, v1] = B[v0, v1]
                        for k_1, i_3, j_3, k_2, i_4, j_4 in T.grid(3, 8, 2, 8, 1, 1):
                            with T.block("Y_update"):
                                v_i = T.axis.spatial(1152, i_0_j_0_fused // 16 * 144 + i_2_j_2_fused // 6 * 8 + i_3 + i_4)
                                v_j = T.axis.spatial(1152, j_4 + i_0_j_0_fused % 16 * 72 + i_1_j_1_fused * 12 + i_2_j_2_fused % 6 * 2 + j_3)
                                v_k = T.axis.reduce(1152, k_0 * 24 + k_1 * 8 + k_2)
                                T.reads(Y_local[v_i, v_j], A_shared[v_i, v_k], B_shared[v_k, v_j])
                                T.writes(Y_local[v_i, v_j])
                                T.block_attr({"meta_schedule.thread_extent_high_inclusive":1024, "meta_schedule.thread_extent_low_inclusive":32, "meta_schedule.tiling_structure":"SSSRRSRS"})
                                Y_local[v_i, v_j] = Y_local[v_i, v_j] + A_shared[v_i, v_k] * B_shared[v_k, v_j]
                    for ax0, ax1 in T.grid(8, 2):
                        with T.block("Y_local"):
                            v0 = T.axis.spatial(1152, i_0_j_0_fused // 16 * 144 + i_2_j_2_fused // 6 * 8 + ax0)
                            v1 = T.axis.spatial(1152, i_0_j_0_fused % 16 * 72 + i_1_j_1_fused * 12 + i_2_j_2_fused % 6 * 2 + ax1)
                            T.reads(Y_local[v0, v1])
                            T.writes(Y[v0, v1])
                            Y[v0, v1] = Y_local[v0, v1]
    

