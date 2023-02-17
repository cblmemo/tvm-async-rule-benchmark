
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
  float Y_local[96];
  __shared__ float A_shared[6144];
  __shared__ float B_shared[4096];
  for (int j_3_init = 0; j_3_init < 2; ++j_3_init) {
    Y_local[j_3_init] = 0.000000e+00f;
    Y_local[(j_3_init + 6)] = 0.000000e+00f;
    Y_local[(j_3_init + 12)] = 0.000000e+00f;
    Y_local[(j_3_init + 18)] = 0.000000e+00f;
    Y_local[(j_3_init + 24)] = 0.000000e+00f;
    Y_local[(j_3_init + 30)] = 0.000000e+00f;
    Y_local[(j_3_init + 36)] = 0.000000e+00f;
    Y_local[(j_3_init + 42)] = 0.000000e+00f;
    Y_local[(j_3_init + 48)] = 0.000000e+00f;
    Y_local[(j_3_init + 54)] = 0.000000e+00f;
    Y_local[(j_3_init + 60)] = 0.000000e+00f;
    Y_local[(j_3_init + 66)] = 0.000000e+00f;
    Y_local[(j_3_init + 72)] = 0.000000e+00f;
    Y_local[(j_3_init + 78)] = 0.000000e+00f;
    Y_local[(j_3_init + 84)] = 0.000000e+00f;
    Y_local[(j_3_init + 90)] = 0.000000e+00f;
    Y_local[(j_3_init + 2)] = 0.000000e+00f;
    Y_local[(j_3_init + 8)] = 0.000000e+00f;
    Y_local[(j_3_init + 14)] = 0.000000e+00f;
    Y_local[(j_3_init + 20)] = 0.000000e+00f;
    Y_local[(j_3_init + 26)] = 0.000000e+00f;
    Y_local[(j_3_init + 32)] = 0.000000e+00f;
    Y_local[(j_3_init + 38)] = 0.000000e+00f;
    Y_local[(j_3_init + 44)] = 0.000000e+00f;
    Y_local[(j_3_init + 50)] = 0.000000e+00f;
    Y_local[(j_3_init + 56)] = 0.000000e+00f;
    Y_local[(j_3_init + 62)] = 0.000000e+00f;
    Y_local[(j_3_init + 68)] = 0.000000e+00f;
    Y_local[(j_3_init + 74)] = 0.000000e+00f;
    Y_local[(j_3_init + 80)] = 0.000000e+00f;
    Y_local[(j_3_init + 86)] = 0.000000e+00f;
    Y_local[(j_3_init + 92)] = 0.000000e+00f;
    Y_local[(j_3_init + 4)] = 0.000000e+00f;
    Y_local[(j_3_init + 10)] = 0.000000e+00f;
    Y_local[(j_3_init + 16)] = 0.000000e+00f;
    Y_local[(j_3_init + 22)] = 0.000000e+00f;
    Y_local[(j_3_init + 28)] = 0.000000e+00f;
    Y_local[(j_3_init + 34)] = 0.000000e+00f;
    Y_local[(j_3_init + 40)] = 0.000000e+00f;
    Y_local[(j_3_init + 46)] = 0.000000e+00f;
    Y_local[(j_3_init + 52)] = 0.000000e+00f;
    Y_local[(j_3_init + 58)] = 0.000000e+00f;
    Y_local[(j_3_init + 64)] = 0.000000e+00f;
    Y_local[(j_3_init + 70)] = 0.000000e+00f;
    Y_local[(j_3_init + 76)] = 0.000000e+00f;
    Y_local[(j_3_init + 82)] = 0.000000e+00f;
    Y_local[(j_3_init + 88)] = 0.000000e+00f;
    Y_local[(j_3_init + 94)] = 0.000000e+00f;
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
       :: "r"(addr), "l"((void*)(A + ((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 24576))), "n"(16)
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
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 49152))), "n"(16)
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
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 73728))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 98304))), "n"(16)
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
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 122880))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + ((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 6144))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 12288))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 18432))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 16))), "n"(16)
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
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 24592))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 2048)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 49168))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 2304)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 73744))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 2560)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 98320))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 2816)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 122896))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 24576))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 30720))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 36864))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 43008))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 3072)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 32))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 3328)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 24608))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 3584)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 49184))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 3840)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 73760))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 4096)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 98336))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((int)threadIdx.x) * 4) + 4352)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + (((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + ((((int)threadIdx.x) & 3) * 4)) + 122912))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 49152))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 55296))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 61440))), "n"(16)
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
       :: "r"(addr), "l"((void*)(B + (((((((int)threadIdx.x) >> 4) * 1536) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 67584))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int k_0_fused = 0; k_0_fused < 93; ++k_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + ((((k_0_fused + 3) & 3) * 1536) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 48))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 3) & 3) * 1536) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 24624))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 3) & 3) * 1536) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 49200))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 3) & 3) * 1536) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 73776))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 3) & 3) * 1536) + (((int)threadIdx.x) * 4)) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 98352))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(A_shared + (((((k_0_fused + 3) & 3) * 1536) + (((int)threadIdx.x) * 4)) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(A + ((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 2) * 1536)) + (k_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 122928))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + ((((k_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 24576) + ((((int)threadIdx.x) >> 4) * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 73728))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 24576) + ((((int)threadIdx.x) >> 4) * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 79872))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 24576) + ((((int)threadIdx.x) >> 4) * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 86016))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(B_shared + (((((k_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(B + (((((k_0_fused * 24576) + ((((int)threadIdx.x) >> 4) * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 92160))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

    __syncthreads();
    for (int k_1 = 0; k_1 < 4; ++k_1) {
      for (int j_3 = 0; j_3 < 2; ++j_3) {
        for (int k_2 = 0; k_2 < 4; ++k_2) {
          Y_local[j_3] = (Y_local[j_3] + (A_shared[(((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 6)] = (Y_local[(j_3 + 6)] + (A_shared[(((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 12)] = (Y_local[(j_3 + 12)] + (A_shared[(((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 18)] = (Y_local[(j_3 + 18)] + (A_shared[(((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 24)] = (Y_local[(j_3 + 24)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 384)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 30)] = (Y_local[(j_3 + 30)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 384)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 36)] = (Y_local[(j_3 + 36)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 384)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 42)] = (Y_local[(j_3 + 42)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 384)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 48)] = (Y_local[(j_3 + 48)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 768)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 54)] = (Y_local[(j_3 + 54)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 768)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 60)] = (Y_local[(j_3 + 60)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 768)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 66)] = (Y_local[(j_3 + 66)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 768)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 72)] = (Y_local[(j_3 + 72)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1152)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 78)] = (Y_local[(j_3 + 78)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1152)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 84)] = (Y_local[(j_3 + 84)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1152)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 90)] = (Y_local[(j_3 + 90)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1152)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 2)] = (Y_local[(j_3 + 2)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 16)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 8)] = (Y_local[(j_3 + 8)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 16)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 14)] = (Y_local[(j_3 + 14)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 16)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 20)] = (Y_local[(j_3 + 20)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 16)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 26)] = (Y_local[(j_3 + 26)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 400)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 32)] = (Y_local[(j_3 + 32)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 400)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 38)] = (Y_local[(j_3 + 38)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 400)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 44)] = (Y_local[(j_3 + 44)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 400)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 50)] = (Y_local[(j_3 + 50)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 784)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 56)] = (Y_local[(j_3 + 56)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 784)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 62)] = (Y_local[(j_3 + 62)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 784)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 68)] = (Y_local[(j_3 + 68)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 784)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 74)] = (Y_local[(j_3 + 74)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1168)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 80)] = (Y_local[(j_3 + 80)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1168)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 86)] = (Y_local[(j_3 + 86)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1168)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 92)] = (Y_local[(j_3 + 92)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1168)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 4)] = (Y_local[(j_3 + 4)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 32)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 10)] = (Y_local[(j_3 + 10)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 32)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 16)] = (Y_local[(j_3 + 16)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 32)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 22)] = (Y_local[(j_3 + 22)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 32)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 28)] = (Y_local[(j_3 + 28)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 416)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 34)] = (Y_local[(j_3 + 34)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 416)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 40)] = (Y_local[(j_3 + 40)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 416)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 46)] = (Y_local[(j_3 + 46)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 416)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 52)] = (Y_local[(j_3 + 52)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 800)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 58)] = (Y_local[(j_3 + 58)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 800)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 64)] = (Y_local[(j_3 + 64)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 800)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 70)] = (Y_local[(j_3 + 70)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 800)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
          Y_local[(j_3 + 76)] = (Y_local[(j_3 + 76)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1184)] * B_shared[((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3)]));
          Y_local[(j_3 + 82)] = (Y_local[(j_3 + 82)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1184)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 16)]));
          Y_local[(j_3 + 88)] = (Y_local[(j_3 + 88)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1184)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 32)]));
          Y_local[(j_3 + 94)] = (Y_local[(j_3 + 94)] + (A_shared[((((((k_0_fused & 3) * 1536) + ((((int)threadIdx.x) >> 3) * 48)) + (k_1 * 4)) + k_2) + 1184)] * B_shared[(((((((k_0_fused & 3) * 1024) + (k_1 * 256)) + (k_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3) + 48)]));
        }
      }
    }
  }
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  for (int k_1_1 = 0; k_1_1 < 4; ++k_1_1) {
    for (int j_3_1 = 0; j_3_1 < 2; ++j_3_1) {
      for (int k_2_1 = 0; k_2_1 < 4; ++k_2_1) {
        Y_local[j_3_1] = (Y_local[j_3_1] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1536)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 6)] = (Y_local[(j_3_1 + 6)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1536)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 12)] = (Y_local[(j_3_1 + 12)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1536)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 18)] = (Y_local[(j_3_1 + 18)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1536)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 24)] = (Y_local[(j_3_1 + 24)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1920)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 30)] = (Y_local[(j_3_1 + 30)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1920)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 36)] = (Y_local[(j_3_1 + 36)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1920)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 42)] = (Y_local[(j_3_1 + 42)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1920)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 48)] = (Y_local[(j_3_1 + 48)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2304)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 54)] = (Y_local[(j_3_1 + 54)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2304)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 60)] = (Y_local[(j_3_1 + 60)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2304)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 66)] = (Y_local[(j_3_1 + 66)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2304)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 72)] = (Y_local[(j_3_1 + 72)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2688)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 78)] = (Y_local[(j_3_1 + 78)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2688)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 84)] = (Y_local[(j_3_1 + 84)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2688)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 90)] = (Y_local[(j_3_1 + 90)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2688)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 2)] = (Y_local[(j_3_1 + 2)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1552)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 8)] = (Y_local[(j_3_1 + 8)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1552)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 14)] = (Y_local[(j_3_1 + 14)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1552)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 20)] = (Y_local[(j_3_1 + 20)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1552)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 26)] = (Y_local[(j_3_1 + 26)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1936)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 32)] = (Y_local[(j_3_1 + 32)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1936)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 38)] = (Y_local[(j_3_1 + 38)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1936)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 44)] = (Y_local[(j_3_1 + 44)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1936)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 50)] = (Y_local[(j_3_1 + 50)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2320)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 56)] = (Y_local[(j_3_1 + 56)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2320)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 62)] = (Y_local[(j_3_1 + 62)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2320)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 68)] = (Y_local[(j_3_1 + 68)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2320)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 74)] = (Y_local[(j_3_1 + 74)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2704)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 80)] = (Y_local[(j_3_1 + 80)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2704)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 86)] = (Y_local[(j_3_1 + 86)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2704)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 92)] = (Y_local[(j_3_1 + 92)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2704)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 4)] = (Y_local[(j_3_1 + 4)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1568)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 10)] = (Y_local[(j_3_1 + 10)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1568)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 16)] = (Y_local[(j_3_1 + 16)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1568)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 22)] = (Y_local[(j_3_1 + 22)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1568)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 28)] = (Y_local[(j_3_1 + 28)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1952)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 34)] = (Y_local[(j_3_1 + 34)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1952)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 40)] = (Y_local[(j_3_1 + 40)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1952)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 46)] = (Y_local[(j_3_1 + 46)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 1952)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 52)] = (Y_local[(j_3_1 + 52)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2336)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 58)] = (Y_local[(j_3_1 + 58)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2336)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 64)] = (Y_local[(j_3_1 + 64)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2336)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 70)] = (Y_local[(j_3_1 + 70)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2336)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
        Y_local[(j_3_1 + 76)] = (Y_local[(j_3_1 + 76)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2720)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1024)]));
        Y_local[(j_3_1 + 82)] = (Y_local[(j_3_1 + 82)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2720)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1040)]));
        Y_local[(j_3_1 + 88)] = (Y_local[(j_3_1 + 88)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2720)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1056)]));
        Y_local[(j_3_1 + 94)] = (Y_local[(j_3_1 + 94)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_1 * 4)) + k_2_1) + 2720)] * B_shared[(((((k_1_1 * 256) + (k_2_1 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_1) + 1072)]));
      }
    }
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  for (int k_1_2 = 0; k_1_2 < 4; ++k_1_2) {
    for (int j_3_2 = 0; j_3_2 < 2; ++j_3_2) {
      for (int k_2_2 = 0; k_2_2 < 4; ++k_2_2) {
        Y_local[j_3_2] = (Y_local[j_3_2] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3072)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 6)] = (Y_local[(j_3_2 + 6)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3072)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 12)] = (Y_local[(j_3_2 + 12)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3072)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 18)] = (Y_local[(j_3_2 + 18)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3072)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 24)] = (Y_local[(j_3_2 + 24)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3456)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 30)] = (Y_local[(j_3_2 + 30)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3456)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 36)] = (Y_local[(j_3_2 + 36)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3456)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 42)] = (Y_local[(j_3_2 + 42)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3456)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 48)] = (Y_local[(j_3_2 + 48)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3840)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 54)] = (Y_local[(j_3_2 + 54)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3840)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 60)] = (Y_local[(j_3_2 + 60)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3840)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 66)] = (Y_local[(j_3_2 + 66)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3840)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 72)] = (Y_local[(j_3_2 + 72)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4224)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 78)] = (Y_local[(j_3_2 + 78)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4224)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 84)] = (Y_local[(j_3_2 + 84)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4224)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 90)] = (Y_local[(j_3_2 + 90)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4224)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 2)] = (Y_local[(j_3_2 + 2)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3088)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 8)] = (Y_local[(j_3_2 + 8)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3088)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 14)] = (Y_local[(j_3_2 + 14)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3088)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 20)] = (Y_local[(j_3_2 + 20)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3088)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 26)] = (Y_local[(j_3_2 + 26)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3472)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 32)] = (Y_local[(j_3_2 + 32)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3472)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 38)] = (Y_local[(j_3_2 + 38)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3472)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 44)] = (Y_local[(j_3_2 + 44)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3472)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 50)] = (Y_local[(j_3_2 + 50)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3856)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 56)] = (Y_local[(j_3_2 + 56)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3856)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 62)] = (Y_local[(j_3_2 + 62)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3856)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 68)] = (Y_local[(j_3_2 + 68)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3856)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 74)] = (Y_local[(j_3_2 + 74)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4240)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 80)] = (Y_local[(j_3_2 + 80)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4240)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 86)] = (Y_local[(j_3_2 + 86)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4240)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 92)] = (Y_local[(j_3_2 + 92)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4240)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 4)] = (Y_local[(j_3_2 + 4)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3104)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 10)] = (Y_local[(j_3_2 + 10)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3104)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 16)] = (Y_local[(j_3_2 + 16)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3104)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 22)] = (Y_local[(j_3_2 + 22)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3104)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 28)] = (Y_local[(j_3_2 + 28)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3488)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 34)] = (Y_local[(j_3_2 + 34)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3488)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 40)] = (Y_local[(j_3_2 + 40)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3488)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 46)] = (Y_local[(j_3_2 + 46)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3488)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 52)] = (Y_local[(j_3_2 + 52)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3872)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 58)] = (Y_local[(j_3_2 + 58)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3872)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 64)] = (Y_local[(j_3_2 + 64)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3872)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 70)] = (Y_local[(j_3_2 + 70)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 3872)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
        Y_local[(j_3_2 + 76)] = (Y_local[(j_3_2 + 76)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4256)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2048)]));
        Y_local[(j_3_2 + 82)] = (Y_local[(j_3_2 + 82)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4256)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2064)]));
        Y_local[(j_3_2 + 88)] = (Y_local[(j_3_2 + 88)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4256)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2080)]));
        Y_local[(j_3_2 + 94)] = (Y_local[(j_3_2 + 94)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_2 * 4)) + k_2_2) + 4256)] * B_shared[(((((k_1_2 * 256) + (k_2_2 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_2) + 2096)]));
      }
    }
  }
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  for (int k_1_3 = 0; k_1_3 < 4; ++k_1_3) {
    for (int j_3_3 = 0; j_3_3 < 2; ++j_3_3) {
      for (int k_2_3 = 0; k_2_3 < 4; ++k_2_3) {
        Y_local[j_3_3] = (Y_local[j_3_3] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4608)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 6)] = (Y_local[(j_3_3 + 6)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4608)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 12)] = (Y_local[(j_3_3 + 12)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4608)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 18)] = (Y_local[(j_3_3 + 18)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4608)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 24)] = (Y_local[(j_3_3 + 24)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4992)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 30)] = (Y_local[(j_3_3 + 30)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4992)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 36)] = (Y_local[(j_3_3 + 36)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4992)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 42)] = (Y_local[(j_3_3 + 42)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4992)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 48)] = (Y_local[(j_3_3 + 48)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5376)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 54)] = (Y_local[(j_3_3 + 54)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5376)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 60)] = (Y_local[(j_3_3 + 60)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5376)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 66)] = (Y_local[(j_3_3 + 66)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5376)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 72)] = (Y_local[(j_3_3 + 72)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5760)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 78)] = (Y_local[(j_3_3 + 78)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5760)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 84)] = (Y_local[(j_3_3 + 84)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5760)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 90)] = (Y_local[(j_3_3 + 90)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5760)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 2)] = (Y_local[(j_3_3 + 2)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4624)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 8)] = (Y_local[(j_3_3 + 8)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4624)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 14)] = (Y_local[(j_3_3 + 14)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4624)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 20)] = (Y_local[(j_3_3 + 20)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4624)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 26)] = (Y_local[(j_3_3 + 26)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5008)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 32)] = (Y_local[(j_3_3 + 32)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5008)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 38)] = (Y_local[(j_3_3 + 38)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5008)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 44)] = (Y_local[(j_3_3 + 44)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5008)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 50)] = (Y_local[(j_3_3 + 50)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5392)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 56)] = (Y_local[(j_3_3 + 56)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5392)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 62)] = (Y_local[(j_3_3 + 62)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5392)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 68)] = (Y_local[(j_3_3 + 68)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5392)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 74)] = (Y_local[(j_3_3 + 74)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5776)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 80)] = (Y_local[(j_3_3 + 80)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5776)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 86)] = (Y_local[(j_3_3 + 86)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5776)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 92)] = (Y_local[(j_3_3 + 92)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5776)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 4)] = (Y_local[(j_3_3 + 4)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4640)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 10)] = (Y_local[(j_3_3 + 10)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4640)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 16)] = (Y_local[(j_3_3 + 16)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4640)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 22)] = (Y_local[(j_3_3 + 22)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 4640)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 28)] = (Y_local[(j_3_3 + 28)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5024)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 34)] = (Y_local[(j_3_3 + 34)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5024)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 40)] = (Y_local[(j_3_3 + 40)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5024)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 46)] = (Y_local[(j_3_3 + 46)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5024)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 52)] = (Y_local[(j_3_3 + 52)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5408)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 58)] = (Y_local[(j_3_3 + 58)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5408)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 64)] = (Y_local[(j_3_3 + 64)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5408)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 70)] = (Y_local[(j_3_3 + 70)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5408)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
        Y_local[(j_3_3 + 76)] = (Y_local[(j_3_3 + 76)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5792)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3072)]));
        Y_local[(j_3_3 + 82)] = (Y_local[(j_3_3 + 82)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5792)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3088)]));
        Y_local[(j_3_3 + 88)] = (Y_local[(j_3_3 + 88)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5792)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3104)]));
        Y_local[(j_3_3 + 94)] = (Y_local[(j_3_3 + 94)] + (A_shared[(((((((int)threadIdx.x) >> 3) * 48) + (k_1_3 * 4)) + k_2_3) + 5792)] * B_shared[(((((k_1_3 * 256) + (k_2_3 * 64)) + ((((int)threadIdx.x) & 7) * 2)) + j_3_3) + 3120)]));
      }
    }
  }
  for (int ax0 = 0; ax0 < 3; ++ax0) {
    Y[((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2))] = Y_local[(ax0 * 2)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 16)] = Y_local[((ax0 * 2) + 6)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 32)] = Y_local[((ax0 * 2) + 12)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 48)] = Y_local[((ax0 * 2) + 18)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 36864)] = Y_local[((ax0 * 2) + 24)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 36880)] = Y_local[((ax0 * 2) + 30)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 36896)] = Y_local[((ax0 * 2) + 36)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 36912)] = Y_local[((ax0 * 2) + 42)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 73728)] = Y_local[((ax0 * 2) + 48)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 73744)] = Y_local[((ax0 * 2) + 54)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 73760)] = Y_local[((ax0 * 2) + 60)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 73776)] = Y_local[((ax0 * 2) + 66)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 110592)] = Y_local[((ax0 * 2) + 72)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 110608)] = Y_local[((ax0 * 2) + 78)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 110624)] = Y_local[((ax0 * 2) + 84)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 110640)] = Y_local[((ax0 * 2) + 90)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 1)] = Y_local[((ax0 * 2) + 1)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 17)] = Y_local[((ax0 * 2) + 7)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 33)] = Y_local[((ax0 * 2) + 13)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 49)] = Y_local[((ax0 * 2) + 19)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 36865)] = Y_local[((ax0 * 2) + 25)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 36881)] = Y_local[((ax0 * 2) + 31)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 36897)] = Y_local[((ax0 * 2) + 37)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 36913)] = Y_local[((ax0 * 2) + 43)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 73729)] = Y_local[((ax0 * 2) + 49)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 73745)] = Y_local[((ax0 * 2) + 55)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 73761)] = Y_local[((ax0 * 2) + 61)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 73777)] = Y_local[((ax0 * 2) + 67)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 110593)] = Y_local[((ax0 * 2) + 73)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 110609)] = Y_local[((ax0 * 2) + 79)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 110625)] = Y_local[((ax0 * 2) + 85)];
    Y[(((((((((int)blockIdx.x) / 24) * 147456) + ((((int)threadIdx.x) >> 3) * 4608)) + (ax0 * 1536)) + ((((int)blockIdx.x) % 24) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 110641)] = Y_local[((ax0 * 2) + 91)];
  }
}


