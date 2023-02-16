
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
extern "C" __global__ void __launch_bounds__(64) main_kernel0(float* __restrict__ inputs, float* __restrict__ weight, float* __restrict__ conv2d_nhwc) {
  float conv2d_nhwc_local[7];
  __shared__ float PadInput_shared[1152];
  __shared__ float weight_shared[9216];
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
      : "l"((void *)(PadInput_shared + ((int)threadIdx.x)))
    );
    int src_bytes = ((16 <= ((int)blockIdx.x)) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((int)threadIdx.x) >> 3)))) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)threadIdx.x) >> 3) * 256)) + (((int)threadIdx.x) & 7)) - 3840))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 64)))
    );
    int src_bytes = (((1 <= (((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 64) / 72))) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 8) % 9)))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 8) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 64) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 8) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3840))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 128)))
    );
    int src_bytes = ((1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 7) % 9))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 7) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 128) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 7) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3840))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 192)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 192) / 72)) < 15) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 6) % 9)))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 6) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 192) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 6) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3840))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 256)))
    );
    int src_bytes = (((((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 256) / 72)) < 15) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((int)threadIdx.x) >> 3)) < 10)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 256) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)threadIdx.x) >> 3) * 256)) + (((int)threadIdx.x) & 7)) - 2560))), "n"(4), "r"(src_bytes)
    );
  }
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
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 65536))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 131072))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 196608))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 262144))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 327680))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 393216))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 458752))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 524288))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 288)))
    );
    int src_bytes = ((16 <= ((int)blockIdx.x)) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((int)threadIdx.x) >> 3)))) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)threadIdx.x) >> 3) * 256)) + (((int)threadIdx.x) & 7)) - 3832))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 352)))
    );
    int src_bytes = (((1 <= (((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 64) / 72))) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 8) % 9)))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 8) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 64) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 8) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3832))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 416)))
    );
    int src_bytes = ((1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 7) % 9))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 7) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 128) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 7) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3832))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 480)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 192) / 72)) < 15) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 6) % 9)))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 6) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 192) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 6) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3832))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 544)))
    );
    int src_bytes = (((((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 256) / 72)) < 15) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((int)threadIdx.x) >> 3)) < 10)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 256) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)threadIdx.x) >> 3) * 256)) + (((int)threadIdx.x) & 7)) - 2552))), "n"(4), "r"(src_bytes)
    );
  }
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2048))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 67584))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 133120))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 198656))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 264192))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 329728))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 395264))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 460800))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 526336))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 576)))
    );
    int src_bytes = ((16 <= ((int)blockIdx.x)) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((int)threadIdx.x) >> 3)))) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)threadIdx.x) >> 3) * 256)) + (((int)threadIdx.x) & 7)) - 3824))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 640)))
    );
    int src_bytes = (((1 <= (((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 64) / 72))) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 8) % 9)))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 8) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 64) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 8) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3824))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 704)))
    );
    int src_bytes = ((1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 7) % 9))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 7) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 128) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 7) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3824))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 768)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 192) / 72)) < 15) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 6) % 9)))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 6) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 192) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 6) % 9) * 256)) + (((int)threadIdx.x) & 7)) - 3824))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 832)))
    );
    int src_bytes = (((((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 256) / 72)) < 15) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((int)threadIdx.x) >> 3)) < 10)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 256) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)threadIdx.x) >> 3) * 256)) + (((int)threadIdx.x) & 7)) - 2544))), "n"(4), "r"(src_bytes)
    );
  }
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 4096))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 69632))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 135168))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 200704))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 266240))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 331776))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 6144)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 397312))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 6400)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 462848))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 6656)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 256) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 528384))), "n"(16)
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
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 288) + ((int)threadIdx.x))))
    );
    int src_bytes = ((16 <= ((int)blockIdx.x)) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((int)threadIdx.x) >> 3)))) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)threadIdx.x) >> 3) * 256)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 3816))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 288) + ((int)threadIdx.x)) + 64)))
    );
    int src_bytes = (((1 <= (((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 64) / 72))) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 8) % 9)))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 8) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 64) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 8) % 9) * 256)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 3816))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 288) + ((int)threadIdx.x)) + 128)))
    );
    int src_bytes = ((1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 7) % 9))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 7) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 128) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 7) % 9) * 256)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 3816))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 288) + ((int)threadIdx.x)) + 192)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 192) / 72)) < 15) && (1 <= ((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 6) % 9)))) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((((int)threadIdx.x) >> 3) + 6) % 9)) < 15)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 192) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((((int)threadIdx.x) >> 3) + 6) % 9) * 256)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 3816))), "n"(4), "r"(src_bytes)
    );
  }
    if (((int)threadIdx.x) < 32) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 288) + ((int)threadIdx.x)) + 256)))
    );
    int src_bytes = (((((((int)blockIdx.x) >> 4) * 2) + ((((int)threadIdx.x) + 256) / 72)) < 15) && (((((((int)blockIdx.x) & 15) >> 3) * 7) + (((int)threadIdx.x) >> 3)) < 10)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) >> 4) * 7168) + (((((int)threadIdx.x) + 256) / 72) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)threadIdx.x) >> 3) * 256)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 2536))), "n"(4), "r"(src_bytes)
    );
  }
    }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 6144))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 71680))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 137216))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 202752))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 268288))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 333824))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 399360))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 464896))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 2048)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 2048) + ((((int)threadIdx.x) >> 3) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 530432))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72))] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31))]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 32)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 256)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 288)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 512)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 544)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 8)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31))]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 32)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 256)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 288)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 512)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 544)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 16)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31))]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 32)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 256)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 288)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 512)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 544)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 24)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31))]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 32)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 256)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 288)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 512)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 544)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 32)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31))]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 32)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 256)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 288)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 512)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 544)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 40)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31))]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 32)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 256)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 288)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 512)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 544)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 48)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31))]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 32)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 256)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 288)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 512)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 544)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 64)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 96)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 320)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 352)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 576)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 608)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 64)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 96)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 320)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 576)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 608)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 64)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 96)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 352)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 608)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 64)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 96)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 320)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 352)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 576)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 608)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 64)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 96)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 352)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 576)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 608)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 64)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 96)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 320)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 352)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 576)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 608)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 64)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 96)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 352)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 608)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 128)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 160)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 384)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 416)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 640)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 672)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 128)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 160)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 384)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 416)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 640)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 672)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 128)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 160)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 384)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 416)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 640)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 672)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 128)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 160)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 384)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 416)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 640)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 672)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 128)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 160)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 384)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 416)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 640)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 672)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 128)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 160)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 384)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 416)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 640)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 672)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 128)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 160)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 384)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 416)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 640)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 672)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 192)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 224)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 448)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 480)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 704)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 736)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 192)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 224)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 448)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 704)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 736)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 192)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 224)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 448)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 480)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 704)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 736)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 192)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 224)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 448)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 480)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 704)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 736)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 192)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 224)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 448)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 480)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 704)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 736)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 192)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 224)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 448)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 704)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 736)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 192)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 224)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 448)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 480)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 704)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 736)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 768)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 800)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1024)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1056)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1280)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1312)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 768)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 800)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1024)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1056)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1280)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1312)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 768)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 800)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1024)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1056)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1280)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1312)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 768)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 800)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1024)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1056)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1280)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1312)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 768)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 800)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1024)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1056)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1280)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1312)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 768)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 800)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1024)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1056)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1280)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1312)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 768)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 800)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1024)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1056)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1280)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1312)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 832)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 864)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1088)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1120)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1344)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1376)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 832)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 864)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1088)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1120)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1344)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1376)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 832)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 864)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1088)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1120)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1344)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1376)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 832)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 864)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1088)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1120)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1344)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1376)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 832)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 864)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1088)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1120)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1344)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1376)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 832)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 864)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1088)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1120)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1344)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1376)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 832)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 864)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1088)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1120)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1344)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1376)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 896)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 928)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1152)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1184)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1408)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1440)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 896)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 928)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1152)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1184)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1408)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1440)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 896)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 928)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1152)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1184)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1408)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1440)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 896)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 928)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1152)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1184)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1408)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1440)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 896)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 928)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1152)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1184)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1408)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1440)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 896)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 928)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1152)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1184)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1408)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1440)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 896)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 928)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1152)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1184)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1408)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1440)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 960)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 992)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1216)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1248)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1472)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1504)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 960)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 992)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1216)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1248)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1472)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1504)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 960)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 992)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1216)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1248)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1472)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1504)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 960)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 992)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1216)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1248)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1472)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1504)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 960)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 992)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1216)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1248)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1472)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1504)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 960)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 992)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1216)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1248)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1472)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1504)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 960)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 992)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1216)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1248)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1472)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1504)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1536)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1568)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1792)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1824)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2048)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2080)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1536)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1568)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1792)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1824)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2048)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2080)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1536)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1568)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1792)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1824)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2048)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2080)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1536)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1568)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1792)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1824)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2048)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2080)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1536)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1568)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1792)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1824)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2048)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2080)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1536)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1568)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1792)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1824)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2048)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2080)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1536)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1568)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1792)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1824)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2048)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2080)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1600)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1632)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1856)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1888)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2112)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2144)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1600)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1632)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1856)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1888)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2112)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2144)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1600)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1632)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1856)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1888)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2112)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2144)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1600)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1632)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1856)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1888)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2112)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2144)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1600)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1632)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1856)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1888)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2112)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2144)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1600)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1632)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1856)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1888)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2112)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2144)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1600)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1632)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1856)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1888)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2112)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2144)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1664)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1696)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1920)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1952)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2176)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2208)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1664)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1696)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1920)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1952)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2176)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2208)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1664)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1696)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1920)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1952)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2176)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2208)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1664)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1696)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1920)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1952)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2176)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2208)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1664)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1696)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1920)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1952)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2176)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2208)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1664)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1696)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1920)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1952)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2176)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2208)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1664)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1696)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1920)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1952)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2176)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2208)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1728)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1760)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1984)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2016)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2240)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2272)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1728)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1760)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1984)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2016)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2240)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2272)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1728)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1760)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1984)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2016)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2240)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2272)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1728)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1760)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1984)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2016)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2240)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2272)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1728)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1760)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1984)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2016)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2240)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2272)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1728)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1760)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1984)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2016)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2240)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2272)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1728)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1760)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 1984)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2016)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2240)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 288) + ((((int)threadIdx.x) >> 5) * 72)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + (((int)threadIdx.x) & 31)) + 2272)]));
  }
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 288)] * weight_shared[((((int)threadIdx.x) & 31) + 2304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 289)] * weight_shared[((((int)threadIdx.x) & 31) + 2336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 296)] * weight_shared[((((int)threadIdx.x) & 31) + 2560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 297)] * weight_shared[((((int)threadIdx.x) & 31) + 2592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 304)] * weight_shared[((((int)threadIdx.x) & 31) + 2816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 305)] * weight_shared[((((int)threadIdx.x) & 31) + 2848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 296)] * weight_shared[((((int)threadIdx.x) & 31) + 2304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 297)] * weight_shared[((((int)threadIdx.x) & 31) + 2336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 304)] * weight_shared[((((int)threadIdx.x) & 31) + 2560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 305)] * weight_shared[((((int)threadIdx.x) & 31) + 2592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 312)] * weight_shared[((((int)threadIdx.x) & 31) + 2816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 313)] * weight_shared[((((int)threadIdx.x) & 31) + 2848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 304)] * weight_shared[((((int)threadIdx.x) & 31) + 2304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 305)] * weight_shared[((((int)threadIdx.x) & 31) + 2336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 312)] * weight_shared[((((int)threadIdx.x) & 31) + 2560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 313)] * weight_shared[((((int)threadIdx.x) & 31) + 2592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 320)] * weight_shared[((((int)threadIdx.x) & 31) + 2816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 321)] * weight_shared[((((int)threadIdx.x) & 31) + 2848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 312)] * weight_shared[((((int)threadIdx.x) & 31) + 2304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 313)] * weight_shared[((((int)threadIdx.x) & 31) + 2336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 320)] * weight_shared[((((int)threadIdx.x) & 31) + 2560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 321)] * weight_shared[((((int)threadIdx.x) & 31) + 2592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 328)] * weight_shared[((((int)threadIdx.x) & 31) + 2816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 329)] * weight_shared[((((int)threadIdx.x) & 31) + 2848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 320)] * weight_shared[((((int)threadIdx.x) & 31) + 2304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 321)] * weight_shared[((((int)threadIdx.x) & 31) + 2336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 328)] * weight_shared[((((int)threadIdx.x) & 31) + 2560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 329)] * weight_shared[((((int)threadIdx.x) & 31) + 2592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 336)] * weight_shared[((((int)threadIdx.x) & 31) + 2816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 337)] * weight_shared[((((int)threadIdx.x) & 31) + 2848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 328)] * weight_shared[((((int)threadIdx.x) & 31) + 2304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 329)] * weight_shared[((((int)threadIdx.x) & 31) + 2336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 336)] * weight_shared[((((int)threadIdx.x) & 31) + 2560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 337)] * weight_shared[((((int)threadIdx.x) & 31) + 2592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 344)] * weight_shared[((((int)threadIdx.x) & 31) + 2816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 345)] * weight_shared[((((int)threadIdx.x) & 31) + 2848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 336)] * weight_shared[((((int)threadIdx.x) & 31) + 2304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 337)] * weight_shared[((((int)threadIdx.x) & 31) + 2336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 344)] * weight_shared[((((int)threadIdx.x) & 31) + 2560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 345)] * weight_shared[((((int)threadIdx.x) & 31) + 2592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 352)] * weight_shared[((((int)threadIdx.x) & 31) + 2816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 353)] * weight_shared[((((int)threadIdx.x) & 31) + 2848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 290)] * weight_shared[((((int)threadIdx.x) & 31) + 2368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 291)] * weight_shared[((((int)threadIdx.x) & 31) + 2400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 298)] * weight_shared[((((int)threadIdx.x) & 31) + 2624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 299)] * weight_shared[((((int)threadIdx.x) & 31) + 2656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 306)] * weight_shared[((((int)threadIdx.x) & 31) + 2880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 307)] * weight_shared[((((int)threadIdx.x) & 31) + 2912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 298)] * weight_shared[((((int)threadIdx.x) & 31) + 2368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 299)] * weight_shared[((((int)threadIdx.x) & 31) + 2400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 306)] * weight_shared[((((int)threadIdx.x) & 31) + 2624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 307)] * weight_shared[((((int)threadIdx.x) & 31) + 2656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 314)] * weight_shared[((((int)threadIdx.x) & 31) + 2880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 315)] * weight_shared[((((int)threadIdx.x) & 31) + 2912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 306)] * weight_shared[((((int)threadIdx.x) & 31) + 2368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 307)] * weight_shared[((((int)threadIdx.x) & 31) + 2400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 314)] * weight_shared[((((int)threadIdx.x) & 31) + 2624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 315)] * weight_shared[((((int)threadIdx.x) & 31) + 2656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 322)] * weight_shared[((((int)threadIdx.x) & 31) + 2880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 323)] * weight_shared[((((int)threadIdx.x) & 31) + 2912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 314)] * weight_shared[((((int)threadIdx.x) & 31) + 2368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 315)] * weight_shared[((((int)threadIdx.x) & 31) + 2400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 322)] * weight_shared[((((int)threadIdx.x) & 31) + 2624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 323)] * weight_shared[((((int)threadIdx.x) & 31) + 2656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 330)] * weight_shared[((((int)threadIdx.x) & 31) + 2880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 331)] * weight_shared[((((int)threadIdx.x) & 31) + 2912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 322)] * weight_shared[((((int)threadIdx.x) & 31) + 2368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 323)] * weight_shared[((((int)threadIdx.x) & 31) + 2400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 330)] * weight_shared[((((int)threadIdx.x) & 31) + 2624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 331)] * weight_shared[((((int)threadIdx.x) & 31) + 2656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 338)] * weight_shared[((((int)threadIdx.x) & 31) + 2880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 339)] * weight_shared[((((int)threadIdx.x) & 31) + 2912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 330)] * weight_shared[((((int)threadIdx.x) & 31) + 2368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 331)] * weight_shared[((((int)threadIdx.x) & 31) + 2400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 338)] * weight_shared[((((int)threadIdx.x) & 31) + 2624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 339)] * weight_shared[((((int)threadIdx.x) & 31) + 2656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 346)] * weight_shared[((((int)threadIdx.x) & 31) + 2880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 347)] * weight_shared[((((int)threadIdx.x) & 31) + 2912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 338)] * weight_shared[((((int)threadIdx.x) & 31) + 2368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 339)] * weight_shared[((((int)threadIdx.x) & 31) + 2400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 346)] * weight_shared[((((int)threadIdx.x) & 31) + 2624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 347)] * weight_shared[((((int)threadIdx.x) & 31) + 2656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 354)] * weight_shared[((((int)threadIdx.x) & 31) + 2880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 355)] * weight_shared[((((int)threadIdx.x) & 31) + 2912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 292)] * weight_shared[((((int)threadIdx.x) & 31) + 2432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 293)] * weight_shared[((((int)threadIdx.x) & 31) + 2464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 300)] * weight_shared[((((int)threadIdx.x) & 31) + 2688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 301)] * weight_shared[((((int)threadIdx.x) & 31) + 2720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 308)] * weight_shared[((((int)threadIdx.x) & 31) + 2944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 309)] * weight_shared[((((int)threadIdx.x) & 31) + 2976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 300)] * weight_shared[((((int)threadIdx.x) & 31) + 2432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 301)] * weight_shared[((((int)threadIdx.x) & 31) + 2464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 308)] * weight_shared[((((int)threadIdx.x) & 31) + 2688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 309)] * weight_shared[((((int)threadIdx.x) & 31) + 2720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 316)] * weight_shared[((((int)threadIdx.x) & 31) + 2944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 317)] * weight_shared[((((int)threadIdx.x) & 31) + 2976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 308)] * weight_shared[((((int)threadIdx.x) & 31) + 2432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 309)] * weight_shared[((((int)threadIdx.x) & 31) + 2464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 316)] * weight_shared[((((int)threadIdx.x) & 31) + 2688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 317)] * weight_shared[((((int)threadIdx.x) & 31) + 2720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 324)] * weight_shared[((((int)threadIdx.x) & 31) + 2944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 325)] * weight_shared[((((int)threadIdx.x) & 31) + 2976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 316)] * weight_shared[((((int)threadIdx.x) & 31) + 2432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 317)] * weight_shared[((((int)threadIdx.x) & 31) + 2464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 324)] * weight_shared[((((int)threadIdx.x) & 31) + 2688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 325)] * weight_shared[((((int)threadIdx.x) & 31) + 2720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 332)] * weight_shared[((((int)threadIdx.x) & 31) + 2944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 333)] * weight_shared[((((int)threadIdx.x) & 31) + 2976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 324)] * weight_shared[((((int)threadIdx.x) & 31) + 2432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 325)] * weight_shared[((((int)threadIdx.x) & 31) + 2464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 332)] * weight_shared[((((int)threadIdx.x) & 31) + 2688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 333)] * weight_shared[((((int)threadIdx.x) & 31) + 2720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 340)] * weight_shared[((((int)threadIdx.x) & 31) + 2944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 341)] * weight_shared[((((int)threadIdx.x) & 31) + 2976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 332)] * weight_shared[((((int)threadIdx.x) & 31) + 2432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 333)] * weight_shared[((((int)threadIdx.x) & 31) + 2464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 340)] * weight_shared[((((int)threadIdx.x) & 31) + 2688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 341)] * weight_shared[((((int)threadIdx.x) & 31) + 2720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 348)] * weight_shared[((((int)threadIdx.x) & 31) + 2944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 349)] * weight_shared[((((int)threadIdx.x) & 31) + 2976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 340)] * weight_shared[((((int)threadIdx.x) & 31) + 2432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 341)] * weight_shared[((((int)threadIdx.x) & 31) + 2464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 348)] * weight_shared[((((int)threadIdx.x) & 31) + 2688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 349)] * weight_shared[((((int)threadIdx.x) & 31) + 2720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 356)] * weight_shared[((((int)threadIdx.x) & 31) + 2944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 357)] * weight_shared[((((int)threadIdx.x) & 31) + 2976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 294)] * weight_shared[((((int)threadIdx.x) & 31) + 2496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 295)] * weight_shared[((((int)threadIdx.x) & 31) + 2528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 302)] * weight_shared[((((int)threadIdx.x) & 31) + 2752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 303)] * weight_shared[((((int)threadIdx.x) & 31) + 2784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 310)] * weight_shared[((((int)threadIdx.x) & 31) + 3008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 311)] * weight_shared[((((int)threadIdx.x) & 31) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 302)] * weight_shared[((((int)threadIdx.x) & 31) + 2496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 303)] * weight_shared[((((int)threadIdx.x) & 31) + 2528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 310)] * weight_shared[((((int)threadIdx.x) & 31) + 2752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 311)] * weight_shared[((((int)threadIdx.x) & 31) + 2784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 318)] * weight_shared[((((int)threadIdx.x) & 31) + 3008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 319)] * weight_shared[((((int)threadIdx.x) & 31) + 3040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 310)] * weight_shared[((((int)threadIdx.x) & 31) + 2496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 311)] * weight_shared[((((int)threadIdx.x) & 31) + 2528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 318)] * weight_shared[((((int)threadIdx.x) & 31) + 2752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 319)] * weight_shared[((((int)threadIdx.x) & 31) + 2784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 326)] * weight_shared[((((int)threadIdx.x) & 31) + 3008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 327)] * weight_shared[((((int)threadIdx.x) & 31) + 3040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 318)] * weight_shared[((((int)threadIdx.x) & 31) + 2496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 319)] * weight_shared[((((int)threadIdx.x) & 31) + 2528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 326)] * weight_shared[((((int)threadIdx.x) & 31) + 2752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 327)] * weight_shared[((((int)threadIdx.x) & 31) + 2784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 334)] * weight_shared[((((int)threadIdx.x) & 31) + 3008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 335)] * weight_shared[((((int)threadIdx.x) & 31) + 3040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 326)] * weight_shared[((((int)threadIdx.x) & 31) + 2496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 327)] * weight_shared[((((int)threadIdx.x) & 31) + 2528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 334)] * weight_shared[((((int)threadIdx.x) & 31) + 2752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 335)] * weight_shared[((((int)threadIdx.x) & 31) + 2784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 342)] * weight_shared[((((int)threadIdx.x) & 31) + 3008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 343)] * weight_shared[((((int)threadIdx.x) & 31) + 3040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 334)] * weight_shared[((((int)threadIdx.x) & 31) + 2496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 335)] * weight_shared[((((int)threadIdx.x) & 31) + 2528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 342)] * weight_shared[((((int)threadIdx.x) & 31) + 2752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 343)] * weight_shared[((((int)threadIdx.x) & 31) + 2784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 350)] * weight_shared[((((int)threadIdx.x) & 31) + 3008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 351)] * weight_shared[((((int)threadIdx.x) & 31) + 3040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 342)] * weight_shared[((((int)threadIdx.x) & 31) + 2496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 343)] * weight_shared[((((int)threadIdx.x) & 31) + 2528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 350)] * weight_shared[((((int)threadIdx.x) & 31) + 2752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 351)] * weight_shared[((((int)threadIdx.x) & 31) + 2784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 358)] * weight_shared[((((int)threadIdx.x) & 31) + 3008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 359)] * weight_shared[((((int)threadIdx.x) & 31) + 3040)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 360)] * weight_shared[((((int)threadIdx.x) & 31) + 3072)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 361)] * weight_shared[((((int)threadIdx.x) & 31) + 3104)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 368)] * weight_shared[((((int)threadIdx.x) & 31) + 3328)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 369)] * weight_shared[((((int)threadIdx.x) & 31) + 3360)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 376)] * weight_shared[((((int)threadIdx.x) & 31) + 3584)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 377)] * weight_shared[((((int)threadIdx.x) & 31) + 3616)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 368)] * weight_shared[((((int)threadIdx.x) & 31) + 3072)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 369)] * weight_shared[((((int)threadIdx.x) & 31) + 3104)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 376)] * weight_shared[((((int)threadIdx.x) & 31) + 3328)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 377)] * weight_shared[((((int)threadIdx.x) & 31) + 3360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 384)] * weight_shared[((((int)threadIdx.x) & 31) + 3584)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 385)] * weight_shared[((((int)threadIdx.x) & 31) + 3616)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 376)] * weight_shared[((((int)threadIdx.x) & 31) + 3072)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 377)] * weight_shared[((((int)threadIdx.x) & 31) + 3104)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 384)] * weight_shared[((((int)threadIdx.x) & 31) + 3328)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 385)] * weight_shared[((((int)threadIdx.x) & 31) + 3360)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 392)] * weight_shared[((((int)threadIdx.x) & 31) + 3584)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 393)] * weight_shared[((((int)threadIdx.x) & 31) + 3616)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 384)] * weight_shared[((((int)threadIdx.x) & 31) + 3072)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 385)] * weight_shared[((((int)threadIdx.x) & 31) + 3104)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 392)] * weight_shared[((((int)threadIdx.x) & 31) + 3328)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 393)] * weight_shared[((((int)threadIdx.x) & 31) + 3360)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 400)] * weight_shared[((((int)threadIdx.x) & 31) + 3584)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 401)] * weight_shared[((((int)threadIdx.x) & 31) + 3616)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 392)] * weight_shared[((((int)threadIdx.x) & 31) + 3072)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 393)] * weight_shared[((((int)threadIdx.x) & 31) + 3104)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 400)] * weight_shared[((((int)threadIdx.x) & 31) + 3328)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 401)] * weight_shared[((((int)threadIdx.x) & 31) + 3360)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 408)] * weight_shared[((((int)threadIdx.x) & 31) + 3584)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 409)] * weight_shared[((((int)threadIdx.x) & 31) + 3616)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 400)] * weight_shared[((((int)threadIdx.x) & 31) + 3072)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 401)] * weight_shared[((((int)threadIdx.x) & 31) + 3104)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 408)] * weight_shared[((((int)threadIdx.x) & 31) + 3328)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 409)] * weight_shared[((((int)threadIdx.x) & 31) + 3360)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 416)] * weight_shared[((((int)threadIdx.x) & 31) + 3584)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 417)] * weight_shared[((((int)threadIdx.x) & 31) + 3616)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 408)] * weight_shared[((((int)threadIdx.x) & 31) + 3072)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 409)] * weight_shared[((((int)threadIdx.x) & 31) + 3104)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 416)] * weight_shared[((((int)threadIdx.x) & 31) + 3328)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 417)] * weight_shared[((((int)threadIdx.x) & 31) + 3360)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 424)] * weight_shared[((((int)threadIdx.x) & 31) + 3584)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 425)] * weight_shared[((((int)threadIdx.x) & 31) + 3616)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 362)] * weight_shared[((((int)threadIdx.x) & 31) + 3136)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 363)] * weight_shared[((((int)threadIdx.x) & 31) + 3168)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 370)] * weight_shared[((((int)threadIdx.x) & 31) + 3392)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 371)] * weight_shared[((((int)threadIdx.x) & 31) + 3424)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 378)] * weight_shared[((((int)threadIdx.x) & 31) + 3648)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 379)] * weight_shared[((((int)threadIdx.x) & 31) + 3680)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 370)] * weight_shared[((((int)threadIdx.x) & 31) + 3136)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 371)] * weight_shared[((((int)threadIdx.x) & 31) + 3168)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 378)] * weight_shared[((((int)threadIdx.x) & 31) + 3392)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 379)] * weight_shared[((((int)threadIdx.x) & 31) + 3424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 386)] * weight_shared[((((int)threadIdx.x) & 31) + 3648)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 387)] * weight_shared[((((int)threadIdx.x) & 31) + 3680)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 378)] * weight_shared[((((int)threadIdx.x) & 31) + 3136)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 379)] * weight_shared[((((int)threadIdx.x) & 31) + 3168)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 386)] * weight_shared[((((int)threadIdx.x) & 31) + 3392)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 387)] * weight_shared[((((int)threadIdx.x) & 31) + 3424)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 394)] * weight_shared[((((int)threadIdx.x) & 31) + 3648)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 395)] * weight_shared[((((int)threadIdx.x) & 31) + 3680)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 386)] * weight_shared[((((int)threadIdx.x) & 31) + 3136)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 387)] * weight_shared[((((int)threadIdx.x) & 31) + 3168)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 394)] * weight_shared[((((int)threadIdx.x) & 31) + 3392)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 395)] * weight_shared[((((int)threadIdx.x) & 31) + 3424)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 402)] * weight_shared[((((int)threadIdx.x) & 31) + 3648)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 403)] * weight_shared[((((int)threadIdx.x) & 31) + 3680)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 394)] * weight_shared[((((int)threadIdx.x) & 31) + 3136)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 395)] * weight_shared[((((int)threadIdx.x) & 31) + 3168)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 402)] * weight_shared[((((int)threadIdx.x) & 31) + 3392)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 403)] * weight_shared[((((int)threadIdx.x) & 31) + 3424)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 410)] * weight_shared[((((int)threadIdx.x) & 31) + 3648)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 411)] * weight_shared[((((int)threadIdx.x) & 31) + 3680)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 402)] * weight_shared[((((int)threadIdx.x) & 31) + 3136)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 403)] * weight_shared[((((int)threadIdx.x) & 31) + 3168)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 410)] * weight_shared[((((int)threadIdx.x) & 31) + 3392)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 411)] * weight_shared[((((int)threadIdx.x) & 31) + 3424)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 418)] * weight_shared[((((int)threadIdx.x) & 31) + 3648)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 419)] * weight_shared[((((int)threadIdx.x) & 31) + 3680)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 410)] * weight_shared[((((int)threadIdx.x) & 31) + 3136)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 411)] * weight_shared[((((int)threadIdx.x) & 31) + 3168)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 418)] * weight_shared[((((int)threadIdx.x) & 31) + 3392)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 419)] * weight_shared[((((int)threadIdx.x) & 31) + 3424)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 426)] * weight_shared[((((int)threadIdx.x) & 31) + 3648)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 427)] * weight_shared[((((int)threadIdx.x) & 31) + 3680)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 364)] * weight_shared[((((int)threadIdx.x) & 31) + 3200)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 365)] * weight_shared[((((int)threadIdx.x) & 31) + 3232)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 372)] * weight_shared[((((int)threadIdx.x) & 31) + 3456)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 373)] * weight_shared[((((int)threadIdx.x) & 31) + 3488)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 380)] * weight_shared[((((int)threadIdx.x) & 31) + 3712)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 381)] * weight_shared[((((int)threadIdx.x) & 31) + 3744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 372)] * weight_shared[((((int)threadIdx.x) & 31) + 3200)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 373)] * weight_shared[((((int)threadIdx.x) & 31) + 3232)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 380)] * weight_shared[((((int)threadIdx.x) & 31) + 3456)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 381)] * weight_shared[((((int)threadIdx.x) & 31) + 3488)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 388)] * weight_shared[((((int)threadIdx.x) & 31) + 3712)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 389)] * weight_shared[((((int)threadIdx.x) & 31) + 3744)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 380)] * weight_shared[((((int)threadIdx.x) & 31) + 3200)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 381)] * weight_shared[((((int)threadIdx.x) & 31) + 3232)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 388)] * weight_shared[((((int)threadIdx.x) & 31) + 3456)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 389)] * weight_shared[((((int)threadIdx.x) & 31) + 3488)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 396)] * weight_shared[((((int)threadIdx.x) & 31) + 3712)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 397)] * weight_shared[((((int)threadIdx.x) & 31) + 3744)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 388)] * weight_shared[((((int)threadIdx.x) & 31) + 3200)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 389)] * weight_shared[((((int)threadIdx.x) & 31) + 3232)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 396)] * weight_shared[((((int)threadIdx.x) & 31) + 3456)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 397)] * weight_shared[((((int)threadIdx.x) & 31) + 3488)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 404)] * weight_shared[((((int)threadIdx.x) & 31) + 3712)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 405)] * weight_shared[((((int)threadIdx.x) & 31) + 3744)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 396)] * weight_shared[((((int)threadIdx.x) & 31) + 3200)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 397)] * weight_shared[((((int)threadIdx.x) & 31) + 3232)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 404)] * weight_shared[((((int)threadIdx.x) & 31) + 3456)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 405)] * weight_shared[((((int)threadIdx.x) & 31) + 3488)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 412)] * weight_shared[((((int)threadIdx.x) & 31) + 3712)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 413)] * weight_shared[((((int)threadIdx.x) & 31) + 3744)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 404)] * weight_shared[((((int)threadIdx.x) & 31) + 3200)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 405)] * weight_shared[((((int)threadIdx.x) & 31) + 3232)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 412)] * weight_shared[((((int)threadIdx.x) & 31) + 3456)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 413)] * weight_shared[((((int)threadIdx.x) & 31) + 3488)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 420)] * weight_shared[((((int)threadIdx.x) & 31) + 3712)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 421)] * weight_shared[((((int)threadIdx.x) & 31) + 3744)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 412)] * weight_shared[((((int)threadIdx.x) & 31) + 3200)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 413)] * weight_shared[((((int)threadIdx.x) & 31) + 3232)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 420)] * weight_shared[((((int)threadIdx.x) & 31) + 3456)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 421)] * weight_shared[((((int)threadIdx.x) & 31) + 3488)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 428)] * weight_shared[((((int)threadIdx.x) & 31) + 3712)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 429)] * weight_shared[((((int)threadIdx.x) & 31) + 3744)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 366)] * weight_shared[((((int)threadIdx.x) & 31) + 3264)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 367)] * weight_shared[((((int)threadIdx.x) & 31) + 3296)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 374)] * weight_shared[((((int)threadIdx.x) & 31) + 3520)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 375)] * weight_shared[((((int)threadIdx.x) & 31) + 3552)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 382)] * weight_shared[((((int)threadIdx.x) & 31) + 3776)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 383)] * weight_shared[((((int)threadIdx.x) & 31) + 3808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 374)] * weight_shared[((((int)threadIdx.x) & 31) + 3264)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 375)] * weight_shared[((((int)threadIdx.x) & 31) + 3296)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 382)] * weight_shared[((((int)threadIdx.x) & 31) + 3520)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 383)] * weight_shared[((((int)threadIdx.x) & 31) + 3552)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 390)] * weight_shared[((((int)threadIdx.x) & 31) + 3776)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 391)] * weight_shared[((((int)threadIdx.x) & 31) + 3808)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 382)] * weight_shared[((((int)threadIdx.x) & 31) + 3264)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 383)] * weight_shared[((((int)threadIdx.x) & 31) + 3296)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 390)] * weight_shared[((((int)threadIdx.x) & 31) + 3520)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 391)] * weight_shared[((((int)threadIdx.x) & 31) + 3552)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 398)] * weight_shared[((((int)threadIdx.x) & 31) + 3776)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 399)] * weight_shared[((((int)threadIdx.x) & 31) + 3808)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 390)] * weight_shared[((((int)threadIdx.x) & 31) + 3264)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 391)] * weight_shared[((((int)threadIdx.x) & 31) + 3296)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 398)] * weight_shared[((((int)threadIdx.x) & 31) + 3520)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 399)] * weight_shared[((((int)threadIdx.x) & 31) + 3552)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 406)] * weight_shared[((((int)threadIdx.x) & 31) + 3776)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 407)] * weight_shared[((((int)threadIdx.x) & 31) + 3808)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 398)] * weight_shared[((((int)threadIdx.x) & 31) + 3264)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 399)] * weight_shared[((((int)threadIdx.x) & 31) + 3296)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 406)] * weight_shared[((((int)threadIdx.x) & 31) + 3520)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 407)] * weight_shared[((((int)threadIdx.x) & 31) + 3552)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 414)] * weight_shared[((((int)threadIdx.x) & 31) + 3776)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 415)] * weight_shared[((((int)threadIdx.x) & 31) + 3808)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 406)] * weight_shared[((((int)threadIdx.x) & 31) + 3264)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 407)] * weight_shared[((((int)threadIdx.x) & 31) + 3296)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 414)] * weight_shared[((((int)threadIdx.x) & 31) + 3520)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 415)] * weight_shared[((((int)threadIdx.x) & 31) + 3552)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 422)] * weight_shared[((((int)threadIdx.x) & 31) + 3776)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 423)] * weight_shared[((((int)threadIdx.x) & 31) + 3808)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 414)] * weight_shared[((((int)threadIdx.x) & 31) + 3264)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 415)] * weight_shared[((((int)threadIdx.x) & 31) + 3296)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 422)] * weight_shared[((((int)threadIdx.x) & 31) + 3520)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 423)] * weight_shared[((((int)threadIdx.x) & 31) + 3552)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 430)] * weight_shared[((((int)threadIdx.x) & 31) + 3776)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 431)] * weight_shared[((((int)threadIdx.x) & 31) + 3808)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 432)] * weight_shared[((((int)threadIdx.x) & 31) + 3840)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 433)] * weight_shared[((((int)threadIdx.x) & 31) + 3872)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 440)] * weight_shared[((((int)threadIdx.x) & 31) + 4096)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 441)] * weight_shared[((((int)threadIdx.x) & 31) + 4128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 448)] * weight_shared[((((int)threadIdx.x) & 31) + 4352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 449)] * weight_shared[((((int)threadIdx.x) & 31) + 4384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 440)] * weight_shared[((((int)threadIdx.x) & 31) + 3840)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 441)] * weight_shared[((((int)threadIdx.x) & 31) + 3872)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 448)] * weight_shared[((((int)threadIdx.x) & 31) + 4096)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 449)] * weight_shared[((((int)threadIdx.x) & 31) + 4128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 456)] * weight_shared[((((int)threadIdx.x) & 31) + 4352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 457)] * weight_shared[((((int)threadIdx.x) & 31) + 4384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 448)] * weight_shared[((((int)threadIdx.x) & 31) + 3840)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 449)] * weight_shared[((((int)threadIdx.x) & 31) + 3872)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 456)] * weight_shared[((((int)threadIdx.x) & 31) + 4096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 457)] * weight_shared[((((int)threadIdx.x) & 31) + 4128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 464)] * weight_shared[((((int)threadIdx.x) & 31) + 4352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 465)] * weight_shared[((((int)threadIdx.x) & 31) + 4384)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 456)] * weight_shared[((((int)threadIdx.x) & 31) + 3840)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 457)] * weight_shared[((((int)threadIdx.x) & 31) + 3872)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 464)] * weight_shared[((((int)threadIdx.x) & 31) + 4096)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 465)] * weight_shared[((((int)threadIdx.x) & 31) + 4128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 472)] * weight_shared[((((int)threadIdx.x) & 31) + 4352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 473)] * weight_shared[((((int)threadIdx.x) & 31) + 4384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 464)] * weight_shared[((((int)threadIdx.x) & 31) + 3840)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 465)] * weight_shared[((((int)threadIdx.x) & 31) + 3872)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 472)] * weight_shared[((((int)threadIdx.x) & 31) + 4096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 473)] * weight_shared[((((int)threadIdx.x) & 31) + 4128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 480)] * weight_shared[((((int)threadIdx.x) & 31) + 4352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 481)] * weight_shared[((((int)threadIdx.x) & 31) + 4384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 472)] * weight_shared[((((int)threadIdx.x) & 31) + 3840)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 473)] * weight_shared[((((int)threadIdx.x) & 31) + 3872)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 480)] * weight_shared[((((int)threadIdx.x) & 31) + 4096)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 481)] * weight_shared[((((int)threadIdx.x) & 31) + 4128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 488)] * weight_shared[((((int)threadIdx.x) & 31) + 4352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 489)] * weight_shared[((((int)threadIdx.x) & 31) + 4384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 480)] * weight_shared[((((int)threadIdx.x) & 31) + 3840)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 481)] * weight_shared[((((int)threadIdx.x) & 31) + 3872)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 488)] * weight_shared[((((int)threadIdx.x) & 31) + 4096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 489)] * weight_shared[((((int)threadIdx.x) & 31) + 4128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 496)] * weight_shared[((((int)threadIdx.x) & 31) + 4352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 497)] * weight_shared[((((int)threadIdx.x) & 31) + 4384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 434)] * weight_shared[((((int)threadIdx.x) & 31) + 3904)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 435)] * weight_shared[((((int)threadIdx.x) & 31) + 3936)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 442)] * weight_shared[((((int)threadIdx.x) & 31) + 4160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 443)] * weight_shared[((((int)threadIdx.x) & 31) + 4192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 450)] * weight_shared[((((int)threadIdx.x) & 31) + 4416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 451)] * weight_shared[((((int)threadIdx.x) & 31) + 4448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 442)] * weight_shared[((((int)threadIdx.x) & 31) + 3904)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 443)] * weight_shared[((((int)threadIdx.x) & 31) + 3936)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 450)] * weight_shared[((((int)threadIdx.x) & 31) + 4160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 451)] * weight_shared[((((int)threadIdx.x) & 31) + 4192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 458)] * weight_shared[((((int)threadIdx.x) & 31) + 4416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 459)] * weight_shared[((((int)threadIdx.x) & 31) + 4448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 450)] * weight_shared[((((int)threadIdx.x) & 31) + 3904)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 451)] * weight_shared[((((int)threadIdx.x) & 31) + 3936)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 458)] * weight_shared[((((int)threadIdx.x) & 31) + 4160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 459)] * weight_shared[((((int)threadIdx.x) & 31) + 4192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 466)] * weight_shared[((((int)threadIdx.x) & 31) + 4416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 467)] * weight_shared[((((int)threadIdx.x) & 31) + 4448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 458)] * weight_shared[((((int)threadIdx.x) & 31) + 3904)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 459)] * weight_shared[((((int)threadIdx.x) & 31) + 3936)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 466)] * weight_shared[((((int)threadIdx.x) & 31) + 4160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 467)] * weight_shared[((((int)threadIdx.x) & 31) + 4192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 474)] * weight_shared[((((int)threadIdx.x) & 31) + 4416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 475)] * weight_shared[((((int)threadIdx.x) & 31) + 4448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 466)] * weight_shared[((((int)threadIdx.x) & 31) + 3904)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 467)] * weight_shared[((((int)threadIdx.x) & 31) + 3936)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 474)] * weight_shared[((((int)threadIdx.x) & 31) + 4160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 475)] * weight_shared[((((int)threadIdx.x) & 31) + 4192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 482)] * weight_shared[((((int)threadIdx.x) & 31) + 4416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 483)] * weight_shared[((((int)threadIdx.x) & 31) + 4448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 474)] * weight_shared[((((int)threadIdx.x) & 31) + 3904)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 475)] * weight_shared[((((int)threadIdx.x) & 31) + 3936)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 482)] * weight_shared[((((int)threadIdx.x) & 31) + 4160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 483)] * weight_shared[((((int)threadIdx.x) & 31) + 4192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 490)] * weight_shared[((((int)threadIdx.x) & 31) + 4416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 491)] * weight_shared[((((int)threadIdx.x) & 31) + 4448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 482)] * weight_shared[((((int)threadIdx.x) & 31) + 3904)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 483)] * weight_shared[((((int)threadIdx.x) & 31) + 3936)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 490)] * weight_shared[((((int)threadIdx.x) & 31) + 4160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 491)] * weight_shared[((((int)threadIdx.x) & 31) + 4192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 498)] * weight_shared[((((int)threadIdx.x) & 31) + 4416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 499)] * weight_shared[((((int)threadIdx.x) & 31) + 4448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 436)] * weight_shared[((((int)threadIdx.x) & 31) + 3968)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 437)] * weight_shared[((((int)threadIdx.x) & 31) + 4000)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 444)] * weight_shared[((((int)threadIdx.x) & 31) + 4224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 445)] * weight_shared[((((int)threadIdx.x) & 31) + 4256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 452)] * weight_shared[((((int)threadIdx.x) & 31) + 4480)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 453)] * weight_shared[((((int)threadIdx.x) & 31) + 4512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 444)] * weight_shared[((((int)threadIdx.x) & 31) + 3968)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 445)] * weight_shared[((((int)threadIdx.x) & 31) + 4000)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 452)] * weight_shared[((((int)threadIdx.x) & 31) + 4224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 453)] * weight_shared[((((int)threadIdx.x) & 31) + 4256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 460)] * weight_shared[((((int)threadIdx.x) & 31) + 4480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 461)] * weight_shared[((((int)threadIdx.x) & 31) + 4512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 452)] * weight_shared[((((int)threadIdx.x) & 31) + 3968)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 453)] * weight_shared[((((int)threadIdx.x) & 31) + 4000)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 460)] * weight_shared[((((int)threadIdx.x) & 31) + 4224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 461)] * weight_shared[((((int)threadIdx.x) & 31) + 4256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 468)] * weight_shared[((((int)threadIdx.x) & 31) + 4480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 469)] * weight_shared[((((int)threadIdx.x) & 31) + 4512)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 460)] * weight_shared[((((int)threadIdx.x) & 31) + 3968)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 461)] * weight_shared[((((int)threadIdx.x) & 31) + 4000)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 468)] * weight_shared[((((int)threadIdx.x) & 31) + 4224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 469)] * weight_shared[((((int)threadIdx.x) & 31) + 4256)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 476)] * weight_shared[((((int)threadIdx.x) & 31) + 4480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 477)] * weight_shared[((((int)threadIdx.x) & 31) + 4512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 468)] * weight_shared[((((int)threadIdx.x) & 31) + 3968)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 469)] * weight_shared[((((int)threadIdx.x) & 31) + 4000)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 476)] * weight_shared[((((int)threadIdx.x) & 31) + 4224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 477)] * weight_shared[((((int)threadIdx.x) & 31) + 4256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 484)] * weight_shared[((((int)threadIdx.x) & 31) + 4480)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 485)] * weight_shared[((((int)threadIdx.x) & 31) + 4512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 476)] * weight_shared[((((int)threadIdx.x) & 31) + 3968)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 477)] * weight_shared[((((int)threadIdx.x) & 31) + 4000)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 484)] * weight_shared[((((int)threadIdx.x) & 31) + 4224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 485)] * weight_shared[((((int)threadIdx.x) & 31) + 4256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 492)] * weight_shared[((((int)threadIdx.x) & 31) + 4480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 493)] * weight_shared[((((int)threadIdx.x) & 31) + 4512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 484)] * weight_shared[((((int)threadIdx.x) & 31) + 3968)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 485)] * weight_shared[((((int)threadIdx.x) & 31) + 4000)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 492)] * weight_shared[((((int)threadIdx.x) & 31) + 4224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 493)] * weight_shared[((((int)threadIdx.x) & 31) + 4256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 500)] * weight_shared[((((int)threadIdx.x) & 31) + 4480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 501)] * weight_shared[((((int)threadIdx.x) & 31) + 4512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 438)] * weight_shared[((((int)threadIdx.x) & 31) + 4032)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 439)] * weight_shared[((((int)threadIdx.x) & 31) + 4064)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 446)] * weight_shared[((((int)threadIdx.x) & 31) + 4288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 447)] * weight_shared[((((int)threadIdx.x) & 31) + 4320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 454)] * weight_shared[((((int)threadIdx.x) & 31) + 4544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 455)] * weight_shared[((((int)threadIdx.x) & 31) + 4576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 446)] * weight_shared[((((int)threadIdx.x) & 31) + 4032)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 447)] * weight_shared[((((int)threadIdx.x) & 31) + 4064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 454)] * weight_shared[((((int)threadIdx.x) & 31) + 4288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 455)] * weight_shared[((((int)threadIdx.x) & 31) + 4320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 462)] * weight_shared[((((int)threadIdx.x) & 31) + 4544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 463)] * weight_shared[((((int)threadIdx.x) & 31) + 4576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 454)] * weight_shared[((((int)threadIdx.x) & 31) + 4032)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 455)] * weight_shared[((((int)threadIdx.x) & 31) + 4064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 462)] * weight_shared[((((int)threadIdx.x) & 31) + 4288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 463)] * weight_shared[((((int)threadIdx.x) & 31) + 4320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 470)] * weight_shared[((((int)threadIdx.x) & 31) + 4544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 471)] * weight_shared[((((int)threadIdx.x) & 31) + 4576)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 462)] * weight_shared[((((int)threadIdx.x) & 31) + 4032)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 463)] * weight_shared[((((int)threadIdx.x) & 31) + 4064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 470)] * weight_shared[((((int)threadIdx.x) & 31) + 4288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 471)] * weight_shared[((((int)threadIdx.x) & 31) + 4320)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 478)] * weight_shared[((((int)threadIdx.x) & 31) + 4544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 479)] * weight_shared[((((int)threadIdx.x) & 31) + 4576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 470)] * weight_shared[((((int)threadIdx.x) & 31) + 4032)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 471)] * weight_shared[((((int)threadIdx.x) & 31) + 4064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 478)] * weight_shared[((((int)threadIdx.x) & 31) + 4288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 479)] * weight_shared[((((int)threadIdx.x) & 31) + 4320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 486)] * weight_shared[((((int)threadIdx.x) & 31) + 4544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 487)] * weight_shared[((((int)threadIdx.x) & 31) + 4576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 478)] * weight_shared[((((int)threadIdx.x) & 31) + 4032)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 479)] * weight_shared[((((int)threadIdx.x) & 31) + 4064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 486)] * weight_shared[((((int)threadIdx.x) & 31) + 4288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 487)] * weight_shared[((((int)threadIdx.x) & 31) + 4320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 494)] * weight_shared[((((int)threadIdx.x) & 31) + 4544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 495)] * weight_shared[((((int)threadIdx.x) & 31) + 4576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 486)] * weight_shared[((((int)threadIdx.x) & 31) + 4032)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 487)] * weight_shared[((((int)threadIdx.x) & 31) + 4064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 494)] * weight_shared[((((int)threadIdx.x) & 31) + 4288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 495)] * weight_shared[((((int)threadIdx.x) & 31) + 4320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 502)] * weight_shared[((((int)threadIdx.x) & 31) + 4544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 503)] * weight_shared[((((int)threadIdx.x) & 31) + 4576)]));
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 576)] * weight_shared[((((int)threadIdx.x) & 31) + 4608)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 577)] * weight_shared[((((int)threadIdx.x) & 31) + 4640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 584)] * weight_shared[((((int)threadIdx.x) & 31) + 4864)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 585)] * weight_shared[((((int)threadIdx.x) & 31) + 4896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 592)] * weight_shared[((((int)threadIdx.x) & 31) + 5120)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 593)] * weight_shared[((((int)threadIdx.x) & 31) + 5152)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 584)] * weight_shared[((((int)threadIdx.x) & 31) + 4608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 585)] * weight_shared[((((int)threadIdx.x) & 31) + 4640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 592)] * weight_shared[((((int)threadIdx.x) & 31) + 4864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 593)] * weight_shared[((((int)threadIdx.x) & 31) + 4896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 600)] * weight_shared[((((int)threadIdx.x) & 31) + 5120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 601)] * weight_shared[((((int)threadIdx.x) & 31) + 5152)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 592)] * weight_shared[((((int)threadIdx.x) & 31) + 4608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 593)] * weight_shared[((((int)threadIdx.x) & 31) + 4640)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 600)] * weight_shared[((((int)threadIdx.x) & 31) + 4864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 601)] * weight_shared[((((int)threadIdx.x) & 31) + 4896)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 608)] * weight_shared[((((int)threadIdx.x) & 31) + 5120)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 609)] * weight_shared[((((int)threadIdx.x) & 31) + 5152)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 600)] * weight_shared[((((int)threadIdx.x) & 31) + 4608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 601)] * weight_shared[((((int)threadIdx.x) & 31) + 4640)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 608)] * weight_shared[((((int)threadIdx.x) & 31) + 4864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 609)] * weight_shared[((((int)threadIdx.x) & 31) + 4896)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 616)] * weight_shared[((((int)threadIdx.x) & 31) + 5120)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 617)] * weight_shared[((((int)threadIdx.x) & 31) + 5152)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 608)] * weight_shared[((((int)threadIdx.x) & 31) + 4608)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 609)] * weight_shared[((((int)threadIdx.x) & 31) + 4640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 616)] * weight_shared[((((int)threadIdx.x) & 31) + 4864)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 617)] * weight_shared[((((int)threadIdx.x) & 31) + 4896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 624)] * weight_shared[((((int)threadIdx.x) & 31) + 5120)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 625)] * weight_shared[((((int)threadIdx.x) & 31) + 5152)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 616)] * weight_shared[((((int)threadIdx.x) & 31) + 4608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 617)] * weight_shared[((((int)threadIdx.x) & 31) + 4640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 624)] * weight_shared[((((int)threadIdx.x) & 31) + 4864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 625)] * weight_shared[((((int)threadIdx.x) & 31) + 4896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 632)] * weight_shared[((((int)threadIdx.x) & 31) + 5120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 633)] * weight_shared[((((int)threadIdx.x) & 31) + 5152)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 624)] * weight_shared[((((int)threadIdx.x) & 31) + 4608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 625)] * weight_shared[((((int)threadIdx.x) & 31) + 4640)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 632)] * weight_shared[((((int)threadIdx.x) & 31) + 4864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 633)] * weight_shared[((((int)threadIdx.x) & 31) + 4896)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 640)] * weight_shared[((((int)threadIdx.x) & 31) + 5120)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 641)] * weight_shared[((((int)threadIdx.x) & 31) + 5152)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 578)] * weight_shared[((((int)threadIdx.x) & 31) + 4672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 579)] * weight_shared[((((int)threadIdx.x) & 31) + 4704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 586)] * weight_shared[((((int)threadIdx.x) & 31) + 4928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 587)] * weight_shared[((((int)threadIdx.x) & 31) + 4960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 594)] * weight_shared[((((int)threadIdx.x) & 31) + 5184)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 595)] * weight_shared[((((int)threadIdx.x) & 31) + 5216)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 586)] * weight_shared[((((int)threadIdx.x) & 31) + 4672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 587)] * weight_shared[((((int)threadIdx.x) & 31) + 4704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 594)] * weight_shared[((((int)threadIdx.x) & 31) + 4928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 595)] * weight_shared[((((int)threadIdx.x) & 31) + 4960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 602)] * weight_shared[((((int)threadIdx.x) & 31) + 5184)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 603)] * weight_shared[((((int)threadIdx.x) & 31) + 5216)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 594)] * weight_shared[((((int)threadIdx.x) & 31) + 4672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 595)] * weight_shared[((((int)threadIdx.x) & 31) + 4704)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 602)] * weight_shared[((((int)threadIdx.x) & 31) + 4928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 603)] * weight_shared[((((int)threadIdx.x) & 31) + 4960)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 610)] * weight_shared[((((int)threadIdx.x) & 31) + 5184)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 611)] * weight_shared[((((int)threadIdx.x) & 31) + 5216)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 602)] * weight_shared[((((int)threadIdx.x) & 31) + 4672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 603)] * weight_shared[((((int)threadIdx.x) & 31) + 4704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 610)] * weight_shared[((((int)threadIdx.x) & 31) + 4928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 611)] * weight_shared[((((int)threadIdx.x) & 31) + 4960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 618)] * weight_shared[((((int)threadIdx.x) & 31) + 5184)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 619)] * weight_shared[((((int)threadIdx.x) & 31) + 5216)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 610)] * weight_shared[((((int)threadIdx.x) & 31) + 4672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 611)] * weight_shared[((((int)threadIdx.x) & 31) + 4704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 618)] * weight_shared[((((int)threadIdx.x) & 31) + 4928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 619)] * weight_shared[((((int)threadIdx.x) & 31) + 4960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 626)] * weight_shared[((((int)threadIdx.x) & 31) + 5184)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 627)] * weight_shared[((((int)threadIdx.x) & 31) + 5216)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 618)] * weight_shared[((((int)threadIdx.x) & 31) + 4672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 619)] * weight_shared[((((int)threadIdx.x) & 31) + 4704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 626)] * weight_shared[((((int)threadIdx.x) & 31) + 4928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 627)] * weight_shared[((((int)threadIdx.x) & 31) + 4960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 634)] * weight_shared[((((int)threadIdx.x) & 31) + 5184)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 635)] * weight_shared[((((int)threadIdx.x) & 31) + 5216)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 626)] * weight_shared[((((int)threadIdx.x) & 31) + 4672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 627)] * weight_shared[((((int)threadIdx.x) & 31) + 4704)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 634)] * weight_shared[((((int)threadIdx.x) & 31) + 4928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 635)] * weight_shared[((((int)threadIdx.x) & 31) + 4960)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 642)] * weight_shared[((((int)threadIdx.x) & 31) + 5184)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 643)] * weight_shared[((((int)threadIdx.x) & 31) + 5216)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 580)] * weight_shared[((((int)threadIdx.x) & 31) + 4736)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 581)] * weight_shared[((((int)threadIdx.x) & 31) + 4768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 588)] * weight_shared[((((int)threadIdx.x) & 31) + 4992)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 589)] * weight_shared[((((int)threadIdx.x) & 31) + 5024)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 596)] * weight_shared[((((int)threadIdx.x) & 31) + 5248)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 597)] * weight_shared[((((int)threadIdx.x) & 31) + 5280)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 588)] * weight_shared[((((int)threadIdx.x) & 31) + 4736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 589)] * weight_shared[((((int)threadIdx.x) & 31) + 4768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 596)] * weight_shared[((((int)threadIdx.x) & 31) + 4992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 597)] * weight_shared[((((int)threadIdx.x) & 31) + 5024)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 604)] * weight_shared[((((int)threadIdx.x) & 31) + 5248)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 605)] * weight_shared[((((int)threadIdx.x) & 31) + 5280)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 596)] * weight_shared[((((int)threadIdx.x) & 31) + 4736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 597)] * weight_shared[((((int)threadIdx.x) & 31) + 4768)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 604)] * weight_shared[((((int)threadIdx.x) & 31) + 4992)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 605)] * weight_shared[((((int)threadIdx.x) & 31) + 5024)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 612)] * weight_shared[((((int)threadIdx.x) & 31) + 5248)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 613)] * weight_shared[((((int)threadIdx.x) & 31) + 5280)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 604)] * weight_shared[((((int)threadIdx.x) & 31) + 4736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 605)] * weight_shared[((((int)threadIdx.x) & 31) + 4768)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 612)] * weight_shared[((((int)threadIdx.x) & 31) + 4992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 613)] * weight_shared[((((int)threadIdx.x) & 31) + 5024)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 620)] * weight_shared[((((int)threadIdx.x) & 31) + 5248)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 621)] * weight_shared[((((int)threadIdx.x) & 31) + 5280)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 612)] * weight_shared[((((int)threadIdx.x) & 31) + 4736)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 613)] * weight_shared[((((int)threadIdx.x) & 31) + 4768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 620)] * weight_shared[((((int)threadIdx.x) & 31) + 4992)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 621)] * weight_shared[((((int)threadIdx.x) & 31) + 5024)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 628)] * weight_shared[((((int)threadIdx.x) & 31) + 5248)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 629)] * weight_shared[((((int)threadIdx.x) & 31) + 5280)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 620)] * weight_shared[((((int)threadIdx.x) & 31) + 4736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 621)] * weight_shared[((((int)threadIdx.x) & 31) + 4768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 628)] * weight_shared[((((int)threadIdx.x) & 31) + 4992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 629)] * weight_shared[((((int)threadIdx.x) & 31) + 5024)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 636)] * weight_shared[((((int)threadIdx.x) & 31) + 5248)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 637)] * weight_shared[((((int)threadIdx.x) & 31) + 5280)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 628)] * weight_shared[((((int)threadIdx.x) & 31) + 4736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 629)] * weight_shared[((((int)threadIdx.x) & 31) + 4768)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 636)] * weight_shared[((((int)threadIdx.x) & 31) + 4992)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 637)] * weight_shared[((((int)threadIdx.x) & 31) + 5024)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 644)] * weight_shared[((((int)threadIdx.x) & 31) + 5248)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 645)] * weight_shared[((((int)threadIdx.x) & 31) + 5280)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 582)] * weight_shared[((((int)threadIdx.x) & 31) + 4800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 583)] * weight_shared[((((int)threadIdx.x) & 31) + 4832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 590)] * weight_shared[((((int)threadIdx.x) & 31) + 5056)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 591)] * weight_shared[((((int)threadIdx.x) & 31) + 5088)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 598)] * weight_shared[((((int)threadIdx.x) & 31) + 5312)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 599)] * weight_shared[((((int)threadIdx.x) & 31) + 5344)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 590)] * weight_shared[((((int)threadIdx.x) & 31) + 4800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 591)] * weight_shared[((((int)threadIdx.x) & 31) + 4832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 598)] * weight_shared[((((int)threadIdx.x) & 31) + 5056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 599)] * weight_shared[((((int)threadIdx.x) & 31) + 5088)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 606)] * weight_shared[((((int)threadIdx.x) & 31) + 5312)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 607)] * weight_shared[((((int)threadIdx.x) & 31) + 5344)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 598)] * weight_shared[((((int)threadIdx.x) & 31) + 4800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 599)] * weight_shared[((((int)threadIdx.x) & 31) + 4832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 606)] * weight_shared[((((int)threadIdx.x) & 31) + 5056)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 607)] * weight_shared[((((int)threadIdx.x) & 31) + 5088)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 614)] * weight_shared[((((int)threadIdx.x) & 31) + 5312)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 615)] * weight_shared[((((int)threadIdx.x) & 31) + 5344)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 606)] * weight_shared[((((int)threadIdx.x) & 31) + 4800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 607)] * weight_shared[((((int)threadIdx.x) & 31) + 4832)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 614)] * weight_shared[((((int)threadIdx.x) & 31) + 5056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 615)] * weight_shared[((((int)threadIdx.x) & 31) + 5088)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 622)] * weight_shared[((((int)threadIdx.x) & 31) + 5312)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 623)] * weight_shared[((((int)threadIdx.x) & 31) + 5344)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 614)] * weight_shared[((((int)threadIdx.x) & 31) + 4800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 615)] * weight_shared[((((int)threadIdx.x) & 31) + 4832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 622)] * weight_shared[((((int)threadIdx.x) & 31) + 5056)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 623)] * weight_shared[((((int)threadIdx.x) & 31) + 5088)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 630)] * weight_shared[((((int)threadIdx.x) & 31) + 5312)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 631)] * weight_shared[((((int)threadIdx.x) & 31) + 5344)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 622)] * weight_shared[((((int)threadIdx.x) & 31) + 4800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 623)] * weight_shared[((((int)threadIdx.x) & 31) + 4832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 630)] * weight_shared[((((int)threadIdx.x) & 31) + 5056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 631)] * weight_shared[((((int)threadIdx.x) & 31) + 5088)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 638)] * weight_shared[((((int)threadIdx.x) & 31) + 5312)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 639)] * weight_shared[((((int)threadIdx.x) & 31) + 5344)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 630)] * weight_shared[((((int)threadIdx.x) & 31) + 4800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 631)] * weight_shared[((((int)threadIdx.x) & 31) + 4832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 638)] * weight_shared[((((int)threadIdx.x) & 31) + 5056)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 639)] * weight_shared[((((int)threadIdx.x) & 31) + 5088)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 646)] * weight_shared[((((int)threadIdx.x) & 31) + 5312)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 647)] * weight_shared[((((int)threadIdx.x) & 31) + 5344)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 648)] * weight_shared[((((int)threadIdx.x) & 31) + 5376)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 649)] * weight_shared[((((int)threadIdx.x) & 31) + 5408)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 656)] * weight_shared[((((int)threadIdx.x) & 31) + 5632)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 657)] * weight_shared[((((int)threadIdx.x) & 31) + 5664)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 664)] * weight_shared[((((int)threadIdx.x) & 31) + 5888)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 665)] * weight_shared[((((int)threadIdx.x) & 31) + 5920)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 656)] * weight_shared[((((int)threadIdx.x) & 31) + 5376)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 657)] * weight_shared[((((int)threadIdx.x) & 31) + 5408)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 664)] * weight_shared[((((int)threadIdx.x) & 31) + 5632)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 665)] * weight_shared[((((int)threadIdx.x) & 31) + 5664)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 672)] * weight_shared[((((int)threadIdx.x) & 31) + 5888)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 673)] * weight_shared[((((int)threadIdx.x) & 31) + 5920)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 664)] * weight_shared[((((int)threadIdx.x) & 31) + 5376)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 665)] * weight_shared[((((int)threadIdx.x) & 31) + 5408)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 672)] * weight_shared[((((int)threadIdx.x) & 31) + 5632)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 673)] * weight_shared[((((int)threadIdx.x) & 31) + 5664)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 680)] * weight_shared[((((int)threadIdx.x) & 31) + 5888)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 681)] * weight_shared[((((int)threadIdx.x) & 31) + 5920)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 672)] * weight_shared[((((int)threadIdx.x) & 31) + 5376)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 673)] * weight_shared[((((int)threadIdx.x) & 31) + 5408)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 680)] * weight_shared[((((int)threadIdx.x) & 31) + 5632)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 681)] * weight_shared[((((int)threadIdx.x) & 31) + 5664)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 688)] * weight_shared[((((int)threadIdx.x) & 31) + 5888)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 689)] * weight_shared[((((int)threadIdx.x) & 31) + 5920)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 680)] * weight_shared[((((int)threadIdx.x) & 31) + 5376)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 681)] * weight_shared[((((int)threadIdx.x) & 31) + 5408)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 688)] * weight_shared[((((int)threadIdx.x) & 31) + 5632)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 689)] * weight_shared[((((int)threadIdx.x) & 31) + 5664)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 696)] * weight_shared[((((int)threadIdx.x) & 31) + 5888)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 697)] * weight_shared[((((int)threadIdx.x) & 31) + 5920)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 688)] * weight_shared[((((int)threadIdx.x) & 31) + 5376)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 689)] * weight_shared[((((int)threadIdx.x) & 31) + 5408)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 696)] * weight_shared[((((int)threadIdx.x) & 31) + 5632)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 697)] * weight_shared[((((int)threadIdx.x) & 31) + 5664)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 704)] * weight_shared[((((int)threadIdx.x) & 31) + 5888)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 705)] * weight_shared[((((int)threadIdx.x) & 31) + 5920)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 696)] * weight_shared[((((int)threadIdx.x) & 31) + 5376)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 697)] * weight_shared[((((int)threadIdx.x) & 31) + 5408)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 704)] * weight_shared[((((int)threadIdx.x) & 31) + 5632)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 705)] * weight_shared[((((int)threadIdx.x) & 31) + 5664)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 712)] * weight_shared[((((int)threadIdx.x) & 31) + 5888)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 713)] * weight_shared[((((int)threadIdx.x) & 31) + 5920)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 650)] * weight_shared[((((int)threadIdx.x) & 31) + 5440)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 651)] * weight_shared[((((int)threadIdx.x) & 31) + 5472)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 658)] * weight_shared[((((int)threadIdx.x) & 31) + 5696)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 659)] * weight_shared[((((int)threadIdx.x) & 31) + 5728)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 666)] * weight_shared[((((int)threadIdx.x) & 31) + 5952)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 667)] * weight_shared[((((int)threadIdx.x) & 31) + 5984)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 658)] * weight_shared[((((int)threadIdx.x) & 31) + 5440)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 659)] * weight_shared[((((int)threadIdx.x) & 31) + 5472)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 666)] * weight_shared[((((int)threadIdx.x) & 31) + 5696)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 667)] * weight_shared[((((int)threadIdx.x) & 31) + 5728)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 674)] * weight_shared[((((int)threadIdx.x) & 31) + 5952)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 675)] * weight_shared[((((int)threadIdx.x) & 31) + 5984)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 666)] * weight_shared[((((int)threadIdx.x) & 31) + 5440)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 667)] * weight_shared[((((int)threadIdx.x) & 31) + 5472)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 674)] * weight_shared[((((int)threadIdx.x) & 31) + 5696)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 675)] * weight_shared[((((int)threadIdx.x) & 31) + 5728)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 682)] * weight_shared[((((int)threadIdx.x) & 31) + 5952)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 683)] * weight_shared[((((int)threadIdx.x) & 31) + 5984)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 674)] * weight_shared[((((int)threadIdx.x) & 31) + 5440)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 675)] * weight_shared[((((int)threadIdx.x) & 31) + 5472)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 682)] * weight_shared[((((int)threadIdx.x) & 31) + 5696)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 683)] * weight_shared[((((int)threadIdx.x) & 31) + 5728)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 690)] * weight_shared[((((int)threadIdx.x) & 31) + 5952)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 691)] * weight_shared[((((int)threadIdx.x) & 31) + 5984)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 682)] * weight_shared[((((int)threadIdx.x) & 31) + 5440)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 683)] * weight_shared[((((int)threadIdx.x) & 31) + 5472)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 690)] * weight_shared[((((int)threadIdx.x) & 31) + 5696)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 691)] * weight_shared[((((int)threadIdx.x) & 31) + 5728)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 698)] * weight_shared[((((int)threadIdx.x) & 31) + 5952)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 699)] * weight_shared[((((int)threadIdx.x) & 31) + 5984)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 690)] * weight_shared[((((int)threadIdx.x) & 31) + 5440)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 691)] * weight_shared[((((int)threadIdx.x) & 31) + 5472)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 698)] * weight_shared[((((int)threadIdx.x) & 31) + 5696)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 699)] * weight_shared[((((int)threadIdx.x) & 31) + 5728)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 706)] * weight_shared[((((int)threadIdx.x) & 31) + 5952)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 707)] * weight_shared[((((int)threadIdx.x) & 31) + 5984)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 698)] * weight_shared[((((int)threadIdx.x) & 31) + 5440)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 699)] * weight_shared[((((int)threadIdx.x) & 31) + 5472)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 706)] * weight_shared[((((int)threadIdx.x) & 31) + 5696)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 707)] * weight_shared[((((int)threadIdx.x) & 31) + 5728)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 714)] * weight_shared[((((int)threadIdx.x) & 31) + 5952)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 715)] * weight_shared[((((int)threadIdx.x) & 31) + 5984)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 652)] * weight_shared[((((int)threadIdx.x) & 31) + 5504)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 653)] * weight_shared[((((int)threadIdx.x) & 31) + 5536)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 660)] * weight_shared[((((int)threadIdx.x) & 31) + 5760)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 661)] * weight_shared[((((int)threadIdx.x) & 31) + 5792)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 668)] * weight_shared[((((int)threadIdx.x) & 31) + 6016)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 669)] * weight_shared[((((int)threadIdx.x) & 31) + 6048)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 660)] * weight_shared[((((int)threadIdx.x) & 31) + 5504)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 661)] * weight_shared[((((int)threadIdx.x) & 31) + 5536)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 668)] * weight_shared[((((int)threadIdx.x) & 31) + 5760)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 669)] * weight_shared[((((int)threadIdx.x) & 31) + 5792)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 676)] * weight_shared[((((int)threadIdx.x) & 31) + 6016)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 677)] * weight_shared[((((int)threadIdx.x) & 31) + 6048)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 668)] * weight_shared[((((int)threadIdx.x) & 31) + 5504)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 669)] * weight_shared[((((int)threadIdx.x) & 31) + 5536)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 676)] * weight_shared[((((int)threadIdx.x) & 31) + 5760)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 677)] * weight_shared[((((int)threadIdx.x) & 31) + 5792)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 684)] * weight_shared[((((int)threadIdx.x) & 31) + 6016)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 685)] * weight_shared[((((int)threadIdx.x) & 31) + 6048)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 676)] * weight_shared[((((int)threadIdx.x) & 31) + 5504)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 677)] * weight_shared[((((int)threadIdx.x) & 31) + 5536)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 684)] * weight_shared[((((int)threadIdx.x) & 31) + 5760)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 685)] * weight_shared[((((int)threadIdx.x) & 31) + 5792)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 692)] * weight_shared[((((int)threadIdx.x) & 31) + 6016)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 693)] * weight_shared[((((int)threadIdx.x) & 31) + 6048)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 684)] * weight_shared[((((int)threadIdx.x) & 31) + 5504)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 685)] * weight_shared[((((int)threadIdx.x) & 31) + 5536)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 692)] * weight_shared[((((int)threadIdx.x) & 31) + 5760)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 693)] * weight_shared[((((int)threadIdx.x) & 31) + 5792)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 700)] * weight_shared[((((int)threadIdx.x) & 31) + 6016)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 701)] * weight_shared[((((int)threadIdx.x) & 31) + 6048)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 692)] * weight_shared[((((int)threadIdx.x) & 31) + 5504)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 693)] * weight_shared[((((int)threadIdx.x) & 31) + 5536)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 700)] * weight_shared[((((int)threadIdx.x) & 31) + 5760)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 701)] * weight_shared[((((int)threadIdx.x) & 31) + 5792)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 708)] * weight_shared[((((int)threadIdx.x) & 31) + 6016)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 709)] * weight_shared[((((int)threadIdx.x) & 31) + 6048)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 700)] * weight_shared[((((int)threadIdx.x) & 31) + 5504)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 701)] * weight_shared[((((int)threadIdx.x) & 31) + 5536)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 708)] * weight_shared[((((int)threadIdx.x) & 31) + 5760)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 709)] * weight_shared[((((int)threadIdx.x) & 31) + 5792)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 716)] * weight_shared[((((int)threadIdx.x) & 31) + 6016)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 717)] * weight_shared[((((int)threadIdx.x) & 31) + 6048)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 654)] * weight_shared[((((int)threadIdx.x) & 31) + 5568)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 655)] * weight_shared[((((int)threadIdx.x) & 31) + 5600)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 662)] * weight_shared[((((int)threadIdx.x) & 31) + 5824)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 663)] * weight_shared[((((int)threadIdx.x) & 31) + 5856)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 670)] * weight_shared[((((int)threadIdx.x) & 31) + 6080)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 671)] * weight_shared[((((int)threadIdx.x) & 31) + 6112)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 662)] * weight_shared[((((int)threadIdx.x) & 31) + 5568)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 663)] * weight_shared[((((int)threadIdx.x) & 31) + 5600)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 670)] * weight_shared[((((int)threadIdx.x) & 31) + 5824)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 671)] * weight_shared[((((int)threadIdx.x) & 31) + 5856)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 678)] * weight_shared[((((int)threadIdx.x) & 31) + 6080)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 679)] * weight_shared[((((int)threadIdx.x) & 31) + 6112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 670)] * weight_shared[((((int)threadIdx.x) & 31) + 5568)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 671)] * weight_shared[((((int)threadIdx.x) & 31) + 5600)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 678)] * weight_shared[((((int)threadIdx.x) & 31) + 5824)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 679)] * weight_shared[((((int)threadIdx.x) & 31) + 5856)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 686)] * weight_shared[((((int)threadIdx.x) & 31) + 6080)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 687)] * weight_shared[((((int)threadIdx.x) & 31) + 6112)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 678)] * weight_shared[((((int)threadIdx.x) & 31) + 5568)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 679)] * weight_shared[((((int)threadIdx.x) & 31) + 5600)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 686)] * weight_shared[((((int)threadIdx.x) & 31) + 5824)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 687)] * weight_shared[((((int)threadIdx.x) & 31) + 5856)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 694)] * weight_shared[((((int)threadIdx.x) & 31) + 6080)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 695)] * weight_shared[((((int)threadIdx.x) & 31) + 6112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 686)] * weight_shared[((((int)threadIdx.x) & 31) + 5568)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 687)] * weight_shared[((((int)threadIdx.x) & 31) + 5600)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 694)] * weight_shared[((((int)threadIdx.x) & 31) + 5824)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 695)] * weight_shared[((((int)threadIdx.x) & 31) + 5856)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 702)] * weight_shared[((((int)threadIdx.x) & 31) + 6080)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 703)] * weight_shared[((((int)threadIdx.x) & 31) + 6112)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 694)] * weight_shared[((((int)threadIdx.x) & 31) + 5568)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 695)] * weight_shared[((((int)threadIdx.x) & 31) + 5600)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 702)] * weight_shared[((((int)threadIdx.x) & 31) + 5824)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 703)] * weight_shared[((((int)threadIdx.x) & 31) + 5856)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 710)] * weight_shared[((((int)threadIdx.x) & 31) + 6080)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 711)] * weight_shared[((((int)threadIdx.x) & 31) + 6112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 702)] * weight_shared[((((int)threadIdx.x) & 31) + 5568)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 703)] * weight_shared[((((int)threadIdx.x) & 31) + 5600)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 710)] * weight_shared[((((int)threadIdx.x) & 31) + 5824)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 711)] * weight_shared[((((int)threadIdx.x) & 31) + 5856)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 718)] * weight_shared[((((int)threadIdx.x) & 31) + 6080)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 719)] * weight_shared[((((int)threadIdx.x) & 31) + 6112)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 720)] * weight_shared[((((int)threadIdx.x) & 31) + 6144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 721)] * weight_shared[((((int)threadIdx.x) & 31) + 6176)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 728)] * weight_shared[((((int)threadIdx.x) & 31) + 6400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 729)] * weight_shared[((((int)threadIdx.x) & 31) + 6432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 736)] * weight_shared[((((int)threadIdx.x) & 31) + 6656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 737)] * weight_shared[((((int)threadIdx.x) & 31) + 6688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 728)] * weight_shared[((((int)threadIdx.x) & 31) + 6144)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 729)] * weight_shared[((((int)threadIdx.x) & 31) + 6176)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 736)] * weight_shared[((((int)threadIdx.x) & 31) + 6400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 737)] * weight_shared[((((int)threadIdx.x) & 31) + 6432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 744)] * weight_shared[((((int)threadIdx.x) & 31) + 6656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 745)] * weight_shared[((((int)threadIdx.x) & 31) + 6688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 736)] * weight_shared[((((int)threadIdx.x) & 31) + 6144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 737)] * weight_shared[((((int)threadIdx.x) & 31) + 6176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 744)] * weight_shared[((((int)threadIdx.x) & 31) + 6400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 745)] * weight_shared[((((int)threadIdx.x) & 31) + 6432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 752)] * weight_shared[((((int)threadIdx.x) & 31) + 6656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 753)] * weight_shared[((((int)threadIdx.x) & 31) + 6688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 744)] * weight_shared[((((int)threadIdx.x) & 31) + 6144)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 745)] * weight_shared[((((int)threadIdx.x) & 31) + 6176)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 752)] * weight_shared[((((int)threadIdx.x) & 31) + 6400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 753)] * weight_shared[((((int)threadIdx.x) & 31) + 6432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 760)] * weight_shared[((((int)threadIdx.x) & 31) + 6656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 761)] * weight_shared[((((int)threadIdx.x) & 31) + 6688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 752)] * weight_shared[((((int)threadIdx.x) & 31) + 6144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 753)] * weight_shared[((((int)threadIdx.x) & 31) + 6176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 760)] * weight_shared[((((int)threadIdx.x) & 31) + 6400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 761)] * weight_shared[((((int)threadIdx.x) & 31) + 6432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 768)] * weight_shared[((((int)threadIdx.x) & 31) + 6656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 769)] * weight_shared[((((int)threadIdx.x) & 31) + 6688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 760)] * weight_shared[((((int)threadIdx.x) & 31) + 6144)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 761)] * weight_shared[((((int)threadIdx.x) & 31) + 6176)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 768)] * weight_shared[((((int)threadIdx.x) & 31) + 6400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 769)] * weight_shared[((((int)threadIdx.x) & 31) + 6432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 776)] * weight_shared[((((int)threadIdx.x) & 31) + 6656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 777)] * weight_shared[((((int)threadIdx.x) & 31) + 6688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 768)] * weight_shared[((((int)threadIdx.x) & 31) + 6144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 769)] * weight_shared[((((int)threadIdx.x) & 31) + 6176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 776)] * weight_shared[((((int)threadIdx.x) & 31) + 6400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 777)] * weight_shared[((((int)threadIdx.x) & 31) + 6432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 784)] * weight_shared[((((int)threadIdx.x) & 31) + 6656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 785)] * weight_shared[((((int)threadIdx.x) & 31) + 6688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 722)] * weight_shared[((((int)threadIdx.x) & 31) + 6208)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 723)] * weight_shared[((((int)threadIdx.x) & 31) + 6240)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 730)] * weight_shared[((((int)threadIdx.x) & 31) + 6464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 731)] * weight_shared[((((int)threadIdx.x) & 31) + 6496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 738)] * weight_shared[((((int)threadIdx.x) & 31) + 6720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 739)] * weight_shared[((((int)threadIdx.x) & 31) + 6752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 730)] * weight_shared[((((int)threadIdx.x) & 31) + 6208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 731)] * weight_shared[((((int)threadIdx.x) & 31) + 6240)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 738)] * weight_shared[((((int)threadIdx.x) & 31) + 6464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 739)] * weight_shared[((((int)threadIdx.x) & 31) + 6496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 746)] * weight_shared[((((int)threadIdx.x) & 31) + 6720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 747)] * weight_shared[((((int)threadIdx.x) & 31) + 6752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 738)] * weight_shared[((((int)threadIdx.x) & 31) + 6208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 739)] * weight_shared[((((int)threadIdx.x) & 31) + 6240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 746)] * weight_shared[((((int)threadIdx.x) & 31) + 6464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 747)] * weight_shared[((((int)threadIdx.x) & 31) + 6496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 754)] * weight_shared[((((int)threadIdx.x) & 31) + 6720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 755)] * weight_shared[((((int)threadIdx.x) & 31) + 6752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 746)] * weight_shared[((((int)threadIdx.x) & 31) + 6208)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 747)] * weight_shared[((((int)threadIdx.x) & 31) + 6240)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 754)] * weight_shared[((((int)threadIdx.x) & 31) + 6464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 755)] * weight_shared[((((int)threadIdx.x) & 31) + 6496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 762)] * weight_shared[((((int)threadIdx.x) & 31) + 6720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 763)] * weight_shared[((((int)threadIdx.x) & 31) + 6752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 754)] * weight_shared[((((int)threadIdx.x) & 31) + 6208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 755)] * weight_shared[((((int)threadIdx.x) & 31) + 6240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 762)] * weight_shared[((((int)threadIdx.x) & 31) + 6464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 763)] * weight_shared[((((int)threadIdx.x) & 31) + 6496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 770)] * weight_shared[((((int)threadIdx.x) & 31) + 6720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 771)] * weight_shared[((((int)threadIdx.x) & 31) + 6752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 762)] * weight_shared[((((int)threadIdx.x) & 31) + 6208)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 763)] * weight_shared[((((int)threadIdx.x) & 31) + 6240)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 770)] * weight_shared[((((int)threadIdx.x) & 31) + 6464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 771)] * weight_shared[((((int)threadIdx.x) & 31) + 6496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 778)] * weight_shared[((((int)threadIdx.x) & 31) + 6720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 779)] * weight_shared[((((int)threadIdx.x) & 31) + 6752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 770)] * weight_shared[((((int)threadIdx.x) & 31) + 6208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 771)] * weight_shared[((((int)threadIdx.x) & 31) + 6240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 778)] * weight_shared[((((int)threadIdx.x) & 31) + 6464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 779)] * weight_shared[((((int)threadIdx.x) & 31) + 6496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 786)] * weight_shared[((((int)threadIdx.x) & 31) + 6720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 787)] * weight_shared[((((int)threadIdx.x) & 31) + 6752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 724)] * weight_shared[((((int)threadIdx.x) & 31) + 6272)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 725)] * weight_shared[((((int)threadIdx.x) & 31) + 6304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 732)] * weight_shared[((((int)threadIdx.x) & 31) + 6528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 733)] * weight_shared[((((int)threadIdx.x) & 31) + 6560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 740)] * weight_shared[((((int)threadIdx.x) & 31) + 6784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 741)] * weight_shared[((((int)threadIdx.x) & 31) + 6816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 732)] * weight_shared[((((int)threadIdx.x) & 31) + 6272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 733)] * weight_shared[((((int)threadIdx.x) & 31) + 6304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 740)] * weight_shared[((((int)threadIdx.x) & 31) + 6528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 741)] * weight_shared[((((int)threadIdx.x) & 31) + 6560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 748)] * weight_shared[((((int)threadIdx.x) & 31) + 6784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 749)] * weight_shared[((((int)threadIdx.x) & 31) + 6816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 740)] * weight_shared[((((int)threadIdx.x) & 31) + 6272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 741)] * weight_shared[((((int)threadIdx.x) & 31) + 6304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 748)] * weight_shared[((((int)threadIdx.x) & 31) + 6528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 749)] * weight_shared[((((int)threadIdx.x) & 31) + 6560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 756)] * weight_shared[((((int)threadIdx.x) & 31) + 6784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 757)] * weight_shared[((((int)threadIdx.x) & 31) + 6816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 748)] * weight_shared[((((int)threadIdx.x) & 31) + 6272)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 749)] * weight_shared[((((int)threadIdx.x) & 31) + 6304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 756)] * weight_shared[((((int)threadIdx.x) & 31) + 6528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 757)] * weight_shared[((((int)threadIdx.x) & 31) + 6560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 764)] * weight_shared[((((int)threadIdx.x) & 31) + 6784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 765)] * weight_shared[((((int)threadIdx.x) & 31) + 6816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 756)] * weight_shared[((((int)threadIdx.x) & 31) + 6272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 757)] * weight_shared[((((int)threadIdx.x) & 31) + 6304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 764)] * weight_shared[((((int)threadIdx.x) & 31) + 6528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 765)] * weight_shared[((((int)threadIdx.x) & 31) + 6560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 772)] * weight_shared[((((int)threadIdx.x) & 31) + 6784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 773)] * weight_shared[((((int)threadIdx.x) & 31) + 6816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 764)] * weight_shared[((((int)threadIdx.x) & 31) + 6272)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 765)] * weight_shared[((((int)threadIdx.x) & 31) + 6304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 772)] * weight_shared[((((int)threadIdx.x) & 31) + 6528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 773)] * weight_shared[((((int)threadIdx.x) & 31) + 6560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 780)] * weight_shared[((((int)threadIdx.x) & 31) + 6784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 781)] * weight_shared[((((int)threadIdx.x) & 31) + 6816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 772)] * weight_shared[((((int)threadIdx.x) & 31) + 6272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 773)] * weight_shared[((((int)threadIdx.x) & 31) + 6304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 780)] * weight_shared[((((int)threadIdx.x) & 31) + 6528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 781)] * weight_shared[((((int)threadIdx.x) & 31) + 6560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 788)] * weight_shared[((((int)threadIdx.x) & 31) + 6784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 789)] * weight_shared[((((int)threadIdx.x) & 31) + 6816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 726)] * weight_shared[((((int)threadIdx.x) & 31) + 6336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 727)] * weight_shared[((((int)threadIdx.x) & 31) + 6368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 734)] * weight_shared[((((int)threadIdx.x) & 31) + 6592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 735)] * weight_shared[((((int)threadIdx.x) & 31) + 6624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 742)] * weight_shared[((((int)threadIdx.x) & 31) + 6848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 743)] * weight_shared[((((int)threadIdx.x) & 31) + 6880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 734)] * weight_shared[((((int)threadIdx.x) & 31) + 6336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 735)] * weight_shared[((((int)threadIdx.x) & 31) + 6368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 742)] * weight_shared[((((int)threadIdx.x) & 31) + 6592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 743)] * weight_shared[((((int)threadIdx.x) & 31) + 6624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 750)] * weight_shared[((((int)threadIdx.x) & 31) + 6848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 751)] * weight_shared[((((int)threadIdx.x) & 31) + 6880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 742)] * weight_shared[((((int)threadIdx.x) & 31) + 6336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 743)] * weight_shared[((((int)threadIdx.x) & 31) + 6368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 750)] * weight_shared[((((int)threadIdx.x) & 31) + 6592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 751)] * weight_shared[((((int)threadIdx.x) & 31) + 6624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 758)] * weight_shared[((((int)threadIdx.x) & 31) + 6848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 759)] * weight_shared[((((int)threadIdx.x) & 31) + 6880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 750)] * weight_shared[((((int)threadIdx.x) & 31) + 6336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 751)] * weight_shared[((((int)threadIdx.x) & 31) + 6368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 758)] * weight_shared[((((int)threadIdx.x) & 31) + 6592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 759)] * weight_shared[((((int)threadIdx.x) & 31) + 6624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 766)] * weight_shared[((((int)threadIdx.x) & 31) + 6848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 767)] * weight_shared[((((int)threadIdx.x) & 31) + 6880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 758)] * weight_shared[((((int)threadIdx.x) & 31) + 6336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 759)] * weight_shared[((((int)threadIdx.x) & 31) + 6368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 766)] * weight_shared[((((int)threadIdx.x) & 31) + 6592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 767)] * weight_shared[((((int)threadIdx.x) & 31) + 6624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 774)] * weight_shared[((((int)threadIdx.x) & 31) + 6848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 775)] * weight_shared[((((int)threadIdx.x) & 31) + 6880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 766)] * weight_shared[((((int)threadIdx.x) & 31) + 6336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 767)] * weight_shared[((((int)threadIdx.x) & 31) + 6368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 774)] * weight_shared[((((int)threadIdx.x) & 31) + 6592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 775)] * weight_shared[((((int)threadIdx.x) & 31) + 6624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 782)] * weight_shared[((((int)threadIdx.x) & 31) + 6848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 783)] * weight_shared[((((int)threadIdx.x) & 31) + 6880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 774)] * weight_shared[((((int)threadIdx.x) & 31) + 6336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 775)] * weight_shared[((((int)threadIdx.x) & 31) + 6368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 782)] * weight_shared[((((int)threadIdx.x) & 31) + 6592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 783)] * weight_shared[((((int)threadIdx.x) & 31) + 6624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 790)] * weight_shared[((((int)threadIdx.x) & 31) + 6848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 791)] * weight_shared[((((int)threadIdx.x) & 31) + 6880)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 864)] * weight_shared[((((int)threadIdx.x) & 31) + 6912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 865)] * weight_shared[((((int)threadIdx.x) & 31) + 6944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 872)] * weight_shared[((((int)threadIdx.x) & 31) + 7168)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 873)] * weight_shared[((((int)threadIdx.x) & 31) + 7200)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 880)] * weight_shared[((((int)threadIdx.x) & 31) + 7424)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 881)] * weight_shared[((((int)threadIdx.x) & 31) + 7456)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 872)] * weight_shared[((((int)threadIdx.x) & 31) + 6912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 873)] * weight_shared[((((int)threadIdx.x) & 31) + 6944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 880)] * weight_shared[((((int)threadIdx.x) & 31) + 7168)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 881)] * weight_shared[((((int)threadIdx.x) & 31) + 7200)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 888)] * weight_shared[((((int)threadIdx.x) & 31) + 7424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 889)] * weight_shared[((((int)threadIdx.x) & 31) + 7456)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 880)] * weight_shared[((((int)threadIdx.x) & 31) + 6912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 881)] * weight_shared[((((int)threadIdx.x) & 31) + 6944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 888)] * weight_shared[((((int)threadIdx.x) & 31) + 7168)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 889)] * weight_shared[((((int)threadIdx.x) & 31) + 7200)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 896)] * weight_shared[((((int)threadIdx.x) & 31) + 7424)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 897)] * weight_shared[((((int)threadIdx.x) & 31) + 7456)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 888)] * weight_shared[((((int)threadIdx.x) & 31) + 6912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 889)] * weight_shared[((((int)threadIdx.x) & 31) + 6944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 896)] * weight_shared[((((int)threadIdx.x) & 31) + 7168)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 897)] * weight_shared[((((int)threadIdx.x) & 31) + 7200)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 904)] * weight_shared[((((int)threadIdx.x) & 31) + 7424)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 905)] * weight_shared[((((int)threadIdx.x) & 31) + 7456)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 896)] * weight_shared[((((int)threadIdx.x) & 31) + 6912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 897)] * weight_shared[((((int)threadIdx.x) & 31) + 6944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 904)] * weight_shared[((((int)threadIdx.x) & 31) + 7168)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 905)] * weight_shared[((((int)threadIdx.x) & 31) + 7200)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 912)] * weight_shared[((((int)threadIdx.x) & 31) + 7424)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 913)] * weight_shared[((((int)threadIdx.x) & 31) + 7456)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 904)] * weight_shared[((((int)threadIdx.x) & 31) + 6912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 905)] * weight_shared[((((int)threadIdx.x) & 31) + 6944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 912)] * weight_shared[((((int)threadIdx.x) & 31) + 7168)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 913)] * weight_shared[((((int)threadIdx.x) & 31) + 7200)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 920)] * weight_shared[((((int)threadIdx.x) & 31) + 7424)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 921)] * weight_shared[((((int)threadIdx.x) & 31) + 7456)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 912)] * weight_shared[((((int)threadIdx.x) & 31) + 6912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 913)] * weight_shared[((((int)threadIdx.x) & 31) + 6944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 920)] * weight_shared[((((int)threadIdx.x) & 31) + 7168)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 921)] * weight_shared[((((int)threadIdx.x) & 31) + 7200)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 928)] * weight_shared[((((int)threadIdx.x) & 31) + 7424)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 929)] * weight_shared[((((int)threadIdx.x) & 31) + 7456)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 866)] * weight_shared[((((int)threadIdx.x) & 31) + 6976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 867)] * weight_shared[((((int)threadIdx.x) & 31) + 7008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 874)] * weight_shared[((((int)threadIdx.x) & 31) + 7232)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 875)] * weight_shared[((((int)threadIdx.x) & 31) + 7264)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 882)] * weight_shared[((((int)threadIdx.x) & 31) + 7488)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 883)] * weight_shared[((((int)threadIdx.x) & 31) + 7520)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 874)] * weight_shared[((((int)threadIdx.x) & 31) + 6976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 875)] * weight_shared[((((int)threadIdx.x) & 31) + 7008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 882)] * weight_shared[((((int)threadIdx.x) & 31) + 7232)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 883)] * weight_shared[((((int)threadIdx.x) & 31) + 7264)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 890)] * weight_shared[((((int)threadIdx.x) & 31) + 7488)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 891)] * weight_shared[((((int)threadIdx.x) & 31) + 7520)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 882)] * weight_shared[((((int)threadIdx.x) & 31) + 6976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 883)] * weight_shared[((((int)threadIdx.x) & 31) + 7008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 890)] * weight_shared[((((int)threadIdx.x) & 31) + 7232)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 891)] * weight_shared[((((int)threadIdx.x) & 31) + 7264)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 898)] * weight_shared[((((int)threadIdx.x) & 31) + 7488)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 899)] * weight_shared[((((int)threadIdx.x) & 31) + 7520)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 890)] * weight_shared[((((int)threadIdx.x) & 31) + 6976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 891)] * weight_shared[((((int)threadIdx.x) & 31) + 7008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 898)] * weight_shared[((((int)threadIdx.x) & 31) + 7232)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 899)] * weight_shared[((((int)threadIdx.x) & 31) + 7264)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 906)] * weight_shared[((((int)threadIdx.x) & 31) + 7488)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 907)] * weight_shared[((((int)threadIdx.x) & 31) + 7520)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 898)] * weight_shared[((((int)threadIdx.x) & 31) + 6976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 899)] * weight_shared[((((int)threadIdx.x) & 31) + 7008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 906)] * weight_shared[((((int)threadIdx.x) & 31) + 7232)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 907)] * weight_shared[((((int)threadIdx.x) & 31) + 7264)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 914)] * weight_shared[((((int)threadIdx.x) & 31) + 7488)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 915)] * weight_shared[((((int)threadIdx.x) & 31) + 7520)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 906)] * weight_shared[((((int)threadIdx.x) & 31) + 6976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 907)] * weight_shared[((((int)threadIdx.x) & 31) + 7008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 914)] * weight_shared[((((int)threadIdx.x) & 31) + 7232)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 915)] * weight_shared[((((int)threadIdx.x) & 31) + 7264)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 922)] * weight_shared[((((int)threadIdx.x) & 31) + 7488)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 923)] * weight_shared[((((int)threadIdx.x) & 31) + 7520)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 914)] * weight_shared[((((int)threadIdx.x) & 31) + 6976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 915)] * weight_shared[((((int)threadIdx.x) & 31) + 7008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 922)] * weight_shared[((((int)threadIdx.x) & 31) + 7232)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 923)] * weight_shared[((((int)threadIdx.x) & 31) + 7264)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 930)] * weight_shared[((((int)threadIdx.x) & 31) + 7488)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 931)] * weight_shared[((((int)threadIdx.x) & 31) + 7520)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 868)] * weight_shared[((((int)threadIdx.x) & 31) + 7040)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 869)] * weight_shared[((((int)threadIdx.x) & 31) + 7072)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 876)] * weight_shared[((((int)threadIdx.x) & 31) + 7296)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 877)] * weight_shared[((((int)threadIdx.x) & 31) + 7328)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 884)] * weight_shared[((((int)threadIdx.x) & 31) + 7552)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 885)] * weight_shared[((((int)threadIdx.x) & 31) + 7584)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 876)] * weight_shared[((((int)threadIdx.x) & 31) + 7040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 877)] * weight_shared[((((int)threadIdx.x) & 31) + 7072)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 884)] * weight_shared[((((int)threadIdx.x) & 31) + 7296)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 885)] * weight_shared[((((int)threadIdx.x) & 31) + 7328)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 892)] * weight_shared[((((int)threadIdx.x) & 31) + 7552)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 893)] * weight_shared[((((int)threadIdx.x) & 31) + 7584)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 884)] * weight_shared[((((int)threadIdx.x) & 31) + 7040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 885)] * weight_shared[((((int)threadIdx.x) & 31) + 7072)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 892)] * weight_shared[((((int)threadIdx.x) & 31) + 7296)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 893)] * weight_shared[((((int)threadIdx.x) & 31) + 7328)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 900)] * weight_shared[((((int)threadIdx.x) & 31) + 7552)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 901)] * weight_shared[((((int)threadIdx.x) & 31) + 7584)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 892)] * weight_shared[((((int)threadIdx.x) & 31) + 7040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 893)] * weight_shared[((((int)threadIdx.x) & 31) + 7072)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 900)] * weight_shared[((((int)threadIdx.x) & 31) + 7296)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 901)] * weight_shared[((((int)threadIdx.x) & 31) + 7328)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 908)] * weight_shared[((((int)threadIdx.x) & 31) + 7552)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 909)] * weight_shared[((((int)threadIdx.x) & 31) + 7584)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 900)] * weight_shared[((((int)threadIdx.x) & 31) + 7040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 901)] * weight_shared[((((int)threadIdx.x) & 31) + 7072)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 908)] * weight_shared[((((int)threadIdx.x) & 31) + 7296)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 909)] * weight_shared[((((int)threadIdx.x) & 31) + 7328)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 916)] * weight_shared[((((int)threadIdx.x) & 31) + 7552)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 917)] * weight_shared[((((int)threadIdx.x) & 31) + 7584)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 908)] * weight_shared[((((int)threadIdx.x) & 31) + 7040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 909)] * weight_shared[((((int)threadIdx.x) & 31) + 7072)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 916)] * weight_shared[((((int)threadIdx.x) & 31) + 7296)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 917)] * weight_shared[((((int)threadIdx.x) & 31) + 7328)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 924)] * weight_shared[((((int)threadIdx.x) & 31) + 7552)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 925)] * weight_shared[((((int)threadIdx.x) & 31) + 7584)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 916)] * weight_shared[((((int)threadIdx.x) & 31) + 7040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 917)] * weight_shared[((((int)threadIdx.x) & 31) + 7072)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 924)] * weight_shared[((((int)threadIdx.x) & 31) + 7296)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 925)] * weight_shared[((((int)threadIdx.x) & 31) + 7328)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 932)] * weight_shared[((((int)threadIdx.x) & 31) + 7552)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 933)] * weight_shared[((((int)threadIdx.x) & 31) + 7584)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 870)] * weight_shared[((((int)threadIdx.x) & 31) + 7104)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 871)] * weight_shared[((((int)threadIdx.x) & 31) + 7136)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 878)] * weight_shared[((((int)threadIdx.x) & 31) + 7360)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 879)] * weight_shared[((((int)threadIdx.x) & 31) + 7392)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 886)] * weight_shared[((((int)threadIdx.x) & 31) + 7616)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 887)] * weight_shared[((((int)threadIdx.x) & 31) + 7648)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 878)] * weight_shared[((((int)threadIdx.x) & 31) + 7104)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 879)] * weight_shared[((((int)threadIdx.x) & 31) + 7136)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 886)] * weight_shared[((((int)threadIdx.x) & 31) + 7360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 887)] * weight_shared[((((int)threadIdx.x) & 31) + 7392)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 894)] * weight_shared[((((int)threadIdx.x) & 31) + 7616)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 895)] * weight_shared[((((int)threadIdx.x) & 31) + 7648)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 886)] * weight_shared[((((int)threadIdx.x) & 31) + 7104)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 887)] * weight_shared[((((int)threadIdx.x) & 31) + 7136)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 894)] * weight_shared[((((int)threadIdx.x) & 31) + 7360)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 895)] * weight_shared[((((int)threadIdx.x) & 31) + 7392)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 902)] * weight_shared[((((int)threadIdx.x) & 31) + 7616)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 903)] * weight_shared[((((int)threadIdx.x) & 31) + 7648)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 894)] * weight_shared[((((int)threadIdx.x) & 31) + 7104)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 895)] * weight_shared[((((int)threadIdx.x) & 31) + 7136)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 902)] * weight_shared[((((int)threadIdx.x) & 31) + 7360)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 903)] * weight_shared[((((int)threadIdx.x) & 31) + 7392)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 910)] * weight_shared[((((int)threadIdx.x) & 31) + 7616)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 911)] * weight_shared[((((int)threadIdx.x) & 31) + 7648)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 902)] * weight_shared[((((int)threadIdx.x) & 31) + 7104)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 903)] * weight_shared[((((int)threadIdx.x) & 31) + 7136)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 910)] * weight_shared[((((int)threadIdx.x) & 31) + 7360)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 911)] * weight_shared[((((int)threadIdx.x) & 31) + 7392)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 918)] * weight_shared[((((int)threadIdx.x) & 31) + 7616)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 919)] * weight_shared[((((int)threadIdx.x) & 31) + 7648)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 910)] * weight_shared[((((int)threadIdx.x) & 31) + 7104)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 911)] * weight_shared[((((int)threadIdx.x) & 31) + 7136)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 918)] * weight_shared[((((int)threadIdx.x) & 31) + 7360)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 919)] * weight_shared[((((int)threadIdx.x) & 31) + 7392)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 926)] * weight_shared[((((int)threadIdx.x) & 31) + 7616)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 927)] * weight_shared[((((int)threadIdx.x) & 31) + 7648)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 918)] * weight_shared[((((int)threadIdx.x) & 31) + 7104)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 919)] * weight_shared[((((int)threadIdx.x) & 31) + 7136)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 926)] * weight_shared[((((int)threadIdx.x) & 31) + 7360)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 927)] * weight_shared[((((int)threadIdx.x) & 31) + 7392)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 934)] * weight_shared[((((int)threadIdx.x) & 31) + 7616)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 935)] * weight_shared[((((int)threadIdx.x) & 31) + 7648)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 936)] * weight_shared[((((int)threadIdx.x) & 31) + 7680)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 937)] * weight_shared[((((int)threadIdx.x) & 31) + 7712)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 944)] * weight_shared[((((int)threadIdx.x) & 31) + 7936)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 945)] * weight_shared[((((int)threadIdx.x) & 31) + 7968)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 952)] * weight_shared[((((int)threadIdx.x) & 31) + 8192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 953)] * weight_shared[((((int)threadIdx.x) & 31) + 8224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 944)] * weight_shared[((((int)threadIdx.x) & 31) + 7680)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 945)] * weight_shared[((((int)threadIdx.x) & 31) + 7712)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 952)] * weight_shared[((((int)threadIdx.x) & 31) + 7936)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 953)] * weight_shared[((((int)threadIdx.x) & 31) + 7968)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 960)] * weight_shared[((((int)threadIdx.x) & 31) + 8192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 961)] * weight_shared[((((int)threadIdx.x) & 31) + 8224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 952)] * weight_shared[((((int)threadIdx.x) & 31) + 7680)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 953)] * weight_shared[((((int)threadIdx.x) & 31) + 7712)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 960)] * weight_shared[((((int)threadIdx.x) & 31) + 7936)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 961)] * weight_shared[((((int)threadIdx.x) & 31) + 7968)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 968)] * weight_shared[((((int)threadIdx.x) & 31) + 8192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 969)] * weight_shared[((((int)threadIdx.x) & 31) + 8224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 960)] * weight_shared[((((int)threadIdx.x) & 31) + 7680)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 961)] * weight_shared[((((int)threadIdx.x) & 31) + 7712)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 968)] * weight_shared[((((int)threadIdx.x) & 31) + 7936)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 969)] * weight_shared[((((int)threadIdx.x) & 31) + 7968)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 976)] * weight_shared[((((int)threadIdx.x) & 31) + 8192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 977)] * weight_shared[((((int)threadIdx.x) & 31) + 8224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 968)] * weight_shared[((((int)threadIdx.x) & 31) + 7680)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 969)] * weight_shared[((((int)threadIdx.x) & 31) + 7712)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 976)] * weight_shared[((((int)threadIdx.x) & 31) + 7936)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 977)] * weight_shared[((((int)threadIdx.x) & 31) + 7968)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 984)] * weight_shared[((((int)threadIdx.x) & 31) + 8192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 985)] * weight_shared[((((int)threadIdx.x) & 31) + 8224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 976)] * weight_shared[((((int)threadIdx.x) & 31) + 7680)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 977)] * weight_shared[((((int)threadIdx.x) & 31) + 7712)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 984)] * weight_shared[((((int)threadIdx.x) & 31) + 7936)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 985)] * weight_shared[((((int)threadIdx.x) & 31) + 7968)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 992)] * weight_shared[((((int)threadIdx.x) & 31) + 8192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 993)] * weight_shared[((((int)threadIdx.x) & 31) + 8224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 984)] * weight_shared[((((int)threadIdx.x) & 31) + 7680)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 985)] * weight_shared[((((int)threadIdx.x) & 31) + 7712)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 992)] * weight_shared[((((int)threadIdx.x) & 31) + 7936)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 993)] * weight_shared[((((int)threadIdx.x) & 31) + 7968)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1000)] * weight_shared[((((int)threadIdx.x) & 31) + 8192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1001)] * weight_shared[((((int)threadIdx.x) & 31) + 8224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 938)] * weight_shared[((((int)threadIdx.x) & 31) + 7744)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 939)] * weight_shared[((((int)threadIdx.x) & 31) + 7776)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 946)] * weight_shared[((((int)threadIdx.x) & 31) + 8000)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 947)] * weight_shared[((((int)threadIdx.x) & 31) + 8032)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 954)] * weight_shared[((((int)threadIdx.x) & 31) + 8256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 955)] * weight_shared[((((int)threadIdx.x) & 31) + 8288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 946)] * weight_shared[((((int)threadIdx.x) & 31) + 7744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 947)] * weight_shared[((((int)threadIdx.x) & 31) + 7776)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 954)] * weight_shared[((((int)threadIdx.x) & 31) + 8000)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 955)] * weight_shared[((((int)threadIdx.x) & 31) + 8032)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 962)] * weight_shared[((((int)threadIdx.x) & 31) + 8256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 963)] * weight_shared[((((int)threadIdx.x) & 31) + 8288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 954)] * weight_shared[((((int)threadIdx.x) & 31) + 7744)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 955)] * weight_shared[((((int)threadIdx.x) & 31) + 7776)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 962)] * weight_shared[((((int)threadIdx.x) & 31) + 8000)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 963)] * weight_shared[((((int)threadIdx.x) & 31) + 8032)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 970)] * weight_shared[((((int)threadIdx.x) & 31) + 8256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 971)] * weight_shared[((((int)threadIdx.x) & 31) + 8288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 962)] * weight_shared[((((int)threadIdx.x) & 31) + 7744)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 963)] * weight_shared[((((int)threadIdx.x) & 31) + 7776)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 970)] * weight_shared[((((int)threadIdx.x) & 31) + 8000)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 971)] * weight_shared[((((int)threadIdx.x) & 31) + 8032)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 978)] * weight_shared[((((int)threadIdx.x) & 31) + 8256)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 979)] * weight_shared[((((int)threadIdx.x) & 31) + 8288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 970)] * weight_shared[((((int)threadIdx.x) & 31) + 7744)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 971)] * weight_shared[((((int)threadIdx.x) & 31) + 7776)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 978)] * weight_shared[((((int)threadIdx.x) & 31) + 8000)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 979)] * weight_shared[((((int)threadIdx.x) & 31) + 8032)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 986)] * weight_shared[((((int)threadIdx.x) & 31) + 8256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 987)] * weight_shared[((((int)threadIdx.x) & 31) + 8288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 978)] * weight_shared[((((int)threadIdx.x) & 31) + 7744)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 979)] * weight_shared[((((int)threadIdx.x) & 31) + 7776)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 986)] * weight_shared[((((int)threadIdx.x) & 31) + 8000)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 987)] * weight_shared[((((int)threadIdx.x) & 31) + 8032)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 994)] * weight_shared[((((int)threadIdx.x) & 31) + 8256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 995)] * weight_shared[((((int)threadIdx.x) & 31) + 8288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 986)] * weight_shared[((((int)threadIdx.x) & 31) + 7744)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 987)] * weight_shared[((((int)threadIdx.x) & 31) + 7776)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 994)] * weight_shared[((((int)threadIdx.x) & 31) + 8000)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 995)] * weight_shared[((((int)threadIdx.x) & 31) + 8032)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1002)] * weight_shared[((((int)threadIdx.x) & 31) + 8256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1003)] * weight_shared[((((int)threadIdx.x) & 31) + 8288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 940)] * weight_shared[((((int)threadIdx.x) & 31) + 7808)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 941)] * weight_shared[((((int)threadIdx.x) & 31) + 7840)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 948)] * weight_shared[((((int)threadIdx.x) & 31) + 8064)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 949)] * weight_shared[((((int)threadIdx.x) & 31) + 8096)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 956)] * weight_shared[((((int)threadIdx.x) & 31) + 8320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 957)] * weight_shared[((((int)threadIdx.x) & 31) + 8352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 948)] * weight_shared[((((int)threadIdx.x) & 31) + 7808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 949)] * weight_shared[((((int)threadIdx.x) & 31) + 7840)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 956)] * weight_shared[((((int)threadIdx.x) & 31) + 8064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 957)] * weight_shared[((((int)threadIdx.x) & 31) + 8096)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 964)] * weight_shared[((((int)threadIdx.x) & 31) + 8320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 965)] * weight_shared[((((int)threadIdx.x) & 31) + 8352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 956)] * weight_shared[((((int)threadIdx.x) & 31) + 7808)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 957)] * weight_shared[((((int)threadIdx.x) & 31) + 7840)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 964)] * weight_shared[((((int)threadIdx.x) & 31) + 8064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 965)] * weight_shared[((((int)threadIdx.x) & 31) + 8096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 972)] * weight_shared[((((int)threadIdx.x) & 31) + 8320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 973)] * weight_shared[((((int)threadIdx.x) & 31) + 8352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 964)] * weight_shared[((((int)threadIdx.x) & 31) + 7808)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 965)] * weight_shared[((((int)threadIdx.x) & 31) + 7840)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 972)] * weight_shared[((((int)threadIdx.x) & 31) + 8064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 973)] * weight_shared[((((int)threadIdx.x) & 31) + 8096)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 980)] * weight_shared[((((int)threadIdx.x) & 31) + 8320)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 981)] * weight_shared[((((int)threadIdx.x) & 31) + 8352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 972)] * weight_shared[((((int)threadIdx.x) & 31) + 7808)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 973)] * weight_shared[((((int)threadIdx.x) & 31) + 7840)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 980)] * weight_shared[((((int)threadIdx.x) & 31) + 8064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 981)] * weight_shared[((((int)threadIdx.x) & 31) + 8096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 988)] * weight_shared[((((int)threadIdx.x) & 31) + 8320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 989)] * weight_shared[((((int)threadIdx.x) & 31) + 8352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 980)] * weight_shared[((((int)threadIdx.x) & 31) + 7808)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 981)] * weight_shared[((((int)threadIdx.x) & 31) + 7840)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 988)] * weight_shared[((((int)threadIdx.x) & 31) + 8064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 989)] * weight_shared[((((int)threadIdx.x) & 31) + 8096)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 996)] * weight_shared[((((int)threadIdx.x) & 31) + 8320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 997)] * weight_shared[((((int)threadIdx.x) & 31) + 8352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 988)] * weight_shared[((((int)threadIdx.x) & 31) + 7808)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 989)] * weight_shared[((((int)threadIdx.x) & 31) + 7840)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 996)] * weight_shared[((((int)threadIdx.x) & 31) + 8064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 997)] * weight_shared[((((int)threadIdx.x) & 31) + 8096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1004)] * weight_shared[((((int)threadIdx.x) & 31) + 8320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1005)] * weight_shared[((((int)threadIdx.x) & 31) + 8352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 942)] * weight_shared[((((int)threadIdx.x) & 31) + 7872)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 943)] * weight_shared[((((int)threadIdx.x) & 31) + 7904)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 950)] * weight_shared[((((int)threadIdx.x) & 31) + 8128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 951)] * weight_shared[((((int)threadIdx.x) & 31) + 8160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 958)] * weight_shared[((((int)threadIdx.x) & 31) + 8384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 959)] * weight_shared[((((int)threadIdx.x) & 31) + 8416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 950)] * weight_shared[((((int)threadIdx.x) & 31) + 7872)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 951)] * weight_shared[((((int)threadIdx.x) & 31) + 7904)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 958)] * weight_shared[((((int)threadIdx.x) & 31) + 8128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 959)] * weight_shared[((((int)threadIdx.x) & 31) + 8160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 966)] * weight_shared[((((int)threadIdx.x) & 31) + 8384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 967)] * weight_shared[((((int)threadIdx.x) & 31) + 8416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 958)] * weight_shared[((((int)threadIdx.x) & 31) + 7872)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 959)] * weight_shared[((((int)threadIdx.x) & 31) + 7904)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 966)] * weight_shared[((((int)threadIdx.x) & 31) + 8128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 967)] * weight_shared[((((int)threadIdx.x) & 31) + 8160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 974)] * weight_shared[((((int)threadIdx.x) & 31) + 8384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 975)] * weight_shared[((((int)threadIdx.x) & 31) + 8416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 966)] * weight_shared[((((int)threadIdx.x) & 31) + 7872)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 967)] * weight_shared[((((int)threadIdx.x) & 31) + 7904)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 974)] * weight_shared[((((int)threadIdx.x) & 31) + 8128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 975)] * weight_shared[((((int)threadIdx.x) & 31) + 8160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 982)] * weight_shared[((((int)threadIdx.x) & 31) + 8384)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 983)] * weight_shared[((((int)threadIdx.x) & 31) + 8416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 974)] * weight_shared[((((int)threadIdx.x) & 31) + 7872)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 975)] * weight_shared[((((int)threadIdx.x) & 31) + 7904)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 982)] * weight_shared[((((int)threadIdx.x) & 31) + 8128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 983)] * weight_shared[((((int)threadIdx.x) & 31) + 8160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 990)] * weight_shared[((((int)threadIdx.x) & 31) + 8384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 991)] * weight_shared[((((int)threadIdx.x) & 31) + 8416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 982)] * weight_shared[((((int)threadIdx.x) & 31) + 7872)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 983)] * weight_shared[((((int)threadIdx.x) & 31) + 7904)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 990)] * weight_shared[((((int)threadIdx.x) & 31) + 8128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 991)] * weight_shared[((((int)threadIdx.x) & 31) + 8160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 998)] * weight_shared[((((int)threadIdx.x) & 31) + 8384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 999)] * weight_shared[((((int)threadIdx.x) & 31) + 8416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 990)] * weight_shared[((((int)threadIdx.x) & 31) + 7872)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 991)] * weight_shared[((((int)threadIdx.x) & 31) + 7904)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 998)] * weight_shared[((((int)threadIdx.x) & 31) + 8128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 999)] * weight_shared[((((int)threadIdx.x) & 31) + 8160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1006)] * weight_shared[((((int)threadIdx.x) & 31) + 8384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1007)] * weight_shared[((((int)threadIdx.x) & 31) + 8416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1008)] * weight_shared[((((int)threadIdx.x) & 31) + 8448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1009)] * weight_shared[((((int)threadIdx.x) & 31) + 8480)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1016)] * weight_shared[((((int)threadIdx.x) & 31) + 8704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1017)] * weight_shared[((((int)threadIdx.x) & 31) + 8736)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1024)] * weight_shared[((((int)threadIdx.x) & 31) + 8960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1025)] * weight_shared[((((int)threadIdx.x) & 31) + 8992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1016)] * weight_shared[((((int)threadIdx.x) & 31) + 8448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1017)] * weight_shared[((((int)threadIdx.x) & 31) + 8480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1024)] * weight_shared[((((int)threadIdx.x) & 31) + 8704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1025)] * weight_shared[((((int)threadIdx.x) & 31) + 8736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1032)] * weight_shared[((((int)threadIdx.x) & 31) + 8960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1033)] * weight_shared[((((int)threadIdx.x) & 31) + 8992)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1024)] * weight_shared[((((int)threadIdx.x) & 31) + 8448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1025)] * weight_shared[((((int)threadIdx.x) & 31) + 8480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1032)] * weight_shared[((((int)threadIdx.x) & 31) + 8704)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1033)] * weight_shared[((((int)threadIdx.x) & 31) + 8736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1040)] * weight_shared[((((int)threadIdx.x) & 31) + 8960)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1041)] * weight_shared[((((int)threadIdx.x) & 31) + 8992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1032)] * weight_shared[((((int)threadIdx.x) & 31) + 8448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1033)] * weight_shared[((((int)threadIdx.x) & 31) + 8480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1040)] * weight_shared[((((int)threadIdx.x) & 31) + 8704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1041)] * weight_shared[((((int)threadIdx.x) & 31) + 8736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1048)] * weight_shared[((((int)threadIdx.x) & 31) + 8960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1049)] * weight_shared[((((int)threadIdx.x) & 31) + 8992)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1040)] * weight_shared[((((int)threadIdx.x) & 31) + 8448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1041)] * weight_shared[((((int)threadIdx.x) & 31) + 8480)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1048)] * weight_shared[((((int)threadIdx.x) & 31) + 8704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1049)] * weight_shared[((((int)threadIdx.x) & 31) + 8736)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1056)] * weight_shared[((((int)threadIdx.x) & 31) + 8960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1057)] * weight_shared[((((int)threadIdx.x) & 31) + 8992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1048)] * weight_shared[((((int)threadIdx.x) & 31) + 8448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1049)] * weight_shared[((((int)threadIdx.x) & 31) + 8480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1056)] * weight_shared[((((int)threadIdx.x) & 31) + 8704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1057)] * weight_shared[((((int)threadIdx.x) & 31) + 8736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1064)] * weight_shared[((((int)threadIdx.x) & 31) + 8960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1065)] * weight_shared[((((int)threadIdx.x) & 31) + 8992)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1056)] * weight_shared[((((int)threadIdx.x) & 31) + 8448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1057)] * weight_shared[((((int)threadIdx.x) & 31) + 8480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1064)] * weight_shared[((((int)threadIdx.x) & 31) + 8704)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1065)] * weight_shared[((((int)threadIdx.x) & 31) + 8736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1072)] * weight_shared[((((int)threadIdx.x) & 31) + 8960)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1073)] * weight_shared[((((int)threadIdx.x) & 31) + 8992)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1010)] * weight_shared[((((int)threadIdx.x) & 31) + 8512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1011)] * weight_shared[((((int)threadIdx.x) & 31) + 8544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1018)] * weight_shared[((((int)threadIdx.x) & 31) + 8768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1019)] * weight_shared[((((int)threadIdx.x) & 31) + 8800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1026)] * weight_shared[((((int)threadIdx.x) & 31) + 9024)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1027)] * weight_shared[((((int)threadIdx.x) & 31) + 9056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1018)] * weight_shared[((((int)threadIdx.x) & 31) + 8512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1019)] * weight_shared[((((int)threadIdx.x) & 31) + 8544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1026)] * weight_shared[((((int)threadIdx.x) & 31) + 8768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1027)] * weight_shared[((((int)threadIdx.x) & 31) + 8800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1034)] * weight_shared[((((int)threadIdx.x) & 31) + 9024)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1035)] * weight_shared[((((int)threadIdx.x) & 31) + 9056)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1026)] * weight_shared[((((int)threadIdx.x) & 31) + 8512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1027)] * weight_shared[((((int)threadIdx.x) & 31) + 8544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1034)] * weight_shared[((((int)threadIdx.x) & 31) + 8768)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1035)] * weight_shared[((((int)threadIdx.x) & 31) + 8800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1042)] * weight_shared[((((int)threadIdx.x) & 31) + 9024)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1043)] * weight_shared[((((int)threadIdx.x) & 31) + 9056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1034)] * weight_shared[((((int)threadIdx.x) & 31) + 8512)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1035)] * weight_shared[((((int)threadIdx.x) & 31) + 8544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1042)] * weight_shared[((((int)threadIdx.x) & 31) + 8768)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1043)] * weight_shared[((((int)threadIdx.x) & 31) + 8800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1050)] * weight_shared[((((int)threadIdx.x) & 31) + 9024)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1051)] * weight_shared[((((int)threadIdx.x) & 31) + 9056)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1042)] * weight_shared[((((int)threadIdx.x) & 31) + 8512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1043)] * weight_shared[((((int)threadIdx.x) & 31) + 8544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1050)] * weight_shared[((((int)threadIdx.x) & 31) + 8768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1051)] * weight_shared[((((int)threadIdx.x) & 31) + 8800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1058)] * weight_shared[((((int)threadIdx.x) & 31) + 9024)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1059)] * weight_shared[((((int)threadIdx.x) & 31) + 9056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1050)] * weight_shared[((((int)threadIdx.x) & 31) + 8512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1051)] * weight_shared[((((int)threadIdx.x) & 31) + 8544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1058)] * weight_shared[((((int)threadIdx.x) & 31) + 8768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1059)] * weight_shared[((((int)threadIdx.x) & 31) + 8800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1066)] * weight_shared[((((int)threadIdx.x) & 31) + 9024)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1067)] * weight_shared[((((int)threadIdx.x) & 31) + 9056)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1058)] * weight_shared[((((int)threadIdx.x) & 31) + 8512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1059)] * weight_shared[((((int)threadIdx.x) & 31) + 8544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1066)] * weight_shared[((((int)threadIdx.x) & 31) + 8768)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1067)] * weight_shared[((((int)threadIdx.x) & 31) + 8800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1074)] * weight_shared[((((int)threadIdx.x) & 31) + 9024)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1075)] * weight_shared[((((int)threadIdx.x) & 31) + 9056)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1012)] * weight_shared[((((int)threadIdx.x) & 31) + 8576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1013)] * weight_shared[((((int)threadIdx.x) & 31) + 8608)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1020)] * weight_shared[((((int)threadIdx.x) & 31) + 8832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1021)] * weight_shared[((((int)threadIdx.x) & 31) + 8864)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1028)] * weight_shared[((((int)threadIdx.x) & 31) + 9088)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1029)] * weight_shared[((((int)threadIdx.x) & 31) + 9120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1020)] * weight_shared[((((int)threadIdx.x) & 31) + 8576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1021)] * weight_shared[((((int)threadIdx.x) & 31) + 8608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1028)] * weight_shared[((((int)threadIdx.x) & 31) + 8832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1029)] * weight_shared[((((int)threadIdx.x) & 31) + 8864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1036)] * weight_shared[((((int)threadIdx.x) & 31) + 9088)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1037)] * weight_shared[((((int)threadIdx.x) & 31) + 9120)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1028)] * weight_shared[((((int)threadIdx.x) & 31) + 8576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1029)] * weight_shared[((((int)threadIdx.x) & 31) + 8608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1036)] * weight_shared[((((int)threadIdx.x) & 31) + 8832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1037)] * weight_shared[((((int)threadIdx.x) & 31) + 8864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1044)] * weight_shared[((((int)threadIdx.x) & 31) + 9088)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1045)] * weight_shared[((((int)threadIdx.x) & 31) + 9120)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1036)] * weight_shared[((((int)threadIdx.x) & 31) + 8576)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1037)] * weight_shared[((((int)threadIdx.x) & 31) + 8608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1044)] * weight_shared[((((int)threadIdx.x) & 31) + 8832)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1045)] * weight_shared[((((int)threadIdx.x) & 31) + 8864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1052)] * weight_shared[((((int)threadIdx.x) & 31) + 9088)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1053)] * weight_shared[((((int)threadIdx.x) & 31) + 9120)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1044)] * weight_shared[((((int)threadIdx.x) & 31) + 8576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1045)] * weight_shared[((((int)threadIdx.x) & 31) + 8608)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1052)] * weight_shared[((((int)threadIdx.x) & 31) + 8832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1053)] * weight_shared[((((int)threadIdx.x) & 31) + 8864)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1060)] * weight_shared[((((int)threadIdx.x) & 31) + 9088)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1061)] * weight_shared[((((int)threadIdx.x) & 31) + 9120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1052)] * weight_shared[((((int)threadIdx.x) & 31) + 8576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1053)] * weight_shared[((((int)threadIdx.x) & 31) + 8608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1060)] * weight_shared[((((int)threadIdx.x) & 31) + 8832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1061)] * weight_shared[((((int)threadIdx.x) & 31) + 8864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1068)] * weight_shared[((((int)threadIdx.x) & 31) + 9088)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1069)] * weight_shared[((((int)threadIdx.x) & 31) + 9120)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1060)] * weight_shared[((((int)threadIdx.x) & 31) + 8576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1061)] * weight_shared[((((int)threadIdx.x) & 31) + 8608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1068)] * weight_shared[((((int)threadIdx.x) & 31) + 8832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1069)] * weight_shared[((((int)threadIdx.x) & 31) + 8864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1076)] * weight_shared[((((int)threadIdx.x) & 31) + 9088)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1077)] * weight_shared[((((int)threadIdx.x) & 31) + 9120)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1014)] * weight_shared[((((int)threadIdx.x) & 31) + 8640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1015)] * weight_shared[((((int)threadIdx.x) & 31) + 8672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1022)] * weight_shared[((((int)threadIdx.x) & 31) + 8896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1023)] * weight_shared[((((int)threadIdx.x) & 31) + 8928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1030)] * weight_shared[((((int)threadIdx.x) & 31) + 9152)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1031)] * weight_shared[((((int)threadIdx.x) & 31) + 9184)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1022)] * weight_shared[((((int)threadIdx.x) & 31) + 8640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1023)] * weight_shared[((((int)threadIdx.x) & 31) + 8672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1030)] * weight_shared[((((int)threadIdx.x) & 31) + 8896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1031)] * weight_shared[((((int)threadIdx.x) & 31) + 8928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1038)] * weight_shared[((((int)threadIdx.x) & 31) + 9152)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1039)] * weight_shared[((((int)threadIdx.x) & 31) + 9184)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1030)] * weight_shared[((((int)threadIdx.x) & 31) + 8640)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1031)] * weight_shared[((((int)threadIdx.x) & 31) + 8672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1038)] * weight_shared[((((int)threadIdx.x) & 31) + 8896)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1039)] * weight_shared[((((int)threadIdx.x) & 31) + 8928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1046)] * weight_shared[((((int)threadIdx.x) & 31) + 9152)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1047)] * weight_shared[((((int)threadIdx.x) & 31) + 9184)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1038)] * weight_shared[((((int)threadIdx.x) & 31) + 8640)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1039)] * weight_shared[((((int)threadIdx.x) & 31) + 8672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1046)] * weight_shared[((((int)threadIdx.x) & 31) + 8896)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1047)] * weight_shared[((((int)threadIdx.x) & 31) + 8928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1054)] * weight_shared[((((int)threadIdx.x) & 31) + 9152)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1055)] * weight_shared[((((int)threadIdx.x) & 31) + 9184)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1046)] * weight_shared[((((int)threadIdx.x) & 31) + 8640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1047)] * weight_shared[((((int)threadIdx.x) & 31) + 8672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1054)] * weight_shared[((((int)threadIdx.x) & 31) + 8896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1055)] * weight_shared[((((int)threadIdx.x) & 31) + 8928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1062)] * weight_shared[((((int)threadIdx.x) & 31) + 9152)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1063)] * weight_shared[((((int)threadIdx.x) & 31) + 9184)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1054)] * weight_shared[((((int)threadIdx.x) & 31) + 8640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1055)] * weight_shared[((((int)threadIdx.x) & 31) + 8672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1062)] * weight_shared[((((int)threadIdx.x) & 31) + 8896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1063)] * weight_shared[((((int)threadIdx.x) & 31) + 8928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1070)] * weight_shared[((((int)threadIdx.x) & 31) + 9152)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1071)] * weight_shared[((((int)threadIdx.x) & 31) + 9184)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1062)] * weight_shared[((((int)threadIdx.x) & 31) + 8640)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1063)] * weight_shared[((((int)threadIdx.x) & 31) + 8672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1070)] * weight_shared[((((int)threadIdx.x) & 31) + 8896)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1071)] * weight_shared[((((int)threadIdx.x) & 31) + 8928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1078)] * weight_shared[((((int)threadIdx.x) & 31) + 9152)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 72) + 1079)] * weight_shared[((((int)threadIdx.x) & 31) + 9184)]));
  conv2d_nhwc[((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 256)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 512)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 768)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 1024)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 1280)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 5) * 3584)) + (((((int)blockIdx.x) & 15) >> 3) * 1792)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 1536)] = conv2d_nhwc_local[6];
}


