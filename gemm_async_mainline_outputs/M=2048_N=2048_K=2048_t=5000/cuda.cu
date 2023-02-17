
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
extern "C" __global__ void __launch_bounds__(64) main_kernel0(float* __restrict__ A, float* __restrict__ B, float* __restrict__ Y) {
  float Y_local[128];
  __shared__ float A_shared[1536];
  __shared__ float B_shared[3072];
  for (int i_4_init = 0; i_4_init < 16; ++i_4_init) {
    for (int j_4_init = 0; j_4_init < 4; ++j_4_init) {
      Y_local[((i_4_init * 4) + j_4_init)] = 0.000000e+00f;
      Y_local[(((i_4_init * 4) + j_4_init) + 64)] = 0.000000e+00f;
    }
  }
  for (int ax0_ax1_fused_0 = 0; ax0_ax1_fused_0 < 2; ++ax0_ax1_fused_0) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((ax0_ax1_fused_0 * 256) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 4) * 131072) + (ax0_ax1_fused_0 * 65536)) + ((((int)threadIdx.x) >> 1) * 2048)) + ((((int)threadIdx.x) & 1) * 4)))), "n"(16)
    );
  }
  }
  for (int ax0_ax1_fused_0_1 = 0; ax0_ax1_fused_0_1 < 4; ++ax0_ax1_fused_0_1) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((ax0_ax1_fused_0_1 * 256) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + ((((ax0_ax1_fused_0_1 * 4096) + ((((int)threadIdx.x) >> 5) * 2048)) + ((((int)blockIdx.x) & 15) * 128)) + ((((int)threadIdx.x) & 31) * 4)))), "n"(16)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int ax0_ax1_fused_0_2 = 0; ax0_ax1_fused_0_2 < 2; ++ax0_ax1_fused_0_2) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((ax0_ax1_fused_0_2 * 256) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) >> 4) * 131072) + (ax0_ax1_fused_0_2 * 65536)) + ((((int)threadIdx.x) >> 1) * 2048)) + ((((int)threadIdx.x) & 1) * 4)) + 8))), "n"(16)
    );
  }
  }
  for (int ax0_ax1_fused_0_3 = 0; ax0_ax1_fused_0_3 < 4; ++ax0_ax1_fused_0_3) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((ax0_ax1_fused_0_3 * 256) + (((int)threadIdx.x) * 4)) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((ax0_ax1_fused_0_3 * 4096) + ((((int)threadIdx.x) >> 5) * 2048)) + ((((int)blockIdx.x) & 15) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 16384))), "n"(16)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int k_0_fused = 0; k_0_fused < 254; ++k_0_fused) {
    __syncthreads();
    for (int ax0_ax1_fused_0_4 = 0; ax0_ax1_fused_0_4 < 2; ++ax0_ax1_fused_0_4) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 512) + (ax0_ax1_fused_0_4 * 256)) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((((int)blockIdx.x) >> 4) * 131072) + (ax0_ax1_fused_0_4 * 65536)) + ((((int)threadIdx.x) >> 1) * 2048)) + (k_0_fused * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 16))), "n"(16)
    );
  }
    }
    for (int ax0_ax1_fused_0_5 = 0; ax0_ax1_fused_0_5 < 4; ++ax0_ax1_fused_0_5) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 1024) + (ax0_ax1_fused_0_5 * 256)) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + ((((((k_0_fused * 16384) + (ax0_ax1_fused_0_5 * 4096)) + ((((int)threadIdx.x) >> 5) * 2048)) + ((((int)blockIdx.x) & 15) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 32768))), "n"(16)
    );
  }
    }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    for (int k_1 = 0; k_1 < 4; ++k_1) {
      for (int k_2 = 0; k_2 < 2; ++k_2) {
        for (int i_4 = 0; i_4 < 16; ++i_4) {
          for (int j_4 = 0; j_4 < 4; ++j_4) {
            Y_local[((i_4 * 4) + j_4)] = (Y_local[((i_4 * 4) + j_4)] + (A_shared[((((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 4) * 128)) + (i_4 * 8)) + (k_1 * 2)) + k_2)] * B_shared[((((((k_0_fused % 3) * 1024) + (k_1 * 256)) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + j_4)]));
            Y_local[(((i_4 * 4) + j_4) + 64)] = (Y_local[(((i_4 * 4) + j_4) + 64)] + (A_shared[((((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 4) * 128)) + (i_4 * 8)) + (k_1 * 2)) + k_2)] * B_shared[(((((((k_0_fused % 3) * 1024) + (k_1 * 256)) + (k_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + j_4) + 64)]));
          }
        }
      }
    }
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  for (int k_1_1 = 0; k_1_1 < 4; ++k_1_1) {
    for (int k_2_1 = 0; k_2_1 < 2; ++k_2_1) {
      for (int i_4_1 = 0; i_4_1 < 16; ++i_4_1) {
        for (int j_4_1 = 0; j_4_1 < 4; ++j_4_1) {
          Y_local[((i_4_1 * 4) + j_4_1)] = (Y_local[((i_4_1 * 4) + j_4_1)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 128) + (i_4_1 * 8)) + (k_1_1 * 2)) + k_2_1) + 1024)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + j_4_1) + 2048)]));
          Y_local[(((i_4_1 * 4) + j_4_1) + 64)] = (Y_local[(((i_4_1 * 4) + j_4_1) + 64)] + (A_shared[((((((((int)threadIdx.x) >> 4) * 128) + (i_4_1 * 8)) + (k_1_1 * 2)) + k_2_1) + 1024)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + j_4_1) + 2112)]));
        }
      }
    }
  }
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  for (int k_1_2 = 0; k_1_2 < 4; ++k_1_2) {
    for (int k_2_2 = 0; k_2_2 < 2; ++k_2_2) {
      for (int i_4_2 = 0; i_4_2 < 16; ++i_4_2) {
        for (int j_4_2 = 0; j_4_2 < 4; ++j_4_2) {
          Y_local[((i_4_2 * 4) + j_4_2)] = (Y_local[((i_4_2 * 4) + j_4_2)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 128) + (i_4_2 * 8)) + (k_1_2 * 2)) + k_2_2)] * B_shared[((((k_1_2 * 256) + (k_2_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + j_4_2)]));
          Y_local[(((i_4_2 * 4) + j_4_2) + 64)] = (Y_local[(((i_4_2 * 4) + j_4_2) + 64)] + (A_shared[(((((((int)threadIdx.x) >> 4) * 128) + (i_4_2 * 8)) + (k_1_2 * 2)) + k_2_2)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 128)) + ((((int)threadIdx.x) & 15) * 4)) + j_4_2) + 64)]));
        }
      }
    }
  }
  for (int ax0 = 0; ax0 < 16; ++ax0) {
    for (int ax1 = 0; ax1 < 4; ++ax1) {
      Y[(((((((((int)blockIdx.x) >> 4) * 131072) + ((((int)threadIdx.x) >> 4) * 32768)) + (ax0 * 2048)) + ((((int)blockIdx.x) & 15) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + ax1)] = Y_local[((ax0 * 4) + ax1)];
      Y[((((((((((int)blockIdx.x) >> 4) * 131072) + ((((int)threadIdx.x) >> 4) * 32768)) + (ax0 * 2048)) + ((((int)blockIdx.x) & 15) * 128)) + ((((int)threadIdx.x) & 15) * 4)) + ax1) + 64)] = Y_local[(((ax0 * 4) + ax1) + 64)];
    }
  }
}


