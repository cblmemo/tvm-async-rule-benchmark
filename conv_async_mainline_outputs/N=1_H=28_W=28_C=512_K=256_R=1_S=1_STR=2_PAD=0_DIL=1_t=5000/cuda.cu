
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
  float conv2d_nhwc_local[8];
  __shared__ float PadInput_shared[3456];
  __shared__ float weight_shared[8192];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[7] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((int)threadIdx.x)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 112) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 3584))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 336)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 336) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 7168))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 560) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 10752))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 80) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 784)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 784) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 112) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 224) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 336) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 1792))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 560) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 672) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 784) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 3584))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1008) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1120) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1232) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 5376))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1456) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1568) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1680) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 7168))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 1904) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 2016) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((int)threadIdx.x)) + 32))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 864)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 32))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 976)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 112) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)) + 32))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1088)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 3616))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1200)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 336) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)) + 32))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1312)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 7200))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1424)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 560) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)) + 32))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 10784))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 80) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1648)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 784) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)) + 32))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 112) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 224) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 336) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 9984))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 560) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 672) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 784) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 11776))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1008) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1120) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1232) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 13568))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1456) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1568) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1680) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 15360))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1904) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 8192))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 2016) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((int)threadIdx.x)) + 8224))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1728)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 64))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1840)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 112) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)) + 64))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1952)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 3648))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 2064)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 336) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)) + 64))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 2176)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 7232))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 2288)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 560) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)) + 64))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 2400)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (((int)threadIdx.x) & 31)) + 10816))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 80) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 2512)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 784) >> 5) * 512)) + ((((int)threadIdx.x) + 16) & 31)) + 64))), "n"(4)
    );
  }
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4096)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4208)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 112) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4320)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 224) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4432)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 336) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4544)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 18176))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4656)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 560) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4768)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 672) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4880)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 784) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4992)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 19968))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5104)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1008) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5216)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1120) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5328)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1232) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5440)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 21760))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5552)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1456) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5664)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1568) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5776)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1680) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 16384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5888)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 23552))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6000)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1904) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 16384))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 2016) >> 6) * 256) + ((((int)blockIdx.x) & 3) * 64)) + ((int)threadIdx.x)) + 16416))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 13; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 864) + ((int)threadIdx.x))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + (((int)threadIdx.x) & 31)) + 96))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 864) + ((int)threadIdx.x)) + 112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 112) >> 5) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 96))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 864) + ((int)threadIdx.x)) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + (((int)threadIdx.x) & 31)) + 3680))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 864) + ((int)threadIdx.x)) + 336)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 336) >> 5) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 96))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 864) + ((int)threadIdx.x)) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + (((int)threadIdx.x) & 31)) + 7264))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 864) + ((int)threadIdx.x)) + 560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 560) >> 5) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 96))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 864) + ((int)threadIdx.x)) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 2) * 28672) + ((((int)threadIdx.x) >> 5) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + (((int)threadIdx.x) & 31)) + 10848))), "n"(4)
    );
  }
    if (((int)threadIdx.x) < 80) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 864) + ((int)threadIdx.x)) + 784)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 2) * 28672) + (((((int)threadIdx.x) + 784) >> 5) * 512)) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 96))), "n"(4)
    );
  }
    }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 112) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 224) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 336)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 336) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 26368))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 560) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 672) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 784)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 784) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 28160))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1008)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 1008) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 1120) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1232)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 1232) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1344)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 29952))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1456)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 1456) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1568)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 1568) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 32) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1680)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 1680) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 16) & 63)) + 24576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((int)threadIdx.x) & 63)) + 31744))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 1904)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 1904) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) + 48) & 63)) + 24576))), "n"(4)
    );
  }
    if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2048) + ((int)threadIdx.x)) + 2016)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + (((((int)threadIdx.x) + 2016) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((int)threadIdx.x)) + 24608))), "n"(4)
    );
  }
    }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64))] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64))] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 448)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 448)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 449)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 449)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 450)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 450)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 451)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 451)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 452)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 452)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 453)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 453)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 454)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 454)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 455)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 455)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 456)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 456)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 457)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 457)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 458)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 458)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 459)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 459)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 460)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 460)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 461)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 461)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 462)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 462)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 463)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 463)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64))] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64))] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 448)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 448)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 449)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 449)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 450)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 450)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 451)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 451)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 452)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 452)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 453)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 453)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 454)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 454)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 455)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 455)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 456)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 456)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 457)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 457)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 458)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 458)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 459)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 459)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 460)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 460)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 461)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 461)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 462)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 462)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 463)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 463)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 464)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 464)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 465)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 465)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1152)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1184)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 466)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1152)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 466)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1184)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1216)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1248)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 467)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1216)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 467)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1248)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1280)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1312)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 468)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1280)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 468)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1312)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1344)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1376)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 469)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1344)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 469)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1376)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1408)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1440)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 470)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1408)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 470)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1440)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1472)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1504)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 471)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1472)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 471)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1504)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1536)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1568)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 472)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1536)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 472)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1568)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1600)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1632)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 473)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1600)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 473)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1632)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1664)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1696)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 474)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1664)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 474)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1696)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1728)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1760)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 475)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1728)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 475)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1760)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1792)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1824)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 476)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1792)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 476)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1824)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1856)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1888)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 477)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1856)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 477)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1888)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1920)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1952)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 478)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1920)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 478)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1952)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1984)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2016)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 479)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1984)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 479)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2016)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 464)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 464)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 465)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 465)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1153)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1185)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 466)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1153)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 466)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1185)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1217)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1249)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 467)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1217)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 467)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1249)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1281)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1313)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 468)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1281)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 468)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1313)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1345)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1377)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 469)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1345)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 469)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1377)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1409)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1441)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 470)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1409)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 470)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1441)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1473)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1505)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 471)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1473)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 471)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1505)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1537)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1569)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 472)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1537)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 472)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1569)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1601)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1633)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 473)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1601)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 473)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1633)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1665)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1697)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 474)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1665)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 474)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1697)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1729)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1761)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 475)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1729)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 475)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1761)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1793)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1825)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 476)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1793)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 476)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1825)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1857)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1889)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 477)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1857)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 477)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1889)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1921)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1953)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 478)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1921)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 478)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1953)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1985)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2017)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 479)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 1985)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 864) + ((((int)threadIdx.x) >> 4) * 64)) + 479)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2048) + ((((int)threadIdx.x) & 15) * 2)) + 2017)]));
  }
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 864)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 864)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1312)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1312)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 865)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 865)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1313)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1313)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 866)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 866)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1314)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1314)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 867)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 867)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1315)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1315)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 868)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 868)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1316)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1316)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 869)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 869)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1317)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1317)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 870)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 870)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1318)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1318)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 871)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 871)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1319)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1319)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 872)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 872)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1320)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1320)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 873)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 873)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1321)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1321)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 874)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 874)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1322)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1322)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 875)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 875)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1323)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1323)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 876)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 876)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 877)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 877)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 878)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 878)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 879)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 879)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 864)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 864)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1312)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1312)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 865)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 865)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1313)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1313)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 866)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 866)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1314)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1314)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 867)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 867)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1315)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1315)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 868)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 868)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1316)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1316)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 869)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 869)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1317)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1317)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 870)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 870)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1318)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1318)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 871)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 871)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1319)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1319)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 872)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 872)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1320)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1320)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 873)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 873)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1321)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1321)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 874)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 874)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1322)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1322)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 875)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 875)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1323)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1323)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 876)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 876)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 877)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 877)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 878)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 878)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 879)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 879)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 880)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 880)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 881)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 881)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 882)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 882)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 883)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 883)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 884)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 884)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 885)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 885)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 886)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 886)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 887)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 887)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 880)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 880)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 881)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 881)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 882)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 882)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 883)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 883)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 884)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 884)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 885)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 885)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 886)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 886)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 887)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 887)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 888)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 889)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 890)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 891)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 892)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 893)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 894)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 895)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4992)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5024)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4992)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5024)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5056)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5088)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5056)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5088)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4609)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4641)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4609)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4641)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4673)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4705)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4673)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4705)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4737)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4769)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4737)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4769)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4801)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4833)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4801)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4833)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4865)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4897)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4865)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4897)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4929)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4961)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4929)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4961)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4993)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5025)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4993)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5025)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5057)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5089)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5057)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5089)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5120)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5152)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5120)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5152)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5184)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5216)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5184)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5216)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5248)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5280)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5248)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5280)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5312)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5344)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5312)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5344)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5376)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5408)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5376)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5408)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5440)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5472)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5440)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5472)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5504)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5536)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5504)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5536)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5568)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5600)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5568)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5600)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5632)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5664)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5632)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5664)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5696)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5728)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5696)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5728)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5760)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5792)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5760)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5792)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5824)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5856)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5824)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5856)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1756)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5888)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1756)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5920)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5888)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5920)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1757)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5952)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1757)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5984)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5952)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5984)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1758)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6016)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1758)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6048)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6016)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6048)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1759)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6080)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1759)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6080)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6112)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5121)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5153)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5121)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5153)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5185)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5217)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5185)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5217)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5249)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5281)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5249)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5281)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5313)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5345)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5313)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5345)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5377)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5409)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5377)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5409)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5441)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5473)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5441)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5473)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5505)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5537)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5505)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5537)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5569)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5601)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5569)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5601)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5633)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5665)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5633)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5665)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5697)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5729)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5697)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5729)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5761)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5793)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5761)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5793)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5825)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5857)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5825)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5857)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1756)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5889)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1756)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5921)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5889)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5921)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1757)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5953)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1757)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5985)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5953)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 5985)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1758)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6017)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1758)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6049)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6017)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6049)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1759)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6081)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 1759)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6113)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6081)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6113)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6176)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6240)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7072)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7072)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7104)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7136)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7104)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7136)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6145)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2592)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6177)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6145)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6177)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6209)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2593)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6241)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6209)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6241)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6273)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2594)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6305)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6273)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6305)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6337)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2595)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6369)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6337)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6369)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6401)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2596)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6433)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6401)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6433)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6465)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2597)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6497)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6465)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6497)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6529)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2598)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6561)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6529)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6561)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6593)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2599)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6625)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6593)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6625)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6657)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2600)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6689)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6657)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6689)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6721)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2601)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6753)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6721)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6753)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6785)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2602)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6817)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6785)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6817)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6849)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2603)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6881)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6849)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6881)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6913)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2604)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6945)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6913)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6945)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6977)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2605)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7009)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 6977)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7009)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7041)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2606)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7073)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7041)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7073)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7105)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2607)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7137)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7105)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7137)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7168)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7200)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7168)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7200)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7232)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7264)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7232)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7264)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7296)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7328)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7296)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7328)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7360)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7392)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7360)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7392)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7424)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7456)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7424)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7456)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7488)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7520)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7488)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7520)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7552)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7584)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7552)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7584)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7616)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7648)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7616)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7648)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2616)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7680)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2616)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7712)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7680)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7712)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2617)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7744)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2617)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7776)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7744)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7776)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2618)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7808)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2618)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7840)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7808)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7840)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2619)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7872)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2619)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7904)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7872)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7904)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2620)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7936)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2620)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7968)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7936)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7968)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2621)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8000)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2621)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8032)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8000)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8032)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2622)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2622)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8096)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2623)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2623)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7169)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2608)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7201)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7169)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7201)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7233)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2609)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7265)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7233)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7265)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7297)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2610)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7329)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7297)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7329)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7361)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2611)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7393)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7361)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7393)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7425)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2612)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7457)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7425)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7457)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7489)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2613)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7521)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7489)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7521)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7553)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2614)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7585)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7553)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7585)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7617)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2615)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7649)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7617)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7649)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2616)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7681)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2616)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7713)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7681)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7713)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2617)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7745)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2617)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7777)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7745)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7777)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2618)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7809)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2618)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7841)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7809)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7841)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2619)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7873)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2619)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7905)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7873)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7905)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2620)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7937)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2620)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7969)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7937)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 7969)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2621)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8001)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2621)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8033)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8001)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8033)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2622)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8065)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2622)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8097)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8065)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8097)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2623)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8129)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 2623)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8161)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8129)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 64) + 3071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 8161)]));
  conv2d_nhwc[(((((((int)blockIdx.x) >> 2) * 3584) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 2))] = conv2d_nhwc_local[0];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 2) * 3584) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 32)] = conv2d_nhwc_local[2];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 2) * 3584) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 1792)] = conv2d_nhwc_local[4];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 2) * 3584) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 1824)] = conv2d_nhwc_local[6];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 2) * 3584) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 2) * 3584) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 33)] = conv2d_nhwc_local[3];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 2) * 3584) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 1793)] = conv2d_nhwc_local[5];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 2) * 3584) + ((((int)threadIdx.x) >> 4) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + 1825)] = conv2d_nhwc_local[7];
}


