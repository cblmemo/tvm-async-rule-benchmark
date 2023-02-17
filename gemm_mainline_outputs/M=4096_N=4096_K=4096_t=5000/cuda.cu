
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
extern "C" __global__ void __launch_bounds__(512) main_kernel0(float* __restrict__ A, float* __restrict__ B, float* __restrict__ Y) {
  float Y_local[64];
  __shared__ float A_shared[4096];
  __shared__ float B_shared[8192];
  for (int i_3_init = 0; i_3_init < 4; ++i_3_init) {
    for (int i_4_init = 0; i_4_init < 2; ++i_4_init) {
      for (int j_4_init = 0; j_4_init < 4; ++j_4_init) {
        Y_local[(((i_3_init * 8) + (i_4_init * 4)) + j_4_init)] = 0.000000e+00f;
        Y_local[((((i_3_init * 8) + (i_4_init * 4)) + j_4_init) + 32)] = 0.000000e+00f;
      }
    }
  }
  for (int k_0 = 0; k_0 < 128; ++k_0) {
    __syncthreads();
    for (int ax0_ax1_fused_0 = 0; ax0_ax1_fused_0 < 2; ++ax0_ax1_fused_0) {
      *(float4*)(A_shared + ((ax0_ax1_fused_0 * 2048) + (((int)threadIdx.x) * 4))) = *(float4*)(A + ((((((((int)blockIdx.x) >> 4) * 524288) + (ax0_ax1_fused_0 * 262144)) + ((((int)threadIdx.x) >> 3) * 4096)) + (k_0 * 32)) + ((((int)threadIdx.x) & 7) * 4)));
    }
    for (int ax0_ax1_fused_0_1 = 0; ax0_ax1_fused_0_1 < 4; ++ax0_ax1_fused_0_1) {
      *(float4*)(B_shared + ((ax0_ax1_fused_0_1 * 2048) + (((int)threadIdx.x) * 4))) = *(float4*)(B + (((((k_0 * 131072) + (ax0_ax1_fused_0_1 * 32768)) + ((((int)threadIdx.x) >> 6) * 4096)) + ((((int)blockIdx.x) & 15) * 256)) + ((((int)threadIdx.x) & 63) * 4)));
    }
    __syncthreads();
    for (int k_1 = 0; k_1 < 2; ++k_1) {
      for (int i_3 = 0; i_3 < 4; ++i_3) {
        for (int k_2 = 0; k_2 < 16; ++k_2) {
          for (int i_4 = 0; i_4 < 2; ++i_4) {
            for (int j_4 = 0; j_4 < 4; ++j_4) {
              Y_local[(((i_3 * 8) + (i_4 * 4)) + j_4)] = (Y_local[(((i_3 * 8) + (i_4 * 4)) + j_4)] + (A_shared[((((((((int)threadIdx.x) >> 5) * 256) + (i_3 * 64)) + (i_4 * 32)) + (k_1 * 16)) + k_2)] * B_shared[((((k_1 * 4096) + (k_2 * 256)) + ((((int)threadIdx.x) & 31) * 4)) + j_4)]));
              Y_local[((((i_3 * 8) + (i_4 * 4)) + j_4) + 32)] = (Y_local[((((i_3 * 8) + (i_4 * 4)) + j_4) + 32)] + (A_shared[((((((((int)threadIdx.x) >> 5) * 256) + (i_3 * 64)) + (i_4 * 32)) + (k_1 * 16)) + k_2)] * B_shared[(((((k_1 * 4096) + (k_2 * 256)) + ((((int)threadIdx.x) & 31) * 4)) + j_4) + 128)]));
            }
          }
        }
      }
    }
  }
  for (int ax0 = 0; ax0 < 8; ++ax0) {
    for (int ax1 = 0; ax1 < 4; ++ax1) {
      Y[(((((((((int)blockIdx.x) >> 4) * 524288) + ((((int)threadIdx.x) >> 5) * 32768)) + (ax0 * 4096)) + ((((int)blockIdx.x) & 15) * 256)) + ((((int)threadIdx.x) & 31) * 4)) + ax1)] = Y_local[((ax0 * 4) + ax1)];
      Y[((((((((((int)blockIdx.x) >> 4) * 524288) + ((((int)threadIdx.x) >> 5) * 32768)) + (ax0 * 4096)) + ((((int)blockIdx.x) & 15) * 256)) + ((((int)threadIdx.x) & 31) * 4)) + ax1) + 128)] = Y_local[(((ax0 * 4) + ax1) + 32)];
    }
  }
}


