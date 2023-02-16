
#ifdef _WIN32
  using uint = unsigned int;
  using uchar = unsigned char;
  using ushort = unsigned short;
  using int64_t = long long;
  using uint64_t = unsigned long long;
#else
  #define uint unsigned int
  #define uchar unsigned char
  #define ushort unsigned short
  #define int64_t long long
  #define uint64_t unsigned long long
#endif
extern "C" __global__ void __launch_bounds__(64) main_kernel0(float* __restrict__ inputs, float* __restrict__ weight, float* __restrict__ conv2d_nhwc) {
  float conv2d_nhwc_local[56];
  __shared__ float PadInput_shared[1792];
  __shared__ float weight_shared[2048];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[7] = 0.000000e+00f;
  conv2d_nhwc_local[14] = 0.000000e+00f;
  conv2d_nhwc_local[21] = 0.000000e+00f;
  conv2d_nhwc_local[28] = 0.000000e+00f;
  conv2d_nhwc_local[35] = 0.000000e+00f;
  conv2d_nhwc_local[42] = 0.000000e+00f;
  conv2d_nhwc_local[49] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[8] = 0.000000e+00f;
  conv2d_nhwc_local[15] = 0.000000e+00f;
  conv2d_nhwc_local[22] = 0.000000e+00f;
  conv2d_nhwc_local[29] = 0.000000e+00f;
  conv2d_nhwc_local[36] = 0.000000e+00f;
  conv2d_nhwc_local[43] = 0.000000e+00f;
  conv2d_nhwc_local[50] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[9] = 0.000000e+00f;
  conv2d_nhwc_local[16] = 0.000000e+00f;
  conv2d_nhwc_local[23] = 0.000000e+00f;
  conv2d_nhwc_local[30] = 0.000000e+00f;
  conv2d_nhwc_local[37] = 0.000000e+00f;
  conv2d_nhwc_local[44] = 0.000000e+00f;
  conv2d_nhwc_local[51] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[10] = 0.000000e+00f;
  conv2d_nhwc_local[17] = 0.000000e+00f;
  conv2d_nhwc_local[24] = 0.000000e+00f;
  conv2d_nhwc_local[31] = 0.000000e+00f;
  conv2d_nhwc_local[38] = 0.000000e+00f;
  conv2d_nhwc_local[45] = 0.000000e+00f;
  conv2d_nhwc_local[52] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[11] = 0.000000e+00f;
  conv2d_nhwc_local[18] = 0.000000e+00f;
  conv2d_nhwc_local[25] = 0.000000e+00f;
  conv2d_nhwc_local[32] = 0.000000e+00f;
  conv2d_nhwc_local[39] = 0.000000e+00f;
  conv2d_nhwc_local[46] = 0.000000e+00f;
  conv2d_nhwc_local[53] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[12] = 0.000000e+00f;
  conv2d_nhwc_local[19] = 0.000000e+00f;
  conv2d_nhwc_local[26] = 0.000000e+00f;
  conv2d_nhwc_local[33] = 0.000000e+00f;
  conv2d_nhwc_local[40] = 0.000000e+00f;
  conv2d_nhwc_local[47] = 0.000000e+00f;
  conv2d_nhwc_local[54] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  conv2d_nhwc_local[13] = 0.000000e+00f;
  conv2d_nhwc_local[20] = 0.000000e+00f;
  conv2d_nhwc_local[27] = 0.000000e+00f;
  conv2d_nhwc_local[34] = 0.000000e+00f;
  conv2d_nhwc_local[41] = 0.000000e+00f;
  conv2d_nhwc_local[48] = 0.000000e+00f;
  conv2d_nhwc_local[55] = 0.000000e+00f;
  for (int rc_0 = 0; rc_0 < 2; ++rc_0) {
    __syncthreads();
    *(float2*)(PadInput_shared + (((int)threadIdx.x) * 2)) = *(float2*)(inputs + (((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 128)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 7168));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 256)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 14336));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 384)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 21504));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 512)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 28672));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 640)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 35840));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 768)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 43008));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 896)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 50176));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1024)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 57344));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1152)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 64512));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1280)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 71680));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1408)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 78848));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1536)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 86016));
    *(float2*)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1664)) = *(float2*)(inputs + ((((((((((int)blockIdx.x) / 112) * 100352) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) % 112) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 93184));
    *(float4*)(weight_shared + (((int)threadIdx.x) * 4)) = *(float4*)(weight + ((((rc_0 * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 256)) = *(float4*)(weight + (((((rc_0 * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 1024));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 512)) = *(float4*)(weight + (((((rc_0 * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 2048));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 768)) = *(float4*)(weight + (((((rc_0 * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 3072));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 1024)) = *(float4*)(weight + (((((rc_0 * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4096));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 1280)) = *(float4*)(weight + (((((rc_0 * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 5120));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 1536)) = *(float4*)(weight + (((((rc_0 * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 6144));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 1792)) = *(float4*)(weight + (((((rc_0 * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 7168));
    __syncthreads();
    for (int rc_1 = 0; rc_1 < 32; ++rc_1) {
      conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 896)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 896)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 896)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 896)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 64)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 64)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 64)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 64)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 960)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 960)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 960)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 960)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 128)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 128)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 128)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 128)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1024)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1024)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1024)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1024)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 192)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 192)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 192)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 192)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1088)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1088)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1088)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1088)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 256)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 256)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 256)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 256)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1152)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1152)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1152)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1152)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 320)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 320)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 320)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 320)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1216)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1216)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1216)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1216)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 384)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 384)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 384)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 384)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
      conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1280)] * weight_shared[((rc_1 * 64) + (((int)threadIdx.x) & 15))]));
      conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1280)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 16)]));
      conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1280)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 32)]));
      conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[(((((((int)threadIdx.x) >> 5) * 448) + (((((int)threadIdx.x) & 31) >> 4) * 32)) + rc_1) + 1280)] * weight_shared[(((rc_1 * 64) + (((int)threadIdx.x) & 15)) + 48)]));
    }
  }
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15))] = conv2d_nhwc_local[0];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 16)] = conv2d_nhwc_local[7];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 32)] = conv2d_nhwc_local[14];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 48)] = conv2d_nhwc_local[21];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 200704)] = conv2d_nhwc_local[28];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 200720)] = conv2d_nhwc_local[35];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 200736)] = conv2d_nhwc_local[42];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 200752)] = conv2d_nhwc_local[49];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 14336)] = conv2d_nhwc_local[1];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 14352)] = conv2d_nhwc_local[8];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 14368)] = conv2d_nhwc_local[15];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 14384)] = conv2d_nhwc_local[22];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 215040)] = conv2d_nhwc_local[29];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 215056)] = conv2d_nhwc_local[36];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 215072)] = conv2d_nhwc_local[43];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 215088)] = conv2d_nhwc_local[50];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 28672)] = conv2d_nhwc_local[2];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 28688)] = conv2d_nhwc_local[9];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 28704)] = conv2d_nhwc_local[16];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 28720)] = conv2d_nhwc_local[23];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 229376)] = conv2d_nhwc_local[30];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 229392)] = conv2d_nhwc_local[37];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 229408)] = conv2d_nhwc_local[44];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 229424)] = conv2d_nhwc_local[51];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 43008)] = conv2d_nhwc_local[3];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 43024)] = conv2d_nhwc_local[10];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 43040)] = conv2d_nhwc_local[17];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 43056)] = conv2d_nhwc_local[24];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 243712)] = conv2d_nhwc_local[31];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 243728)] = conv2d_nhwc_local[38];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 243744)] = conv2d_nhwc_local[45];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 243760)] = conv2d_nhwc_local[52];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 57344)] = conv2d_nhwc_local[4];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 57360)] = conv2d_nhwc_local[11];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 57376)] = conv2d_nhwc_local[18];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 57392)] = conv2d_nhwc_local[25];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 258048)] = conv2d_nhwc_local[32];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 258064)] = conv2d_nhwc_local[39];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 258080)] = conv2d_nhwc_local[46];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 258096)] = conv2d_nhwc_local[53];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 71680)] = conv2d_nhwc_local[5];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 71696)] = conv2d_nhwc_local[12];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 71712)] = conv2d_nhwc_local[19];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 71728)] = conv2d_nhwc_local[26];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 272384)] = conv2d_nhwc_local[33];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 272400)] = conv2d_nhwc_local[40];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 272416)] = conv2d_nhwc_local[47];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 272432)] = conv2d_nhwc_local[54];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 86016)] = conv2d_nhwc_local[6];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 86032)] = conv2d_nhwc_local[13];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 86048)] = conv2d_nhwc_local[20];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 86064)] = conv2d_nhwc_local[27];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 286720)] = conv2d_nhwc_local[34];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 286736)] = conv2d_nhwc_local[41];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 286752)] = conv2d_nhwc_local[48];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 112) * 401408) + ((((int)threadIdx.x) >> 5) * 100352)) + (((((int)blockIdx.x) % 112) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 15)) + 286768)] = conv2d_nhwc_local[55];
}


