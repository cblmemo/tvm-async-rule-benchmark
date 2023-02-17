
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
  float Y_local[64];
  __shared__ float A_shared[3072];
  __shared__ float B_shared[3072];
  for (int j_4_init = 0; j_4_init < 2; ++j_4_init) {
    for (int vthread_x_s = 0; vthread_x_s < 32; ++vthread_x_s) {
      Y_local[((vthread_x_s * 2) + j_4_init)] = 0.000000e+00f;
    }
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) * 4)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + ((((int)threadIdx.x) & 3) * 4)))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + ((((int)threadIdx.x) & 3) * 4)) + 16384))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + ((((int)threadIdx.x) & 3) * 4)) + 32768))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + ((((int)threadIdx.x) & 3) * 4)) + 49152))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((int)threadIdx.x) * 4)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + ((((((int)threadIdx.x) >> 4) * 1024) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1024) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4096))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1024) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 8192))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1024) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 12288))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + ((((int)threadIdx.x) & 3) * 4)) + 16))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + ((((int)threadIdx.x) & 3) * 4)) + 16400))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + ((((int)threadIdx.x) & 3) * 4)) + 32784))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + ((((int)threadIdx.x) & 3) * 4)) + 49168))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1024) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 16384))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1024) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 20480))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1024) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 24576))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1024) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 28672))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int k_0_fused = 0; k_0_fused < 62; ++k_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((k_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 32))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 16416))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 32800))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 49184))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((k_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 16384) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 32768))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 16384) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 36864))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 16384) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 40960))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 16384) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 45056))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    for (int k_1 = 0; k_1 < 2; ++k_1) {
      for (int k_2 = 0; k_2 < 8; ++k_2) {
        for (int j_4 = 0; j_4 < 2; ++j_4) {
          for (int vthread_x_s_1 = 0; vthread_x_s_1 < 32; ++vthread_x_s_1) {
            Y_local[((vthread_x_s_1 * 2) + j_4)] = (Y_local[((vthread_x_s_1 * 2) + j_4)] + (A_shared[((((((k_0_fused % 3) * 1024) + ((vthread_x_s_1 >> 2) * 128)) + ((((int)threadIdx.x) >> 3) * 16)) + (k_1 * 8)) + k_2)] * B_shared[(((((((k_0_fused % 3) * 1024) + (k_1 * 512)) + (k_2 * 64)) + ((vthread_x_s_1 & 3) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + j_4)]));
          }
        }
      }
    }
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  for (int k_1_1 = 0; k_1_1 < 2; ++k_1_1) {
    for (int k_2_1 = 0; k_2_1 < 8; ++k_2_1) {
      for (int j_4_1 = 0; j_4_1 < 2; ++j_4_1) {
        for (int vthread_x_s_2 = 0; vthread_x_s_2 < 32; ++vthread_x_s_2) {
          Y_local[((vthread_x_s_2 * 2) + j_4_1)] = (Y_local[((vthread_x_s_2 * 2) + j_4_1)] + (A_shared[((((((vthread_x_s_2 >> 2) * 128) + ((((int)threadIdx.x) >> 3) * 16)) + (k_1_1 * 8)) + k_2_1) + 2048)] * B_shared[((((((k_1_1 * 512) + (k_2_1 * 64)) + ((vthread_x_s_2 & 3) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + j_4_1) + 2048)]));
        }
      }
    }
  }
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  for (int k_1_2 = 0; k_1_2 < 2; ++k_1_2) {
    for (int k_2_2 = 0; k_2_2 < 8; ++k_2_2) {
      for (int j_4_2 = 0; j_4_2 < 2; ++j_4_2) {
        for (int vthread_x_s_3 = 0; vthread_x_s_3 < 32; ++vthread_x_s_3) {
          Y_local[((vthread_x_s_3 * 2) + j_4_2)] = (Y_local[((vthread_x_s_3 * 2) + j_4_2)] + (A_shared[(((((vthread_x_s_3 >> 2) * 128) + ((((int)threadIdx.x) >> 3) * 16)) + (k_1_2 * 8)) + k_2_2)] * B_shared[(((((k_1_2 * 512) + (k_2_2 * 64)) + ((vthread_x_s_3 & 3) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + j_4_2)]));
        }
      }
    }
  }
  for (int ax1 = 0; ax1 < 2; ++ax1) {
    for (int vthread_x_s_4 = 0; vthread_x_s_4 < 32; ++vthread_x_s_4) {
      Y[((((((((((int)blockIdx.x) >> 4) * 65536) + ((vthread_x_s_4 >> 2) * 8192)) + ((((int)threadIdx.x) >> 3) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((vthread_x_s_4 & 3) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax1)] = Y_local[((vthread_x_s_4 * 2) + ax1)];
    }
  }
}


