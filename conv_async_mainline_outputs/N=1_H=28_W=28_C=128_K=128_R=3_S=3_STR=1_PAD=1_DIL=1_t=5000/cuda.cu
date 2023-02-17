
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
  float conv2d_nhwc_local[14];
  __shared__ float PadInput_shared[1296];
  __shared__ float weight_shared[4608];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  conv2d_nhwc_local[8] = 0.000000e+00f;
  conv2d_nhwc_local[10] = 0.000000e+00f;
  conv2d_nhwc_local[12] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[7] = 0.000000e+00f;
  conv2d_nhwc_local[9] = 0.000000e+00f;
  conv2d_nhwc_local[11] = 0.000000e+00f;
  conv2d_nhwc_local[13] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((int)threadIdx.x)))
    );
    int src_bytes = (((1 <= (((((int)blockIdx.x) >> 4) * 7) + (((int)threadIdx.x) / 36))) && (1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + ((((int)threadIdx.x) % 36) >> 2)))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + ((((int)threadIdx.x) % 36) >> 2)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + (((((int)threadIdx.x) % 36) >> 2) * 128)) + (((int)threadIdx.x) & 3)) - 3712))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((((int)threadIdx.x) + 112) / 36) * 36) + ((((((int)threadIdx.x) >> 2) + 1) % 9) * 4)) + (((int)threadIdx.x) & 3))))
    );
    int src_bytes = ((1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 1) % 9))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 1) % 9)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + (((((int)threadIdx.x) + 112) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((((int)threadIdx.x) >> 2) + 1) % 9) * 128)) + (((int)threadIdx.x) & 3)) - 3712))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 100) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((((int)threadIdx.x) + 224) / 36) * 36) + ((((((int)threadIdx.x) >> 2) + 2) % 9) * 4)) + (((int)threadIdx.x) & 3))))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 4) * 7) + ((((int)threadIdx.x) + 224) / 36)) < 29) && (1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 2) % 9)))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 2) % 9)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + (((((int)threadIdx.x) + 224) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((((int)threadIdx.x) >> 2) + 2) % 9) * 128)) + (((int)threadIdx.x) & 3)) - 3712))), "n"(4), "r"(src_bytes)
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
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 5) * 128) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 112) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 7) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 224) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 3) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 336) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 5) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 448) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 2) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 560) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 3) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 672) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 1) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 784) >> 7) * 16384) + ((((((int)threadIdx.x) >> 4) + 1) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 128) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 114688))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1008) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 7) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1120) >> 7) * 16384) + ((((int)blockIdx.x) & 3) * 32)) + ((int)threadIdx.x)) + 384))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 324)))
    );
    int src_bytes = (((1 <= (((((int)blockIdx.x) >> 4) * 7) + (((int)threadIdx.x) / 36))) && (1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + ((((int)threadIdx.x) % 36) >> 2)))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + ((((int)threadIdx.x) % 36) >> 2)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + (((((int)threadIdx.x) % 36) >> 2) * 128)) + (((int)threadIdx.x) & 3)) - 3708))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 112) / 36) * 36) + ((((((int)threadIdx.x) >> 2) + 1) % 9) * 4)) + (((int)threadIdx.x) & 3)) + 324)))
    );
    int src_bytes = ((1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 1) % 9))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 1) % 9)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + (((((int)threadIdx.x) + 112) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((((int)threadIdx.x) >> 2) + 1) % 9) * 128)) + (((int)threadIdx.x) & 3)) - 3708))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 100) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 224) / 36) * 36) + ((((((int)threadIdx.x) >> 2) + 2) % 9) * 4)) + (((int)threadIdx.x) & 3)) + 324)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 4) * 7) + ((((int)threadIdx.x) + 224) / 36)) < 29) && (1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 2) % 9)))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 2) % 9)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + (((((int)threadIdx.x) + 224) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((((int)threadIdx.x) >> 2) + 2) % 9) * 128)) + (((int)threadIdx.x) & 3)) - 3708))), "n"(4), "r"(src_bytes)
    );
  }
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1152)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 128) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1264)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 112) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 7) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1376)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 224) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 3) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1488)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 336) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 5) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1600)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 448) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 2) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1712)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 560) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 3) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1824)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 672) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 1) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1936)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 784) >> 7) * 16384) + ((((((int)threadIdx.x) >> 4) + 1) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 512))), "n"(4)
    );
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 128) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 115200))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 1008) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 7) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 512))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2272)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1120) >> 7) * 16384) + ((((int)blockIdx.x) & 3) * 32)) + ((int)threadIdx.x)) + 896))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 648)))
    );
    int src_bytes = (((1 <= (((((int)blockIdx.x) >> 4) * 7) + (((int)threadIdx.x) / 36))) && (1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + ((((int)threadIdx.x) % 36) >> 2)))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + ((((int)threadIdx.x) % 36) >> 2)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + (((((int)threadIdx.x) % 36) >> 2) * 128)) + (((int)threadIdx.x) & 3)) - 3704))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 112) / 36) * 36) + ((((((int)threadIdx.x) >> 2) + 1) % 9) * 4)) + (((int)threadIdx.x) & 3)) + 648)))
    );
    int src_bytes = ((1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 1) % 9))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 1) % 9)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + (((((int)threadIdx.x) + 112) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((((int)threadIdx.x) >> 2) + 1) % 9) * 128)) + (((int)threadIdx.x) & 3)) - 3704))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 100) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 224) / 36) * 36) + ((((((int)threadIdx.x) >> 2) + 2) % 9) * 4)) + (((int)threadIdx.x) & 3)) + 648)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 4) * 7) + ((((int)threadIdx.x) + 224) / 36)) < 29) && (1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 2) % 9)))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 2) % 9)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 25088) + (((((int)threadIdx.x) + 224) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((((int)threadIdx.x) >> 2) + 2) % 9) * 128)) + (((int)threadIdx.x) & 3)) - 3704))), "n"(4), "r"(src_bytes)
    );
  }
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2304)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 128) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2416)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 112) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 7) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2528)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 224) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 3) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2640)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 336) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 5) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2752)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 448) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 2) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2864)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 560) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 3) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2976)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 672) >> 7) * 16384) + ((((((int)threadIdx.x) >> 5) + 1) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3088)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 784) >> 7) * 16384) + ((((((int)threadIdx.x) >> 4) + 1) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3200)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 128) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 115712))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3312)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 1008) >> 7) * 16384) + (((((((int)threadIdx.x) >> 4) + 7) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1024))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3424)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 1120) >> 7) * 16384) + ((((int)blockIdx.x) & 3) * 32)) + ((int)threadIdx.x)) + 1408))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 29; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 324) + ((int)threadIdx.x))))
    );
    int src_bytes = (((1 <= (((((int)blockIdx.x) >> 4) * 7) + (((int)threadIdx.x) / 36))) && (1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + ((((int)threadIdx.x) % 36) >> 2)))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + ((((int)threadIdx.x) % 36) >> 2)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + (((((int)threadIdx.x) % 36) >> 2) * 128)) + (rh_0_rw_0_rc_0_fused * 4)) + (((int)threadIdx.x) & 3)) - 3700))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((rh_0_rw_0_rc_0_fused + 3) & 3) * 324) + (((((int)threadIdx.x) + 112) / 36) * 36)) + ((((((int)threadIdx.x) >> 2) + 1) % 9) * 4)) + (((int)threadIdx.x) & 3))))
    );
    int src_bytes = ((1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 1) % 9))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 1) % 9)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) >> 4) * 25088) + (((((int)threadIdx.x) + 112) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((((int)threadIdx.x) >> 2) + 1) % 9) * 128)) + (rh_0_rw_0_rc_0_fused * 4)) + (((int)threadIdx.x) & 3)) - 3700))), "n"(4), "r"(src_bytes)
    );
  }
    if (((int)threadIdx.x) < 100) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((rh_0_rw_0_rc_0_fused + 3) & 3) * 324) + (((((int)threadIdx.x) + 224) / 36) * 36)) + ((((((int)threadIdx.x) >> 2) + 2) % 9) * 4)) + (((int)threadIdx.x) & 3))))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 4) * 7) + ((((int)threadIdx.x) + 224) / 36)) < 29) && (1 <= ((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 2) % 9)))) && (((((((int)blockIdx.x) & 15) >> 2) * 7) + (((((int)threadIdx.x) >> 2) + 2) % 9)) < 29)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) >> 4) * 25088) + (((((int)threadIdx.x) + 224) / 36) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((((int)threadIdx.x) >> 2) + 2) % 9) * 128)) + (rh_0_rw_0_rc_0_fused * 4)) + (((int)threadIdx.x) & 3)) - 3700))), "n"(4), "r"(src_bytes)
    );
  }
    }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 512) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((((int)threadIdx.x) + 112) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + (((((((int)threadIdx.x) >> 4) + 7) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((((int)threadIdx.x) + 224) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + ((((((int)threadIdx.x) >> 5) + 3) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 336)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((((int)threadIdx.x) + 336) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + (((((((int)threadIdx.x) >> 4) + 5) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((((int)threadIdx.x) + 448) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + ((((((int)threadIdx.x) >> 5) + 2) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((((int)threadIdx.x) + 560) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + (((((((int)threadIdx.x) >> 4) + 3) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((((int)threadIdx.x) + 672) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + ((((((int)threadIdx.x) >> 5) + 1) & 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 784)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((((int)threadIdx.x) + 784) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + ((((((int)threadIdx.x) >> 4) + 1) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 512) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 116224))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 1008)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((((int)threadIdx.x) + 1008) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + (((((((int)threadIdx.x) >> 4) + 7) & 7) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 1536))), "n"(4)
    );
  }
    if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 1152) + ((int)threadIdx.x)) + 1120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((((int)threadIdx.x) + 1120) >> 7) * 16384) + (rh_0_rw_0_rc_0_fused * 512)) + ((((int)blockIdx.x) & 3) * 32)) + ((int)threadIdx.x)) + 1920))), "n"(4)
    );
  }
    }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36))] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 4)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 8)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 12)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 16)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 20)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 24)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36))] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1024)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1025)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1056)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1057)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1088)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1089)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1120)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 324) + ((((int)threadIdx.x) >> 4) * 36)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 1152) + ((((int)threadIdx.x) & 15) * 2)) + 1121)]));
  }
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 344)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 348)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1152)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 344)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 348)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 352)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1280)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 344)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 348)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 352)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 356)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1408)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 344)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 348)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1153)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 344)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 348)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 352)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1281)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 344)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 348)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 352)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 356)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1409)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 345)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 349)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1184)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 345)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 349)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 353)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1312)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 345)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 349)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 353)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 357)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1440)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 345)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 349)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1185)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 345)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 349)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 353)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1313)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 345)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 349)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 353)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 357)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1441)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 346)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 350)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1216)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 346)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 350)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 354)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1344)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 346)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 350)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 354)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 358)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1472)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 346)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 350)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1217)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 346)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 350)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 354)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1345)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 346)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 350)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 354)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 358)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1473)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 347)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 351)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1248)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 347)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 351)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 355)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1376)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 347)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 351)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 355)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 359)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1504)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 347)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 351)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1249)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 347)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 351)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 355)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1377)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 347)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 351)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 355)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 359)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1505)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 360)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 364)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 368)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 372)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1536)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 364)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 368)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 372)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 388)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1664)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 368)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 372)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 388)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 392)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1792)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 360)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 364)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 368)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 372)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1537)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 364)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 368)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 372)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 388)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1665)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 368)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 372)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 376)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 380)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 384)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 388)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 392)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1793)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 361)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 365)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 369)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 373)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1568)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 365)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 369)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 373)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 389)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1696)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 369)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 373)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 389)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 393)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1824)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 361)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 365)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 369)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 373)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1569)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 365)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 369)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 373)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 389)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1697)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 369)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 373)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 377)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 381)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 385)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 389)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 393)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1825)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 362)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 366)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 370)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 374)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1600)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 366)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 370)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 374)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 390)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1728)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 370)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 374)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 390)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 394)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1856)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 362)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 366)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 370)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 374)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1601)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 366)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 370)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 374)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 390)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1729)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 370)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 374)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 378)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 382)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 386)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 390)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 394)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1857)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 363)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 367)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 371)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 375)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1632)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 367)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 371)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 375)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 391)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1760)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 371)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 375)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 391)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 395)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1888)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 363)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 367)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 371)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 375)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1633)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 367)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 371)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 375)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 391)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1761)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 371)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 375)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 379)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 383)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 387)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 391)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 395)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1889)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 396)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 400)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 408)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 412)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 416)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 420)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1920)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 400)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 408)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 412)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 416)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 420)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 424)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 408)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 412)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 416)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 420)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 424)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 428)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 396)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 400)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 408)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 412)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 416)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 420)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1921)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 400)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 408)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 412)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 416)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 420)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 424)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 404)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 408)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 412)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 416)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 420)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 424)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 428)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 397)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 401)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 409)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 413)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 417)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 421)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1952)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 401)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 409)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 413)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 417)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 421)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 425)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 409)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 413)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 417)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 421)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 425)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 429)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 397)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 401)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 409)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 413)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 417)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 421)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1953)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 401)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 409)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 413)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 417)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 421)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 425)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 405)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 409)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 413)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 417)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 421)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 425)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 429)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 398)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 402)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 410)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 414)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 418)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 422)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1984)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 402)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 410)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 414)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 418)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 422)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 426)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 410)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 414)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 418)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 422)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 426)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 430)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 398)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 402)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 410)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 414)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 418)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 422)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1985)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 402)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 410)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 414)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 418)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 422)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 426)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 406)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 410)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 414)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 418)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 422)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 426)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 430)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 399)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 403)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 411)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 415)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 419)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 423)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2016)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 403)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 411)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 415)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 419)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 423)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 427)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 411)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 415)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 419)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 423)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 427)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 431)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 399)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 403)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 411)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 415)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 419)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 423)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2017)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 403)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 411)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 415)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 419)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 423)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 427)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 407)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 411)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 415)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 419)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 423)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 427)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 431)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 676)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 676)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 680)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 648)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 652)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 676)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 656)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 660)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 664)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 668)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 672)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 676)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 680)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 677)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 677)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 681)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 649)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 653)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 677)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 657)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 661)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 665)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 669)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 673)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 677)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 681)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 678)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 678)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 682)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 650)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 654)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 678)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 658)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 662)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 666)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 670)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 674)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 678)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 682)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 679)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 679)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 683)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 651)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 655)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 679)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 659)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 663)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 667)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 671)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 675)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 679)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 683)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 684)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 688)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 688)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 716)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 684)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 688)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 688)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 692)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 696)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 700)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 704)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 708)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 712)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 716)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 685)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 689)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 689)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 717)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 685)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 689)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 689)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 693)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 697)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 701)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 705)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 709)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 713)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 717)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 686)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 690)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 690)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 718)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 686)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 690)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 690)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 694)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 698)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 702)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 706)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 710)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 714)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 718)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 687)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 691)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 691)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 719)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 687)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 691)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 691)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 695)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 699)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 703)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 707)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 711)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 715)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 719)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 720)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3072)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3200)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3328)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 720)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3073)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 724)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3201)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 728)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 732)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 736)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 740)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 744)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 748)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 752)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3329)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 721)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3104)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3232)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 721)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3105)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 725)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3233)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 729)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 733)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 737)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 741)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 745)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 749)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 753)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3361)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 722)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3136)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3264)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3392)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 722)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3137)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 726)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3265)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 730)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 734)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 738)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 742)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 746)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 750)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 754)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3393)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 723)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3168)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3296)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 723)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3169)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 727)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3297)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 731)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 735)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 739)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 743)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 747)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 751)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 755)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3425)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 972)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 984)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 988)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 992)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 996)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3456)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 984)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 988)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 992)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 996)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1000)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3584)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 984)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 988)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 992)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 996)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1000)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1004)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3712)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 972)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 984)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 988)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 992)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 996)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3457)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 976)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 984)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 988)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 992)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 996)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1000)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3585)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 980)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 984)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 988)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 992)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 996)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1000)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1004)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3713)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 973)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 985)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 989)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 993)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 997)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3488)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 985)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 989)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 993)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 997)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1001)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3616)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 985)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 989)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 993)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 997)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1001)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1005)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 973)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 985)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 989)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 993)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 997)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3489)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 977)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 985)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 989)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 993)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 997)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1001)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3617)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 981)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 985)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 989)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 993)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 997)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1001)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1005)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3745)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 974)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 986)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 990)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 994)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 998)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3520)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 986)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 990)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 994)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 998)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1002)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3648)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 986)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 990)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 994)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 998)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1002)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1006)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3776)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 974)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 986)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 990)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 994)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 998)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3521)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 978)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 986)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 990)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 994)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 998)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1002)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3649)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 982)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 986)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 990)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 994)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 998)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1002)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1006)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3777)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 975)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 987)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 991)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 995)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 999)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3552)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 987)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 991)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 995)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 999)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1003)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3680)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 987)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 991)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 995)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 999)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1003)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1007)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 975)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 987)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 991)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 995)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 999)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3553)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 979)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 987)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 991)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 995)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 999)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1003)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3681)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 983)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 987)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 991)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 995)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 999)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1003)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1007)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3809)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1008)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1012)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1016)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1020)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3840)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1012)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1016)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1020)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1036)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3968)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1016)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1020)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1036)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4096)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1008)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1012)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1016)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1020)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3841)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1012)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1016)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1020)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1036)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3969)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1016)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1020)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1024)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1028)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1032)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1036)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1040)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4097)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1009)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1013)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1017)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1021)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3872)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1013)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1017)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1021)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1037)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4000)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1017)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1021)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1037)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1009)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1013)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1017)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1021)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3873)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1013)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1017)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1021)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1037)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4001)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1017)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1021)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1025)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1029)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1033)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1037)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1041)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4129)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1010)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1014)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1018)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1022)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3904)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1014)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1018)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1022)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1038)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4032)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1018)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1022)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1038)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1010)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1014)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1018)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1022)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3905)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1014)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1018)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1022)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1038)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4033)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1018)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1022)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1026)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1030)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1034)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1038)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1042)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4161)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1011)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1015)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1019)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1023)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3936)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1015)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1019)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1023)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1039)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4064)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1019)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1023)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1039)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1011)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1015)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1019)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1023)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3937)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1015)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1019)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1023)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1039)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4065)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1019)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1023)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1027)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1031)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1035)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1039)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1043)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4193)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1072)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1072)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1076)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1044)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4225)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1048)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1072)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4353)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1052)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1056)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1060)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1064)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1068)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1072)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1076)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4481)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1073)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1073)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1077)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1045)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4257)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1049)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1073)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4385)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1053)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1057)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1061)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1065)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1069)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1073)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1077)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4513)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1074)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1074)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1078)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1046)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4289)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1050)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1074)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4417)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1054)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1058)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1062)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1066)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1070)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1074)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1078)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4545)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1075)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1075)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1079)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1047)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4321)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1051)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1075)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4449)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1055)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1059)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1063)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1067)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1071)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1075)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 36) + 1079)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 4577)]));
  conv2d_nhwc[((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 128)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 129)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 256)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 257)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 384)] = conv2d_nhwc_local[6];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 385)] = conv2d_nhwc_local[7];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 512)] = conv2d_nhwc_local[8];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 513)] = conv2d_nhwc_local[9];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 640)] = conv2d_nhwc_local[10];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 641)] = conv2d_nhwc_local[11];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 768)] = conv2d_nhwc_local[12];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 25088) + ((((int)threadIdx.x) >> 4) * 3584)) + (((((int)blockIdx.x) & 15) >> 2) * 896)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 769)] = conv2d_nhwc_local[13];
}


