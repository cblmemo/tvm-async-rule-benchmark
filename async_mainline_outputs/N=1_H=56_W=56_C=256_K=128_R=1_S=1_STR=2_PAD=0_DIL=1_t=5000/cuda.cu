
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
extern "C" __global__ void __launch_bounds__(112) main_kernel0(float* __restrict__ inputs, float* __restrict__ weight, float* __restrict__ conv2d_nhwc) {
  float conv2d_nhwc_local[16];
  __shared__ float PadInput_shared[5280];
  __shared__ float weight_shared[6144];
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
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) * 2)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 1))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 1792))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 225)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 1793))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 3584))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 449)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 3585))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 5376))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 673)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 5377))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 7168))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 897)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 7169))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 8960))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1121)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 8961))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1344)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 10752))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1345)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 10753))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 96) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1568)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 12544))), "n"(4)
    );
  }
  }
  if (((int)threadIdx.x) < 96) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1569)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 12545))), "n"(4)
    );
  }
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((int)threadIdx.x)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 112) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 224) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 336)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 336) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 896))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 560) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 672) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 784)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 784) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 1792))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1008)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1008) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1120) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1232)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1232) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1344)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 2688))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1456)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1456) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1568)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1568) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1680)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1680) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 3584))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1904)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1904) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2016)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 2016) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 32))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1760)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 32))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1761)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 33))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1984)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 1824))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1985)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 1825))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2208)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 3616))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2209)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 3617))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2432)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 5408))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2433)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 5409))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2656)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 7200))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2657)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 7201))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2880)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 8992))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2881)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 8993))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 3104)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 10784))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 3105)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 10785))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 96) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 3328)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 12576))), "n"(4)
    );
  }
  }
  if (((int)threadIdx.x) < 96) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 3329)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + 12577))), "n"(4)
    );
  }
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2048)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2160)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 112) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2272)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 224) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2384)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 336) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2496)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 4992))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2608)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 560) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2720)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 672) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2832)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 784) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2944)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 5888))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3056)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1008) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3168)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1120) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3280)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1232) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3392)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 6784))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3504)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1456) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3616)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1568) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3728)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1680) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 4096))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3840)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 7680))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3952)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1904) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 4096))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4064)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 2016) >> 6) * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 4128))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 6; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 64))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 1)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 65))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1856))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 225)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1857))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3648))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 449)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3649))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 5440))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 673)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 5441))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 7232))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 897)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 7233))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 1120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 9024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 1121)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 9025))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 1344)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10816))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 1345)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10817))), "n"(4)
    );
  }
    if (((int)threadIdx.x) < 96) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 1568)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 12608))), "n"(4)
    );
  }
    }
    if (((int)threadIdx.x) < 96) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1760) + (((int)threadIdx.x) * 2)) + 1569)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 1) * 28672) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 12609))), "n"(4)
    );
  }
    }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 112) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 224) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 336)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 336) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 9088))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 560) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 672) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 784)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 784) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 9984))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1008)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 1008) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 1120) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1232)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 1232) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1344)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 10880))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1456)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 1456) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1568)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 1568) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1680)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 1680) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 11776))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 1904)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 1904) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
    );
  }
    if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + ((int)threadIdx.x)) + 2016)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + (((((int)threadIdx.x) + 2016) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 8224))), "n"(4)
    );
  }
    }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256))] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 64)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 128)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 192)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1152)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1184)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1153)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1185)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1216)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1248)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1217)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1249)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1152)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1184)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1153)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1185)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1216)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1248)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1217)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1249)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1152)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1184)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1153)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1185)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1216)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1248)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1217)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1249)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1152)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1184)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1153)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1185)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1216)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1248)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1217)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1249)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1280)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1312)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1281)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1313)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1344)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1376)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1345)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1377)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1408)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1440)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1409)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1441)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1472)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1504)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1473)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1505)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1280)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1312)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1281)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1313)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1344)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1376)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1345)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1377)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1408)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1440)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1409)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1441)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1472)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1504)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1473)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1505)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1280)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1312)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1281)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1313)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1344)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1376)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1345)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1377)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1408)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1440)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1409)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1441)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1472)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1504)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1473)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1505)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1280)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1312)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1281)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1313)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1344)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1376)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1345)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1377)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1408)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1440)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1409)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1441)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1472)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1504)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1473)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1505)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1536)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1568)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1537)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1569)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1600)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1632)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1601)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1633)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1664)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1696)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1665)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1697)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1728)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1760)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1729)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1761)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1536)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1568)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1537)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1569)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1600)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1632)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1601)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1633)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1664)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1696)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1665)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1697)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1728)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1760)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1729)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1761)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1536)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1568)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1537)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1569)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1600)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1632)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1601)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1633)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1664)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1696)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1665)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1697)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1728)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1760)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1729)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1761)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1536)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1568)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1537)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1569)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1600)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1632)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1601)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1633)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1664)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1696)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1665)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1697)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1728)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1760)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1729)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1761)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1792)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1824)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1793)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1825)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1856)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1888)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1857)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1889)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1920)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1952)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1921)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1953)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1984)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2016)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1985)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2017)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1792)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1824)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1793)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1825)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1856)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1888)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1857)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1889)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1920)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1952)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1921)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1953)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1984)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2016)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1985)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2017)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1792)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1824)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1793)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1825)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1856)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1888)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1857)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1889)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1920)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1952)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1921)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1953)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1984)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2016)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1985)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2017)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1792)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1824)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1793)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1825)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1856)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1888)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1857)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1889)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1920)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1952)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1921)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1953)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1984)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2016)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1985)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1760) + ((((int)threadIdx.x) >> 4) * 256)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2017)]));
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((int)threadIdx.x) >> 4) * 256)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((int)threadIdx.x) >> 4) * 256)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((int)threadIdx.x) >> 4) * 256)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((int)threadIdx.x) >> 4) * 256)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 2)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 2)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 2)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 2)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 3)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 3)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 3)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 3)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 64)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 64)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 64)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 64)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 65)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 65)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 65)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 65)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 66)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 66)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 66)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 66)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 67)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 67)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 67)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 67)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 128)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 128)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 128)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 128)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 192)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 4)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 4)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 4)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 4)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 5)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 5)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 5)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 5)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 6)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 6)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 6)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 6)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 7)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 7)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 7)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 7)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 68)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 68)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 68)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 68)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 69)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 69)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 69)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 69)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 70)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 70)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 70)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 70)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 71)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 71)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 71)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 71)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 8)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 8)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 8)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 8)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 9)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 9)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 9)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 9)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 10)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 10)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 10)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 10)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 11)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 11)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 11)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 11)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 72)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 72)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 72)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 72)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 73)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 73)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 73)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 73)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 74)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 74)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 74)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 74)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 75)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 75)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 75)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 75)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 12)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 12)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 12)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 12)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 13)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 13)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 13)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 13)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 14)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 14)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 14)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 14)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 15)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 15)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 15)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 15)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 76)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 76)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 76)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 76)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 77)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 77)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 77)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 77)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 78)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 78)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 78)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 78)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 79)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 79)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 79)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 79)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 16)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 16)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 16)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 16)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 17)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 17)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 17)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 17)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 18)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 18)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 18)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 18)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 19)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 19)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 19)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 19)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 80)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 80)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 80)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 80)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 81)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 81)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 81)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 81)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 82)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 82)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 82)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 82)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 83)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 83)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 83)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 83)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1024)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1056)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1025)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1057)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1088)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1120)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1089)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1121)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 20)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 20)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 20)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 20)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 21)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 21)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 21)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 21)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 22)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 22)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 22)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 22)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 23)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 23)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 23)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 23)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 84)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 84)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 84)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 84)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 85)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 85)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 85)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 85)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 86)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 86)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 86)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 86)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 87)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 87)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 87)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 87)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 24)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 24)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 24)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 24)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 25)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 25)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 25)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 25)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 26)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 26)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 26)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 26)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 27)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 27)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 27)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 27)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 88)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 88)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 88)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 88)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 89)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 89)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 89)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 89)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 90)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 90)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 90)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 90)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 91)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 91)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 91)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 91)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 28)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 28)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 28)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 28)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 29)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 29)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 29)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 29)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 30)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 30)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 30)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 30)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 31)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 31)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 31)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 31)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 92)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 92)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 92)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 92)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 93)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 93)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 93)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 93)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 94)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 94)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 94)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 94)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 95)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 95)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 95)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 95)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1760)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1761)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1762)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1763)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1824)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1824)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1824)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1824)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1825)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1825)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1825)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1825)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1826)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1826)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1826)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1826)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1827)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1827)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1827)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1827)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1952)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1952)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1952)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1952)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1953)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1953)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1953)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1953)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1954)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1954)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1954)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1954)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1955)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1955)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1955)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1955)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1764)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1765)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1766)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1767)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1828)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1828)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1828)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1828)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1829)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1829)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1829)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1829)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1830)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1830)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1830)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1830)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1831)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1831)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1831)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1831)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1956)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1956)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1956)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1956)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1957)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1957)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1957)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1957)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1958)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1958)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1958)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1958)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1959)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1959)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1959)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1959)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1768)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1769)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1770)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1771)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1832)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1832)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1832)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1832)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1833)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1833)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1833)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1833)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1834)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1834)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1834)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1834)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1835)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1835)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1835)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1835)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1896)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1896)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1896)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1896)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1897)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1897)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1897)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1897)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1898)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1898)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1898)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1898)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1899)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1899)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1899)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1899)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1960)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1960)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1960)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1960)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1961)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1961)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1961)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1961)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1962)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1962)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1962)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1962)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1963)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1963)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1963)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1963)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1772)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1773)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1774)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1775)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1836)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1836)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1836)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1836)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1837)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1837)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1837)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1837)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1838)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1838)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1838)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1838)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1839)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1839)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1839)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1839)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1900)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1900)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1900)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1900)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1901)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1901)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1901)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1901)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1902)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1902)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1902)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1902)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1903)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1903)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1903)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1903)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1964)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1964)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1964)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1964)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1965)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1965)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1965)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1965)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1966)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1966)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1966)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1966)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1967)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1967)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1967)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1967)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1776)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1777)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1778)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1779)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1840)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1840)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1840)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1840)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1841)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1841)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1841)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1841)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1842)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1842)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1842)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1842)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1843)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1843)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1843)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1843)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1904)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1904)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1904)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1904)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1905)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1905)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1905)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1905)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1906)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1906)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1906)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1906)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1907)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1907)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1907)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1907)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1968)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1968)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1968)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1968)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1969)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1969)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1969)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1969)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1970)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1970)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1970)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1970)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1971)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1971)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1971)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1971)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1780)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1781)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1782)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1783)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1844)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1844)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1844)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1844)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1845)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1845)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1845)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1845)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1846)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1846)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1846)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1846)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1847)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1847)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1847)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1847)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1908)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1908)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1908)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1908)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1909)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1909)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1909)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1909)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1910)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1910)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1910)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1910)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1911)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1911)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1911)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1911)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1972)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1972)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1972)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1972)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1973)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1973)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1973)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1973)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1974)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1974)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1974)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1974)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1975)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1975)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1975)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1975)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1784)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1785)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1786)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1787)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1848)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1848)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1848)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1848)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1849)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1849)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1849)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1849)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1850)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1850)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1850)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1850)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1851)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1851)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1851)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1851)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1912)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1912)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1912)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1912)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1913)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1913)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1913)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1913)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1914)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1914)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1914)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1914)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1915)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1915)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1915)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1915)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1788)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1789)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1790)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1791)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1852)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1852)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1852)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1852)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1853)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1853)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1853)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1853)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1854)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1854)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1854)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1854)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1855)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1855)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1855)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1855)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1916)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1916)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1916)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1916)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1917)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1917)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1917)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1917)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1918)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1918)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1918)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1918)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1919)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1919)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1919)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1919)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 256) + 1983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc[(((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2))] = conv2d_nhwc_local[0];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 32)] = conv2d_nhwc_local[8];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 33)] = conv2d_nhwc_local[9];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 128)] = conv2d_nhwc_local[2];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 160)] = conv2d_nhwc_local[10];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 129)] = conv2d_nhwc_local[3];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 161)] = conv2d_nhwc_local[11];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 256)] = conv2d_nhwc_local[4];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 288)] = conv2d_nhwc_local[12];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 257)] = conv2d_nhwc_local[5];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 289)] = conv2d_nhwc_local[13];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 384)] = conv2d_nhwc_local[6];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 416)] = conv2d_nhwc_local[14];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 385)] = conv2d_nhwc_local[7];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 1) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 417)] = conv2d_nhwc_local[15];
}


