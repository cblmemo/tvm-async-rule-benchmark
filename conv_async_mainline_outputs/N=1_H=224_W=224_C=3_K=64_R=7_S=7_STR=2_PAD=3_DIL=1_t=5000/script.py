# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(inputs: T.Buffer[(1, 224, 224, 3), "float32"], weight: T.Buffer[(7, 7, 3, 64), "float32"], conv2d_nhwc: T.Buffer[(1, 112, 112, 64), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # body
        # with T.block("root")
        conv2d_nhwc_local = T.alloc_buffer([1, 112, 112, 64], dtype="float32", scope="local")
        PadInput_shared = T.alloc_buffer([1, 230, 230, 3], dtype="float32", scope="shared")
        weight_shared = T.alloc_buffer([7, 7, 3, 64], dtype="float32", scope="shared")
        for n_0_h_0_w_0_co_0_fused in T.thread_binding(112, thread="blockIdx.x", annotations={"pragma_auto_unroll_max_step":1024, "pragma_unroll_explicit":1}):
            for n_1_h_1_w_1_co_1_fused in T.thread_binding(8, thread="vthread.x"):
                for n_2_h_2_w_2_co_2_fused in T.thread_binding(64, thread="threadIdx.x"):
                    for n_3_init, h_3_init, w_3_init, co_3_init, n_4_init, h_4_init, w_4_init, co_4_init in T.grid(1, 1, 14, 1, 1, 1, 1, 1):
                        with T.block("conv2d_nhwc_init"):
                            v_n = T.axis.spatial(1, n_4_init + n_3_init)
                            v_h = T.axis.spatial(112, h_3_init + h_4_init + n_0_h_0_w_0_co_0_fused // 8 * 8 + n_1_h_1_w_1_co_1_fused // 4 * 4 + n_2_h_2_w_2_co_2_fused // 16)
                            v_w = T.axis.spatial(112, w_4_init + n_0_h_0_w_0_co_0_fused % 8 * 14 + w_3_init)
                            v_co = T.axis.spatial(64, co_4_init + n_1_h_1_w_1_co_1_fused % 4 * 16 + n_2_h_2_w_2_co_2_fused % 16 + co_3_init)
                            T.reads()
                            T.writes(conv2d_nhwc_local[v_n, v_h, v_w, v_co])
                            T.block_attr({"meta_schedule.thread_extent_high_inclusive":1024, "meta_schedule.thread_extent_low_inclusive":32, "meta_schedule.tiling_structure":"SSSRRSRS"})
                            conv2d_nhwc_local[v_n, v_h, v_w, v_co] = T.float32(0)
                    for rh_0_rw_0_rc_0_fused in T.serial(3, annotations={"software_pipeline_async_stages":[0], "software_pipeline_order":[0, 1, 2], "software_pipeline_stage":[0, 0, 2]}):
                        for ax0_ax1_ax2_ax3_fused_0 in T.serial(11):
                            for ax0_ax1_ax2_ax3_fused_1 in T.thread_binding(64, thread="threadIdx.x"):
                                with T.block("PadInput_shared"):
                                    T.where(ax0_ax1_ax2_ax3_fused_0 * 64 + ax0_ax1_ax2_ax3_fused_1 < 693)
                                    v0 = T.axis.spatial(1, 0)
                                    v1 = T.axis.spatial(230, n_0_h_0_w_0_co_0_fused // 8 * 16 + (ax0_ax1_ax2_ax3_fused_0 * 64 + ax0_ax1_ax2_ax3_fused_1) // 33)
                                    v2 = T.axis.spatial(230, n_0_h_0_w_0_co_0_fused % 8 * 28 + (ax0_ax1_ax2_ax3_fused_0 * 64 + ax0_ax1_ax2_ax3_fused_1) % 33)
                                    v3 = T.axis.spatial(3, rh_0_rw_0_rc_0_fused)
                                    T.reads(inputs[v0, v1 - 3, v2 - 3, v3])
                                    T.writes(PadInput_shared[v0, v1, v2, v3])
                                    PadInput_shared[v0, v1, v2, v3] = T.if_then_else(3 <= v1 and v1 < 227 and 3 <= v2 and v2 < 227, inputs[v0, v1 - 3, v2 - 3, v3], T.float32(0), dtype="float32")
                        for ax0_ax1_ax2_ax3_fused_0 in T.serial(49):
                            for ax0_ax1_ax2_ax3_fused_1 in T.thread_binding(64, thread="threadIdx.x"):
                                with T.block("weight_shared"):
                                    v0 = T.axis.spatial(7, (ax0_ax1_ax2_ax3_fused_0 * 64 + ax0_ax1_ax2_ax3_fused_1) // 448)
                                    v1 = T.axis.spatial(7, (ax0_ax1_ax2_ax3_fused_0 * 64 + ax0_ax1_ax2_ax3_fused_1) % 448 // 64)
                                    v2 = T.axis.spatial(3, rh_0_rw_0_rc_0_fused)
                                    v3 = T.axis.spatial(64, (ax0_ax1_ax2_ax3_fused_0 * 64 + ax0_ax1_ax2_ax3_fused_1) % 64)
                                    T.reads(weight[v0, v1, v2, v3])
                                    T.writes(weight_shared[v0, v1, v2, v3])
                                    weight_shared[v0, v1, v2, v3] = weight[v0, v1, v2, v3]
                        for rh_1, rw_1, rc_1, n_3, h_3, w_3, co_3, rh_2, rw_2, rc_2, n_4, h_4, w_4, co_4 in T.grid(7, 1, 1, 1, 1, 14, 1, 1, 7, 1, 1, 1, 1, 1):
                            with T.block("conv2d_nhwc_update"):
                                v_n = T.axis.spatial(1, n_4 + n_3)
                                v_h = T.axis.spatial(112, h_3 + h_4 + n_0_h_0_w_0_co_0_fused // 8 * 8 + n_1_h_1_w_1_co_1_fused // 4 * 4 + n_2_h_2_w_2_co_2_fused // 16)
                                v_w = T.axis.spatial(112, w_4 + n_0_h_0_w_0_co_0_fused % 8 * 14 + w_3)
                                v_co = T.axis.spatial(64, co_4 + n_1_h_1_w_1_co_1_fused % 4 * 16 + n_2_h_2_w_2_co_2_fused % 16 + co_3)
                                v_rh = T.axis.reduce(7, rh_2 + rh_1)
                                v_rw = T.axis.reduce(7, rw_1 * 7 + rw_2)
                                v_rc = T.axis.reduce(3, rc_2 + rh_0_rw_0_rc_0_fused + rc_1)
                                T.reads(conv2d_nhwc_local[v_n, v_h, v_w, v_co], PadInput_shared[v_n, v_h * 2 + v_rh, v_w * 2 + v_rw, v_co // 64 * 3 + v_rc], weight_shared[v_rh, v_rw, v_rc, v_co])
                                T.writes(conv2d_nhwc_local[v_n, v_h, v_w, v_co])
                                T.block_attr({"meta_schedule.thread_extent_high_inclusive":1024, "meta_schedule.thread_extent_low_inclusive":32, "meta_schedule.tiling_structure":"SSSRRSRS"})
                                conv2d_nhwc_local[v_n, v_h, v_w, v_co] = conv2d_nhwc_local[v_n, v_h, v_w, v_co] + PadInput_shared[v_n, v_h * 2 + v_rh, v_w * 2 + v_rw, v_co // 64 * 3 + v_rc] * weight_shared[v_rh, v_rw, v_rc, v_co]
                    for ax0, ax1, ax2, ax3 in T.grid(1, 1, 14, 1):
                        with T.block("conv2d_nhwc_local"):
                            v0 = T.axis.spatial(1, ax0)
                            v1 = T.axis.spatial(112, n_0_h_0_w_0_co_0_fused // 8 * 8 + n_1_h_1_w_1_co_1_fused // 4 * 4 + n_2_h_2_w_2_co_2_fused // 16 + ax1)
                            v2 = T.axis.spatial(112, n_0_h_0_w_0_co_0_fused % 8 * 14 + ax2)
                            v3 = T.axis.spatial(64, n_1_h_1_w_1_co_1_fused % 4 * 16 + n_2_h_2_w_2_co_2_fused % 16 + ax3)
                            T.reads(conv2d_nhwc_local[v0, v1, v2, v3])
                            T.writes(conv2d_nhwc[v0, v1, v2, v3])
                            conv2d_nhwc[v0, v1, v2, v3] = conv2d_nhwc_local[v0, v1, v2, v3]
    

