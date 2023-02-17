
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
  float conv2d_nhwc_local[8];
  __shared__ float PadInput_shared[512];
  __shared__ float weight_shared[1024];
  for (int h_3_init = 0; h_3_init < 4; ++h_3_init) {
    for (int co_3_init = 0; co_3_init < 2; ++co_3_init) {
      conv2d_nhwc_local[((h_3_init * 2) + co_3_init)] = 0.000000e+00f;
    }
  }
  for (int rc_0 = 0; rc_0 < 16; ++rc_0) {
    __syncthreads();
    for (int ax0_ax1_ax2_ax3_fused_0 = 0; ax0_ax1_ax2_ax3_fused_0 < 4; ++ax0_ax1_ax2_ax3_fused_0) {
      *(float2*)(PadInput_shared + ((ax0_ax1_ax2_ax3_fused_0 * 128) + (((int)threadIdx.x) * 2))) = *(float2*)(inputs + (((((((((int)blockIdx.x) / 28) * 57344) + (ax0_ax1_ax2_ax3_fused_0 * 14336)) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 32)) + ((((int)threadIdx.x) & 15) * 2)));
    }
    for (int ax0_ax1_ax2_ax3_fused_0_1 = 0; ax0_ax1_ax2_ax3_fused_0_1 < 4; ++ax0_ax1_ax2_ax3_fused_0_1) {
      *(float4*)(weight_shared + ((ax0_ax1_ax2_ax3_fused_0_1 * 256) + (((int)threadIdx.x) * 4))) = *(float4*)(weight + (((((rc_0 * 4096) + (ax0_ax1_ax2_ax3_fused_0_1 * 1024)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)));
    }
    __syncthreads();
    for (int h_3 = 0; h_3 < 4; ++h_3) {
      for (int co_3 = 0; co_3 < 2; ++co_3) {
        for (int rc_2 = 0; rc_2 < 32; ++rc_2) {
          conv2d_nhwc_local[((h_3 * 2) + co_3)] = (conv2d_nhwc_local[((h_3 * 2) + co_3)] + (PadInput_shared[(((h_3 * 128) + ((((int)threadIdx.x) >> 4) * 32)) + rc_2)] * weight_shared[(((rc_2 * 32) + ((((int)threadIdx.x) & 15) * 2)) + co_3)]));
        }
      }
    }
  }
  for (int ax1 = 0; ax1 < 4; ++ax1) {
    for (int ax3 = 0; ax3 < 2; ++ax3) {
      conv2d_nhwc[((((((((((int)blockIdx.x) / 28) * 14336) + (ax1 * 3584)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)threadIdx.x) >> 4) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ax3)] = conv2d_nhwc_local[((ax1 * 2) + ax3)];
    }
  }
}


