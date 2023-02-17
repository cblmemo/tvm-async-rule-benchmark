
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
  float Y_local[16];
  __shared__ float A_shared[1536];
  __shared__ float B_shared[6144];
  Y_local[0] = 0.000000e+00f;
  Y_local[8] = 0.000000e+00f;
  Y_local[1] = 0.000000e+00f;
  Y_local[9] = 0.000000e+00f;
  Y_local[2] = 0.000000e+00f;
  Y_local[10] = 0.000000e+00f;
  Y_local[3] = 0.000000e+00f;
  Y_local[11] = 0.000000e+00f;
  Y_local[4] = 0.000000e+00f;
  Y_local[12] = 0.000000e+00f;
  Y_local[5] = 0.000000e+00f;
  Y_local[13] = 0.000000e+00f;
  Y_local[6] = 0.000000e+00f;
  Y_local[14] = 0.000000e+00f;
  Y_local[7] = 0.000000e+00f;
  Y_local[15] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((int)threadIdx.x) * 4)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((int)blockIdx.x) >> 2) * 10240) + ((((int)threadIdx.x) >> 3) * 640)) + ((((int)threadIdx.x) & 7) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 2) * 10240) + ((((int)threadIdx.x) >> 3) * 640)) + ((((int)threadIdx.x) & 7) * 4)) + 5120))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + ((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 1024))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 2048))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 3072))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4096))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 5120))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 6144))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 7168))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 2) * 10240) + ((((int)threadIdx.x) >> 3) * 640)) + ((((int)threadIdx.x) & 7) * 4)) + 32))), "n"(16)
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
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) >> 2) * 10240) + ((((int)threadIdx.x) >> 3) * 640)) + ((((int)threadIdx.x) & 7) * 4)) + 5152))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 2048)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 8192))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 2304)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 9216))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 2560)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 10240))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 2816)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 11264))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 3072)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 12288))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 3328)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 13312))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 3584)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 14336))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((int)threadIdx.x) * 4) + 3840)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 15360))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int k_0_fused = 0; k_0_fused < 18; ++k_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((k_0_fused + 2) % 3) * 512) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) >> 2) * 10240) + ((((int)threadIdx.x) >> 3) * 640)) + (k_0_fused * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 64))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 2) % 3) * 512) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) >> 2) * 10240) + ((((int)threadIdx.x) >> 3) * 640)) + (k_0_fused * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 5184))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((k_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 16384))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 17408))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 18432))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 19456))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 20480))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 21504))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 22528))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 23552))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    Y_local[0] = (Y_local[0] + (A_shared[(((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128))] * B_shared[(((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 256)] * B_shared[(((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    Y_local[1] = (Y_local[1] + (A_shared[(((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128))] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 256)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 32)] * B_shared[(((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 288)] * B_shared[(((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 32)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 288)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 1)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 257)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 1)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 257)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 33)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 289)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 33)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 289)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 2)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 258)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 2)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 258)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 34)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 290)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 34)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 290)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 3)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 259)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 3)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 259)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 35)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 291)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 35)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 291)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 4)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 260)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 4)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 260)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 36)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 292)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 36)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 292)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 5)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 261)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 5)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 261)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 37)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 293)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 37)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 293)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 6)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 262)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 6)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 262)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 38)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 294)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 38)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 294)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 7)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 263)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 7)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 263)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 39)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 295)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 39)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 295)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 8)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 264)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 8)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 264)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 40)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 296)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 40)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 296)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 9)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 265)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 9)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 265)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 41)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 297)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 41)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 297)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 10)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 266)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 10)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 266)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 42)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 298)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 42)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 298)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 11)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 267)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 11)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 267)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 43)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 299)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 43)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 299)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 12)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 268)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 12)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 268)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 44)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 300)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 44)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 300)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 13)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 269)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 13)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 269)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 45)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 301)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 45)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 301)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 14)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 270)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 14)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 270)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 46)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 302)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 46)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 302)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 15)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 271)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 15)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 271)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 47)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 303)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 47)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 303)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 16)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 272)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 16)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 272)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 48)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 304)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 48)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 304)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 17)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 273)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 17)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 273)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 49)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 305)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 49)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 305)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 18)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 274)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 18)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 274)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 50)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 306)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 50)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 306)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 19)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 275)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 19)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 275)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 51)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 307)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 51)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 307)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 20)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 276)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 20)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 276)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 52)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 308)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 52)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 308)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 21)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 277)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 21)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 277)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 53)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 309)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 53)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 309)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 22)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 278)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 22)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 278)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 54)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 310)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 54)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 310)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 23)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 279)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 23)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 279)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 55)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 311)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 55)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 311)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 24)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 280)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 24)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 280)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 56)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 312)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 56)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 312)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 25)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 281)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 25)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 281)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 57)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 313)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 57)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 313)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 26)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 282)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 26)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 282)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 58)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 314)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 58)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 314)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 27)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 283)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 27)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 283)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 59)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 315)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 59)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 315)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 28)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 284)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 28)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 284)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 60)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 316)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 60)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 316)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 29)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 285)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 29)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 285)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 61)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 317)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 61)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 317)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 30)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 286)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 30)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 286)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 62)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 318)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 62)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 318)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    Y_local[0] = (Y_local[0] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 31)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    Y_local[8] = (Y_local[8] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 287)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    Y_local[1] = (Y_local[1] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 31)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    Y_local[9] = (Y_local[9] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 287)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    Y_local[2] = (Y_local[2] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 63)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    Y_local[10] = (Y_local[10] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 319)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    Y_local[3] = (Y_local[3] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 63)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    Y_local[11] = (Y_local[11] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 319)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 64)] * B_shared[(((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 320)] * B_shared[(((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 64)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 320)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 96)] * B_shared[(((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 352)] * B_shared[(((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 96)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 352)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 65)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 321)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 65)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 321)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 97)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 353)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 97)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 353)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 66)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 322)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 66)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 322)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 98)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 354)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 98)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 354)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 67)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 323)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 67)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 323)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 99)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 355)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 99)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 355)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 68)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 324)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 68)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 324)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 100)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 356)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 100)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 356)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 69)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 325)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 69)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 325)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 101)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 357)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 101)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 357)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 70)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 326)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 70)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 326)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 102)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 358)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 102)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 358)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 71)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 327)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 71)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 327)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 103)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 359)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 103)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 359)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 72)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 328)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 72)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 328)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 104)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 360)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 104)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 360)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 73)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 329)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 73)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 329)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 105)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 361)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 105)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 361)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 74)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 330)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 74)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 330)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 106)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 362)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 106)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 362)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 75)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 331)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 75)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 331)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 107)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 363)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 107)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 363)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 76)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 332)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 76)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 332)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 108)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 364)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 108)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 364)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 77)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 333)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 77)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 333)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 109)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 365)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 109)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 365)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 78)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 334)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 78)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 334)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 110)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 366)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 110)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 366)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 79)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 335)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 79)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 335)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 111)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 367)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 111)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 367)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 80)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 336)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 80)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 336)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 112)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 368)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 112)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 368)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 81)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 337)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 81)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 337)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 113)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 369)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 113)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 369)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 82)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 338)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 82)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 338)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 114)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 370)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 114)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 370)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 83)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 339)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 83)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 339)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 115)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 371)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 115)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 371)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 84)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 340)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 84)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 340)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 116)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 372)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 116)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 372)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 85)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 341)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 85)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 341)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 117)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 373)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 117)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 373)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 86)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 342)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 86)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 342)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 118)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 374)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 118)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 374)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 87)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 343)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 87)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 343)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 119)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 375)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 119)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 375)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 88)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 344)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 88)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 344)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 120)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 376)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 120)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 376)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 89)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 345)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 89)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 345)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 121)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 377)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 121)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 377)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 90)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 346)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 90)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 346)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 122)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 378)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 122)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 378)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 91)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 347)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 91)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 347)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 123)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 379)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 123)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 379)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 92)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 348)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 92)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 348)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 124)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 380)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 124)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 380)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 93)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 349)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 93)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 349)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 125)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 381)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 125)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 381)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 94)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 350)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 94)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 350)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 126)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 382)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 126)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 382)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    Y_local[4] = (Y_local[4] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 95)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    Y_local[12] = (Y_local[12] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 351)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    Y_local[5] = (Y_local[5] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 95)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    Y_local[13] = (Y_local[13] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 351)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    Y_local[6] = (Y_local[6] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 127)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    Y_local[14] = (Y_local[14] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 383)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    Y_local[7] = (Y_local[7] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 127)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    Y_local[15] = (Y_local[15] + (A_shared[((((k_0_fused % 3) * 512) + ((((int)threadIdx.x) >> 5) * 128)) + 383)] * B_shared[((((k_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  Y_local[0] = (Y_local[0] + (A_shared[((((int)threadIdx.x) >> 5) * 128)] * B_shared[((((int)threadIdx.x) & 31) * 2)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 256)] * B_shared[((((int)threadIdx.x) & 31) * 2)]));
  Y_local[1] = (Y_local[1] + (A_shared[((((int)threadIdx.x) >> 5) * 128)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 256)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 32)] * B_shared[((((int)threadIdx.x) & 31) * 2)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 288)] * B_shared[((((int)threadIdx.x) & 31) * 2)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 32)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 288)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 1)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 257)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 1)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 257)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 33)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 289)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 33)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 289)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 2)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 258)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 2)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 258)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 34)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 290)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 34)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 290)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 3)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 259)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 3)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 259)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 35)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 291)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 35)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 291)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 4)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 260)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 4)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 260)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 36)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 292)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 36)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 292)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 5)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 261)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 5)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 261)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 37)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 293)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 37)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 293)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 6)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 262)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 6)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 262)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 38)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 294)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 38)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 294)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 7)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 263)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 7)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 263)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 39)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 295)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 39)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 295)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 8)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 264)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 8)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 264)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 40)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 296)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 40)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 296)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 9)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 265)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 9)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 265)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 41)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 297)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 41)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 297)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 10)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 266)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 10)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 266)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 42)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 298)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 42)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 298)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 11)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 267)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 11)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 267)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 43)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 299)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 43)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 299)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 12)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 268)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 12)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 268)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 44)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 300)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 44)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 300)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 13)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 269)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 13)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 269)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 45)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 301)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 45)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 301)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 14)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 270)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 14)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 270)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 46)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 302)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 46)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 302)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 15)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 271)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 15)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 271)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 47)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 303)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 47)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 303)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 16)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 272)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 16)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 272)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 48)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 304)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 48)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 304)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 17)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 273)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 17)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 273)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 49)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 305)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 49)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 305)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 18)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 274)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 18)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 274)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 50)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 306)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 50)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 306)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 19)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 275)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 19)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 275)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 51)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 307)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 51)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 307)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 20)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 276)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 20)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 276)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 52)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 308)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 52)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 308)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 21)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 277)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 21)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 277)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 53)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 309)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 53)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 309)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 22)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 278)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 22)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 278)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 54)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 310)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 54)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 310)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 23)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 279)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 23)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 279)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 55)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 311)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 55)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 311)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 24)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 280)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 24)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 280)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 56)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 312)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 56)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 312)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 25)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 281)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 25)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 281)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 57)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 313)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 57)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 313)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 26)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 282)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 26)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 282)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 58)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 314)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 58)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 314)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 27)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 283)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 27)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 283)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 59)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 315)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 59)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 315)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 28)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 284)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 28)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 284)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 60)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 316)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 60)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 316)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 29)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 285)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 29)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 285)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 61)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 317)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 61)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 317)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 30)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 286)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 30)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 286)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 62)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 318)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 62)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 318)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 31)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 287)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 31)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 287)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 63)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 319)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 63)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 319)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 64)] * B_shared[((((int)threadIdx.x) & 31) * 2)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 320)] * B_shared[((((int)threadIdx.x) & 31) * 2)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 64)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 320)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 96)] * B_shared[((((int)threadIdx.x) & 31) * 2)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 352)] * B_shared[((((int)threadIdx.x) & 31) * 2)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 96)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 352)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 65)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 321)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 65)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 321)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 97)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 353)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 97)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 353)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 66)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 322)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 66)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 322)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 98)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 354)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 98)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 354)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 67)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 323)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 67)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 323)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 99)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 355)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 99)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 355)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 68)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 324)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 68)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 324)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 100)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 356)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 100)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 356)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 69)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 325)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 69)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 325)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 101)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 357)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 101)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 357)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 70)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 326)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 70)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 326)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 102)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 358)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 102)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 358)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 71)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 327)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 71)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 327)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 103)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 359)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 103)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 359)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 72)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 328)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 72)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 328)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 104)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 360)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 104)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 360)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 73)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 329)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 73)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 329)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 105)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 361)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 105)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 361)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 74)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 330)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 74)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 330)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 106)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 362)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 106)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 362)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 75)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 331)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 75)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 331)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 107)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 363)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 107)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 363)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 76)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 332)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 76)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 332)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 108)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 364)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 108)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 364)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 77)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 333)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 77)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 333)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 109)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 365)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 109)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 365)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 78)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 334)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 78)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 334)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 110)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 366)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 110)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 366)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 79)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 335)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 79)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 335)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 111)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 367)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 111)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 367)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 80)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 336)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 80)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 336)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 112)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 368)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 112)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 368)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 81)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 337)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 81)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 337)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 113)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 369)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 113)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 369)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 82)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 338)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 82)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 338)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 114)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 370)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 114)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 370)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 83)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 339)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 83)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 339)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 115)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 371)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 115)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 371)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 84)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 340)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 84)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 340)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 116)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 372)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 116)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 372)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 85)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 341)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 85)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 341)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 117)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 373)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 117)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 373)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 86)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 342)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 86)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 342)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 118)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 374)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 118)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 374)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 87)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 343)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 87)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 343)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 119)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 375)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 119)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 375)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 88)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 344)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 88)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 344)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 120)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 376)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 120)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 376)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 89)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 345)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 89)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 345)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 121)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 377)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 121)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 377)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 90)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 346)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 90)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 346)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 122)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 378)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 122)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 378)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 91)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 347)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 91)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 347)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 123)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 379)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 123)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 379)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 92)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 348)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 92)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 348)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 124)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 380)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 124)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 380)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 93)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 349)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 93)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 349)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 125)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 381)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 125)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 381)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 94)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 350)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 94)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 350)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 126)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 382)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 126)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 382)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 95)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 351)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 95)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 351)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 127)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 383)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 127)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 383)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 512)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2048)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 768)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2048)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 512)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2049)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 768)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2049)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 544)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2048)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 800)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2048)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 544)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2049)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 800)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2049)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 513)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2112)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 769)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2112)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 513)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2113)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 769)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2113)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 545)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2112)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 801)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2112)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 545)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2113)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 801)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2113)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 514)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2176)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 770)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2176)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 514)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2177)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 770)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2177)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 546)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2176)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 802)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2176)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 546)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2177)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 802)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2177)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 515)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2240)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 771)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2240)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 515)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2241)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 771)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2241)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 547)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2240)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 803)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2240)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 547)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2241)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 803)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2241)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 516)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2304)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 772)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2304)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 516)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2305)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 772)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2305)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 548)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2304)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 804)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2304)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 548)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2305)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 804)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2305)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 517)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2368)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 773)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2368)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 517)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2369)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 773)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2369)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 549)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2368)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 805)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2368)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 549)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2369)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 805)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2369)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 518)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2432)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 774)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2432)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 518)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2433)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 774)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2433)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 550)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2432)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 806)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2432)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 550)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2433)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 806)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2433)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 519)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2496)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 775)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2496)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 519)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2497)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 775)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2497)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 551)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2496)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 807)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2496)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 551)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2497)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 807)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2497)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 520)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2560)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 776)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2560)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 520)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2561)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 776)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2561)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 552)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2560)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 808)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2560)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 552)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2561)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 808)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2561)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 521)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2624)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 777)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2624)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 521)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2625)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 777)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2625)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 553)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2624)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 809)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2624)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 553)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2625)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 809)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2625)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 522)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2688)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 778)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2688)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 522)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2689)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 778)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2689)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 554)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2688)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 810)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2688)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 554)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2689)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 810)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2689)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 523)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2752)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 779)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2752)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 523)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2753)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 779)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2753)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 555)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2752)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 811)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2752)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 555)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2753)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 811)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2753)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 524)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2816)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 780)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2816)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 524)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2817)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 780)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2817)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 556)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2816)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 812)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2816)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 556)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2817)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 812)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2817)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 525)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2880)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 781)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2880)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 525)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2881)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 781)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2881)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 557)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2880)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 813)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2880)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 557)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2881)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 813)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2881)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 526)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2944)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 782)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2944)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 526)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2945)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 782)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2945)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 558)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2944)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 814)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2944)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 558)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2945)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 814)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2945)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 527)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3008)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 783)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3008)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 527)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3009)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 783)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3009)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 559)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3008)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 815)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3008)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 559)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3009)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 815)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3009)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 528)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3072)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 784)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3072)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 528)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3073)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 784)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3073)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 560)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3072)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 816)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3072)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 560)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3073)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 816)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3073)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 529)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3136)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 785)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3136)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 529)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3137)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 785)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3137)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 561)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3136)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 817)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3136)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 561)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3137)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 817)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3137)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 530)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3200)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 786)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3200)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 530)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3201)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 786)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3201)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 562)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3200)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 818)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3200)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 562)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3201)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 818)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3201)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 531)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3264)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 787)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3264)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 531)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3265)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 787)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3265)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 563)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3264)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 819)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3264)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 563)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3265)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 819)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3265)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 532)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3328)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 788)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3328)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 532)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3329)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 788)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3329)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 564)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3328)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 820)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3328)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 564)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3329)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 820)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3329)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 533)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3392)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 789)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3392)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 533)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3393)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 789)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3393)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 565)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3392)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 821)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3392)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 565)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3393)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 821)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3393)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 534)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3456)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 790)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3456)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 534)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3457)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 790)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3457)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 566)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3456)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 822)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3456)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 566)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3457)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 822)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3457)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 535)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3520)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 791)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3520)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 535)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3521)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 791)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3521)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 567)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3520)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 823)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3520)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 567)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3521)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 823)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3521)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 536)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3584)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 792)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3584)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 536)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3585)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 792)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3585)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 568)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3584)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 824)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3584)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 568)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3585)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 824)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3585)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 537)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3648)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 793)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3648)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 537)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3649)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 793)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3649)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 569)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3648)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 825)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3648)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 569)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3649)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 825)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3649)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 538)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3712)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 794)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3712)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 538)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3713)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 794)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3713)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 570)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3712)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 826)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3712)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 570)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3713)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 826)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3713)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 539)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3776)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 795)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3776)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 539)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3777)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 795)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3777)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 571)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3776)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 827)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3776)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 571)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3777)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 827)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3777)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 540)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3840)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 796)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3840)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 540)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3841)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 796)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3841)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 572)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3840)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 828)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3840)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 572)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3841)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 828)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3841)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 541)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3904)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 797)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3904)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 541)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3905)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 797)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3905)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 573)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3904)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 829)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3904)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 573)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3905)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 829)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3905)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 542)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3968)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 798)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3968)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 542)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3969)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 798)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3969)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 574)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3968)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 830)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3968)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 574)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3969)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 830)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3969)]));
  Y_local[0] = (Y_local[0] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 543)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4032)]));
  Y_local[8] = (Y_local[8] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 799)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4032)]));
  Y_local[1] = (Y_local[1] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 543)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4033)]));
  Y_local[9] = (Y_local[9] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 799)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4033)]));
  Y_local[2] = (Y_local[2] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 575)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4032)]));
  Y_local[10] = (Y_local[10] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 831)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4032)]));
  Y_local[3] = (Y_local[3] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 575)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4033)]));
  Y_local[11] = (Y_local[11] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 831)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4033)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 576)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2048)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 832)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2048)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 576)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2049)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 832)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2049)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 608)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2048)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 864)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2048)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 608)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2049)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 864)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2049)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 577)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2112)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 833)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2112)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 577)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2113)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 833)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2113)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 609)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2112)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 865)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2112)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 609)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2113)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 865)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2113)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 578)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2176)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 834)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2176)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 578)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2177)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 834)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2177)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 610)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2176)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 866)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2176)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 610)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2177)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 866)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2177)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 579)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2240)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 835)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2240)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 579)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2241)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 835)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2241)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 611)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2240)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 867)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2240)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 611)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2241)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 867)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2241)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 580)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2304)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 836)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2304)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 580)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2305)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 836)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2305)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 612)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2304)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 868)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2304)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 612)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2305)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 868)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2305)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 581)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2368)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 837)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2368)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 581)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2369)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 837)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2369)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 613)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2368)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 869)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2368)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 613)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2369)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 869)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2369)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 582)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2432)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 838)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2432)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 582)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2433)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 838)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2433)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 614)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2432)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 870)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2432)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 614)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2433)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 870)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2433)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 583)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2496)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 839)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2496)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 583)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2497)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 839)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2497)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 615)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2496)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 871)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2496)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 615)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2497)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 871)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2497)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 584)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2560)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 840)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2560)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 584)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2561)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 840)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2561)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 616)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2560)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 872)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2560)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 616)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2561)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 872)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2561)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 585)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2624)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 841)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2624)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 585)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2625)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 841)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2625)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 617)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2624)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 873)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2624)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 617)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2625)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 873)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2625)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 586)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2688)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 842)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2688)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 586)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2689)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 842)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2689)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 618)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2688)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 874)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2688)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 618)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2689)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 874)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2689)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 587)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2752)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 843)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2752)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 587)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2753)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 843)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2753)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 619)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2752)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 875)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2752)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 619)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2753)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 875)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2753)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 588)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2816)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 844)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2816)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 588)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2817)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 844)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2817)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 620)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2816)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 876)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2816)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 620)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2817)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 876)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2817)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 589)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2880)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 845)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2880)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 589)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2881)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 845)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2881)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 621)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2880)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 877)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2880)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 621)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2881)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 877)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2881)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 590)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2944)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 846)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2944)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 590)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2945)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 846)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2945)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 622)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2944)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 878)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2944)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 622)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2945)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 878)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 2945)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 591)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3008)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 847)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3008)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 591)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3009)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 847)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3009)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 623)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3008)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 879)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3008)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 623)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3009)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 879)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3009)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 592)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3072)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 848)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3072)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 592)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3073)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 848)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3073)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 624)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3072)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 880)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3072)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 624)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3073)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 880)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3073)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 593)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3136)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 849)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3136)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 593)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3137)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 849)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3137)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 625)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3136)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 881)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3136)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 625)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3137)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 881)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3137)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 594)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3200)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 850)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3200)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 594)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3201)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 850)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3201)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 626)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3200)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 882)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3200)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 626)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3201)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 882)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3201)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 595)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3264)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 851)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3264)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 595)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3265)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 851)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3265)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 627)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3264)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 883)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3264)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 627)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3265)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 883)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3265)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 596)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3328)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 852)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3328)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 596)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3329)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 852)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3329)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 628)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3328)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 884)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3328)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 628)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3329)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 884)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3329)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 597)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3392)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 853)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3392)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 597)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3393)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 853)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3393)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 629)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3392)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 885)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3392)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 629)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3393)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 885)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3393)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 598)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3456)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 854)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3456)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 598)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3457)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 854)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3457)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 630)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3456)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 886)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3456)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 630)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3457)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 886)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3457)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 599)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3520)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 855)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3520)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 599)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3521)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 855)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3521)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 631)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3520)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 887)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3520)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 631)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3521)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 887)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3521)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 600)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3584)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 856)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3584)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 600)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3585)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 856)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3585)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 632)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3584)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 888)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3584)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 632)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3585)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 888)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3585)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 601)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3648)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 857)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3648)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 601)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3649)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 857)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3649)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 633)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3648)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 889)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3648)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 633)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3649)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 889)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3649)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 602)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3712)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 858)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3712)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 602)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3713)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 858)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3713)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 634)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3712)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 890)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3712)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 634)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3713)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 890)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3713)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 603)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3776)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 859)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3776)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 603)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3777)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 859)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3777)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 635)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3776)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 891)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3776)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 635)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3777)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 891)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3777)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 604)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3840)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 860)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3840)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 604)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3841)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 860)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3841)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 636)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3840)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 892)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3840)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 636)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3841)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 892)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3841)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 605)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3904)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 861)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3904)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 605)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3905)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 861)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3905)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 637)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3904)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 893)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3904)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 637)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3905)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 893)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3905)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 606)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3968)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 862)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3968)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 606)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3969)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 862)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3969)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 638)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3968)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 894)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3968)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 638)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3969)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 894)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 3969)]));
  Y_local[4] = (Y_local[4] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 607)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4032)]));
  Y_local[12] = (Y_local[12] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 863)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4032)]));
  Y_local[5] = (Y_local[5] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 607)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4033)]));
  Y_local[13] = (Y_local[13] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 863)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4033)]));
  Y_local[6] = (Y_local[6] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 639)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4032)]));
  Y_local[14] = (Y_local[14] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 895)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4032)]));
  Y_local[7] = (Y_local[7] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 639)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4033)]));
  Y_local[15] = (Y_local[15] + (A_shared[(((((int)threadIdx.x) >> 5) * 128) + 895)] * B_shared[(((((int)threadIdx.x) & 31) * 2) + 4033)]));
  Y[(((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2))] = Y_local[0];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 2048)] = Y_local[8];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 1)] = Y_local[1];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 2049)] = Y_local[9];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 256)] = Y_local[2];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 2304)] = Y_local[10];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 257)] = Y_local[3];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 2305)] = Y_local[11];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 512)] = Y_local[4];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 2560)] = Y_local[12];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 513)] = Y_local[5];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 2561)] = Y_local[13];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 768)] = Y_local[6];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 2816)] = Y_local[14];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 769)] = Y_local[7];
  Y[((((((((int)blockIdx.x) >> 2) * 4096) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + 2817)] = Y_local[15];
}


