# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(inputs: T.Buffer[(1, 7, 7, 512), "float32"], weight: T.Buffer[(3, 3, 512, 512), "float32"], conv2d_nhwc: T.Buffer[(1, 7, 7, 512), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # var definition
        threadIdx_x = T.env_thread("threadIdx.x")
        blockIdx_x = T.env_thread("blockIdx.x")
        # buffer definition
        conv2d_nhwc_1 = T.buffer_decl([25088], dtype="float32", data=conv2d_nhwc.data)
        inputs_1 = T.buffer_decl([25088], dtype="float32", data=inputs.data)
        weight_1 = T.buffer_decl([2359296], dtype="float32", data=weight.data)
        # body
        T.launch_thread(blockIdx_x, 64)
        conv2d_nhwc_local = T.allocate([7], "float32", "local")
        conv2d_nhwc_local_1 = T.buffer_decl([7], dtype="float32", data=conv2d_nhwc_local, scope="local")
        PadInput_shared = T.allocate([5184], "float32", "shared")
        PadInput_shared_1 = T.buffer_decl([5184], dtype="float32", data=PadInput_shared, scope="shared")
        weight_shared = T.allocate([4608], "float32", "shared")
        weight_shared_1 = T.buffer_decl([4608], dtype="float32", data=weight_shared, scope="shared")
        T.launch_thread(threadIdx_x, 56)
        conv2d_nhwc_local_1[0] = T.float32(0)
        conv2d_nhwc_local_1[1] = T.float32(0)
        conv2d_nhwc_local_1[2] = T.float32(0)
        conv2d_nhwc_local_1[3] = T.float32(0)
        conv2d_nhwc_local_1[4] = T.float32(0)
        conv2d_nhwc_local_1[5] = T.float32(0)
        conv2d_nhwc_local_1[6] = T.float32(0)
        for rc_0 in T.serial(8):
            cse_var_2: T.int32 = rc_0 * 32768
            cse_var_1: T.int32 = rc_0 * 64
            PadInput_shared_1[threadIdx_x * 4] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 1] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 2] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 3] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 224] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 225] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 226] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 227] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 448] = T.if_then_else(32 <= threadIdx_x and 1 <= (threadIdx_x // 16 + 7) % 9 and (threadIdx_x * 4 + 448) % 576 < 512, inputs_1[(threadIdx_x + 112) // 144 * 3584 + (threadIdx_x // 16 + 7) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 449] = T.if_then_else(32 <= threadIdx_x and 1 <= (threadIdx_x // 16 + 7) % 9 and (threadIdx_x * 4 + 449) % 576 < 512, inputs_1[(threadIdx_x + 112) // 144 * 3584 + (threadIdx_x // 16 + 7) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 450] = T.if_then_else(32 <= threadIdx_x and 1 <= (threadIdx_x // 16 + 7) % 9 and (threadIdx_x * 4 + 450) % 576 < 512, inputs_1[(threadIdx_x + 112) // 144 * 3584 + (threadIdx_x // 16 + 7) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 451] = T.if_then_else(32 <= threadIdx_x and 1 <= (threadIdx_x // 16 + 7) % 9 and (threadIdx_x * 4 + 451) % 576 < 512, inputs_1[(threadIdx_x + 112) // 144 * 3584 + (threadIdx_x // 16 + 7) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 672] = inputs_1[(threadIdx_x + 168) // 144 * 3584 + (threadIdx_x // 8 + 3) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 673] = inputs_1[(threadIdx_x + 168) // 144 * 3584 + (threadIdx_x // 8 + 3) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 674] = inputs_1[(threadIdx_x + 168) // 144 * 3584 + (threadIdx_x // 8 + 3) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 675] = inputs_1[(threadIdx_x + 168) // 144 * 3584 + (threadIdx_x // 8 + 3) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 896] = T.if_then_else(threadIdx_x < 48, inputs_1[(threadIdx_x + 224) // 144 * 3584 + (threadIdx_x // 16 + 5) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 897] = T.if_then_else(threadIdx_x < 48, inputs_1[(threadIdx_x + 224) // 144 * 3584 + (threadIdx_x // 16 + 5) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 898] = T.if_then_else(threadIdx_x < 48, inputs_1[(threadIdx_x + 224) // 144 * 3584 + (threadIdx_x // 16 + 5) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 899] = T.if_then_else(threadIdx_x < 48, inputs_1[(threadIdx_x + 224) // 144 * 3584 + (threadIdx_x // 16 + 5) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1120] = T.if_then_else(2 <= (threadIdx_x // 8 + 17) % 18 and (threadIdx_x * 4 + 544) % 576 < 512, inputs_1[(threadIdx_x + 280) // 144 * 3584 + (threadIdx_x // 8 + 17) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1121] = T.if_then_else(2 <= (threadIdx_x // 8 + 17) % 18 and (threadIdx_x * 4 + 545) % 576 < 512, inputs_1[(threadIdx_x + 280) // 144 * 3584 + (threadIdx_x // 8 + 17) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1122] = T.if_then_else(2 <= (threadIdx_x // 8 + 17) % 18 and (threadIdx_x * 4 + 546) % 576 < 512, inputs_1[(threadIdx_x + 280) // 144 * 3584 + (threadIdx_x // 8 + 17) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1123] = T.if_then_else(2 <= (threadIdx_x // 8 + 17) % 18 and (threadIdx_x * 4 + 547) % 576 < 512, inputs_1[(threadIdx_x + 280) // 144 * 3584 + (threadIdx_x // 8 + 17) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1344] = inputs_1[(threadIdx_x + 336) // 144 * 3584 + (threadIdx_x // 16 + 3) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 1345] = inputs_1[(threadIdx_x + 336) // 144 * 3584 + (threadIdx_x // 16 + 3) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095]
            PadInput_shared_1[threadIdx_x * 4 + 1346] = inputs_1[(threadIdx_x + 336) // 144 * 3584 + (threadIdx_x // 16 + 3) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094]
            PadInput_shared_1[threadIdx_x * 4 + 1347] = inputs_1[(threadIdx_x + 336) // 144 * 3584 + (threadIdx_x // 16 + 3) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093]
            PadInput_shared_1[threadIdx_x * 4 + 1568] = T.if_then_else(2 <= (threadIdx_x // 8 + 13) % 18 and (threadIdx_x * 4 + 416) % 576 < 512, inputs_1[(threadIdx_x + 392) // 144 * 3584 + (threadIdx_x // 8 + 13) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1569] = T.if_then_else(2 <= (threadIdx_x // 8 + 13) % 18 and (threadIdx_x * 4 + 417) % 576 < 512, inputs_1[(threadIdx_x + 392) // 144 * 3584 + (threadIdx_x // 8 + 13) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1570] = T.if_then_else(2 <= (threadIdx_x // 8 + 13) % 18 and (threadIdx_x * 4 + 418) % 576 < 512, inputs_1[(threadIdx_x + 392) // 144 * 3584 + (threadIdx_x // 8 + 13) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1571] = T.if_then_else(2 <= (threadIdx_x // 8 + 13) % 18 and (threadIdx_x * 4 + 419) % 576 < 512, inputs_1[(threadIdx_x + 392) // 144 * 3584 + (threadIdx_x // 8 + 13) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 1792] = inputs_1[(threadIdx_x + 448) // 144 * 3584 + (threadIdx_x // 16 + 1) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 1793] = inputs_1[(threadIdx_x + 448) // 144 * 3584 + (threadIdx_x // 16 + 1) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095]
            PadInput_shared_1[threadIdx_x * 4 + 1794] = inputs_1[(threadIdx_x + 448) // 144 * 3584 + (threadIdx_x // 16 + 1) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094]
            PadInput_shared_1[threadIdx_x * 4 + 1795] = inputs_1[(threadIdx_x + 448) // 144 * 3584 + (threadIdx_x // 16 + 1) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093]
            PadInput_shared_1[threadIdx_x * 4 + 2016] = inputs_1[(threadIdx_x + 504) // 144 * 3584 + (threadIdx_x // 8 + 9) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 2017] = inputs_1[(threadIdx_x + 504) // 144 * 3584 + (threadIdx_x // 8 + 9) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 2018] = inputs_1[(threadIdx_x + 504) // 144 * 3584 + (threadIdx_x // 8 + 9) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 2019] = inputs_1[(threadIdx_x + 504) // 144 * 3584 + (threadIdx_x // 8 + 9) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 2240] = T.if_then_else(1 <= (threadIdx_x // 16 + 8) % 9 and (threadIdx_x * 4 + 512) % 576 < 512, inputs_1[(threadIdx_x + 560) // 144 * 3584 + (threadIdx_x // 16 + 8) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2241] = T.if_then_else(1 <= (threadIdx_x // 16 + 8) % 9 and (threadIdx_x * 4 + 513) % 576 < 512, inputs_1[(threadIdx_x + 560) // 144 * 3584 + (threadIdx_x // 16 + 8) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2242] = T.if_then_else(1 <= (threadIdx_x // 16 + 8) % 9 and (threadIdx_x * 4 + 514) % 576 < 512, inputs_1[(threadIdx_x + 560) // 144 * 3584 + (threadIdx_x // 16 + 8) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2243] = T.if_then_else(1 <= (threadIdx_x // 16 + 8) % 9 and (threadIdx_x * 4 + 515) % 576 < 512, inputs_1[(threadIdx_x + 560) // 144 * 3584 + (threadIdx_x // 16 + 8) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2464] = inputs_1[(threadIdx_x + 616) // 144 * 3584 + (threadIdx_x // 8 + 5) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 2465] = inputs_1[(threadIdx_x + 616) // 144 * 3584 + (threadIdx_x // 8 + 5) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 2466] = inputs_1[(threadIdx_x + 616) // 144 * 3584 + (threadIdx_x // 8 + 5) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 2467] = inputs_1[(threadIdx_x + 616) // 144 * 3584 + (threadIdx_x // 8 + 5) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 2688] = T.if_then_else(1 <= (threadIdx_x // 16 + 6) % 9 and (threadIdx_x * 4 + 384) % 576 < 512, inputs_1[(threadIdx_x + 672) // 144 * 3584 + (threadIdx_x // 16 + 6) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2689] = T.if_then_else(1 <= (threadIdx_x // 16 + 6) % 9 and (threadIdx_x * 4 + 385) % 576 < 512, inputs_1[(threadIdx_x + 672) // 144 * 3584 + (threadIdx_x // 16 + 6) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2690] = T.if_then_else(1 <= (threadIdx_x // 16 + 6) % 9 and (threadIdx_x * 4 + 386) % 576 < 512, inputs_1[(threadIdx_x + 672) // 144 * 3584 + (threadIdx_x // 16 + 6) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2691] = T.if_then_else(1 <= (threadIdx_x // 16 + 6) % 9 and (threadIdx_x * 4 + 387) % 576 < 512, inputs_1[(threadIdx_x + 672) // 144 * 3584 + (threadIdx_x // 16 + 6) % 9 * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2912] = T.if_then_else(2 <= (threadIdx_x // 8 + 1) % 18, inputs_1[(threadIdx_x + 728) // 144 * 3584 + (threadIdx_x // 8 + 1) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2913] = T.if_then_else(2 <= (threadIdx_x // 8 + 1) % 18, inputs_1[(threadIdx_x + 728) // 144 * 3584 + (threadIdx_x // 8 + 1) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2914] = T.if_then_else(2 <= (threadIdx_x // 8 + 1) % 18, inputs_1[(threadIdx_x + 728) // 144 * 3584 + (threadIdx_x // 8 + 1) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 2915] = T.if_then_else(2 <= (threadIdx_x // 8 + 1) % 18, inputs_1[(threadIdx_x + 728) // 144 * 3584 + (threadIdx_x // 8 + 1) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 3136] = inputs_1[(threadIdx_x + 784) // 144 * 3584 + (threadIdx_x // 16 + 4) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 3137] = inputs_1[(threadIdx_x + 784) // 144 * 3584 + (threadIdx_x // 16 + 4) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095]
            PadInput_shared_1[threadIdx_x * 4 + 3138] = inputs_1[(threadIdx_x + 784) // 144 * 3584 + (threadIdx_x // 16 + 4) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094]
            PadInput_shared_1[threadIdx_x * 4 + 3139] = inputs_1[(threadIdx_x + 784) // 144 * 3584 + (threadIdx_x // 16 + 4) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093]
            PadInput_shared_1[threadIdx_x * 4 + 3360] = T.if_then_else(2 <= (threadIdx_x // 8 + 15) % 18 and (threadIdx_x * 4 + 480) % 576 < 512, inputs_1[(threadIdx_x + 840) // 144 * 3584 + (threadIdx_x // 8 + 15) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 3361] = T.if_then_else(2 <= (threadIdx_x // 8 + 15) % 18 and (threadIdx_x * 4 + 481) % 576 < 512, inputs_1[(threadIdx_x + 840) // 144 * 3584 + (threadIdx_x // 8 + 15) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 3362] = T.if_then_else(2 <= (threadIdx_x // 8 + 15) % 18 and (threadIdx_x * 4 + 482) % 576 < 512, inputs_1[(threadIdx_x + 840) // 144 * 3584 + (threadIdx_x // 8 + 15) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 3363] = T.if_then_else(2 <= (threadIdx_x // 8 + 15) % 18 and (threadIdx_x * 4 + 483) % 576 < 512, inputs_1[(threadIdx_x + 840) // 144 * 3584 + (threadIdx_x // 8 + 15) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 3584] = inputs_1[(threadIdx_x + 896) // 144 * 3584 + (threadIdx_x // 16 + 2) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 3585] = inputs_1[(threadIdx_x + 896) // 144 * 3584 + (threadIdx_x // 16 + 2) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095]
            PadInput_shared_1[threadIdx_x * 4 + 3586] = inputs_1[(threadIdx_x + 896) // 144 * 3584 + (threadIdx_x // 16 + 2) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094]
            PadInput_shared_1[threadIdx_x * 4 + 3587] = inputs_1[(threadIdx_x + 896) // 144 * 3584 + (threadIdx_x // 16 + 2) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093]
            PadInput_shared_1[threadIdx_x * 4 + 3808] = T.if_then_else(threadIdx_x < 40, inputs_1[(threadIdx_x + 952) // 144 * 3584 + (threadIdx_x // 8 + 11) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 3809] = T.if_then_else(threadIdx_x < 40, inputs_1[(threadIdx_x + 952) // 144 * 3584 + (threadIdx_x // 8 + 11) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 3810] = T.if_then_else(threadIdx_x < 40, inputs_1[(threadIdx_x + 952) // 144 * 3584 + (threadIdx_x // 8 + 11) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 3811] = T.if_then_else(threadIdx_x < 40, inputs_1[(threadIdx_x + 952) // 144 * 3584 + (threadIdx_x // 8 + 11) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4032] = T.if_then_else(16 <= threadIdx_x, inputs_1[threadIdx_x // 16 * 512 + cse_var_1 + threadIdx_x % 16 * 4 + 20992], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4033] = T.if_then_else(16 <= threadIdx_x, inputs_1[threadIdx_x // 16 * 512 + cse_var_1 + threadIdx_x % 16 * 4 + 20993], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4034] = T.if_then_else(16 <= threadIdx_x, inputs_1[threadIdx_x // 16 * 512 + cse_var_1 + threadIdx_x % 16 * 4 + 20994], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4035] = T.if_then_else(16 <= threadIdx_x, inputs_1[threadIdx_x // 16 * 512 + cse_var_1 + threadIdx_x % 16 * 4 + 20995], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4256] = inputs_1[(threadIdx_x + 1064) // 144 * 3584 + (threadIdx_x // 8 + 7) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 32) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 4257] = inputs_1[(threadIdx_x + 1064) // 144 * 3584 + (threadIdx_x // 8 + 7) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 33) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 4258] = inputs_1[(threadIdx_x + 1064) // 144 * 3584 + (threadIdx_x // 8 + 7) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 34) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 4259] = inputs_1[(threadIdx_x + 1064) // 144 * 3584 + (threadIdx_x // 8 + 7) % 18 // 2 * 512 + cse_var_1 + (threadIdx_x * 4 + 35) % 64 - 4096]
            PadInput_shared_1[threadIdx_x * 4 + 4480] = T.if_then_else(threadIdx_x < 32 and 1 <= (threadIdx_x // 16 + 7) % 9 and (threadIdx_x * 4 + 448) % 576 < 512, inputs_1[(threadIdx_x + 1120) // 144 * 3584 + (threadIdx_x // 16 + 7) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4096], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4481] = T.if_then_else(threadIdx_x < 32 and 1 <= (threadIdx_x // 16 + 7) % 9 and (threadIdx_x * 4 + 449) % 576 < 512, inputs_1[(threadIdx_x + 1120) // 144 * 3584 + (threadIdx_x // 16 + 7) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4095], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4482] = T.if_then_else(threadIdx_x < 32 and 1 <= (threadIdx_x // 16 + 7) % 9 and (threadIdx_x * 4 + 450) % 576 < 512, inputs_1[(threadIdx_x + 1120) // 144 * 3584 + (threadIdx_x // 16 + 7) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4094], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4483] = T.if_then_else(threadIdx_x < 32 and 1 <= (threadIdx_x // 16 + 7) % 9 and (threadIdx_x * 4 + 451) % 576 < 512, inputs_1[(threadIdx_x + 1120) // 144 * 3584 + (threadIdx_x // 16 + 7) * 512 + cse_var_1 + threadIdx_x % 16 * 4 - 4093], T.float32(0), dtype="float32")
            PadInput_shared_1[threadIdx_x * 4 + 4704] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 4705] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 4706] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 4707] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 4928] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 4929] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 4930] = T.float32(0)
            PadInput_shared_1[threadIdx_x * 4 + 4931] = T.float32(0)
            if threadIdx_x < 8:
                PadInput_shared_1[threadIdx_x * 4 + 5152] = T.float32(0)
            if threadIdx_x < 8:
                PadInput_shared_1[threadIdx_x * 4 + 5153] = T.float32(0)
            if threadIdx_x < 8:
                PadInput_shared_1[threadIdx_x * 4 + 5154] = T.float32(0)
            if threadIdx_x < 8:
                PadInput_shared_1[threadIdx_x * 4 + 5155] = T.float32(0)
            weight_shared_1[threadIdx_x * 2] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 112] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 7168]
            weight_shared_1[threadIdx_x * 2 + 113] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 7169]
            weight_shared_1[threadIdx_x * 2 + 224] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 14336]
            weight_shared_1[threadIdx_x * 2 + 225] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 14337]
            weight_shared_1[threadIdx_x * 2 + 336] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 21504]
            weight_shared_1[threadIdx_x * 2 + 337] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 21505]
            weight_shared_1[threadIdx_x * 2 + 448] = weight_1[(threadIdx_x + 224) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 56) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 449] = weight_1[(threadIdx_x + 224) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 56) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 560] = weight_1[(threadIdx_x + 280) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 6) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 561] = weight_1[(threadIdx_x + 280) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 6) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 672] = weight_1[(threadIdx_x + 336) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 20) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 673] = weight_1[(threadIdx_x + 336) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 20) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 784] = weight_1[(threadIdx_x + 392) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 34) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 785] = weight_1[(threadIdx_x + 392) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 34) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 896] = weight_1[(threadIdx_x + 448) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 48) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 897] = weight_1[(threadIdx_x + 448) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 48) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1008] = weight_1[(threadIdx_x + 504) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 62) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1009] = weight_1[(threadIdx_x + 504) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 62) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1120] = weight_1[(threadIdx_x + 560) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 12) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1121] = weight_1[(threadIdx_x + 560) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 12) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1232] = weight_1[(threadIdx_x + 616) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 26) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1233] = weight_1[(threadIdx_x + 616) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 26) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1344] = weight_1[(threadIdx_x + 672) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 40) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1345] = weight_1[(threadIdx_x + 672) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 40) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1456] = weight_1[(threadIdx_x + 728) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 54) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1457] = weight_1[(threadIdx_x + 728) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 54) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1568] = weight_1[(threadIdx_x + 784) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 4) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1569] = weight_1[(threadIdx_x + 784) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 4) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1680] = weight_1[(threadIdx_x + 840) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 18) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1681] = weight_1[(threadIdx_x + 840) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 18) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1792] = weight_1[(threadIdx_x + 896) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 32) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1793] = weight_1[(threadIdx_x + 896) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 32) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 1904] = weight_1[(threadIdx_x + 952) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 46) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 1905] = weight_1[(threadIdx_x + 952) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 46) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2016] = weight_1[(threadIdx_x + 1008) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 60) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2017] = weight_1[(threadIdx_x + 1008) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 60) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2128] = weight_1[(threadIdx_x + 1064) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 10) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2129] = weight_1[(threadIdx_x + 1064) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 10) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2240] = weight_1[(threadIdx_x + 1120) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 24) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2241] = weight_1[(threadIdx_x + 1120) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 24) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2352] = weight_1[(threadIdx_x + 1176) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 38) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2353] = weight_1[(threadIdx_x + 1176) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 38) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2464] = weight_1[(threadIdx_x + 1232) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 52) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2465] = weight_1[(threadIdx_x + 1232) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 52) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2576] = weight_1[(threadIdx_x + 1288) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 2) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2577] = weight_1[(threadIdx_x + 1288) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 2) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2688] = weight_1[(threadIdx_x + 1344) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 16) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2689] = weight_1[(threadIdx_x + 1344) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 16) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2800] = weight_1[(threadIdx_x + 1400) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 30) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2801] = weight_1[(threadIdx_x + 1400) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 30) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 2912] = weight_1[(threadIdx_x + 1456) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 44) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 2913] = weight_1[(threadIdx_x + 1456) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 44) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 3024] = weight_1[(threadIdx_x + 1512) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 58) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 3025] = weight_1[(threadIdx_x + 1512) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 58) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 3136] = weight_1[(threadIdx_x + 1568) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 8) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 3137] = weight_1[(threadIdx_x + 1568) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 8) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 3248] = weight_1[(threadIdx_x + 1624) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 22) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 3249] = weight_1[(threadIdx_x + 1624) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 22) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 3360] = weight_1[(threadIdx_x + 1680) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 36) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 3361] = weight_1[(threadIdx_x + 1680) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 36) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 3472] = weight_1[(threadIdx_x + 1736) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 50) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 3473] = weight_1[(threadIdx_x + 1736) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 50) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 3584] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1835008]
            weight_shared_1[threadIdx_x * 2 + 3585] = weight_1[cse_var_2 + threadIdx_x // 4 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1835009]
            weight_shared_1[threadIdx_x * 2 + 3696] = weight_1[(threadIdx_x + 1848) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 14) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 3697] = weight_1[(threadIdx_x + 1848) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 14) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 3808] = weight_1[(threadIdx_x + 1904) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 28) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 3809] = weight_1[(threadIdx_x + 1904) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 28) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 3920] = weight_1[(threadIdx_x + 1960) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 42) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 3921] = weight_1[(threadIdx_x + 1960) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 42) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 4032] = weight_1[(threadIdx_x + 2016) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 56) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 4033] = weight_1[(threadIdx_x + 2016) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 56) % 64 * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 4144] = weight_1[(threadIdx_x + 2072) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 6) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 4145] = weight_1[(threadIdx_x + 2072) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 6) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 4256] = weight_1[(threadIdx_x + 2128) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 20) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 4257] = weight_1[(threadIdx_x + 2128) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 20) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 4368] = weight_1[(threadIdx_x + 2184) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 34) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 4369] = weight_1[(threadIdx_x + 2184) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 34) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            weight_shared_1[threadIdx_x * 2 + 4480] = weight_1[(threadIdx_x + 2240) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 48) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2]
            weight_shared_1[threadIdx_x * 2 + 4481] = weight_1[(threadIdx_x + 2240) // 256 * 262144 + cse_var_2 + (threadIdx_x // 4 + 48) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 1]
            if threadIdx_x < 8:
                weight_shared_1[threadIdx_x * 2 + 4592] = weight_1[cse_var_2 + (threadIdx_x // 4 + 62) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 2097152]
            if threadIdx_x < 8:
                weight_shared_1[threadIdx_x * 2 + 4593] = weight_1[cse_var_2 + (threadIdx_x // 4 + 62) * 512 + blockIdx_x * 8 + threadIdx_x % 4 * 2 + 2097153]
            for rw_1, rc_1 in T.grid(3, 32):
                conv2d_nhwc_local_1[0] = conv2d_nhwc_local_1[0] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8]
                conv2d_nhwc_local_1[1] = conv2d_nhwc_local_1[1] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 576] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8]
                conv2d_nhwc_local_1[2] = conv2d_nhwc_local_1[2] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1152] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8]
                conv2d_nhwc_local_1[3] = conv2d_nhwc_local_1[3] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1728] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8]
                conv2d_nhwc_local_1[4] = conv2d_nhwc_local_1[4] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2304] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8]
                conv2d_nhwc_local_1[5] = conv2d_nhwc_local_1[5] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2880] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8]
                conv2d_nhwc_local_1[6] = conv2d_nhwc_local_1[6] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 3456] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8]
                conv2d_nhwc_local_1[0] = conv2d_nhwc_local_1[0] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 8]
                conv2d_nhwc_local_1[1] = conv2d_nhwc_local_1[1] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 577] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 8]
                conv2d_nhwc_local_1[2] = conv2d_nhwc_local_1[2] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1153] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 8]
                conv2d_nhwc_local_1[3] = conv2d_nhwc_local_1[3] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1729] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 8]
                conv2d_nhwc_local_1[4] = conv2d_nhwc_local_1[4] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2305] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 8]
                conv2d_nhwc_local_1[5] = conv2d_nhwc_local_1[5] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2881] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 8]
                conv2d_nhwc_local_1[6] = conv2d_nhwc_local_1[6] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 3457] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 8]
                conv2d_nhwc_local_1[0] = conv2d_nhwc_local_1[0] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 576] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1536]
                conv2d_nhwc_local_1[1] = conv2d_nhwc_local_1[1] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1152] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1536]
                conv2d_nhwc_local_1[2] = conv2d_nhwc_local_1[2] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1728] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1536]
                conv2d_nhwc_local_1[3] = conv2d_nhwc_local_1[3] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2304] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1536]
                conv2d_nhwc_local_1[4] = conv2d_nhwc_local_1[4] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2880] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1536]
                conv2d_nhwc_local_1[5] = conv2d_nhwc_local_1[5] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 3456] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1536]
                conv2d_nhwc_local_1[6] = conv2d_nhwc_local_1[6] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 4032] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1536]
                conv2d_nhwc_local_1[0] = conv2d_nhwc_local_1[0] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 577] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1544]
                conv2d_nhwc_local_1[1] = conv2d_nhwc_local_1[1] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1153] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1544]
                conv2d_nhwc_local_1[2] = conv2d_nhwc_local_1[2] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1729] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1544]
                conv2d_nhwc_local_1[3] = conv2d_nhwc_local_1[3] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2305] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1544]
                conv2d_nhwc_local_1[4] = conv2d_nhwc_local_1[4] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2881] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1544]
                conv2d_nhwc_local_1[5] = conv2d_nhwc_local_1[5] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 3457] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1544]
                conv2d_nhwc_local_1[6] = conv2d_nhwc_local_1[6] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 4033] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 1544]
                conv2d_nhwc_local_1[0] = conv2d_nhwc_local_1[0] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1152] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3072]
                conv2d_nhwc_local_1[1] = conv2d_nhwc_local_1[1] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1728] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3072]
                conv2d_nhwc_local_1[2] = conv2d_nhwc_local_1[2] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2304] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3072]
                conv2d_nhwc_local_1[3] = conv2d_nhwc_local_1[3] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2880] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3072]
                conv2d_nhwc_local_1[4] = conv2d_nhwc_local_1[4] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 3456] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3072]
                conv2d_nhwc_local_1[5] = conv2d_nhwc_local_1[5] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 4032] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3072]
                conv2d_nhwc_local_1[6] = conv2d_nhwc_local_1[6] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 4608] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3072]
                conv2d_nhwc_local_1[0] = conv2d_nhwc_local_1[0] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1153] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3080]
                conv2d_nhwc_local_1[1] = conv2d_nhwc_local_1[1] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 1729] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3080]
                conv2d_nhwc_local_1[2] = conv2d_nhwc_local_1[2] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2305] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3080]
                conv2d_nhwc_local_1[3] = conv2d_nhwc_local_1[3] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 2881] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3080]
                conv2d_nhwc_local_1[4] = conv2d_nhwc_local_1[4] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 3457] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3080]
                conv2d_nhwc_local_1[5] = conv2d_nhwc_local_1[5] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 4033] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3080]
                conv2d_nhwc_local_1[6] = conv2d_nhwc_local_1[6] + PadInput_shared_1[threadIdx_x // 8 * 64 + rw_1 * 64 + rc_1 * 2 + 4609] * weight_shared_1[rw_1 * 512 + rc_1 * 16 + threadIdx_x % 8 + 3080]
        conv2d_nhwc_1[threadIdx_x // 8 * 512 + blockIdx_x * 8 + threadIdx_x % 8] = conv2d_nhwc_local_1[0]
        conv2d_nhwc_1[threadIdx_x // 8 * 512 + blockIdx_x * 8 + threadIdx_x % 8 + 3584] = conv2d_nhwc_local_1[1]
        conv2d_nhwc_1[threadIdx_x // 8 * 512 + blockIdx_x * 8 + threadIdx_x % 8 + 7168] = conv2d_nhwc_local_1[2]
        conv2d_nhwc_1[threadIdx_x // 8 * 512 + blockIdx_x * 8 + threadIdx_x % 8 + 10752] = conv2d_nhwc_local_1[3]
        conv2d_nhwc_1[threadIdx_x // 8 * 512 + blockIdx_x * 8 + threadIdx_x % 8 + 14336] = conv2d_nhwc_local_1[4]
        conv2d_nhwc_1[threadIdx_x // 8 * 512 + blockIdx_x * 8 + threadIdx_x % 8 + 17920] = conv2d_nhwc_local_1[5]
        conv2d_nhwc_1[threadIdx_x // 8 * 512 + blockIdx_x * 8 + threadIdx_x % 8 + 21504] = conv2d_nhwc_local_1[6]
    

