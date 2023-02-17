# from tvm.script import tir as T
@tvm.script.ir_module
class Module:
    @T.prim_func
    def main(inputs: T.Buffer[(1, 56, 56, 64), "float32"], weight: T.Buffer[(1, 1, 64, 256), "float32"], conv2d_nhwc: T.Buffer[(1, 56, 56, 256), "float32"]):
        # function attr dict
        T.func_attr({"global_symbol": "main", "tir.noalias": True})
        # var definition
        threadIdx_x = T.env_thread("threadIdx.x")
        blockIdx_x = T.env_thread("blockIdx.x")
        # buffer definition
        conv2d_nhwc_1 = T.buffer_decl([802816], dtype="float32", data=conv2d_nhwc.data)
        inputs_1 = T.buffer_decl([200704], dtype="float32", data=inputs.data)
        weight_1 = T.buffer_decl([16384], dtype="float32", data=weight.data)
        # body
        T.launch_thread(blockIdx_x, 224)
        conv2d_nhwc_local = T.allocate([56], "float32", "local")
        conv2d_nhwc_local_1 = T.buffer_decl([49], dtype="float32", data=conv2d_nhwc_local, scope="local")
        PadInput_shared = T.allocate([1792], "float32", "shared")
        PadInput_shared_1 = T.buffer_decl([1792], dtype="float32", data=PadInput_shared, scope="shared")
        weight_shared = T.allocate([2048], "float32", "shared")
        weight_shared_1 = T.buffer_decl([2048], dtype="float32", data=weight_shared, scope="shared")
        T.launch_thread(threadIdx_x, 64)
        conv2d_nhwc_local_1[0] = T.float32(0)
        conv2d_nhwc_local_1[7] = T.float32(0)
        conv2d_nhwc_local_1[14] = T.float32(0)
        conv2d_nhwc_local_1[21] = T.float32(0)
        conv2d_nhwc_local_1[28] = T.float32(0)
        conv2d_nhwc_local_1[35] = T.float32(0)
        conv2d_nhwc_local_1[42] = T.float32(0)
        conv2d_nhwc_local_1[49] = T.float32(0)
        conv2d_nhwc_local_1[1] = T.float32(0)
        conv2d_nhwc_local_1[8] = T.float32(0)
        conv2d_nhwc_local_1[15] = T.float32(0)
        conv2d_nhwc_local_1[22] = T.float32(0)
        conv2d_nhwc_local_1[29] = T.float32(0)
        conv2d_nhwc_local_1[36] = T.float32(0)
        conv2d_nhwc_local_1[43] = T.float32(0)
        conv2d_nhwc_local_1[50] = T.float32(0)
        conv2d_nhwc_local_1[2] = T.float32(0)
        conv2d_nhwc_local_1[9] = T.float32(0)
        conv2d_nhwc_local_1[16] = T.float32(0)
        conv2d_nhwc_local_1[23] = T.float32(0)
        conv2d_nhwc_local_1[30] = T.float32(0)
        conv2d_nhwc_local_1[37] = T.float32(0)
        conv2d_nhwc_local_1[44] = T.float32(0)
        conv2d_nhwc_local_1[51] = T.float32(0)
        conv2d_nhwc_local_1[3] = T.float32(0)
        conv2d_nhwc_local_1[10] = T.float32(0)
        conv2d_nhwc_local_1[17] = T.float32(0)
        conv2d_nhwc_local_1[24] = T.float32(0)
        conv2d_nhwc_local_1[31] = T.float32(0)
        conv2d_nhwc_local_1[38] = T.float32(0)
        conv2d_nhwc_local_1[45] = T.float32(0)
        conv2d_nhwc_local_1[52] = T.float32(0)
        conv2d_nhwc_local_1[4] = T.float32(0)
        conv2d_nhwc_local_1[11] = T.float32(0)
        conv2d_nhwc_local_1[18] = T.float32(0)
        conv2d_nhwc_local_1[25] = T.float32(0)
        conv2d_nhwc_local_1[32] = T.float32(0)
        conv2d_nhwc_local_1[39] = T.float32(0)
        conv2d_nhwc_local_1[46] = T.float32(0)
        conv2d_nhwc_local_1[53] = T.float32(0)
        conv2d_nhwc_local_1[5] = T.float32(0)
        conv2d_nhwc_local_1[12] = T.float32(0)
        conv2d_nhwc_local_1[19] = T.float32(0)
        conv2d_nhwc_local_1[26] = T.float32(0)
        conv2d_nhwc_local_1[33] = T.float32(0)
        conv2d_nhwc_local_1[40] = T.float32(0)
        conv2d_nhwc_local_1[47] = T.float32(0)
        conv2d_nhwc_local_1[54] = T.float32(0)
        conv2d_nhwc_local_1[6] = T.float32(0)
        conv2d_nhwc_local_1[13] = T.float32(0)
        conv2d_nhwc_local_1[20] = T.float32(0)
        conv2d_nhwc_local_1[27] = T.float32(0)
        conv2d_nhwc_local_1[34] = T.float32(0)
        conv2d_nhwc_local_1[41] = T.float32(0)
        conv2d_nhwc_local_1[48] = T.float32(0)
        conv2d_nhwc_local_1[55] = T.float32(0)
        for rc_0 in T.serial(2):
            PadInput_shared_1[threadIdx_x * 2:threadIdx_x * 2 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 128:threadIdx_x * 2 + 128 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 7168:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 7168 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 256:threadIdx_x * 2 + 256 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 14336:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 14336 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 384:threadIdx_x * 2 + 384 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 21504:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 21504 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 512:threadIdx_x * 2 + 512 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 28672:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 28672 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 640:threadIdx_x * 2 + 640 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 35840:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 35840 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 768:threadIdx_x * 2 + 768 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 43008:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 43008 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 896:threadIdx_x * 2 + 896 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 50176:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 50176 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 1024:threadIdx_x * 2 + 1024 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 57344:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 57344 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 1152:threadIdx_x * 2 + 1152 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 64512:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 64512 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 1280:threadIdx_x * 2 + 1280 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 71680:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 71680 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 1408:threadIdx_x * 2 + 1408 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 78848:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 78848 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 1536:threadIdx_x * 2 + 1536 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 86016:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 86016 + 2]
            PadInput_shared_1[threadIdx_x * 2 + 1664:threadIdx_x * 2 + 1664 + 2] = inputs_1[blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 93184:blockIdx_x // 112 * 100352 + threadIdx_x // 32 * 3584 + blockIdx_x % 112 // 4 * 128 + threadIdx_x % 32 // 16 * 64 + rc_0 * 32 + threadIdx_x % 16 * 2 + 93184 + 2]
            weight_shared_1[threadIdx_x * 4:threadIdx_x * 4 + 4] = weight_1[rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4:rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 4]
            weight_shared_1[threadIdx_x * 4 + 256:threadIdx_x * 4 + 256 + 4] = weight_1[rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 1024:rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 1024 + 4]
            weight_shared_1[threadIdx_x * 4 + 512:threadIdx_x * 4 + 512 + 4] = weight_1[rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 2048:rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 2048 + 4]
            weight_shared_1[threadIdx_x * 4 + 768:threadIdx_x * 4 + 768 + 4] = weight_1[rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 3072:rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 3072 + 4]
            weight_shared_1[threadIdx_x * 4 + 1024:threadIdx_x * 4 + 1024 + 4] = weight_1[rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 4096:rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 4096 + 4]
            weight_shared_1[threadIdx_x * 4 + 1280:threadIdx_x * 4 + 1280 + 4] = weight_1[rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 5120:rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 5120 + 4]
            weight_shared_1[threadIdx_x * 4 + 1536:threadIdx_x * 4 + 1536 + 4] = weight_1[rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 6144:rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 6144 + 4]
            weight_shared_1[threadIdx_x * 4 + 1792:threadIdx_x * 4 + 1792 + 4] = weight_1[rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 7168:rc_0 * 8192 + threadIdx_x // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 * 4 + 7168 + 4]
            for rc_1 in T.serial(32):
                conv2d_nhwc_local_1[0] = conv2d_nhwc_local_1[0] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[7] = conv2d_nhwc_local_1[7] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[14] = conv2d_nhwc_local_1[14] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[21] = conv2d_nhwc_local_1[21] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[28] = conv2d_nhwc_local_1[28] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 896] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[35] = conv2d_nhwc_local_1[35] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 896] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[42] = conv2d_nhwc_local_1[42] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 896] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[49] = conv2d_nhwc_local_1[49] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 896] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[1] = conv2d_nhwc_local_1[1] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 64] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[8] = conv2d_nhwc_local_1[8] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 64] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[15] = conv2d_nhwc_local_1[15] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 64] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[22] = conv2d_nhwc_local_1[22] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 64] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[29] = conv2d_nhwc_local_1[29] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 960] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[36] = conv2d_nhwc_local_1[36] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 960] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[43] = conv2d_nhwc_local_1[43] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 960] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[50] = conv2d_nhwc_local_1[50] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 960] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[2] = conv2d_nhwc_local_1[2] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 128] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[9] = conv2d_nhwc_local_1[9] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 128] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[16] = conv2d_nhwc_local_1[16] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 128] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[23] = conv2d_nhwc_local_1[23] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 128] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[30] = conv2d_nhwc_local_1[30] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1024] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[37] = conv2d_nhwc_local_1[37] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1024] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[44] = conv2d_nhwc_local_1[44] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1024] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[51] = conv2d_nhwc_local_1[51] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1024] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[3] = conv2d_nhwc_local_1[3] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 192] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[10] = conv2d_nhwc_local_1[10] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 192] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[17] = conv2d_nhwc_local_1[17] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 192] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[24] = conv2d_nhwc_local_1[24] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 192] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[31] = conv2d_nhwc_local_1[31] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1088] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[38] = conv2d_nhwc_local_1[38] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1088] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[45] = conv2d_nhwc_local_1[45] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1088] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[52] = conv2d_nhwc_local_1[52] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1088] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[4] = conv2d_nhwc_local_1[4] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 256] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[11] = conv2d_nhwc_local_1[11] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 256] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[18] = conv2d_nhwc_local_1[18] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 256] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[25] = conv2d_nhwc_local_1[25] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 256] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[32] = conv2d_nhwc_local_1[32] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1152] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[39] = conv2d_nhwc_local_1[39] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1152] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[46] = conv2d_nhwc_local_1[46] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1152] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[53] = conv2d_nhwc_local_1[53] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1152] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[5] = conv2d_nhwc_local_1[5] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 320] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[12] = conv2d_nhwc_local_1[12] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 320] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[19] = conv2d_nhwc_local_1[19] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 320] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[26] = conv2d_nhwc_local_1[26] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 320] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[33] = conv2d_nhwc_local_1[33] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1216] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[40] = conv2d_nhwc_local_1[40] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1216] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[47] = conv2d_nhwc_local_1[47] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1216] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[54] = conv2d_nhwc_local_1[54] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1216] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[6] = conv2d_nhwc_local_1[6] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 384] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[13] = conv2d_nhwc_local_1[13] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 384] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[20] = conv2d_nhwc_local_1[20] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 384] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[27] = conv2d_nhwc_local_1[27] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 384] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
                conv2d_nhwc_local_1[34] = conv2d_nhwc_local_1[34] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1280] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16]
                conv2d_nhwc_local_1[41] = conv2d_nhwc_local_1[41] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1280] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 16]
                conv2d_nhwc_local_1[48] = conv2d_nhwc_local_1[48] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1280] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 32]
                conv2d_nhwc_local_1[55] = conv2d_nhwc_local_1[55] + PadInput_shared_1[threadIdx_x // 32 * 448 + threadIdx_x % 32 // 16 * 32 + rc_1 + 1280] * weight_shared_1[rc_1 * 64 + threadIdx_x % 16 + 48]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16] = conv2d_nhwc_local_1[0]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 16] = conv2d_nhwc_local_1[7]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 32] = conv2d_nhwc_local_1[14]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 48] = conv2d_nhwc_local_1[21]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 200704] = conv2d_nhwc_local_1[28]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 200720] = conv2d_nhwc_local_1[35]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 200736] = conv2d_nhwc_local_1[42]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 200752] = conv2d_nhwc_local_1[49]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 14336] = conv2d_nhwc_local_1[1]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 14352] = conv2d_nhwc_local_1[8]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 14368] = conv2d_nhwc_local_1[15]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 14384] = conv2d_nhwc_local_1[22]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 215040] = conv2d_nhwc_local_1[29]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 215056] = conv2d_nhwc_local_1[36]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 215072] = conv2d_nhwc_local_1[43]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 215088] = conv2d_nhwc_local_1[50]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 28672] = conv2d_nhwc_local_1[2]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 28688] = conv2d_nhwc_local_1[9]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 28704] = conv2d_nhwc_local_1[16]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 28720] = conv2d_nhwc_local_1[23]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 229376] = conv2d_nhwc_local_1[30]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 229392] = conv2d_nhwc_local_1[37]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 229408] = conv2d_nhwc_local_1[44]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 229424] = conv2d_nhwc_local_1[51]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 43008] = conv2d_nhwc_local_1[3]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 43024] = conv2d_nhwc_local_1[10]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 43040] = conv2d_nhwc_local_1[17]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 43056] = conv2d_nhwc_local_1[24]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 243712] = conv2d_nhwc_local_1[31]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 243728] = conv2d_nhwc_local_1[38]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 243744] = conv2d_nhwc_local_1[45]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 243760] = conv2d_nhwc_local_1[52]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 57344] = conv2d_nhwc_local_1[4]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 57360] = conv2d_nhwc_local_1[11]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 57376] = conv2d_nhwc_local_1[18]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 57392] = conv2d_nhwc_local_1[25]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 258048] = conv2d_nhwc_local_1[32]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 258064] = conv2d_nhwc_local_1[39]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 258080] = conv2d_nhwc_local_1[46]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 258096] = conv2d_nhwc_local_1[53]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 71680] = conv2d_nhwc_local_1[5]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 71696] = conv2d_nhwc_local_1[12]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 71712] = conv2d_nhwc_local_1[19]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 71728] = conv2d_nhwc_local_1[26]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 272384] = conv2d_nhwc_local_1[33]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 272400] = conv2d_nhwc_local_1[40]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 272416] = conv2d_nhwc_local_1[47]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 272432] = conv2d_nhwc_local_1[54]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 86016] = conv2d_nhwc_local_1[6]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 86032] = conv2d_nhwc_local_1[13]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 86048] = conv2d_nhwc_local_1[20]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 86064] = conv2d_nhwc_local_1[27]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 286720] = conv2d_nhwc_local_1[34]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 286736] = conv2d_nhwc_local_1[41]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 286752] = conv2d_nhwc_local_1[48]
        conv2d_nhwc_1[blockIdx_x // 112 * 401408 + threadIdx_x // 32 * 100352 + blockIdx_x % 112 // 4 * 512 + threadIdx_x % 32 // 16 * 256 + blockIdx_x % 4 * 64 + threadIdx_x % 16 + 286768] = conv2d_nhwc_local_1[55]
    

