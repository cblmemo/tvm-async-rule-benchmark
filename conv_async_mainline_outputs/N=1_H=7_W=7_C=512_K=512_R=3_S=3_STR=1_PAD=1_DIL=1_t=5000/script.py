# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(inputs: T.Buffer[(1, 7, 7, 512), "float32"], weight: T.Buffer[(3, 3, 512, 512), "float32"], conv2d_nhwc: T.Buffer[(1, 7, 7, 512), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # body
        # with T.block("root")
        conv2d_nhwc_local = T.alloc_buffer([1, 7, 7, 512], dtype="float32", scope="local")
        PadInput_shared = T.alloc_buffer([1, 9, 9, 512], dtype="float32", scope="shared")
        weight_shared = T.alloc_buffer([3, 3, 512, 512], dtype="float32", scope="shared")
        for n_0_h_0_w_0_co_0_fused in T.thread_binding(112, thread="blockIdx.x", annotations={"pragma_auto_unroll_max_step":512, "pragma_unroll_explicit":1}):
            for n_1_h_1_w_1_co_1_fused in T.thread_binding(1, thread="vthread.x"):
                for n_2_h_2_w_2_co_2_fused in T.thread_binding(32, thread="threadIdx.x"):
                    for n_3_init, h_3_init, w_3_init, co_3_init, n_4_init, h_4_init, w_4_init, co_4_init in T.grid(1, 7, 1, 1, 1, 1, 1, 1):
                        with T.block("conv2d_nhwc_init"):
                            v_n = T.axis.spatial(1, n_4_init + n_3_init)
                            v_h = T.axis.spatial(7, h_3_init + h_4_init)
                            v_w = T.axis.spatial(7, n_0_h_0_w_0_co_0_fused // 16 + w_3_init + w_4_init)
                            v_co = T.axis.spatial(512, co_4_init + n_0_h_0_w_0_co_0_fused % 16 * 32 + n_2_h_2_w_2_co_2_fused + co_3_init)
                            T.reads()
                            T.writes(conv2d_nhwc_local[v_n, v_h, v_w, v_co])
                            T.block_attr({"meta_schedule.thread_extent_high_inclusive":1024, "meta_schedule.thread_extent_low_inclusive":32, "meta_schedule.tiling_structure":"SSSRRSRS"})
                            conv2d_nhwc_local[v_n, v_h, v_w, v_co] = T.float32(0)
                    for rh_0_rw_0_rc_0_fused in T.serial(64, annotations={"software_pipeline_async_stages":[0], "software_pipeline_order":[0, 1, 2], "software_pipeline_stage":[0, 0, 3]}):
                        for ax0_ax1_ax2_ax3_fused_0 in T.serial(7):
                            for ax0_ax1_ax2_ax3_fused_1 in T.thread_binding(32, thread="threadIdx.x"):
                                with T.block("PadInput_shared"):
                                    T.where(ax0_ax1_ax2_ax3_fused_0 * 32 + ax0_ax1_ax2_ax3_fused_1 < 216)
                                    v0 = T.axis.spatial(1, 0)
                                    v1 = T.axis.spatial(9, (ax0_ax1_ax2_ax3_fused_0 * 32 + ax0_ax1_ax2_ax3_fused_1) // 24)
                                    v2 = T.axis.spatial(9, (ax0_ax1_ax2_ax3_fused_0 * 32 + ax0_ax1_ax2_ax3_fused_1) % 24 // 8 + n_0_h_0_w_0_co_0_fused // 16)
                                    v3 = T.axis.spatial(512, rh_0_rw_0_rc_0_fused * 8 + (ax0_ax1_ax2_ax3_fused_0 * 32 + ax0_ax1_ax2_ax3_fused_1) % 8)
                                    T.reads(inputs[v0, v1 - 1, v2 - 1, v3])
                                    T.writes(PadInput_shared[v0, v1, v2, v3])
                                    PadInput_shared[v0, v1, v2, v3] = T.if_then_else(1 <= v1 and v1 < 8 and 1 <= v2 and v2 < 8, inputs[v0, v1 - 1, v2 - 1, v3], T.float32(0), dtype="float32")
                        for ax0_ax1_ax2_ax3_fused_0 in T.serial(18):
                            for ax0_ax1_ax2_ax3_fused_1 in T.thread_binding(32, thread="threadIdx.x"):
                                for ax0_ax1_ax2_ax3_fused_2 in T.vectorized(4):
                                    with T.block("weight_shared"):
                                        v0 = T.axis.spatial(3, (ax0_ax1_ax2_ax3_fused_0 * 128 + ax0_ax1_ax2_ax3_fused_1 * 4 + ax0_ax1_ax2_ax3_fused_2) // 768)
                                        v1 = T.axis.spatial(3, (ax0_ax1_ax2_ax3_fused_0 * 128 + ax0_ax1_ax2_ax3_fused_1 * 4 + ax0_ax1_ax2_ax3_fused_2) % 768 // 256)
                                        v2 = T.axis.spatial(512, rh_0_rw_0_rc_0_fused * 8 + (ax0_ax1_ax2_ax3_fused_0 * 128 + ax0_ax1_ax2_ax3_fused_1 * 4 + ax0_ax1_ax2_ax3_fused_2) % 256 // 32)
                                        v3 = T.axis.spatial(512, n_0_h_0_w_0_co_0_fused % 16 * 32 + (ax0_ax1_ax2_ax3_fused_0 * 128 + ax0_ax1_ax2_ax3_fused_1 * 4 + ax0_ax1_ax2_ax3_fused_2) % 32)
                                        T.reads(weight[v0, v1, v2, v3])
                                        T.writes(weight_shared[v0, v1, v2, v3])
                                        weight_shared[v0, v1, v2, v3] = weight[v0, v1, v2, v3]
                        for rh_1, rw_1, rc_1, n_3, h_3, w_3, co_3, rh_2, rw_2, rc_2, n_4, h_4, w_4, co_4 in T.grid(1, 3, 8, 1, 7, 1, 1, 3, 1, 1, 1, 1, 1, 1):
                            with T.block("conv2d_nhwc_update"):
                                v_n = T.axis.spatial(1, n_4 + n_3)
                                v_h = T.axis.spatial(7, h_3 + h_4)
                                v_w = T.axis.spatial(7, n_0_h_0_w_0_co_0_fused // 16 + w_3 + w_4)
                                v_co = T.axis.spatial(512, co_4 + n_0_h_0_w_0_co_0_fused % 16 * 32 + n_2_h_2_w_2_co_2_fused + co_3)
                                v_rh = T.axis.reduce(3, rh_1 * 3 + rh_2)
                                v_rw = T.axis.reduce(3, rw_1 + rw_2)
                                v_rc = T.axis.reduce(512, rc_2 + rh_0_rw_0_rc_0_fused * 8 + rc_1)
                                T.reads(conv2d_nhwc_local[v_n, v_h, v_w, v_co], PadInput_shared[v_n, v_h + v_rh, v_w + v_rw, v_co // 512 * 512 + v_rc], weight_shared[v_rh, v_rw, v_rc, v_co])
                                T.writes(conv2d_nhwc_local[v_n, v_h, v_w, v_co])
                                T.block_attr({"meta_schedule.thread_extent_high_inclusive":1024, "meta_schedule.thread_extent_low_inclusive":32, "meta_schedule.tiling_structure":"SSSRRSRS"})
                                conv2d_nhwc_local[v_n, v_h, v_w, v_co] = conv2d_nhwc_local[v_n, v_h, v_w, v_co] + PadInput_shared[v_n, v_h + v_rh, v_w + v_rw, v_co // 512 * 512 + v_rc] * weight_shared[v_rh, v_rw, v_rc, v_co]
                    for ax0, ax1, ax2, ax3 in T.grid(1, 7, 1, 1):
                        with T.block("conv2d_nhwc_local"):
                            v0, v1 = T.axis.remap("SS", [ax0, ax1])
                            v2 = T.axis.spatial(7, n_0_h_0_w_0_co_0_fused // 16 + ax2)
                            v3 = T.axis.spatial(512, n_0_h_0_w_0_co_0_fused % 16 * 32 + n_2_h_2_w_2_co_2_fused + ax3)
                            T.reads(conv2d_nhwc_local[v0, v1, v2, v3])
                            T.writes(conv2d_nhwc[v0, v1, v2, v3])
                            conv2d_nhwc[v0, v1, v2, v3] = conv2d_nhwc_local[v0, v1, v2, v3]
    

