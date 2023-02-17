
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
  float Y_local[54];
  __shared__ float A_shared[864];
  __shared__ float B_shared[2304];
  Y_local[0] = 0.000000e+00f;
  Y_local[2] = 0.000000e+00f;
  Y_local[4] = 0.000000e+00f;
  Y_local[6] = 0.000000e+00f;
  Y_local[8] = 0.000000e+00f;
  Y_local[10] = 0.000000e+00f;
  Y_local[12] = 0.000000e+00f;
  Y_local[14] = 0.000000e+00f;
  Y_local[16] = 0.000000e+00f;
  Y_local[18] = 0.000000e+00f;
  Y_local[20] = 0.000000e+00f;
  Y_local[22] = 0.000000e+00f;
  Y_local[24] = 0.000000e+00f;
  Y_local[26] = 0.000000e+00f;
  Y_local[28] = 0.000000e+00f;
  Y_local[30] = 0.000000e+00f;
  Y_local[32] = 0.000000e+00f;
  Y_local[34] = 0.000000e+00f;
  Y_local[36] = 0.000000e+00f;
  Y_local[38] = 0.000000e+00f;
  Y_local[40] = 0.000000e+00f;
  Y_local[42] = 0.000000e+00f;
  Y_local[44] = 0.000000e+00f;
  Y_local[46] = 0.000000e+00f;
  Y_local[48] = 0.000000e+00f;
  Y_local[50] = 0.000000e+00f;
  Y_local[52] = 0.000000e+00f;
  Y_local[1] = 0.000000e+00f;
  Y_local[3] = 0.000000e+00f;
  Y_local[5] = 0.000000e+00f;
  Y_local[7] = 0.000000e+00f;
  Y_local[9] = 0.000000e+00f;
  Y_local[11] = 0.000000e+00f;
  Y_local[13] = 0.000000e+00f;
  Y_local[15] = 0.000000e+00f;
  Y_local[17] = 0.000000e+00f;
  Y_local[19] = 0.000000e+00f;
  Y_local[21] = 0.000000e+00f;
  Y_local[23] = 0.000000e+00f;
  Y_local[25] = 0.000000e+00f;
  Y_local[27] = 0.000000e+00f;
  Y_local[29] = 0.000000e+00f;
  Y_local[31] = 0.000000e+00f;
  Y_local[33] = 0.000000e+00f;
  Y_local[35] = 0.000000e+00f;
  Y_local[37] = 0.000000e+00f;
  Y_local[39] = 0.000000e+00f;
  Y_local[41] = 0.000000e+00f;
  Y_local[43] = 0.000000e+00f;
  Y_local[45] = 0.000000e+00f;
  Y_local[47] = 0.000000e+00f;
  Y_local[49] = 0.000000e+00f;
  Y_local[51] = 0.000000e+00f;
  Y_local[53] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((int)threadIdx.x)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 64)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 9216))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 18432))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 192)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 27648))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 36864))), "n"(4)
    );
  }
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
       :: "r"(addr), "l"((void*)(B + ((((((int)threadIdx.x) / 24) * 1152) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) % 24) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + ((((((((int)threadIdx.x) * 4) + 256) / 96) * 1152) + ((((int)blockIdx.x) % 12) * 96)) + (((((int)threadIdx.x) * 4) + 64) % 96)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + ((((((((int)threadIdx.x) * 4) + 512) / 96) * 1152) + ((((int)blockIdx.x) % 12) * 96)) + (((((int)threadIdx.x) * 4) + 32) % 96)))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 288)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 8))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 352)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 9224))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 416)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 18440))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 480)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 27656))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) + 544)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (((int)threadIdx.x) & 7)) + 36872))), "n"(4)
    );
  }
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) / 24) * 1152) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) % 24) * 4)) + 9216))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((((int)threadIdx.x) * 4) + 256) / 96) * 1152) + ((((int)blockIdx.x) % 12) * 96)) + (((((int)threadIdx.x) * 4) + 64) % 96)) + 9216))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((((int)threadIdx.x) * 4) + 512) / 96) * 1152) + ((((int)blockIdx.x) % 12) * 96)) + (((((int)threadIdx.x) * 4) + 32) % 96)) + 9216))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int k_0_fused = 0; k_0_fused < 142; ++k_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((k_0_fused + 2) % 3) * 288) + ((int)threadIdx.x))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (k_0_fused * 8)) + (((int)threadIdx.x) & 7)) + 16))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 288) + ((int)threadIdx.x)) + 64)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (k_0_fused * 8)) + (((int)threadIdx.x) & 7)) + 9232))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 288) + ((int)threadIdx.x)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (k_0_fused * 8)) + (((int)threadIdx.x) & 7)) + 18448))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 288) + ((int)threadIdx.x)) + 192)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (k_0_fused * 8)) + (((int)threadIdx.x) & 7)) + 27664))), "n"(4)
    );
  }
    if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 288) + ((int)threadIdx.x)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 3) * 1152)) + (k_0_fused * 8)) + (((int)threadIdx.x) & 7)) + 36880))), "n"(4)
    );
  }
    }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((k_0_fused + 2) % 3) * 768) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 9216) + ((((int)threadIdx.x) / 24) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) % 24) * 4)) + 18432))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 768) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 9216) + ((((((int)threadIdx.x) * 4) + 256) / 96) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + (((((int)threadIdx.x) * 4) + 64) % 96)) + 18432))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 768) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 9216) + ((((((int)threadIdx.x) * 4) + 512) / 96) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + (((((int)threadIdx.x) * 4) + 32) % 96)) + 18432))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    Y_local[0] = (Y_local[0] + (A_shared[(((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8))] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[2] = (Y_local[2] + (A_shared[(((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8))] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[4] = (Y_local[4] + (A_shared[(((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8))] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 32)] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 32)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 32)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 64)] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 64)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[16] = (Y_local[16] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 64)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[18] = (Y_local[18] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 96)] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[20] = (Y_local[20] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 96)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[22] = (Y_local[22] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 96)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[24] = (Y_local[24] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 128)] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[26] = (Y_local[26] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 128)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[28] = (Y_local[28] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 128)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[30] = (Y_local[30] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 160)] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[32] = (Y_local[32] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 160)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[34] = (Y_local[34] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 160)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[36] = (Y_local[36] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 192)] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[38] = (Y_local[38] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 192)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[40] = (Y_local[40] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 192)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[42] = (Y_local[42] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 224)] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[44] = (Y_local[44] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 224)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[46] = (Y_local[46] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 224)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[48] = (Y_local[48] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 256)] * B_shared[(((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2))]));
    Y_local[50] = (Y_local[50] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 256)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    Y_local[52] = (Y_local[52] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 256)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    Y_local[1] = (Y_local[1] + (A_shared[(((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8))] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[3] = (Y_local[3] + (A_shared[(((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8))] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[5] = (Y_local[5] + (A_shared[(((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8))] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 32)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 32)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 32)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 64)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 64)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[17] = (Y_local[17] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 64)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[19] = (Y_local[19] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 96)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[21] = (Y_local[21] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 96)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[23] = (Y_local[23] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 96)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[25] = (Y_local[25] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 128)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[27] = (Y_local[27] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 128)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[29] = (Y_local[29] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 128)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[31] = (Y_local[31] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 160)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[33] = (Y_local[33] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 160)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[35] = (Y_local[35] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 160)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[37] = (Y_local[37] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 192)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[39] = (Y_local[39] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 192)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[41] = (Y_local[41] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 192)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[43] = (Y_local[43] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 224)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[45] = (Y_local[45] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 224)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[47] = (Y_local[47] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 224)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[49] = (Y_local[49] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 256)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    Y_local[51] = (Y_local[51] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 256)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    Y_local[53] = (Y_local[53] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 256)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 1)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 1)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 1)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 33)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 33)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 33)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 65)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 65)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[16] = (Y_local[16] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 65)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[18] = (Y_local[18] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 97)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[20] = (Y_local[20] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 97)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[22] = (Y_local[22] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 97)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[24] = (Y_local[24] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 129)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[26] = (Y_local[26] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 129)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[28] = (Y_local[28] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 129)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[30] = (Y_local[30] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 161)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[32] = (Y_local[32] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 161)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[34] = (Y_local[34] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 161)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[36] = (Y_local[36] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 193)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[38] = (Y_local[38] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 193)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[40] = (Y_local[40] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 193)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[42] = (Y_local[42] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 225)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[44] = (Y_local[44] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 225)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[46] = (Y_local[46] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 225)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[48] = (Y_local[48] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 257)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    Y_local[50] = (Y_local[50] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 257)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    Y_local[52] = (Y_local[52] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 257)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 1)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 1)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 1)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 33)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 33)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 33)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 65)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 65)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[17] = (Y_local[17] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 65)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[19] = (Y_local[19] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 97)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[21] = (Y_local[21] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 97)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[23] = (Y_local[23] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 97)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[25] = (Y_local[25] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 129)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[27] = (Y_local[27] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 129)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[29] = (Y_local[29] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 129)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[31] = (Y_local[31] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 161)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[33] = (Y_local[33] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 161)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[35] = (Y_local[35] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 161)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[37] = (Y_local[37] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 193)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[39] = (Y_local[39] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 193)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[41] = (Y_local[41] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 193)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[43] = (Y_local[43] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 225)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[45] = (Y_local[45] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 225)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[47] = (Y_local[47] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 225)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[49] = (Y_local[49] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 257)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    Y_local[51] = (Y_local[51] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 257)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    Y_local[53] = (Y_local[53] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 257)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 2)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 2)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 2)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 34)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 34)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 34)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 66)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 66)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[16] = (Y_local[16] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 66)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[18] = (Y_local[18] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 98)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[20] = (Y_local[20] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 98)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[22] = (Y_local[22] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 98)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[24] = (Y_local[24] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 130)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[26] = (Y_local[26] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 130)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[28] = (Y_local[28] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 130)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[30] = (Y_local[30] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 162)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[32] = (Y_local[32] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 162)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[34] = (Y_local[34] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 162)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[36] = (Y_local[36] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 194)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[38] = (Y_local[38] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 194)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[40] = (Y_local[40] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 194)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[42] = (Y_local[42] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 226)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[44] = (Y_local[44] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 226)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[46] = (Y_local[46] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 226)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[48] = (Y_local[48] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 258)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    Y_local[50] = (Y_local[50] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 258)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    Y_local[52] = (Y_local[52] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 258)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 2)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 2)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 2)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 34)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 34)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 34)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 66)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 66)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[17] = (Y_local[17] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 66)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[19] = (Y_local[19] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 98)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[21] = (Y_local[21] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 98)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[23] = (Y_local[23] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 98)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[25] = (Y_local[25] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 130)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[27] = (Y_local[27] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 130)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[29] = (Y_local[29] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 130)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[31] = (Y_local[31] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 162)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[33] = (Y_local[33] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 162)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[35] = (Y_local[35] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 162)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[37] = (Y_local[37] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 194)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[39] = (Y_local[39] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 194)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[41] = (Y_local[41] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 194)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[43] = (Y_local[43] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 226)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[45] = (Y_local[45] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 226)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[47] = (Y_local[47] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 226)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[49] = (Y_local[49] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 258)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    Y_local[51] = (Y_local[51] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 258)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    Y_local[53] = (Y_local[53] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 258)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 3)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 3)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 3)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 35)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 35)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 35)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 67)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 67)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[16] = (Y_local[16] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 67)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[18] = (Y_local[18] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 99)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[20] = (Y_local[20] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 99)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[22] = (Y_local[22] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 99)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[24] = (Y_local[24] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 131)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[26] = (Y_local[26] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 131)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[28] = (Y_local[28] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 131)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[30] = (Y_local[30] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 163)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[32] = (Y_local[32] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 163)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[34] = (Y_local[34] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 163)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[36] = (Y_local[36] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 195)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[38] = (Y_local[38] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 195)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[40] = (Y_local[40] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 195)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[42] = (Y_local[42] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 227)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[44] = (Y_local[44] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 227)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[46] = (Y_local[46] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 227)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[48] = (Y_local[48] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 259)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    Y_local[50] = (Y_local[50] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 259)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    Y_local[52] = (Y_local[52] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 259)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 3)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 3)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 3)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 35)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 35)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 35)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 67)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 67)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[17] = (Y_local[17] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 67)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[19] = (Y_local[19] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 99)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[21] = (Y_local[21] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 99)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[23] = (Y_local[23] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 99)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[25] = (Y_local[25] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 131)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[27] = (Y_local[27] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 131)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[29] = (Y_local[29] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 131)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[31] = (Y_local[31] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 163)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[33] = (Y_local[33] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 163)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[35] = (Y_local[35] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 163)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[37] = (Y_local[37] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 195)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[39] = (Y_local[39] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 195)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[41] = (Y_local[41] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 195)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[43] = (Y_local[43] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 227)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[45] = (Y_local[45] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 227)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[47] = (Y_local[47] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 227)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[49] = (Y_local[49] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 259)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    Y_local[51] = (Y_local[51] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 259)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    Y_local[53] = (Y_local[53] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 259)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 4)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 4)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 4)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 36)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 36)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 36)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 68)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 68)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[16] = (Y_local[16] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 68)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[18] = (Y_local[18] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 100)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[20] = (Y_local[20] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 100)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[22] = (Y_local[22] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 100)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[24] = (Y_local[24] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 132)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[26] = (Y_local[26] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 132)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[28] = (Y_local[28] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 132)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[30] = (Y_local[30] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 164)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[32] = (Y_local[32] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 164)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[34] = (Y_local[34] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 164)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[36] = (Y_local[36] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 196)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[38] = (Y_local[38] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 196)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[40] = (Y_local[40] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 196)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[42] = (Y_local[42] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 228)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[44] = (Y_local[44] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 228)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[46] = (Y_local[46] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 228)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[48] = (Y_local[48] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 260)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    Y_local[50] = (Y_local[50] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 260)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    Y_local[52] = (Y_local[52] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 260)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 4)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 4)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 4)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 36)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 36)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 36)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 68)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 68)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[17] = (Y_local[17] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 68)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[19] = (Y_local[19] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 100)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[21] = (Y_local[21] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 100)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[23] = (Y_local[23] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 100)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[25] = (Y_local[25] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 132)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[27] = (Y_local[27] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 132)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[29] = (Y_local[29] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 132)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[31] = (Y_local[31] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 164)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[33] = (Y_local[33] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 164)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[35] = (Y_local[35] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 164)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[37] = (Y_local[37] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 196)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[39] = (Y_local[39] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 196)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[41] = (Y_local[41] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 196)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[43] = (Y_local[43] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 228)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[45] = (Y_local[45] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 228)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[47] = (Y_local[47] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 228)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[49] = (Y_local[49] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 260)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    Y_local[51] = (Y_local[51] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 260)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    Y_local[53] = (Y_local[53] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 260)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 5)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 5)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 5)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 37)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 37)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 37)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 69)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 69)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[16] = (Y_local[16] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 69)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[18] = (Y_local[18] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 101)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[20] = (Y_local[20] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 101)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[22] = (Y_local[22] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 101)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[24] = (Y_local[24] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 133)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[26] = (Y_local[26] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 133)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[28] = (Y_local[28] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 133)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[30] = (Y_local[30] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 165)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[32] = (Y_local[32] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 165)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[34] = (Y_local[34] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 165)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[36] = (Y_local[36] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 197)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[38] = (Y_local[38] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 197)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[40] = (Y_local[40] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 197)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[42] = (Y_local[42] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 229)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[44] = (Y_local[44] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 229)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[46] = (Y_local[46] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 229)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[48] = (Y_local[48] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 261)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    Y_local[50] = (Y_local[50] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 261)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    Y_local[52] = (Y_local[52] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 261)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 5)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 5)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 5)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 37)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 37)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 37)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 69)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 69)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[17] = (Y_local[17] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 69)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[19] = (Y_local[19] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 101)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[21] = (Y_local[21] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 101)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[23] = (Y_local[23] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 101)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[25] = (Y_local[25] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 133)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[27] = (Y_local[27] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 133)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[29] = (Y_local[29] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 133)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[31] = (Y_local[31] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 165)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[33] = (Y_local[33] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 165)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[35] = (Y_local[35] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 165)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[37] = (Y_local[37] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 197)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[39] = (Y_local[39] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 197)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[41] = (Y_local[41] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 197)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[43] = (Y_local[43] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 229)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[45] = (Y_local[45] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 229)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[47] = (Y_local[47] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 229)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[49] = (Y_local[49] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 261)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    Y_local[51] = (Y_local[51] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 261)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    Y_local[53] = (Y_local[53] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 261)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 6)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 6)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 6)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 38)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 38)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 38)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 70)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 70)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[16] = (Y_local[16] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 70)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[18] = (Y_local[18] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 102)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[20] = (Y_local[20] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 102)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[22] = (Y_local[22] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 102)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[24] = (Y_local[24] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 134)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[26] = (Y_local[26] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 134)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[28] = (Y_local[28] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 134)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[30] = (Y_local[30] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 166)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[32] = (Y_local[32] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 166)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[34] = (Y_local[34] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 166)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[36] = (Y_local[36] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 198)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[38] = (Y_local[38] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 198)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[40] = (Y_local[40] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 198)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[42] = (Y_local[42] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 230)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[44] = (Y_local[44] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 230)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[46] = (Y_local[46] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 230)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[48] = (Y_local[48] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 262)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    Y_local[50] = (Y_local[50] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 262)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    Y_local[52] = (Y_local[52] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 262)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 6)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 6)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 6)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 38)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 38)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 38)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 70)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 70)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[17] = (Y_local[17] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 70)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[19] = (Y_local[19] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 102)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[21] = (Y_local[21] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 102)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[23] = (Y_local[23] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 102)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[25] = (Y_local[25] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 134)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[27] = (Y_local[27] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 134)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[29] = (Y_local[29] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 134)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[31] = (Y_local[31] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 166)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[33] = (Y_local[33] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 166)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[35] = (Y_local[35] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 166)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[37] = (Y_local[37] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 198)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[39] = (Y_local[39] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 198)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[41] = (Y_local[41] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 198)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[43] = (Y_local[43] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 230)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[45] = (Y_local[45] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 230)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[47] = (Y_local[47] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 230)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[49] = (Y_local[49] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 262)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    Y_local[51] = (Y_local[51] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 262)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    Y_local[53] = (Y_local[53] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 262)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 7)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 7)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 7)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 39)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 39)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 39)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 71)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 71)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[16] = (Y_local[16] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 71)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[18] = (Y_local[18] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 103)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[20] = (Y_local[20] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 103)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[22] = (Y_local[22] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 103)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[24] = (Y_local[24] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 135)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[26] = (Y_local[26] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 135)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[28] = (Y_local[28] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 135)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[30] = (Y_local[30] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 167)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[32] = (Y_local[32] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 167)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[34] = (Y_local[34] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 167)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[36] = (Y_local[36] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 199)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[38] = (Y_local[38] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 199)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[40] = (Y_local[40] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 199)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[42] = (Y_local[42] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 231)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[44] = (Y_local[44] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 231)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[46] = (Y_local[46] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 231)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[48] = (Y_local[48] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 263)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    Y_local[50] = (Y_local[50] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 263)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    Y_local[52] = (Y_local[52] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 263)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 7)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 7)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 7)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 39)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 39)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 39)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 71)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 71)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[17] = (Y_local[17] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 71)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    Y_local[19] = (Y_local[19] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 103)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[21] = (Y_local[21] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 103)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[23] = (Y_local[23] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 103)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    Y_local[25] = (Y_local[25] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 135)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[27] = (Y_local[27] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 135)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[29] = (Y_local[29] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 135)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    Y_local[31] = (Y_local[31] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 167)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[33] = (Y_local[33] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 167)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[35] = (Y_local[35] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 167)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    Y_local[37] = (Y_local[37] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 199)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[39] = (Y_local[39] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 199)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[41] = (Y_local[41] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 199)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    Y_local[43] = (Y_local[43] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 231)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[45] = (Y_local[45] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 231)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[47] = (Y_local[47] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 231)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    Y_local[49] = (Y_local[49] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 263)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    Y_local[51] = (Y_local[51] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 263)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    Y_local[53] = (Y_local[53] + (A_shared[((((k_0_fused % 3) * 288) + ((((int)threadIdx.x) >> 4) * 8)) + 263)] * B_shared[((((k_0_fused % 3) * 768) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 288)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 288)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 288)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 320)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 320)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 320)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 352)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 352)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 352)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 384)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 384)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 384)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 416)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 416)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 416)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 448)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 448)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 448)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 480)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 480)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 480)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 512)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 512)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 512)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 544)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 544)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 544)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 288)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 288)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 288)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 320)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 320)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 320)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 352)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 352)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 352)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 384)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 384)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 384)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 416)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 416)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 416)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 448)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 448)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 448)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 480)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 480)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 480)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 512)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 512)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 512)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 544)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 544)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 544)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 289)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 289)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 289)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 321)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 321)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 321)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 353)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 353)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 353)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 385)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 385)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 385)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 417)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 417)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 417)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 449)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 449)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 449)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 481)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 481)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 481)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 513)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 513)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 513)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 545)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 545)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 545)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 289)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 289)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 289)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 321)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 321)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 321)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 353)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 353)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 353)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 385)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 385)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 385)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 417)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 417)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 417)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 449)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 449)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 449)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 481)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 481)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 481)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 513)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 513)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 513)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 545)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 545)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 545)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 290)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 290)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 290)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 322)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 322)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 322)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 354)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 354)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 354)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 386)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 386)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 386)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 418)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 418)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 418)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 450)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 450)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 450)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 482)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 482)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 482)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 514)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 514)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 514)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 546)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 546)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 546)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 290)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 290)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 290)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 322)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 322)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 322)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 354)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 354)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 354)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 386)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 386)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 386)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 418)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 418)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 418)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 450)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 450)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 450)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 482)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 482)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 482)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 514)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 514)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 514)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 546)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 546)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 546)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 291)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 291)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 291)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 323)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 323)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 323)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 355)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 355)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 355)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 387)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 387)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 387)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 419)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 419)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 419)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 451)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 451)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 451)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 483)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 483)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 483)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 515)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 515)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 515)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 547)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 547)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 547)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 291)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 291)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 291)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 323)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 323)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 323)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 355)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 355)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 355)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 387)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 387)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 387)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 419)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 419)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 419)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 451)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 451)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 451)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 483)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 483)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 483)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 515)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 515)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 515)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 547)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 547)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 547)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 292)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 292)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 292)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 324)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 324)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 324)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 356)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 356)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 356)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 388)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 388)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 388)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 420)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 420)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 420)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 452)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 452)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 452)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 484)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 484)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 484)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 516)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 516)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 516)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 548)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 548)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 548)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 292)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 292)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 292)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 324)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 324)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 324)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 356)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 356)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 356)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 388)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 388)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 388)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 420)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 420)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 420)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 452)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 452)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 452)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 484)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 484)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 484)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 516)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 516)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 516)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 548)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 548)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 548)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 293)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 293)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 293)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 325)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 325)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 325)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 357)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 357)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 357)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 389)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 389)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 389)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 421)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 421)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 421)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 453)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 453)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 453)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 485)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 485)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 485)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 517)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 517)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 517)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 549)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 549)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 549)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 293)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 293)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 293)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 325)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 325)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 325)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 357)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 357)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 357)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 389)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 389)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 389)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 421)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 421)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 421)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 453)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 453)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 453)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 485)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 485)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 485)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 517)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 517)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 517)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 549)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 549)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 549)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 294)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 294)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 294)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 326)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 326)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 326)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 358)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 358)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 358)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 390)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 390)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 390)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 422)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 422)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 422)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 454)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 454)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 454)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 486)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 486)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 486)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 518)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 518)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 518)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 550)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 550)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 550)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 294)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 294)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 294)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 326)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 326)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 326)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 358)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 358)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 358)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 390)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 390)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 390)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 422)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 422)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 422)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 454)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 454)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 454)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 486)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 486)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 486)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 518)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 518)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 518)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 550)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 550)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 550)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 295)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 295)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 295)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 327)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 327)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 327)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 359)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 359)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 359)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 391)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 391)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 391)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 423)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 423)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 423)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 455)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 455)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 455)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 487)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 487)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 487)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 519)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 519)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 519)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 551)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 551)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 551)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 295)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 295)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 295)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 327)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 327)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 327)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 359)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 359)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 359)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 391)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 391)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 391)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 423)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 423)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 423)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 455)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 455)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 455)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 487)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 487)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 487)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 519)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 519)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 519)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 551)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 551)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 551)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 576)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 576)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 576)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 608)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 608)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 608)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 640)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 640)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 640)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 672)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 672)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 672)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 704)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 704)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 704)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 736)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 736)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 736)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 768)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 768)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 768)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 800)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 800)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 800)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 832)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 832)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 832)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 576)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 576)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 576)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 608)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 608)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 608)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 640)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 640)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 640)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 672)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 672)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 672)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 704)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 704)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 704)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 736)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 736)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 736)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 768)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 768)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 768)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 800)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 800)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 800)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 832)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 832)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 832)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 577)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 577)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 577)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 609)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 609)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 609)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 641)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 641)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 641)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 673)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 673)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 673)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 705)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 705)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 705)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 737)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 737)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 737)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 769)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 769)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 769)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 801)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 801)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 801)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 833)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 833)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 833)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 577)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 577)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 577)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 609)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 609)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 609)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 641)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 641)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 641)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 673)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 673)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 673)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 705)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 705)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 705)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 737)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 737)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 737)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 769)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 769)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 769)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 801)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 801)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 801)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 833)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 833)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 833)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 578)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 578)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 578)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 610)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 610)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 610)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 642)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 642)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 642)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 674)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 674)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 674)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 706)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 706)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 706)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 738)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 738)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 738)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 770)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 770)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 770)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 802)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 802)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 802)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 834)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 834)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 834)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 578)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 578)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 578)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 610)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 610)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 610)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 642)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 642)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 642)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 674)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 674)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 674)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 706)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 706)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 706)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 738)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 738)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 738)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 770)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 770)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 770)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 802)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 802)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 802)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 834)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 834)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 834)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 579)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 579)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 579)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 611)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 611)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 611)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 643)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 643)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 643)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 675)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 675)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 675)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 707)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 707)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 707)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 739)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 739)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 739)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 771)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 771)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 771)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 803)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 803)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 803)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 835)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 835)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 835)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 579)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 579)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 579)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 611)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 611)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 611)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 643)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 643)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 643)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 675)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 675)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 675)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 707)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 707)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 707)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 739)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 739)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 739)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 771)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 771)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 771)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 803)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 803)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 803)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 835)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 835)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 835)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 580)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 580)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 580)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 612)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 612)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 612)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 644)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 644)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 644)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 676)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 676)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 676)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 708)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 708)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 708)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 740)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 740)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 740)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 772)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 772)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 772)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 804)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 804)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 804)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 836)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 836)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 836)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 580)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 580)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 580)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 612)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 612)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 612)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 644)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 644)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 644)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 676)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 676)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 676)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 708)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 708)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 708)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 740)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 740)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 740)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 772)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 772)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 772)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 804)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 804)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 804)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 836)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 836)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 836)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 581)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 581)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 581)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 613)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 613)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 613)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 645)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 645)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 645)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 677)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 677)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 677)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 709)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 709)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 709)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 741)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 741)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 741)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 773)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 773)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 773)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 805)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 805)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 805)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 837)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 837)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 837)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 581)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 581)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 581)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 613)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 613)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 613)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 645)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 645)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 645)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 677)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 677)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 677)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 709)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 709)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 709)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 741)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 741)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 741)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 773)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 773)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 773)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 805)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 805)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 805)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 837)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 837)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 837)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 582)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 582)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 582)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 614)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 614)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 614)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 646)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 646)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 646)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 678)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 678)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 678)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 710)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 710)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 710)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 742)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 742)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 742)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 774)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 774)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 774)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 806)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 806)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 806)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 838)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 838)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 838)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 582)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 582)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 582)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 614)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 614)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 614)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 646)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 646)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 646)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 678)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 678)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 678)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 710)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 710)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 710)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 742)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 742)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 742)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 774)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 774)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 774)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 806)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 806)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 806)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 838)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 838)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 838)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 583)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 583)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 583)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 615)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 615)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 615)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 647)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 647)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[16] = (Y_local[16] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 647)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[18] = (Y_local[18] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 679)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[20] = (Y_local[20] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 679)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[22] = (Y_local[22] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 679)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[24] = (Y_local[24] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 711)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[26] = (Y_local[26] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 711)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[28] = (Y_local[28] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 711)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[30] = (Y_local[30] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 743)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[32] = (Y_local[32] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 743)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[34] = (Y_local[34] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 743)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[36] = (Y_local[36] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 775)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[38] = (Y_local[38] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 775)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[40] = (Y_local[40] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 775)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[42] = (Y_local[42] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 807)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[44] = (Y_local[44] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 807)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[46] = (Y_local[46] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 807)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[48] = (Y_local[48] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 839)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  Y_local[50] = (Y_local[50] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 839)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  Y_local[52] = (Y_local[52] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 839)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 583)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 583)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 583)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 615)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 615)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 615)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 647)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 647)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[17] = (Y_local[17] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 647)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y_local[19] = (Y_local[19] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 679)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[21] = (Y_local[21] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 679)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[23] = (Y_local[23] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 679)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y_local[25] = (Y_local[25] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 711)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[27] = (Y_local[27] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 711)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[29] = (Y_local[29] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 711)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y_local[31] = (Y_local[31] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 743)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[33] = (Y_local[33] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 743)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[35] = (Y_local[35] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 743)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y_local[37] = (Y_local[37] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 775)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[39] = (Y_local[39] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 775)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[41] = (Y_local[41] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 775)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y_local[43] = (Y_local[43] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 807)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[45] = (Y_local[45] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 807)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[47] = (Y_local[47] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 807)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y_local[49] = (Y_local[49] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 839)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  Y_local[51] = (Y_local[51] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 839)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  Y_local[53] = (Y_local[53] + (A_shared[(((((int)threadIdx.x) >> 4) * 8) + 839)] * B_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  Y[(((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2))] = Y_local[0];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 32)] = Y_local[2];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 64)] = Y_local[4];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 4608)] = Y_local[6];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 4640)] = Y_local[8];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 4672)] = Y_local[10];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 9216)] = Y_local[12];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 9248)] = Y_local[14];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 9280)] = Y_local[16];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 13824)] = Y_local[18];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 13856)] = Y_local[20];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 13888)] = Y_local[22];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 18432)] = Y_local[24];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 18464)] = Y_local[26];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 18496)] = Y_local[28];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 23040)] = Y_local[30];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 23072)] = Y_local[32];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 23104)] = Y_local[34];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 27648)] = Y_local[36];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 27680)] = Y_local[38];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 27712)] = Y_local[40];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 32256)] = Y_local[42];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 32288)] = Y_local[44];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 32320)] = Y_local[46];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 36864)] = Y_local[48];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 36896)] = Y_local[50];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 36928)] = Y_local[52];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 1)] = Y_local[1];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 33)] = Y_local[3];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 65)] = Y_local[5];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 4609)] = Y_local[7];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 4641)] = Y_local[9];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 4673)] = Y_local[11];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 9217)] = Y_local[13];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 9249)] = Y_local[15];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 9281)] = Y_local[17];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 13825)] = Y_local[19];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 13857)] = Y_local[21];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 13889)] = Y_local[23];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 18433)] = Y_local[25];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 18465)] = Y_local[27];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 18497)] = Y_local[29];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 23041)] = Y_local[31];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 23073)] = Y_local[33];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 23105)] = Y_local[35];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 27649)] = Y_local[37];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 27681)] = Y_local[39];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 27713)] = Y_local[41];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 32257)] = Y_local[43];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 32289)] = Y_local[45];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 32321)] = Y_local[47];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 36865)] = Y_local[49];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 36897)] = Y_local[51];
  Y[((((((((int)blockIdx.x) / 12) * 41472) + ((((int)threadIdx.x) >> 4) * 1152)) + ((((int)blockIdx.x) % 12) * 96)) + ((((int)threadIdx.x) & 15) * 2)) + 36929)] = Y_local[53];
}


