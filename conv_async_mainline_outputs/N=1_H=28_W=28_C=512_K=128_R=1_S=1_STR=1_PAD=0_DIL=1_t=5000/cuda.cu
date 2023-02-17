
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
extern "C" __global__ void __launch_bounds__(32) main_kernel0(float* __restrict__ inputs, float* __restrict__ weight, float* __restrict__ conv2d_nhwc) {
  float conv2d_nhwc_local[16];
  __shared__ float PadInput_shared[2048];
  __shared__ float weight_shared[4096];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[8] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[9] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[10] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[11] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[12] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[13] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  conv2d_nhwc_local[14] = 0.000000e+00f;
  conv2d_nhwc_local[7] = 0.000000e+00f;
  conv2d_nhwc_local[15] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) * 4)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 14336))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 28672))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 43008))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) * 4)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 512))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1024))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1536))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2048))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 640)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2560))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3072))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3584))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 32))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 640)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 14368))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 28704))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 43040))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 4096))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1152)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 4608))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 5120))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1408)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 5632))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 6144))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1664)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 6656))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 7168))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1920)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 7680))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 64))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 1152)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 14400))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 28736))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 1408)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)threadIdx.x) & 7) * 4)) + 43072))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 2048)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 8192))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 2176)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 8704))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 2304)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 9216))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 2432)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 9728))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 2560)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 10240))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 2688)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 10752))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 2816)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 11264))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 2944)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 128) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 11776))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 13; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 512) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 96))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 512) + (((int)threadIdx.x) * 4)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14432))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 512) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 28768))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 512) + (((int)threadIdx.x) * 4)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 57344) + (((((int)blockIdx.x) % 28) >> 2) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 43104))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 12288))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 12800))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 13312))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 13824))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14336))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 640)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14848))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 15360))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1024) + (((int)threadIdx.x) * 4)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 15872))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256))] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 64)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256))] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 32)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 96)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 128)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 192)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 160)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 224)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 224)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 225)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 225)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 226)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 226)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 227)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 227)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 228)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 228)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 229)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 229)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 230)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 230)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 231)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 231)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 232)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 232)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 233)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 233)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 234)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 234)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 235)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 235)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 236)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 236)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 237)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 237)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 238)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 238)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 239)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 239)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 240)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 240)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 241)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 241)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 242)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 242)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 243)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 243)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 244)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 244)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 245)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 245)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 246)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 246)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 247)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 247)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 248)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 248)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 249)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 249)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 250)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 250)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 251)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 251)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 252)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 252)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 253)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 253)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 254)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 254)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 255)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 4) * 256)) + 255)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
  }
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 512)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 576)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 512)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 576)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 544)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 544)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 513)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 577)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 513)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 577)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 545)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 545)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 514)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 578)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 514)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 578)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 546)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 546)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 515)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 579)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 515)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 579)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 547)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 547)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 640)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 640)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 641)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 641)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 642)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 642)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 643)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 643)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 516)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 580)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 516)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 580)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 548)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 548)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 517)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 581)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 517)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 581)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 549)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 549)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 518)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 582)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 518)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 582)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 550)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 550)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 519)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 583)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 519)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 583)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 551)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 551)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 644)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 644)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 676)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 676)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 645)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 645)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 677)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 677)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 646)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 646)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 678)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 678)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 647)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 647)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 679)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 679)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 520)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 584)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 520)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 584)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 552)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 616)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 552)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 616)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 521)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 585)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 521)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 585)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 553)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 617)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 553)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 617)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 522)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 586)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 522)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 586)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 554)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 618)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 554)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 618)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 523)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 587)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 523)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 587)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 555)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 619)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 555)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 619)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 680)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 680)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 681)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 681)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 682)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 682)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 683)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 683)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 524)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 588)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 524)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 588)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 556)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 620)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 556)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 620)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 525)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 589)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 525)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 589)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 557)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 621)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 557)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 621)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 526)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 590)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 526)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 590)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 558)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 622)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 558)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 622)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 527)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 591)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 527)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 591)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 559)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 623)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 559)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 623)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 716)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 716)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 684)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 684)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 717)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 717)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 685)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 685)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 718)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 718)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 686)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 686)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 719)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 719)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 687)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 687)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 528)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 528)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 560)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 624)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 560)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 624)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 529)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 529)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 561)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 625)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 561)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 625)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 530)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 530)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 562)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 626)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 562)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 626)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 531)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 531)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 563)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 627)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 563)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 627)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 720)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 720)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 688)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 688)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 721)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 721)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 689)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 689)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 722)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 722)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 690)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 690)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 723)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 723)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 691)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 691)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 532)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 532)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 564)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 628)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 564)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 628)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 533)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 533)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 565)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 629)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 565)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 629)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 534)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 534)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 566)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 630)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 566)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 630)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 535)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 535)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 567)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 631)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 567)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 631)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 756)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 756)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 757)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 757)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 758)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 758)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 759)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 759)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 536)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 536)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 568)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 632)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 568)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 632)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 537)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 537)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 569)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 633)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 569)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 633)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 538)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 538)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 570)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 634)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 570)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 634)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 539)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 539)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 571)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 635)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 571)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 635)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 540)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 540)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 572)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 636)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 572)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 636)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 541)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 541)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 573)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 637)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 573)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 637)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 542)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 542)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 574)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 638)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 574)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 638)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 543)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 543)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 575)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 639)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 575)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 639)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1088)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1088)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1120)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1120)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1089)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1089)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1121)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1121)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1090)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1090)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1122)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1122)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1091)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1091)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1123)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1123)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1248)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1248)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1249)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1249)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1250)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1250)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1251)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1251)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1092)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1092)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1124)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1124)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1093)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1093)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1125)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1125)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1094)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1094)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1126)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1126)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1095)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1095)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1127)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1127)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1252)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1252)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1253)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1253)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1254)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1254)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1255)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1255)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1096)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1096)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1128)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1128)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1097)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1097)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1098)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1098)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1099)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1099)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1160)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1224)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1160)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1224)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1256)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1256)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1161)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1225)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1161)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1225)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1257)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1257)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1162)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1226)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1162)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1226)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1258)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1258)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1163)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1227)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1163)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1227)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1259)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1259)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1036)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1100)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1036)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1100)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1037)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1101)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1037)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1101)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1038)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1102)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1038)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1102)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1039)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1103)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1039)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1103)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1164)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1228)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1164)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1228)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1260)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1260)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1165)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1229)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1165)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1229)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1261)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1261)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1166)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1230)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1166)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1230)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1262)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1262)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1167)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1231)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1167)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1231)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1263)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1263)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1104)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1104)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1072)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1072)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1105)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1105)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1073)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1073)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1106)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1106)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1074)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1074)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1107)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1107)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1075)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1075)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1168)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1232)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1168)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1232)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1264)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1264)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1169)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1233)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1169)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1233)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1265)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1265)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1170)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1234)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1170)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1234)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1266)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1266)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1171)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1235)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1171)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1235)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1267)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1267)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1108)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1108)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1076)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1076)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1109)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1109)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1077)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1077)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1110)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1110)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1078)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1078)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1111)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1111)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1079)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1079)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1172)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1236)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1172)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1236)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1268)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1268)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1173)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1237)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1173)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1237)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1269)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1269)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1174)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1238)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1174)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1238)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1270)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1270)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1175)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1239)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1175)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1239)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1271)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1271)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1112)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1112)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1080)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1080)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1113)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1113)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1081)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1081)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1114)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1114)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1082)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1082)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1115)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1115)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1083)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1083)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1240)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1240)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1272)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1272)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1241)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1241)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1273)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1273)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1242)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1242)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1274)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1274)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1243)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1243)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1275)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1275)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1116)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1116)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1084)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1084)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1117)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1117)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1085)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1085)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1118)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1118)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1086)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1086)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1119)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1119)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1087)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1087)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1244)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1244)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1276)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1276)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1245)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1245)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1277)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1277)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1246)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1246)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1278)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1278)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1247)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1247)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1279)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1279)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1536)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1536)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1568)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1632)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1568)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1632)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1537)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1537)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1569)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1633)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1569)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1633)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1538)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1538)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1570)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1634)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1570)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1634)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1539)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1539)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1571)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1635)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1571)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1635)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1540)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1540)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1572)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1636)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1572)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1636)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1541)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1541)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1573)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1637)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1573)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1637)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1542)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1542)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1574)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1638)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1574)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1638)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1543)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1543)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1575)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1639)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1575)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1639)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1544)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1544)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1576)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1640)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1576)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1640)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1545)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1545)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1577)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1641)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1577)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1641)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1546)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1546)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1578)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1642)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1578)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1642)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1547)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1547)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1579)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1643)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1579)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1643)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1548)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1548)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1580)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1644)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1580)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1644)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1549)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1549)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1581)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1645)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1581)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1645)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1550)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1550)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1582)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1646)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1582)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1646)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1551)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1551)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1583)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1647)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1583)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1647)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1676)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1676)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1677)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1677)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1678)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1678)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1679)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1679)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1552)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1616)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1552)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1616)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1584)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1584)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1553)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1617)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1553)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1617)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1585)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1585)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1554)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1618)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1554)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1618)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1586)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1586)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1555)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1619)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1555)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1619)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1587)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1587)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1680)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1680)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1681)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1681)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1682)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1682)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1683)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1683)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1556)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1620)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1556)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1620)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1588)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1588)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1557)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1621)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1557)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1621)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1589)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1589)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1558)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1622)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1558)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1622)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1590)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1590)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1559)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1623)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1559)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1623)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1591)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1591)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1684)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1684)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1716)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1716)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1685)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1685)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1717)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1717)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1686)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1686)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1718)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1718)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1687)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1687)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1719)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1719)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1560)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1624)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1560)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1624)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1561)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1625)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1561)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1625)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1562)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1626)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1562)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1626)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1563)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1627)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1563)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1627)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1688)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1688)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1720)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1720)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1689)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1689)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1721)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1721)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1690)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1690)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1722)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1722)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1691)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1691)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1723)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1723)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1564)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1628)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1564)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1628)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1565)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1629)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1565)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1629)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1566)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1630)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1566)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1630)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1567)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1631)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1567)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1631)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1756)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1756)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1757)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1757)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1758)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1758)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1759)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1759)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc[((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 256)] = conv2d_nhwc_local[8];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 257)] = conv2d_nhwc_local[9];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 128)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 384)] = conv2d_nhwc_local[10];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 129)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 385)] = conv2d_nhwc_local[11];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3584)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3840)] = conv2d_nhwc_local[12];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3585)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3841)] = conv2d_nhwc_local[13];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3712)] = conv2d_nhwc_local[6];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3968)] = conv2d_nhwc_local[14];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3713)] = conv2d_nhwc_local[7];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 14336) + ((((int)threadIdx.x) >> 4) * 7168)) + (((((int)blockIdx.x) % 28) >> 2) * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3969)] = conv2d_nhwc_local[15];
}


