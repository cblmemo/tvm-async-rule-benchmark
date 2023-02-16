
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
  __shared__ float PadInput_shared[4704];
  __shared__ float weight_shared[3072];
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

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) * 2)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 3584))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 7168))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 10752))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 14336))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 17920))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 21504))), "n"(8)
    );
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
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 112) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 14336))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 336) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 28672))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 560) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 43008))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) + 784) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 57344))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 16) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1008)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) + 63504))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1568)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 32))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 3616))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2016)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 7200))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2240)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 10784))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2464)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 14368))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2688)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 17952))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 2) + 2912)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)threadIdx.x) >> 4) * 512) + ((((int)threadIdx.x) & 15) * 2)) + 21536))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 65536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1136)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 112) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 65536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1248)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 79872))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1360)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 336) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 65536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1472)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 94208))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1584)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 560) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 65536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1696)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 108544))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1808)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((((((int)threadIdx.x) + 784) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 65536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1920)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 2048) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 122880))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 16) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2032)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) + 129040))), "n"(4)
    );
  }
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 14; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1568) + (((int)threadIdx.x) * 2))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)threadIdx.x) >> 4) * 512) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 64))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1568) + (((int)threadIdx.x) * 2)) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)threadIdx.x) >> 4) * 512) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 3648))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1568) + (((int)threadIdx.x) * 2)) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)threadIdx.x) >> 4) * 512) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 7232))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1568) + (((int)threadIdx.x) * 2)) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)threadIdx.x) >> 4) * 512) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10816))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1568) + (((int)threadIdx.x) * 2)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)threadIdx.x) >> 4) * 512) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 14400))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1568) + (((int)threadIdx.x) * 2)) + 1120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)threadIdx.x) >> 4) * 512) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 17984))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1568) + (((int)threadIdx.x) * 2)) + 1344)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)threadIdx.x) >> 4) * 512) + (rh_0_rw_0_rc_0_fused * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 21568))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + ((((int)threadIdx.x) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 131072))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + (((((int)threadIdx.x) + 112) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 131072))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + ((((int)threadIdx.x) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 145408))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 336)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + (((((int)threadIdx.x) + 336) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 131072))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + ((((int)threadIdx.x) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 159744))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + (((((int)threadIdx.x) + 560) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 131072))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + ((((int)threadIdx.x) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 174080))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 784)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + (((((int)threadIdx.x) + 784) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)) + 131072))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 65536) + ((((int)threadIdx.x) >> 5) * 2048)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 188416))), "n"(4)
    );
  }
    if (((int)threadIdx.x) < 16) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + ((int)threadIdx.x)) + 1008)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + ((((rh_0_rw_0_rc_0_fused * 65536) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 194576))), "n"(4)
    );
  }
    }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224))] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 32)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 64)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 96)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 128)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 160)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 192)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2))]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 32)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 64)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 96)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 128)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 160)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 192)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 224)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 256)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 288)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 320)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 352)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 384)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 416)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 448)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 480)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 1)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 33)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 65)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 97)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 129)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 161)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 193)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 225)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 257)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 289)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 321)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 353)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 385)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 417)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 449)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 481)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 512)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 544)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 576)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 608)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 640)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 672)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 704)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 736)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 768)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 800)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 832)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 864)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 896)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 928)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 960)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 992)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 513)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 545)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 577)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 609)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 641)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 673)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 705)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 737)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 769)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 801)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 833)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 865)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 897)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 929)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 961)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1568) + ((((int)threadIdx.x) >> 4) * 224)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + ((((int)threadIdx.x) & 15) * 2)) + 993)]));
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3168)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3169)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3170)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3171)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3172)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3173)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3174)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3175)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3168)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3169)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3170)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3171)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3172)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3173)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3174)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3175)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3232)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3233)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3234)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3235)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3236)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3237)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3238)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3239)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3240)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3241)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3242)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3243)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3244)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3245)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3246)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3247)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3232)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3233)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3234)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3235)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3236)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3237)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3238)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3239)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3240)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3241)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3242)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3243)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3244)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3245)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3246)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3247)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3264)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3265)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3266)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3267)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3268)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3269)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3270)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3271)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3272)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3273)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3274)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3275)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3276)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3277)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3278)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3279)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3264)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3265)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3266)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3267)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3268)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3269)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3270)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3271)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3272)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3273)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3274)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3275)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3276)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3277)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3278)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3279)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3296)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3297)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3298)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3299)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3300)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3301)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3302)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3303)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3304)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3305)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3306)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3307)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3308)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3309)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3310)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3311)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3296)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3297)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3298)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3299)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3300)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3301)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3302)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3303)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3304)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3305)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3306)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3307)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3308)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3309)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3310)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3311)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2048)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2080)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2112)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2144)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2176)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2208)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2240)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2272)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2304)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2336)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2368)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2400)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2432)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2464)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2496)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2528)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3328)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2049)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3329)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2081)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3330)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2113)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3331)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2145)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3332)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2177)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3333)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2209)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3334)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2241)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3335)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2273)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3336)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2305)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3337)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2337)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3338)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2369)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3339)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2401)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3340)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2433)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3341)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2465)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3342)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2497)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3343)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2529)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3160)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3161)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3162)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3163)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3164)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3165)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3166)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3167)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3160)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3161)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3162)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3163)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3164)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3165)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3166)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3167)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3224)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3225)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3226)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3227)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3228)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3229)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3230)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3231)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3224)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3225)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3226)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3227)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3228)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3229)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3230)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3231)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3248)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3249)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3250)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3251)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3252)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3253)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3254)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3255)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3256)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3257)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3258)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3259)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3260)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3261)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3262)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3263)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3248)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3249)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3250)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3251)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3252)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3253)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3254)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3255)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3256)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3257)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3258)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3259)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3260)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3261)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3262)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3263)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3280)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3281)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3282)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3283)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3284)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3285)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3286)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3287)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3288)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3289)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3290)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3291)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3292)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3293)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3294)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3295)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3280)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3281)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3282)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3283)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3284)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3285)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3286)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3287)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3288)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3289)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3290)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3291)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3292)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3293)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3294)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3295)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3312)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3313)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3314)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3315)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3316)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3317)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3318)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3319)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3320)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3321)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3322)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3323)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3312)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3313)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3314)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3315)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3316)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3317)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3318)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3319)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3320)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3321)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3322)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3323)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3324)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3325)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3326)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3327)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3344)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2560)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3345)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2592)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3346)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2624)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3347)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2656)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3348)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2688)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3349)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2720)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3350)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2752)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3351)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2784)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3352)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2816)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3353)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2848)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3354)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2880)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3355)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2912)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3356)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2944)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3357)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2976)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3358)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3008)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3359)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3040)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3344)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2561)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3345)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2593)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3346)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2625)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3347)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2657)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3348)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2689)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3349)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2721)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3350)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2753)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3351)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2785)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3352)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2817)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3353)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2849)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3354)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2881)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3355)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2913)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3356)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2945)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3357)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 2977)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3358)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3009)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3359)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 3041)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((int)threadIdx.x) >> 4) * 224)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 1)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 2)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 4)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 5)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 6)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 7)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 8)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 9)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 10)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 11)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 12)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 13)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 14)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 15)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((int)threadIdx.x) >> 4) * 224)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 1)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 2)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 3)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 4)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 5)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 6)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 7)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 8)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 9)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 10)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 11)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 12)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 13)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 14)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 15)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 32)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 33)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 34)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 35)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 36)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 37)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 38)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 39)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 40)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 41)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 42)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 43)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 44)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 45)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 46)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 47)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 32)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 33)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 34)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 35)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 36)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 37)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 38)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 39)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 40)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 41)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 42)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 43)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 44)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 45)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 46)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 47)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 64)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 65)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 66)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 67)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 68)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 69)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 70)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 71)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 72)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 73)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 74)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 75)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 76)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 77)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 78)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 79)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 64)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 65)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 66)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 67)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 68)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 69)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 70)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 71)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 72)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 73)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 74)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 75)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 76)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 77)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 78)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 79)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 96)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 97)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 98)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 99)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 100)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 101)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 102)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 103)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 104)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 105)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 106)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 107)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 108)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 109)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 110)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 111)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 96)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 97)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 98)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 99)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 100)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 101)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 102)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 103)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 104)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 105)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 106)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 107)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 108)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 109)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 110)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 111)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 128)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 128)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 129)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 130)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 131)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 132)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 133)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 134)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 135)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 136)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 137)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 138)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 139)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 140)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 141)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 142)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 143)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 160)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 161)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 162)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 163)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 164)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 165)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 166)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 167)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 168)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 169)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 170)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 171)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 172)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 173)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 174)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 175)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 160)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 161)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 162)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 163)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 164)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 165)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 166)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 167)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 168)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 169)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 170)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 171)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 172)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 173)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 174)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 175)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 192)] * weight_shared[((((int)threadIdx.x) & 15) * 2)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 32)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 64)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 96)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 128)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 160)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 192)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 224)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 256)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 288)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 320)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 352)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 384)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 416)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 448)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 480)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 192)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 1)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 193)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 33)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 194)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 65)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 195)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 97)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 196)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 129)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 197)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 161)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 198)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 193)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 199)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 225)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 200)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 257)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 201)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 289)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 202)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 321)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 203)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 353)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 204)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 385)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 205)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 417)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 206)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 449)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 207)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 481)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 16)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 17)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 18)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 19)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 20)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 21)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 22)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 23)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 24)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 25)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 26)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 27)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 28)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 29)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 30)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 31)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 16)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 17)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 18)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 19)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 20)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 21)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 22)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 23)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 24)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 25)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 26)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 27)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 28)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 29)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 30)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 31)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 48)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 49)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 50)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 51)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 52)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 53)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 54)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 55)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 56)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 57)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 58)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 59)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 60)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 61)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 62)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 63)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 48)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 49)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 50)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 51)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 52)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 53)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 54)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 55)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 56)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 57)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 58)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 59)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 60)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 61)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 62)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 63)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 80)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 81)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 82)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 83)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 84)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 85)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 86)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 87)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 88)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 89)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 90)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 91)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 92)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 93)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 94)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 95)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 80)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 81)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 82)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 83)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 84)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 85)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 86)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 87)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 88)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 89)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 90)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 91)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 92)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 93)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 94)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 95)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 112)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 113)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 114)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 115)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 116)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 117)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 118)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 119)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 120)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 121)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 122)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 123)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 124)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 125)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 126)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 127)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 112)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 113)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 114)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 115)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 116)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 117)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 118)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 119)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 120)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 121)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 122)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 123)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 124)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 125)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 126)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 127)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 144)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 145)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 146)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 147)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 148)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 149)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 150)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 151)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 152)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 153)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 154)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 155)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 156)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 157)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 158)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 159)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 176)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 177)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 178)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 179)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 180)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 181)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 182)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 183)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 184)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 185)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 186)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 187)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 188)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 189)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 190)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 191)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 512)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 544)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 576)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 608)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 640)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 672)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 704)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 736)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 768)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 800)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 832)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 864)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 896)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 928)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 960)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 992)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 208)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 513)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 209)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 545)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 210)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 577)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 211)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 609)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 212)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 641)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 213)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 673)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 214)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 705)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 215)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 737)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 216)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 769)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 217)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 801)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 218)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 833)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 219)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 865)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 220)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 897)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 221)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 929)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 222)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 961)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 224) + 223)] * weight_shared[(((((int)threadIdx.x) & 15) * 2) + 993)]));
  conv2d_nhwc[((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 2048)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 2049)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 4096)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 4097)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 6144)] = conv2d_nhwc_local[6];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 6145)] = conv2d_nhwc_local[7];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 8192)] = conv2d_nhwc_local[8];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 8193)] = conv2d_nhwc_local[9];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10240)] = conv2d_nhwc_local[10];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 10241)] = conv2d_nhwc_local[11];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 12288)] = conv2d_nhwc_local[12];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 4) * 14336) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 12289)] = conv2d_nhwc_local[13];
}


