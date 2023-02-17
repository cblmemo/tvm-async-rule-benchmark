
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
extern "C" __global__ void __launch_bounds__(128) main_kernel0(float* __restrict__ A, float* __restrict__ B, float* __restrict__ Y) {
  float Y_local[128];
  __shared__ float A_shared[4096];
  __shared__ float B_shared[4096];
  for (int i_3_init = 0; i_3_init < 2; ++i_3_init) {
    Y_local[(i_3_init * 32)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 64)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 1)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 65)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 2)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 66)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 3)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 67)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 4)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 68)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 5)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 69)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 6)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 70)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 7)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 71)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 8)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 72)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 9)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 73)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 10)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 74)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 11)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 75)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 12)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 76)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 13)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 77)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 14)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 78)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 15)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 79)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 16)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 80)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 17)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 81)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 18)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 82)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 19)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 83)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 20)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 84)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 21)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 85)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 22)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 86)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 23)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 87)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 24)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 88)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 25)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 89)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 26)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 90)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 27)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 91)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 28)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 92)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 29)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 93)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 30)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 94)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 31)] = 0.000000e+00f;
    Y_local[((i_3_init * 32) + 95)] = 0.000000e+00f;
  }
  for (int k_0 = 0; k_0 < 96; ++k_0) {
    __syncthreads();
    *(float2*)(A_shared + (((int)threadIdx.x) * 2)) = *(float2*)(A + (((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 256)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 24576));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 512)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 49152));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 768)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 73728));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 1024)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 98304));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 1280)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 122880));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 1536)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 147456));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 1792)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 172032));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 2048)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 196608));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 2304)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 221184));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 2560)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 245760));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 2816)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 270336));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 3072)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 294912));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 3328)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 319488));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 3584)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 344064));
    *(float2*)(A_shared + ((((int)threadIdx.x) * 2) + 3840)) = *(float2*)(A + ((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 3072)) + (k_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 368640));
    *(float4*)(B_shared + (((int)threadIdx.x) * 4)) = *(float4*)(B + ((((k_0 * 98304) + ((((int)threadIdx.x) >> 5) * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 31) * 4)));
    *(float4*)(B_shared + ((((int)threadIdx.x) * 4) + 512)) = *(float4*)(B + (((((k_0 * 98304) + ((((int)threadIdx.x) >> 5) * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 12288));
    *(float4*)(B_shared + ((((int)threadIdx.x) * 4) + 1024)) = *(float4*)(B + (((((k_0 * 98304) + ((((int)threadIdx.x) >> 5) * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 24576));
    *(float4*)(B_shared + ((((int)threadIdx.x) * 4) + 1536)) = *(float4*)(B + (((((k_0 * 98304) + ((((int)threadIdx.x) >> 5) * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 36864));
    *(float4*)(B_shared + ((((int)threadIdx.x) * 4) + 2048)) = *(float4*)(B + (((((k_0 * 98304) + ((((int)threadIdx.x) >> 5) * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 49152));
    *(float4*)(B_shared + ((((int)threadIdx.x) * 4) + 2560)) = *(float4*)(B + (((((k_0 * 98304) + ((((int)threadIdx.x) >> 5) * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 61440));
    *(float4*)(B_shared + ((((int)threadIdx.x) * 4) + 3072)) = *(float4*)(B + (((((k_0 * 98304) + ((((int)threadIdx.x) >> 5) * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 73728));
    *(float4*)(B_shared + ((((int)threadIdx.x) * 4) + 3584)) = *(float4*)(B + (((((k_0 * 98304) + ((((int)threadIdx.x) >> 5) * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 86016));
    __syncthreads();
    for (int k_1 = 0; k_1 < 16; ++k_1) {
      for (int i_3 = 0; i_3 < 2; ++i_3) {
        for (int k_2 = 0; k_2 < 2; ++k_2) {
          Y_local[(i_3 * 32)] = (Y_local[(i_3 * 32)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2)] * B_shared[(((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4))]));
          Y_local[((i_3 * 32) + 64)] = (Y_local[((i_3 * 32) + 64)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)]));
          Y_local[((i_3 * 32) + 1)] = (Y_local[((i_3 * 32) + 1)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)]));
          Y_local[((i_3 * 32) + 65)] = (Y_local[((i_3 * 32) + 65)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)]));
          Y_local[((i_3 * 32) + 2)] = (Y_local[((i_3 * 32) + 2)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)]));
          Y_local[((i_3 * 32) + 66)] = (Y_local[((i_3 * 32) + 66)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)]));
          Y_local[((i_3 * 32) + 3)] = (Y_local[((i_3 * 32) + 3)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)]));
          Y_local[((i_3 * 32) + 67)] = (Y_local[((i_3 * 32) + 67)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)]));
          Y_local[((i_3 * 32) + 4)] = (Y_local[((i_3 * 32) + 4)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 32)] * B_shared[(((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4))]));
          Y_local[((i_3 * 32) + 68)] = (Y_local[((i_3 * 32) + 68)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 32)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)]));
          Y_local[((i_3 * 32) + 5)] = (Y_local[((i_3 * 32) + 5)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 32)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)]));
          Y_local[((i_3 * 32) + 69)] = (Y_local[((i_3 * 32) + 69)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 32)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)]));
          Y_local[((i_3 * 32) + 6)] = (Y_local[((i_3 * 32) + 6)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 32)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)]));
          Y_local[((i_3 * 32) + 70)] = (Y_local[((i_3 * 32) + 70)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 32)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)]));
          Y_local[((i_3 * 32) + 7)] = (Y_local[((i_3 * 32) + 7)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 32)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)]));
          Y_local[((i_3 * 32) + 71)] = (Y_local[((i_3 * 32) + 71)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 32)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)]));
          Y_local[((i_3 * 32) + 8)] = (Y_local[((i_3 * 32) + 8)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 64)] * B_shared[(((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4))]));
          Y_local[((i_3 * 32) + 72)] = (Y_local[((i_3 * 32) + 72)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 64)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)]));
          Y_local[((i_3 * 32) + 9)] = (Y_local[((i_3 * 32) + 9)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 64)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)]));
          Y_local[((i_3 * 32) + 73)] = (Y_local[((i_3 * 32) + 73)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 64)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)]));
          Y_local[((i_3 * 32) + 10)] = (Y_local[((i_3 * 32) + 10)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 64)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)]));
          Y_local[((i_3 * 32) + 74)] = (Y_local[((i_3 * 32) + 74)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 64)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)]));
          Y_local[((i_3 * 32) + 11)] = (Y_local[((i_3 * 32) + 11)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 64)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)]));
          Y_local[((i_3 * 32) + 75)] = (Y_local[((i_3 * 32) + 75)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 64)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)]));
          Y_local[((i_3 * 32) + 12)] = (Y_local[((i_3 * 32) + 12)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 96)] * B_shared[(((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4))]));
          Y_local[((i_3 * 32) + 76)] = (Y_local[((i_3 * 32) + 76)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 96)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)]));
          Y_local[((i_3 * 32) + 13)] = (Y_local[((i_3 * 32) + 13)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 96)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)]));
          Y_local[((i_3 * 32) + 77)] = (Y_local[((i_3 * 32) + 77)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 96)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)]));
          Y_local[((i_3 * 32) + 14)] = (Y_local[((i_3 * 32) + 14)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 96)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)]));
          Y_local[((i_3 * 32) + 78)] = (Y_local[((i_3 * 32) + 78)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 96)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)]));
          Y_local[((i_3 * 32) + 15)] = (Y_local[((i_3 * 32) + 15)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 96)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)]));
          Y_local[((i_3 * 32) + 79)] = (Y_local[((i_3 * 32) + 79)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 96)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)]));
          Y_local[((i_3 * 32) + 16)] = (Y_local[((i_3 * 32) + 16)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 128)] * B_shared[(((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4))]));
          Y_local[((i_3 * 32) + 80)] = (Y_local[((i_3 * 32) + 80)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 128)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)]));
          Y_local[((i_3 * 32) + 17)] = (Y_local[((i_3 * 32) + 17)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 128)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)]));
          Y_local[((i_3 * 32) + 81)] = (Y_local[((i_3 * 32) + 81)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 128)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)]));
          Y_local[((i_3 * 32) + 18)] = (Y_local[((i_3 * 32) + 18)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 128)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)]));
          Y_local[((i_3 * 32) + 82)] = (Y_local[((i_3 * 32) + 82)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 128)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)]));
          Y_local[((i_3 * 32) + 19)] = (Y_local[((i_3 * 32) + 19)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 128)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)]));
          Y_local[((i_3 * 32) + 83)] = (Y_local[((i_3 * 32) + 83)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 128)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)]));
          Y_local[((i_3 * 32) + 20)] = (Y_local[((i_3 * 32) + 20)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 160)] * B_shared[(((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4))]));
          Y_local[((i_3 * 32) + 84)] = (Y_local[((i_3 * 32) + 84)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 160)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)]));
          Y_local[((i_3 * 32) + 21)] = (Y_local[((i_3 * 32) + 21)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 160)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)]));
          Y_local[((i_3 * 32) + 85)] = (Y_local[((i_3 * 32) + 85)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 160)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)]));
          Y_local[((i_3 * 32) + 22)] = (Y_local[((i_3 * 32) + 22)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 160)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)]));
          Y_local[((i_3 * 32) + 86)] = (Y_local[((i_3 * 32) + 86)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 160)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)]));
          Y_local[((i_3 * 32) + 23)] = (Y_local[((i_3 * 32) + 23)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 160)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)]));
          Y_local[((i_3 * 32) + 87)] = (Y_local[((i_3 * 32) + 87)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 160)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)]));
          Y_local[((i_3 * 32) + 24)] = (Y_local[((i_3 * 32) + 24)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 192)] * B_shared[(((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4))]));
          Y_local[((i_3 * 32) + 88)] = (Y_local[((i_3 * 32) + 88)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 192)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)]));
          Y_local[((i_3 * 32) + 25)] = (Y_local[((i_3 * 32) + 25)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 192)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)]));
          Y_local[((i_3 * 32) + 89)] = (Y_local[((i_3 * 32) + 89)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 192)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)]));
          Y_local[((i_3 * 32) + 26)] = (Y_local[((i_3 * 32) + 26)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 192)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)]));
          Y_local[((i_3 * 32) + 90)] = (Y_local[((i_3 * 32) + 90)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 192)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)]));
          Y_local[((i_3 * 32) + 27)] = (Y_local[((i_3 * 32) + 27)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 192)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)]));
          Y_local[((i_3 * 32) + 91)] = (Y_local[((i_3 * 32) + 91)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 192)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)]));
          Y_local[((i_3 * 32) + 28)] = (Y_local[((i_3 * 32) + 28)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 224)] * B_shared[(((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4))]));
          Y_local[((i_3 * 32) + 92)] = (Y_local[((i_3 * 32) + 92)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 224)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)]));
          Y_local[((i_3 * 32) + 29)] = (Y_local[((i_3 * 32) + 29)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 224)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)]));
          Y_local[((i_3 * 32) + 93)] = (Y_local[((i_3 * 32) + 93)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 224)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)]));
          Y_local[((i_3 * 32) + 30)] = (Y_local[((i_3 * 32) + 30)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 224)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)]));
          Y_local[((i_3 * 32) + 94)] = (Y_local[((i_3 * 32) + 94)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 224)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)]));
          Y_local[((i_3 * 32) + 31)] = (Y_local[((i_3 * 32) + 31)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 224)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)]));
          Y_local[((i_3 * 32) + 95)] = (Y_local[((i_3 * 32) + 95)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 512) + (i_3 * 256)) + (k_1 * 2)) + k_2) + 224)] * B_shared[((((k_1 * 256) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)]));
        }
      }
    }
  }
  for (int ax0 = 0; ax0 < 16; ++ax0) {
    Y[((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 49152)) + (ax0 * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 15) * 4))] = Y_local[(ax0 * 4)];
    Y[(((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 49152)) + (ax0 * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 64)] = Y_local[((ax0 * 4) + 64)];
    Y[(((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 49152)) + (ax0 * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 1)] = Y_local[((ax0 * 4) + 1)];
    Y[(((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 49152)) + (ax0 * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 65)] = Y_local[((ax0 * 4) + 65)];
    Y[(((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 49152)) + (ax0 * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 2)] = Y_local[((ax0 * 4) + 2)];
    Y[(((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 49152)) + (ax0 * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 66)] = Y_local[((ax0 * 4) + 66)];
    Y[(((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 49152)) + (ax0 * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 3)] = Y_local[((ax0 * 4) + 3)];
    Y[(((((((((int)blockIdx.x) / 24) * 393216) + ((((int)threadIdx.x) >> 4) * 49152)) + (ax0 * 3072)) + ((((int)blockIdx.x) % 24) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + 67)] = Y_local[((ax0 * 4) + 67)];
  }
}


