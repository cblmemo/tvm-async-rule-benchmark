
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
extern "C" __global__ void __launch_bounds__(128) main_kernel0(float* __restrict__ inputs, float* __restrict__ weight, float* __restrict__ conv2d_nhwc) {
  float conv2d_nhwc_local[28];
  __shared__ float PadInput_shared[7168];
  __shared__ float weight_shared[2048];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  conv2d_nhwc_local[7] = 0.000000e+00f;
  conv2d_nhwc_local[8] = 0.000000e+00f;
  conv2d_nhwc_local[9] = 0.000000e+00f;
  conv2d_nhwc_local[10] = 0.000000e+00f;
  conv2d_nhwc_local[11] = 0.000000e+00f;
  conv2d_nhwc_local[12] = 0.000000e+00f;
  conv2d_nhwc_local[13] = 0.000000e+00f;
  conv2d_nhwc_local[14] = 0.000000e+00f;
  conv2d_nhwc_local[15] = 0.000000e+00f;
  conv2d_nhwc_local[16] = 0.000000e+00f;
  conv2d_nhwc_local[17] = 0.000000e+00f;
  conv2d_nhwc_local[18] = 0.000000e+00f;
  conv2d_nhwc_local[19] = 0.000000e+00f;
  conv2d_nhwc_local[20] = 0.000000e+00f;
  conv2d_nhwc_local[21] = 0.000000e+00f;
  conv2d_nhwc_local[22] = 0.000000e+00f;
  conv2d_nhwc_local[23] = 0.000000e+00f;
  conv2d_nhwc_local[24] = 0.000000e+00f;
  conv2d_nhwc_local[25] = 0.000000e+00f;
  conv2d_nhwc_local[26] = 0.000000e+00f;
  conv2d_nhwc_local[27] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) * 2)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 7168))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 14336))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 21504))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 28672))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 35840))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 43008))), "n"(8)
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
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 16))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2048)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 7184))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2304)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 14352))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 21520))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2816)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 28688))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 3072)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 35856))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 3328)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 43024))), "n"(8)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1024))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 3584)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 32))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 3840)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 7200))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 4096)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 14368))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 4352)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 21536))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 4608)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 28704))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 4864)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 35872))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 5120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 43040))), "n"(8)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2048))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 5376)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 48))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 5632)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 7216))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 5888)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 14384))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 6144)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 21552))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 6400)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 28720))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 6656)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 35888))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 6912)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 2)) + 43056))), "n"(8)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3072))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32))] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32))] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 16)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 16)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 17)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 17)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 18)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 18)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 19)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 19)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 128)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 128)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 144)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 256)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 256)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 257)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 257)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 258)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 258)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 259)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 259)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 272)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 272)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 273)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 273)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 274)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 274)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 275)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 275)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 384)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 400)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 400)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 401)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 401)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 402)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 402)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 403)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 403)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 512)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 512)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 513)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 513)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 514)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 514)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 515)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 515)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 528)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 528)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 529)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 529)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 530)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 530)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 531)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 531)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 640)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 640)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 641)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 641)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 642)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 642)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 643)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 643)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 656)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 768)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 784)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 7)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 7)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 20)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 20)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 21)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 21)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 22)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 22)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 23)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 23)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 260)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 260)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 261)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 261)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 262)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 262)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 263)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 263)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 276)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 276)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 277)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 277)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 278)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 278)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 279)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 279)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 388)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 388)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 389)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 389)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 390)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 390)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 391)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 391)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 516)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 516)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 517)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 517)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 518)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 518)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 519)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 519)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 532)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 532)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 533)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 533)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 534)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 534)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 535)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 535)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 644)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 644)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 645)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 645)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 646)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 646)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 647)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 647)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 8)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 8)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 9)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 9)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 10)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 10)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 11)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 11)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 24)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 24)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 25)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 25)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 26)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 26)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 27)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 27)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 264)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 264)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 265)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 265)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 266)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 266)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 267)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 267)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 280)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 280)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 281)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 281)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 282)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 282)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 283)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 283)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 392)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 392)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 393)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 393)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 394)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 394)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 395)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 395)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 408)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 408)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 409)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 409)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 410)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 410)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 411)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 411)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 520)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 520)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 521)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 521)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 522)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 522)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 523)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 523)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 536)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 536)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 537)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 537)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 538)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 538)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 539)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 539)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 792)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 792)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 793)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 793)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 794)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 794)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 795)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 795)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 12)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 12)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 13)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 13)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 14)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 14)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 15)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 15)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 28)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 28)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 29)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 29)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 30)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 30)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 31)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 31)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 268)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 268)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 269)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 269)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 270)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 270)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 271)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 271)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 284)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 284)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 285)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 285)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 286)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 286)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 287)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 287)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 396)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 396)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 397)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 397)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 398)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 398)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 399)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 399)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 412)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 412)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 413)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 413)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 414)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 414)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 415)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 415)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 524)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 524)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 525)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 525)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 526)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 526)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 527)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 527)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 540)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 540)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 541)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 541)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 542)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 542)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 543)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 543)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 796)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 796)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 797)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 797)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 798)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 798)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 799)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 799)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1792)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1792)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1793)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1793)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1794)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1794)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1795)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1795)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1808)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1808)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1809)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1809)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1810)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1810)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1811)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1811)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1920)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1920)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1921)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1921)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1922)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1922)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1923)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1923)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1936)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1936)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1937)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1937)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1938)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1938)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1939)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1939)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2304)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2304)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2305)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2305)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2306)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2306)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2307)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2307)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2320)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2320)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2321)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2321)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2322)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2322)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2323)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2323)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2432)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2432)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2433)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2433)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2434)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2434)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2435)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2435)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2448)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2448)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2449)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2449)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2450)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2450)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2451)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2451)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2560)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2560)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2561)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2561)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2562)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2562)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2563)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2563)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2576)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2576)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2577)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2577)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2578)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2578)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2579)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2579)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1796)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1796)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1797)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1797)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1798)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1798)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1799)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1799)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1812)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1812)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1813)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1813)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1814)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1814)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1815)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1815)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1924)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1924)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1925)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1925)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1926)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1926)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1927)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1927)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1940)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1940)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1941)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1941)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1942)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1942)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1943)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1943)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2308)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2308)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2309)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2309)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2310)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2310)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2311)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2311)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2436)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2436)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2437)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2437)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2438)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2438)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2439)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2439)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2452)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2452)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2453)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2453)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2454)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2454)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2455)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2455)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2564)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2564)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2565)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2565)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2566)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2566)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2567)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2567)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2580)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2580)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2581)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2581)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2582)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2582)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2583)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2583)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1800)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1800)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1801)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1801)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1802)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1802)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1803)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1803)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1816)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1816)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1817)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1817)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1818)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1818)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1819)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1819)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1928)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1928)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1929)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1929)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1930)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1930)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1931)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1931)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1944)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1944)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1945)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1945)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1946)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1946)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1947)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1947)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2072)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2072)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2073)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2073)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2074)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2074)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2075)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2075)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2312)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2312)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2313)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2313)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2314)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2314)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2315)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2315)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2440)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2440)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2441)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2441)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2442)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2442)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2443)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2443)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2456)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2456)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2457)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2457)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2458)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2458)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2459)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2459)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2568)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2568)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2569)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2569)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2570)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2570)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2571)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2571)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2584)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2584)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2585)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2585)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2586)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2586)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2587)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2587)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1804)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1804)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1805)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1805)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1806)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1806)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1807)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1807)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1820)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1820)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1821)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1821)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1822)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1822)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1823)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1823)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1932)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1932)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1933)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1933)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1934)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1934)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1935)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1935)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1948)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1948)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1949)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1949)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1950)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1950)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1951)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 1951)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2076)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2076)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2077)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2077)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2078)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2078)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2079)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2079)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2316)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2316)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2317)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2317)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2318)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2318)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2319)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2319)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2444)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2444)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2445)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2445)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2446)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2446)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2447)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2447)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2460)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2460)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2461)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2461)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2462)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2462)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2463)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2463)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2572)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2572)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2573)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2573)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2574)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2574)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2575)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2575)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2588)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2588)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2589)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2589)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2590)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2590)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2591)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 2591)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3584)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3584)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3585)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3585)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3586)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3586)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3587)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3587)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3840)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3840)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3841)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3841)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3842)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3842)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3843)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3843)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3856)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3856)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3857)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3857)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3858)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3858)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3859)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3859)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3968)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3968)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3969)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3969)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3970)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3970)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3971)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3971)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3984)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3984)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3985)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3985)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3986)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3986)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3987)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3987)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4096)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4096)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4097)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4097)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4098)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4098)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4099)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4099)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4112)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4112)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4113)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4113)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4114)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4114)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4115)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4115)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4224)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4224)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4225)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4225)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4226)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4226)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4227)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4227)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4240)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4240)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4241)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4241)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4242)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4242)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4243)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4243)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4352)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4352)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4353)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4353)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4354)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4354)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4355)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4355)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4368)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4368)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4369)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4369)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4370)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4370)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4371)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4371)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3588)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3588)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3589)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3589)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3590)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3590)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3591)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3591)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3716)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3716)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3717)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3717)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3718)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3718)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3719)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3719)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3844)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3844)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3845)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3845)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3846)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3846)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3847)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3847)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3860)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3860)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3861)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3861)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3862)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3862)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3863)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3863)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3972)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3972)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3973)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3973)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3974)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3974)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3975)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3975)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3988)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3988)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3989)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3989)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3990)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3990)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3991)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3991)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4100)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4100)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4101)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4101)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4102)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4102)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4103)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4103)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4116)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4116)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4117)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4117)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4118)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4118)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4119)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4119)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4228)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4228)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4229)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4229)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4230)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4230)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4231)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4231)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4244)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4244)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4245)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4245)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4246)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4246)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4247)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4247)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4356)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4356)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4357)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4357)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4358)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4358)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4359)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4359)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4372)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4372)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4373)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4373)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4374)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4374)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4375)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4375)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3720)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3720)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3721)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3721)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3722)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3722)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3723)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3723)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3848)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3848)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3849)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3849)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3850)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3850)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3851)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3851)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3864)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3864)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3865)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3865)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3866)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3866)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3867)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3867)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3992)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3992)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3993)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3993)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3994)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3994)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3995)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3995)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4104)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4104)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4105)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4105)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4106)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4106)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4107)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4107)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4120)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4120)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4121)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4121)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4122)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4122)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4123)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4123)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4232)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4232)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4233)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4233)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4234)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4234)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4235)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4235)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4248)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4248)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4249)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4249)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4250)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4250)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4251)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4251)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4360)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4360)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4361)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4361)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4362)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4362)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4363)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4363)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3852)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3852)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3853)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3853)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3854)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3854)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3855)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3855)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3868)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3868)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3869)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3869)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3870)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3870)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3871)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3871)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3996)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3996)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3997)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3997)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3998)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3998)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3999)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 3999)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4108)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4108)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4109)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4109)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4110)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4110)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4111)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4111)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4124)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4124)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4125)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4125)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4126)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4126)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4127)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4127)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4236)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4236)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4237)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4237)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4238)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4238)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4239)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4239)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4252)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4252)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4253)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4253)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4254)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4254)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4255)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4255)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4364)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4364)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4365)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4365)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4366)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4366)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4367)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4367)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 4383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5392)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5392)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5393)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5393)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5394)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5394)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5395)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5395)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5504)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5504)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5505)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5505)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5506)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5506)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5507)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5507)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5520)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5520)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5521)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5521)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5522)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5522)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5523)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5523)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5632)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5632)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5633)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5633)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5634)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5634)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5635)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5635)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5904)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5904)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5905)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5905)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5906)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5906)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5907)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5907)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6016)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6016)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6017)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6017)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6018)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6018)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6019)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6019)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6160)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6160)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6161)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6161)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6162)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6162)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6163)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6163)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5396)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5396)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5397)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5397)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5398)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5398)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5399)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5399)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5508)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5508)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5509)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5509)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5510)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5510)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5511)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5511)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5524)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5524)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5525)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5525)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5526)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5526)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5527)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5527)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5636)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5636)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5637)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5637)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5638)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5638)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5639)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5639)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5908)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5908)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5909)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5909)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5910)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5910)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5911)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5911)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6020)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6020)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6021)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6021)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6022)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6022)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6023)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6023)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6036)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6036)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6037)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6037)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6038)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6038)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6039)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6039)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6164)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6164)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6165)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6165)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6166)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6166)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6167)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6167)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5400)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5400)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5401)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5401)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5402)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5402)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5403)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5403)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5512)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5512)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5513)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5513)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5514)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5514)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5515)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5515)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5528)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5528)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5529)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5529)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5530)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5530)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5531)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5531)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5640)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5640)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5641)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5641)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5642)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5642)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5643)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5643)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5896)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5896)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5897)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5897)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5898)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5898)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5899)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5899)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5912)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5912)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5913)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5913)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5914)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5914)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5915)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5915)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6168)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6168)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6169)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6169)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6170)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6170)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6171)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6171)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5388)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5388)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5389)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5389)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5390)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5390)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5391)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5391)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5516)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5516)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5517)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5517)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5518)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5518)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5519)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5519)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5532)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5532)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5533)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5533)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5534)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5534)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5535)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5535)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5644)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5644)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5645)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5645)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5646)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5646)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5647)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5647)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5900)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5900)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5901)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5901)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5902)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5902)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5903)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5903)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5916)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5916)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5917)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5917)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5918)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5918)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5919)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 5919)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6172)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6172)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6173)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6173)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6174)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6174)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6175)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 6) * 896) + (((((int)threadIdx.x) & 63) >> 4) * 32)) + 6175)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc[(((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2))] = conv2d_nhwc_local[0];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 64)] = conv2d_nhwc_local[2];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 65)] = conv2d_nhwc_local[3];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3584)] = conv2d_nhwc_local[4];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3585)] = conv2d_nhwc_local[5];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3648)] = conv2d_nhwc_local[6];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3649)] = conv2d_nhwc_local[7];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 7168)] = conv2d_nhwc_local[8];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 7169)] = conv2d_nhwc_local[9];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 7232)] = conv2d_nhwc_local[10];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 7233)] = conv2d_nhwc_local[11];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10752)] = conv2d_nhwc_local[12];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10753)] = conv2d_nhwc_local[13];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10816)] = conv2d_nhwc_local[14];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10817)] = conv2d_nhwc_local[15];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 14336)] = conv2d_nhwc_local[16];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 14337)] = conv2d_nhwc_local[17];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 14400)] = conv2d_nhwc_local[18];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 14401)] = conv2d_nhwc_local[19];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 17920)] = conv2d_nhwc_local[20];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 17921)] = conv2d_nhwc_local[21];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 17984)] = conv2d_nhwc_local[22];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 17985)] = conv2d_nhwc_local[23];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 21504)] = conv2d_nhwc_local[24];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 21505)] = conv2d_nhwc_local[25];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 21568)] = conv2d_nhwc_local[26];
  conv2d_nhwc[((((((((((int)blockIdx.x) / 14) * 50176) + ((((int)threadIdx.x) >> 6) * 25088)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + (((((int)threadIdx.x) & 63) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 21569)] = conv2d_nhwc_local[27];
}


