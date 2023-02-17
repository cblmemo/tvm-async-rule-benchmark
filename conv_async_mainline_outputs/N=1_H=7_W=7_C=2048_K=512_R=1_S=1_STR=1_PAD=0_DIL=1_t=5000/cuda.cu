
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
  float conv2d_nhwc_local[7];
  __shared__ float PadInput_shared[1792];
  __shared__ float weight_shared[8192];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) * 2)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 64)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 2048))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 4096))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 192)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 6144))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 8192))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 320)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 10240))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 12288))), "n"(8)
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
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2048))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 4096))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 6144))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 8192))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 10240))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 12288))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14336))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 16384))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 18432))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 20480))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 22528))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 24576))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 26624))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 28672))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 30720))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 64))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 2112))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 576)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 4160))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 640)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 6208))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 704)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 8256))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 10304))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 832)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 12352))), "n"(8)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 32768))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 34816))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 36864))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 38912))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 40960))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 43008))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 45056))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 47104))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 3072)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 49152))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 3200)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 51200))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 3328)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 53248))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 3456)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 55296))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 3584)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 57344))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 3712)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 59392))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 3840)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 61440))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 3968)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 63488))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 128))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 960)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 2176))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 4224))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1088)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 6272))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1152)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 8320))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1216)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 10368))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 14336) + (((int)threadIdx.x) * 2)) + 12416))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 4096)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 65536))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 4224)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 67584))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 4352)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 69632))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 4480)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 71680))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 4608)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 73728))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 4736)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 75776))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 4864)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 77824))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 4992)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 79872))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 5120)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 81920))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 5248)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 83968))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 5376)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 86016))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 5504)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 88064))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 5632)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 90112))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 5760)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 92160))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 5888)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 94208))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 6016)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 96256))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 29; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 448) + (((int)threadIdx.x) * 2))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 14336) + (rh_0_rw_0_rc_0_fused * 64)) + (((int)threadIdx.x) * 2)) + 192))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 448) + (((int)threadIdx.x) * 2)) + 64)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 14336) + (rh_0_rw_0_rc_0_fused * 64)) + (((int)threadIdx.x) * 2)) + 2240))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 448) + (((int)threadIdx.x) * 2)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 14336) + (rh_0_rw_0_rc_0_fused * 64)) + (((int)threadIdx.x) * 2)) + 4288))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 448) + (((int)threadIdx.x) * 2)) + 192)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 14336) + (rh_0_rw_0_rc_0_fused * 64)) + (((int)threadIdx.x) * 2)) + 6336))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 448) + (((int)threadIdx.x) * 2)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 14336) + (rh_0_rw_0_rc_0_fused * 64)) + (((int)threadIdx.x) * 2)) + 8384))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 448) + (((int)threadIdx.x) * 2)) + 320)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 14336) + (rh_0_rw_0_rc_0_fused * 64)) + (((int)threadIdx.x) * 2)) + 10432))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 448) + (((int)threadIdx.x) * 2)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 14336) + (rh_0_rw_0_rc_0_fused * 64)) + (((int)threadIdx.x) * 2)) + 12480))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 98304))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 100352))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 102400))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 104448))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 106496))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 640)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 108544))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 110592))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 112640))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 114688))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 1152)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 116736))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 118784))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 1408)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 120832))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 122880))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 1664)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 124928))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 126976))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + (((int)threadIdx.x) * 4)) + 1920)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 32768) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 129024))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((rh_0_rw_0_rc_0_fused & 3) * 448)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 64)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 128)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 192)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 256)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 320)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 384)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 272)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 273)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 336)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 337)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 400)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 401)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 274)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 275)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 338)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 339)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 402)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 403)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 276)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 277)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 340)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 341)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 404)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 405)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 278)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 279)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 342)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 343)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 406)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 407)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 280)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 281)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 344)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 345)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 408)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 409)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 282)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 283)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 346)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 347)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 410)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 411)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 284)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 285)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 348)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 349)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 412)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 413)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 286)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 287)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 350)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 351)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 414)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 415)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 224)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 225)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 288)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 289)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 352)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 353)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 416)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 417)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 226)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 227)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 290)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 291)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 354)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 355)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 418)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 419)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 228)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 229)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 292)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 293)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 356)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 357)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 420)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 421)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 230)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 231)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 294)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 295)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 358)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 359)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 422)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 423)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 232)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 233)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 296)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 297)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 360)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 361)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 424)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 425)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 234)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 235)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 298)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 299)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 362)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 363)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 426)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 427)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 236)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 237)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 300)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 301)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 364)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 365)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 428)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 429)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 238)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 239)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 302)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 303)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 366)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 367)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 430)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 431)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 240)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 241)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 304)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 305)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 368)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 369)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 432)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 433)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 242)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 243)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 306)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 307)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 370)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 371)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 434)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 435)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 244)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 245)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 308)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 309)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 372)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 373)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 436)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 437)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 246)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 247)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 310)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 311)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 374)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 375)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 438)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 439)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 248)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 249)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 312)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 313)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 376)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 377)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 440)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 441)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 250)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 251)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 314)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 315)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 378)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 379)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 442)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 443)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 252)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 253)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 316)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 317)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 380)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 381)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 444)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 445)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 254)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 255)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 318)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 319)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 382)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 383)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 446)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 448) + 447)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((int)threadIdx.x)) + 2016)]));
  }
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[448] * weight_shared[(((int)threadIdx.x) + 2048)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[449] * weight_shared[(((int)threadIdx.x) + 2080)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[512] * weight_shared[(((int)threadIdx.x) + 2048)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[513] * weight_shared[(((int)threadIdx.x) + 2080)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[576] * weight_shared[(((int)threadIdx.x) + 2048)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[577] * weight_shared[(((int)threadIdx.x) + 2080)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[640] * weight_shared[(((int)threadIdx.x) + 2048)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[641] * weight_shared[(((int)threadIdx.x) + 2080)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[704] * weight_shared[(((int)threadIdx.x) + 2048)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[705] * weight_shared[(((int)threadIdx.x) + 2080)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[768] * weight_shared[(((int)threadIdx.x) + 2048)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[769] * weight_shared[(((int)threadIdx.x) + 2080)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[832] * weight_shared[(((int)threadIdx.x) + 2048)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[833] * weight_shared[(((int)threadIdx.x) + 2080)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[450] * weight_shared[(((int)threadIdx.x) + 2112)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[451] * weight_shared[(((int)threadIdx.x) + 2144)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[514] * weight_shared[(((int)threadIdx.x) + 2112)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[515] * weight_shared[(((int)threadIdx.x) + 2144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[578] * weight_shared[(((int)threadIdx.x) + 2112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[579] * weight_shared[(((int)threadIdx.x) + 2144)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[642] * weight_shared[(((int)threadIdx.x) + 2112)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[643] * weight_shared[(((int)threadIdx.x) + 2144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[706] * weight_shared[(((int)threadIdx.x) + 2112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[707] * weight_shared[(((int)threadIdx.x) + 2144)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[770] * weight_shared[(((int)threadIdx.x) + 2112)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[771] * weight_shared[(((int)threadIdx.x) + 2144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[834] * weight_shared[(((int)threadIdx.x) + 2112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[835] * weight_shared[(((int)threadIdx.x) + 2144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[452] * weight_shared[(((int)threadIdx.x) + 2176)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[453] * weight_shared[(((int)threadIdx.x) + 2208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[516] * weight_shared[(((int)threadIdx.x) + 2176)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[517] * weight_shared[(((int)threadIdx.x) + 2208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[580] * weight_shared[(((int)threadIdx.x) + 2176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[581] * weight_shared[(((int)threadIdx.x) + 2208)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[644] * weight_shared[(((int)threadIdx.x) + 2176)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[645] * weight_shared[(((int)threadIdx.x) + 2208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[708] * weight_shared[(((int)threadIdx.x) + 2176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[709] * weight_shared[(((int)threadIdx.x) + 2208)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[772] * weight_shared[(((int)threadIdx.x) + 2176)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[773] * weight_shared[(((int)threadIdx.x) + 2208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[836] * weight_shared[(((int)threadIdx.x) + 2176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[837] * weight_shared[(((int)threadIdx.x) + 2208)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[454] * weight_shared[(((int)threadIdx.x) + 2240)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[455] * weight_shared[(((int)threadIdx.x) + 2272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[518] * weight_shared[(((int)threadIdx.x) + 2240)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[519] * weight_shared[(((int)threadIdx.x) + 2272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[582] * weight_shared[(((int)threadIdx.x) + 2240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[583] * weight_shared[(((int)threadIdx.x) + 2272)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[646] * weight_shared[(((int)threadIdx.x) + 2240)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[647] * weight_shared[(((int)threadIdx.x) + 2272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[710] * weight_shared[(((int)threadIdx.x) + 2240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[711] * weight_shared[(((int)threadIdx.x) + 2272)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[774] * weight_shared[(((int)threadIdx.x) + 2240)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[775] * weight_shared[(((int)threadIdx.x) + 2272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[838] * weight_shared[(((int)threadIdx.x) + 2240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[839] * weight_shared[(((int)threadIdx.x) + 2272)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[456] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[457] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[520] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[521] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[584] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[585] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[648] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[649] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[712] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[713] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[776] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[777] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[840] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[841] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[458] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[459] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[522] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[523] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[586] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[587] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[650] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[651] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[714] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[715] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[778] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[779] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[842] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[843] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[460] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[461] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[524] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[525] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[588] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[589] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[652] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[653] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[716] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[717] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[780] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[781] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[844] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[845] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[462] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[463] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[526] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[527] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[590] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[591] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[654] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[655] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[718] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[719] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[782] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[783] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[846] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[847] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[464] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[465] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[528] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[529] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[592] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[593] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[656] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[657] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[720] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[721] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[784] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[785] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[848] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[849] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[466] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[467] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[530] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[531] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[594] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[595] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[658] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[659] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[722] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[723] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[786] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[787] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[850] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[851] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[468] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[469] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[532] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[533] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[596] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[597] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[660] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[661] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[724] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[725] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[788] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[789] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[852] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[853] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[470] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[471] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[534] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[535] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[598] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[599] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[662] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[663] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[726] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[727] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[790] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[791] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[854] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[855] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[472] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[473] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[536] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[537] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[600] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[601] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[664] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[665] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[728] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[729] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[792] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[793] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[856] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[857] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[474] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[475] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[538] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[539] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[602] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[603] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[666] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[667] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[730] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[731] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[794] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[795] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[858] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[859] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[476] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[477] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[540] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[541] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[604] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[605] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[668] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[669] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[732] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[733] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[796] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[797] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[860] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[861] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[478] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[479] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[542] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[543] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[606] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[607] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[670] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[671] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[734] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[735] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[798] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[799] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[862] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[863] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[480] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[481] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[544] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[545] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[608] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[609] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[672] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[673] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[736] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[737] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[800] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[801] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[864] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[865] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[482] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[483] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[546] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[547] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[610] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[611] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[674] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[675] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[738] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[739] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[802] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[803] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[866] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[867] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[484] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[485] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[548] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[549] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[612] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[613] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[676] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[677] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[740] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[741] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[804] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[805] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[868] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[869] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[486] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[487] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[550] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[551] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[614] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[615] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[678] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[679] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[742] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[743] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[806] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[807] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[870] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[871] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[488] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[489] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[552] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[553] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[616] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[617] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[680] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[681] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[744] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[745] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[808] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[809] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[872] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[873] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[490] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[491] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[554] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[555] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[618] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[619] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[682] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[683] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[746] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[747] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[810] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[811] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[874] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[875] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[492] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[493] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[556] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[557] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[620] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[621] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[684] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[685] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[748] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[749] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[812] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[813] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[876] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[877] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[494] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[495] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[558] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[559] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[622] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[623] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[686] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[687] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[750] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[751] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[814] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[815] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[878] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[879] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[496] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[497] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[560] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[561] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[624] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[625] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[688] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[689] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[752] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[753] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[816] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[817] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[880] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[881] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[498] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[499] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[562] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[563] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[626] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[627] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[690] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[691] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[754] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[755] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[818] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[819] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[882] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[883] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[500] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[501] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[564] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[565] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[628] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[629] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[692] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[693] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[756] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[757] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[820] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[821] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[884] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[885] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[502] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[503] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[566] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[567] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[630] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[631] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[694] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[695] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[758] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[759] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[822] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[823] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[886] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[887] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[504] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[505] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[568] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[569] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[632] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[633] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[696] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[697] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[760] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[761] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[824] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[825] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[888] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[889] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[506] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[507] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[570] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[571] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[634] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[635] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[698] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[699] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[762] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[763] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[826] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[827] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[890] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[891] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[508] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[509] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[572] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[573] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[636] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[637] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[700] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[701] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[764] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[765] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[828] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[829] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[892] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[893] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[510] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[511] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[574] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[575] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[638] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[639] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[702] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[703] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[766] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[767] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[830] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[831] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[894] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[895] * weight_shared[(((int)threadIdx.x) + 4064)]));
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[896] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[897] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[960] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[961] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1024] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1025] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1088] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1089] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1152] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1153] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1216] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1217] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1280] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1281] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[898] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[899] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[962] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[963] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1026] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1027] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1090] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1091] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1154] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1155] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1218] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1219] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1282] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1283] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[900] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[901] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[964] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[965] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1028] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1029] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1092] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1093] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1156] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1157] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1220] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1221] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1284] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1285] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[902] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[903] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[966] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[967] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1030] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1031] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1094] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1095] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1158] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1159] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1222] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1223] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1286] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1287] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[904] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[905] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[968] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[969] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1032] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1033] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1096] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1097] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1160] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1161] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1224] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1225] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1288] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1289] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[906] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[907] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[970] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[971] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1034] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1035] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1098] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1099] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1162] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1163] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1226] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1227] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1290] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1291] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[908] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[909] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[972] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[973] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1036] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1037] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1100] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1101] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1164] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1165] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1228] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1229] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1292] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1293] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[910] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[911] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[974] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[975] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1038] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1039] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1102] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1103] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1166] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1167] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1230] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1231] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1294] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1295] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[912] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[913] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[976] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[977] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1040] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1041] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1104] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1105] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1168] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1169] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1232] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1233] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1296] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1297] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[914] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[915] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[978] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[979] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1042] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1043] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1106] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1107] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1170] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1171] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1234] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1235] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1298] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1299] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[916] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[917] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[980] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[981] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1044] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1045] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1108] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1109] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1172] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1173] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1236] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1237] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1300] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1301] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[918] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[919] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[982] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[983] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1046] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1047] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1110] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1111] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1174] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1175] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1238] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1239] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1302] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1303] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[920] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[921] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[984] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[985] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1048] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1049] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1112] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1113] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1176] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1177] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1240] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1241] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1304] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1305] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[922] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[923] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[986] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[987] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1050] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1051] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1114] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1115] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1178] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1179] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1242] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1243] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1306] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1307] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[924] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[925] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[988] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[989] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1052] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1053] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1116] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1117] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1180] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1181] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1244] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1245] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1308] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1309] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[926] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[927] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[990] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[991] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1054] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1055] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1118] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1119] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1182] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1183] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1246] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1247] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1310] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1311] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[928] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[929] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[992] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[993] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1056] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1057] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1120] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1121] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1184] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1185] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1248] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1249] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1312] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1313] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[930] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[931] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[994] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[995] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1058] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1059] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1122] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1123] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1186] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1187] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1250] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1251] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1314] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1315] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[932] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[933] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[996] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[997] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1060] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1061] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1124] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1125] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1188] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1189] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1252] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1253] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1316] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1317] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[934] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[935] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[998] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[999] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1062] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1063] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1126] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1127] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1190] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1191] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1254] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1255] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1318] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1319] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[936] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[937] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1000] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1001] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1064] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1065] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1128] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1129] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1192] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1193] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1256] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1257] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1320] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1321] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[938] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[939] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1002] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1003] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1066] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1067] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1130] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1131] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1194] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1195] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1258] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1259] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1322] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1323] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[940] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[941] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1004] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1005] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1068] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1069] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1132] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1133] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1196] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1197] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1260] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1261] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1324] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1325] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[942] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[943] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1006] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1007] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1070] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1071] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1134] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1135] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1198] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1199] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1262] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1263] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1326] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1327] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[944] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[945] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1008] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1009] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1072] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1073] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1136] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1137] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1200] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1201] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1264] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1265] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1328] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1329] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[946] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[947] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1010] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1011] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1074] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1075] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1138] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1139] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1202] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1203] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1266] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1267] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1330] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1331] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[948] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[949] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1012] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1013] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1076] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1077] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1140] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1141] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1204] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1205] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1268] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1269] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1332] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1333] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[950] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[951] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1014] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1015] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1078] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1079] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1142] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1143] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1206] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1207] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1270] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1271] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1334] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1335] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[952] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[953] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1016] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1017] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1080] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1081] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1144] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1145] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1208] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1209] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1272] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1273] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1336] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1337] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[954] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[955] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1018] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1019] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1082] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1083] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1146] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1147] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1210] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1211] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1274] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1275] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1338] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1339] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[956] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[957] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1020] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1021] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1084] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1085] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1148] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1149] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1212] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1213] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1276] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1277] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1340] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1341] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[958] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[959] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1022] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1023] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1086] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1087] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1150] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1151] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1214] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1215] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1278] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1279] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1342] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1343] * weight_shared[(((int)threadIdx.x) + 6112)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1344] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1345] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1408] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1409] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1472] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1473] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1536] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1537] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1600] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1601] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1664] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1665] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1728] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1729] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1346] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1347] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1410] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1411] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1474] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1475] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1538] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1539] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1602] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1603] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1666] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1667] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1730] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1731] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1348] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1349] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1412] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1413] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1476] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1477] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1540] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1541] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1604] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1605] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1668] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1669] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1732] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1733] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1350] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1351] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1414] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1415] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1478] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1479] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1542] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1543] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1606] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1607] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1670] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1671] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1734] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1735] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1352] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1353] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1416] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1417] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1480] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1481] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1544] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1545] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1608] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1609] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1672] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1673] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1736] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1737] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1354] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1355] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1418] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1419] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1482] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1483] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1546] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1547] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1610] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1611] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1674] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1675] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1738] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1739] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1356] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1357] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1420] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1421] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1484] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1485] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1548] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1549] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1612] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1613] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1676] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1677] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1740] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1741] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1358] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1359] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1422] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1423] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1486] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1487] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1550] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1551] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1614] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1615] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1678] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1679] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1742] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1743] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1360] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1361] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1424] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1425] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1488] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1489] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1552] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1553] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1616] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1617] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1680] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1681] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1744] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1745] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1362] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1363] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1426] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1427] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1490] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1491] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1554] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1555] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1618] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1619] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1682] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1683] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1746] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1747] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1364] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1365] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1428] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1429] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1492] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1493] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1556] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1557] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1620] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1621] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1684] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1685] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1748] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1749] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1366] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1367] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1430] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1431] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1494] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1495] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1558] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1559] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1622] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1623] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1686] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1687] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1750] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1751] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1368] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1369] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1432] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1433] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1496] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1497] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1560] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1561] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1624] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1625] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1688] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1689] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1752] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1753] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1370] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1371] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1434] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1435] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1498] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1499] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1562] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1563] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1626] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1627] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1690] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1691] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1754] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1755] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1372] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1373] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1436] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1437] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1500] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1501] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1564] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1565] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1628] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1629] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1692] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1693] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1756] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1757] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1374] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1375] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1438] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1439] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1502] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1503] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1566] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1567] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1630] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1631] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1694] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1695] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1758] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1759] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1376] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1377] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1440] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1441] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1504] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1505] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1568] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1569] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1632] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1633] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1696] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1697] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1760] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1761] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1378] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1379] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1442] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1443] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1506] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1507] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1570] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1571] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1634] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1635] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1698] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1699] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1762] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1763] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1380] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1381] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1444] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1445] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1508] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1509] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1572] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1573] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1636] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1637] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1700] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1701] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1764] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1765] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1382] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1383] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1446] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1447] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1510] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1511] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1574] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1575] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1638] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1639] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1702] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1703] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1766] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1767] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1384] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1385] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1448] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1449] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1512] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1513] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1576] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1577] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1640] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1641] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1704] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1705] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1768] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1769] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1386] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1387] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1450] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1451] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1514] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1515] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1578] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1579] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1642] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1643] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1706] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1707] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1770] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1771] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1388] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1389] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1452] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1453] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1516] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1517] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1580] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1581] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1644] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1645] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1708] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1709] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1772] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1773] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1390] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1391] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1454] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1455] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1518] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1519] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1582] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1583] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1646] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1647] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1710] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1711] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1774] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1775] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1392] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1393] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1456] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1457] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1520] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1521] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1584] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1585] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1648] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1649] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1712] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1713] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1776] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1777] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1394] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1395] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1458] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1459] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1522] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1523] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1586] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1587] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1650] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1651] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1714] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1715] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1778] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1779] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1396] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1397] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1460] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1461] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1524] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1525] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1588] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1589] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1652] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1653] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1716] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1717] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1780] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1781] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1398] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1399] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1462] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1463] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1526] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1527] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1590] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1591] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1654] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1655] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1718] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1719] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1782] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1783] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1400] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1401] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1464] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1465] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1528] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1529] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1592] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1593] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1656] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1657] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1720] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1721] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1784] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1785] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1402] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1403] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1466] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1467] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1530] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1531] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1594] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1595] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1658] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1659] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1722] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1723] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1786] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1787] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1404] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1405] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1468] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1469] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1532] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1533] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1596] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1597] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1660] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1661] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1724] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1725] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1788] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1789] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1406] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[1407] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1470] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[1471] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1534] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[1535] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1598] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[1599] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1662] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[1663] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1726] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[1727] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1790] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[1791] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc[((((((int)blockIdx.x) >> 4) * 3584) + ((((int)blockIdx.x) & 15) * 32)) + ((int)threadIdx.x))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 4) * 3584) + ((((int)blockIdx.x) & 15) * 32)) + ((int)threadIdx.x)) + 512)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 4) * 3584) + ((((int)blockIdx.x) & 15) * 32)) + ((int)threadIdx.x)) + 1024)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 4) * 3584) + ((((int)blockIdx.x) & 15) * 32)) + ((int)threadIdx.x)) + 1536)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 4) * 3584) + ((((int)blockIdx.x) & 15) * 32)) + ((int)threadIdx.x)) + 2048)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 4) * 3584) + ((((int)blockIdx.x) & 15) * 32)) + ((int)threadIdx.x)) + 2560)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 4) * 3584) + ((((int)blockIdx.x) & 15) * 32)) + ((int)threadIdx.x)) + 3072)] = conv2d_nhwc_local[6];
}


