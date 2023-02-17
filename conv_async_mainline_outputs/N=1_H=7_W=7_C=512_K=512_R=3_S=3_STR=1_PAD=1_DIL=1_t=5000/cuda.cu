
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
  __shared__ float PadInput_shared[864];
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
    int src_bytes = (((24 <= ((int)threadIdx.x)) && (1 <= ((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)))) && (((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)threadIdx.x) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + (((((int)threadIdx.x) % 24) >> 3) * 512)) + (((int)threadIdx.x) & 7)) - 4096))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((((int)threadIdx.x) + 32) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 8)) + (((int)threadIdx.x) & 7))))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 32) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4096))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((((int)threadIdx.x) + 64) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 8)) + (((int)threadIdx.x) & 7))))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 64) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4096))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 96)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3))) && (((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)threadIdx.x) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + (((((int)threadIdx.x) % 24) >> 3) * 512)) + (((int)threadIdx.x) & 7)) + 10240))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((((int)threadIdx.x) + 128) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 8)) + (((int)threadIdx.x) & 7))))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 128) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4096))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((((int)threadIdx.x) + 160) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 8)) + (((int)threadIdx.x) & 7))))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 160) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4096))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 24) {
    PadInput_shared[(((int)threadIdx.x) + 192)] = 0.000000e+00f;
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 262144))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 264192))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 524288))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 526336))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 786432))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 788480))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1048576))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1050624))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1310720))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1312768))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1572864))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1574912))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1835008))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1837056))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2097152))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2099200))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 216)))
    );
    int src_bytes = (((24 <= ((int)threadIdx.x)) && (1 <= ((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)))) && (((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)threadIdx.x) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + (((((int)threadIdx.x) % 24) >> 3) * 512)) + (((int)threadIdx.x) & 7)) - 4088))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 32) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 8)) + (((int)threadIdx.x) & 7)) + 216)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 32) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4088))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 64) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 8)) + (((int)threadIdx.x) & 7)) + 216)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 64) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4088))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 312)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3))) && (((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)threadIdx.x) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + (((((int)threadIdx.x) % 24) >> 3) * 512)) + (((int)threadIdx.x) & 7)) + 10248))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 128) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 8)) + (((int)threadIdx.x) & 7)) + 216)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 128) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4088))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 160) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 8)) + (((int)threadIdx.x) & 7)) + 216)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 160) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4088))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 24) {
    PadInput_shared[(((int)threadIdx.x) + 408)] = 0.000000e+00f;
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 4096))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 6144))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 266240))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 268288))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 528384))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 530432))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 790528))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 792576))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1052672))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1054720))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1314816))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1316864))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1576960))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1579008))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1839104))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1841152))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2101248))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2103296))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 432)))
    );
    int src_bytes = (((24 <= ((int)threadIdx.x)) && (1 <= ((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)))) && (((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)threadIdx.x) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + (((((int)threadIdx.x) % 24) >> 3) * 512)) + (((int)threadIdx.x) & 7)) - 4080))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 32) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 8)) + (((int)threadIdx.x) & 7)) + 432)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 32) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4080))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 64) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 8)) + (((int)threadIdx.x) & 7)) + 432)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 64) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4080))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 528)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3))) && (((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)threadIdx.x) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + (((((int)threadIdx.x) % 24) >> 3) * 512)) + (((int)threadIdx.x) & 7)) + 10256))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 128) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 8)) + (((int)threadIdx.x) & 7)) + 432)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 128) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4080))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((((int)threadIdx.x) + 160) / 24) * 24) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 8)) + (((int)threadIdx.x) & 7)) + 432)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) + 160) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 512)) + (((int)threadIdx.x) & 7)) - 4080))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 24) {
    PadInput_shared[(((int)threadIdx.x) + 624)] = 0.000000e+00f;
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 8192))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 10240))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 270336))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 272384))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 532480))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 534528))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 794624))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 796672))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1056768))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1058816))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1318912))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1320960))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1581056))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 6272)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1583104))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1843200))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 6528)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1845248))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2105344))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 6784)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 512) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2107392))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 61; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 216) + ((int)threadIdx.x))))
    );
    int src_bytes = (((24 <= ((int)threadIdx.x)) && (1 <= ((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)))) && (((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + (((((int)threadIdx.x) % 24) >> 3) * 512)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 4072))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((rh_0_rw_0_rc_0_fused + 3) & 3) * 216) + (((((int)threadIdx.x) + 32) / 24) * 24)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 8)) + (((int)threadIdx.x) & 7))))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)threadIdx.x) + 32) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 512)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 4072))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((rh_0_rw_0_rc_0_fused + 3) & 3) * 216) + (((((int)threadIdx.x) + 64) / 24) * 24)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 8)) + (((int)threadIdx.x) & 7))))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)threadIdx.x) + 64) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 512)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 4072))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 216) + ((int)threadIdx.x)) + 96)))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3))) && (((((int)blockIdx.x) >> 4) + ((((int)threadIdx.x) % 24) >> 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)threadIdx.x) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + (((((int)threadIdx.x) % 24) >> 3) * 512)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) + 10264))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((rh_0_rw_0_rc_0_fused + 3) & 3) * 216) + (((((int)threadIdx.x) + 128) / 24) * 24)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 8)) + (((int)threadIdx.x) & 7))))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 1) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)threadIdx.x) + 128) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 512)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 4072))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((((rh_0_rw_0_rc_0_fused + 3) & 3) * 216) + (((((int)threadIdx.x) + 160) / 24) * 24)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 8)) + (((int)threadIdx.x) & 7))))
    );
    int src_bytes = ((1 <= ((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3))) && (((((int)blockIdx.x) >> 4) + (((((int)threadIdx.x) >> 3) + 2) % 3)) < 8)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)threadIdx.x) + 160) / 24) * 3584) + ((((int)blockIdx.x) >> 4) * 512)) + ((((((int)threadIdx.x) >> 3) + 2) % 3) * 512)) + (rh_0_rw_0_rc_0_fused * 8)) + (((int)threadIdx.x) & 7)) - 4072))), "n"(4), "r"(src_bytes)
    );
  }
    if (((int)threadIdx.x) < 24) {
      PadInput_shared[(((((rh_0_rw_0_rc_0_fused + 3) & 3) * 216) + ((int)threadIdx.x)) + 192)] = 0.000000e+00f;
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 12288))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14336))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 274432))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 276480))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 536576))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 640)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 538624))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 798720))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 896)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 800768))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1060864))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 1152)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1062912))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1323008))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 1408)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1325056))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1585152))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 1664)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1587200))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1847296))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 1920)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1849344))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2109440))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 2304) + (((int)threadIdx.x) * 4)) + 2176)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 4096) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2111488))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((rh_0_rw_0_rc_0_fused & 3) * 216)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 24)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 48)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 72)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 96)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 120)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 144)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x))]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 768)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1536)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 32)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 800)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1568)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 64)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 832)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1600)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 96)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 864)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1632)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 128)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 896)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1664)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 160)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 928)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1696)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 192)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 960)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1728)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 224)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 992)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1760)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 256)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1024)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1792)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 288)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1056)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1824)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1088)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1856)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 352)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1120)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1888)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 384)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1152)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1920)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 416)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1184)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1952)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 448)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1216)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1984)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 480)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1248)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2016)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2048)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2048)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2048)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2048)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2048)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2048)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 512)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1280)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2048)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2080)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2080)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2080)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2080)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2080)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2080)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 544)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1312)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2080)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2112)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2112)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2112)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2112)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2112)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2112)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1344)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2112)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2144)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2144)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2144)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2144)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2144)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2144)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 608)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1376)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2144)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2176)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2176)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2176)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2176)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2176)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2176)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 640)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1408)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2176)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2208)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2208)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2208)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2208)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2208)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2208)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 672)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1440)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2208)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2240)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2240)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2240)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2240)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2240)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2240)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 704)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1472)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2240)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2272)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2272)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2272)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2272)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2272)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2272)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 736)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 1504)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 216) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 2304) + ((int)threadIdx.x)) + 2272)]));
  }
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[216] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[240] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[264] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[240] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[264] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[288] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[264] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[288] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[312] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[288] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[312] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[336] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[312] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[336] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[360] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[336] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[360] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[384] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[360] * weight_shared[(((int)threadIdx.x) + 2304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[384] * weight_shared[(((int)threadIdx.x) + 3072)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[408] * weight_shared[(((int)threadIdx.x) + 3840)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[217] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[241] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[265] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[241] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[265] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[289] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[265] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[289] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[313] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[289] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[313] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[337] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[313] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[337] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[361] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[337] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[361] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[385] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[361] * weight_shared[(((int)threadIdx.x) + 2336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[385] * weight_shared[(((int)threadIdx.x) + 3104)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[409] * weight_shared[(((int)threadIdx.x) + 3872)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[218] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[242] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[266] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[242] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[266] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[290] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[266] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[290] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[314] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[290] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[314] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[338] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[314] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[338] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[362] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[338] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[362] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[386] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[362] * weight_shared[(((int)threadIdx.x) + 2368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[386] * weight_shared[(((int)threadIdx.x) + 3136)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[410] * weight_shared[(((int)threadIdx.x) + 3904)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[219] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[243] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[267] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[243] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[267] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[291] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[267] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[291] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[315] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[291] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[315] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[339] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[315] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[339] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[363] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[339] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[363] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[387] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[363] * weight_shared[(((int)threadIdx.x) + 2400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[387] * weight_shared[(((int)threadIdx.x) + 3168)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[411] * weight_shared[(((int)threadIdx.x) + 3936)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[220] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[244] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[268] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[244] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[268] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[292] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[268] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[292] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[316] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[292] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[316] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[340] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[316] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[340] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[364] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[340] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[364] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[388] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[364] * weight_shared[(((int)threadIdx.x) + 2432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[388] * weight_shared[(((int)threadIdx.x) + 3200)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[412] * weight_shared[(((int)threadIdx.x) + 3968)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[221] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[245] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[269] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[245] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[269] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[293] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[269] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[293] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[317] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[293] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[317] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[341] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[317] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[341] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[365] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[341] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[365] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[389] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[365] * weight_shared[(((int)threadIdx.x) + 2464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[389] * weight_shared[(((int)threadIdx.x) + 3232)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[413] * weight_shared[(((int)threadIdx.x) + 4000)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[222] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[246] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[270] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[246] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[270] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[294] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[270] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[294] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[318] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[294] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[318] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[342] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[318] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[342] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[366] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[342] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[366] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[390] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[366] * weight_shared[(((int)threadIdx.x) + 2496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[390] * weight_shared[(((int)threadIdx.x) + 3264)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[414] * weight_shared[(((int)threadIdx.x) + 4032)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[223] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[247] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[271] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[247] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[271] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[295] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[271] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[295] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[319] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[295] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[319] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[343] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[319] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[343] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[367] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[343] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[367] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[391] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[367] * weight_shared[(((int)threadIdx.x) + 2528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[391] * weight_shared[(((int)threadIdx.x) + 3296)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[415] * weight_shared[(((int)threadIdx.x) + 4064)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[224] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[248] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[272] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[248] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[272] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[296] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[272] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[296] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[320] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[296] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[320] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[344] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[320] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[344] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[368] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[344] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[368] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[392] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[368] * weight_shared[(((int)threadIdx.x) + 2560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[392] * weight_shared[(((int)threadIdx.x) + 3328)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[416] * weight_shared[(((int)threadIdx.x) + 4096)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[225] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[249] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[273] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[249] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[273] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[297] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[273] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[297] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[321] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[297] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[321] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[345] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[321] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[345] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[369] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[345] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[369] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[393] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[369] * weight_shared[(((int)threadIdx.x) + 2592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[393] * weight_shared[(((int)threadIdx.x) + 3360)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[417] * weight_shared[(((int)threadIdx.x) + 4128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[226] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[250] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[274] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[250] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[274] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[298] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[274] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[298] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[322] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[298] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[322] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[346] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[322] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[346] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[370] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[346] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[370] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[394] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[370] * weight_shared[(((int)threadIdx.x) + 2624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[394] * weight_shared[(((int)threadIdx.x) + 3392)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[418] * weight_shared[(((int)threadIdx.x) + 4160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[227] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[251] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[275] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[251] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[275] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[299] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[275] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[299] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[323] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[299] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[323] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[347] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[323] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[347] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[371] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[347] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[371] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[395] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[371] * weight_shared[(((int)threadIdx.x) + 2656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[395] * weight_shared[(((int)threadIdx.x) + 3424)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[419] * weight_shared[(((int)threadIdx.x) + 4192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[228] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[252] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[276] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[252] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[276] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[300] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[276] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[300] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[324] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[300] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[324] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[348] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[324] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[348] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[372] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[348] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[372] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[396] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[372] * weight_shared[(((int)threadIdx.x) + 2688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[396] * weight_shared[(((int)threadIdx.x) + 3456)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[420] * weight_shared[(((int)threadIdx.x) + 4224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[229] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[253] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[277] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[253] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[277] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[301] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[277] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[301] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[325] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[301] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[325] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[349] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[325] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[349] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[373] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[349] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[373] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[397] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[373] * weight_shared[(((int)threadIdx.x) + 2720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[397] * weight_shared[(((int)threadIdx.x) + 3488)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[421] * weight_shared[(((int)threadIdx.x) + 4256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[230] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[254] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[278] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[254] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[278] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[302] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[278] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[302] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[326] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[302] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[326] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[350] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[326] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[350] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[374] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[350] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[374] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[398] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[374] * weight_shared[(((int)threadIdx.x) + 2752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[398] * weight_shared[(((int)threadIdx.x) + 3520)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[422] * weight_shared[(((int)threadIdx.x) + 4288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[231] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[255] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[279] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[255] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[279] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[303] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[279] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[303] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[327] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[303] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[327] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[351] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[327] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[351] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[375] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[351] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[375] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[399] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[375] * weight_shared[(((int)threadIdx.x) + 2784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[399] * weight_shared[(((int)threadIdx.x) + 3552)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[423] * weight_shared[(((int)threadIdx.x) + 4320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[232] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[256] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[280] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[256] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[280] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[304] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[280] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[304] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[328] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[304] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[328] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[352] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[328] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[352] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[376] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[352] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[376] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[400] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[376] * weight_shared[(((int)threadIdx.x) + 2816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[400] * weight_shared[(((int)threadIdx.x) + 3584)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[424] * weight_shared[(((int)threadIdx.x) + 4352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[233] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[257] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[281] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[257] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[281] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[305] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[281] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[305] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[329] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[305] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[329] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[353] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[329] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[353] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[377] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[353] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[377] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[401] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[377] * weight_shared[(((int)threadIdx.x) + 2848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[401] * weight_shared[(((int)threadIdx.x) + 3616)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[425] * weight_shared[(((int)threadIdx.x) + 4384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[234] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[258] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[282] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[258] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[282] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[306] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[282] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[306] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[330] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[306] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[330] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[354] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[330] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[354] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[378] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[354] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[378] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[402] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[378] * weight_shared[(((int)threadIdx.x) + 2880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[402] * weight_shared[(((int)threadIdx.x) + 3648)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[426] * weight_shared[(((int)threadIdx.x) + 4416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[235] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[259] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[283] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[259] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[283] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[307] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[283] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[307] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[331] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[307] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[331] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[355] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[331] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[355] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[379] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[355] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[379] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[403] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[379] * weight_shared[(((int)threadIdx.x) + 2912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[403] * weight_shared[(((int)threadIdx.x) + 3680)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[427] * weight_shared[(((int)threadIdx.x) + 4448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[236] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[260] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[284] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[260] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[284] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[308] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[284] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[308] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[332] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[308] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[332] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[356] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[332] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[356] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[380] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[356] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[380] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[404] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[380] * weight_shared[(((int)threadIdx.x) + 2944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[404] * weight_shared[(((int)threadIdx.x) + 3712)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[428] * weight_shared[(((int)threadIdx.x) + 4480)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[237] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[261] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[285] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[261] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[285] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[309] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[285] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[309] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[333] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[309] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[333] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[357] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[333] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[357] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[381] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[357] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[381] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[405] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[381] * weight_shared[(((int)threadIdx.x) + 2976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[405] * weight_shared[(((int)threadIdx.x) + 3744)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[429] * weight_shared[(((int)threadIdx.x) + 4512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[238] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[262] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[286] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[262] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[286] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[310] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[286] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[310] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[334] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[310] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[334] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[358] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[334] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[358] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[382] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[358] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[382] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[406] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[382] * weight_shared[(((int)threadIdx.x) + 3008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[406] * weight_shared[(((int)threadIdx.x) + 3776)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[430] * weight_shared[(((int)threadIdx.x) + 4544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[239] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[263] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[287] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[263] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[287] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[311] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[287] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[311] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[335] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[311] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[335] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[359] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[335] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[359] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[383] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[359] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[383] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[407] * weight_shared[(((int)threadIdx.x) + 4576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[383] * weight_shared[(((int)threadIdx.x) + 3040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[407] * weight_shared[(((int)threadIdx.x) + 3808)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[431] * weight_shared[(((int)threadIdx.x) + 4576)]));
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[432] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[456] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[480] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[456] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[480] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[504] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[480] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[504] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[528] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[504] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[528] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[552] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[528] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[552] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[576] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[552] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[576] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[600] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[576] * weight_shared[(((int)threadIdx.x) + 4608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[600] * weight_shared[(((int)threadIdx.x) + 5376)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[624] * weight_shared[(((int)threadIdx.x) + 6144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[433] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[457] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[481] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[457] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[481] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[505] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[481] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[505] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[529] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[505] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[529] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[553] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[529] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[553] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[577] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[553] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[577] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[601] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[577] * weight_shared[(((int)threadIdx.x) + 4640)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[601] * weight_shared[(((int)threadIdx.x) + 5408)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[625] * weight_shared[(((int)threadIdx.x) + 6176)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[434] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[458] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[482] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[458] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[482] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[506] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[482] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[506] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[530] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[506] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[530] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[554] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[530] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[554] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[578] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[554] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[578] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[602] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[578] * weight_shared[(((int)threadIdx.x) + 4672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[602] * weight_shared[(((int)threadIdx.x) + 5440)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[626] * weight_shared[(((int)threadIdx.x) + 6208)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[435] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[459] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[483] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[459] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[483] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[507] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[483] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[507] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[531] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[507] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[531] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[555] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[531] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[555] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[579] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[555] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[579] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[603] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[579] * weight_shared[(((int)threadIdx.x) + 4704)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[603] * weight_shared[(((int)threadIdx.x) + 5472)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[627] * weight_shared[(((int)threadIdx.x) + 6240)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[436] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[460] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[484] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[460] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[484] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[508] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[484] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[508] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[532] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[508] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[532] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[556] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[532] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[556] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[580] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[556] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[580] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[604] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[580] * weight_shared[(((int)threadIdx.x) + 4736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[604] * weight_shared[(((int)threadIdx.x) + 5504)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[628] * weight_shared[(((int)threadIdx.x) + 6272)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[437] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[461] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[485] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[461] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[485] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[509] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[485] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[509] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[533] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[509] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[533] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[557] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[533] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[557] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[581] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[557] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[581] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[605] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[581] * weight_shared[(((int)threadIdx.x) + 4768)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[605] * weight_shared[(((int)threadIdx.x) + 5536)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[629] * weight_shared[(((int)threadIdx.x) + 6304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[438] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[462] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[486] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[462] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[486] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[510] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[486] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[510] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[534] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[510] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[534] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[558] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[534] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[558] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[582] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[558] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[582] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[606] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[582] * weight_shared[(((int)threadIdx.x) + 4800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[606] * weight_shared[(((int)threadIdx.x) + 5568)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[630] * weight_shared[(((int)threadIdx.x) + 6336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[439] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[463] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[487] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[463] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[487] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[511] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[487] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[511] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[535] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[511] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[535] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[559] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[535] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[559] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[583] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[559] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[583] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[607] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[583] * weight_shared[(((int)threadIdx.x) + 4832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[607] * weight_shared[(((int)threadIdx.x) + 5600)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[631] * weight_shared[(((int)threadIdx.x) + 6368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[440] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[464] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[488] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[464] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[488] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[512] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[488] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[512] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[536] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[512] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[536] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[560] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[536] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[560] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[584] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[560] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[584] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[608] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[584] * weight_shared[(((int)threadIdx.x) + 4864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[608] * weight_shared[(((int)threadIdx.x) + 5632)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[632] * weight_shared[(((int)threadIdx.x) + 6400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[441] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[465] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[489] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[465] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[489] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[513] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[489] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[513] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[537] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[513] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[537] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[561] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[537] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[561] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[585] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[561] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[585] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[609] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[585] * weight_shared[(((int)threadIdx.x) + 4896)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[609] * weight_shared[(((int)threadIdx.x) + 5664)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[633] * weight_shared[(((int)threadIdx.x) + 6432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[442] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[466] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[490] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[466] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[490] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[514] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[490] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[514] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[538] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[514] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[538] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[562] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[538] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[562] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[586] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[562] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[586] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[610] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[586] * weight_shared[(((int)threadIdx.x) + 4928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[610] * weight_shared[(((int)threadIdx.x) + 5696)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[634] * weight_shared[(((int)threadIdx.x) + 6464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[443] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[467] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[491] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[467] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[491] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[515] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[491] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[515] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[539] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[515] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[539] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[563] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[539] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[563] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[587] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[563] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[587] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[611] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[587] * weight_shared[(((int)threadIdx.x) + 4960)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[611] * weight_shared[(((int)threadIdx.x) + 5728)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[635] * weight_shared[(((int)threadIdx.x) + 6496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[444] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[468] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[492] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[468] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[492] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[516] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[492] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[516] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[540] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[516] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[540] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[564] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[540] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[564] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[588] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[564] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[588] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[612] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[588] * weight_shared[(((int)threadIdx.x) + 4992)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[612] * weight_shared[(((int)threadIdx.x) + 5760)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[636] * weight_shared[(((int)threadIdx.x) + 6528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[445] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[469] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[493] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[469] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[493] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[517] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[493] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[517] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[541] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[517] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[541] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[565] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[541] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[565] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[589] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[565] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[589] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[613] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[589] * weight_shared[(((int)threadIdx.x) + 5024)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[613] * weight_shared[(((int)threadIdx.x) + 5792)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[637] * weight_shared[(((int)threadIdx.x) + 6560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[446] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[470] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[494] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[470] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[494] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[518] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[494] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[518] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[542] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[518] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[542] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[566] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[542] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[566] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[590] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[566] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[590] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[614] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[590] * weight_shared[(((int)threadIdx.x) + 5056)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[614] * weight_shared[(((int)threadIdx.x) + 5824)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[638] * weight_shared[(((int)threadIdx.x) + 6592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[447] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[471] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[495] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[471] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[495] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[519] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[495] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[519] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[543] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[519] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[543] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[567] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[543] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[567] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[591] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[567] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[591] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[615] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[591] * weight_shared[(((int)threadIdx.x) + 5088)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[615] * weight_shared[(((int)threadIdx.x) + 5856)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[639] * weight_shared[(((int)threadIdx.x) + 6624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[448] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[472] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[496] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[472] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[496] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[520] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[496] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[520] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[544] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[520] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[544] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[568] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[544] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[568] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[592] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[568] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[592] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[616] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[592] * weight_shared[(((int)threadIdx.x) + 5120)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[616] * weight_shared[(((int)threadIdx.x) + 5888)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[640] * weight_shared[(((int)threadIdx.x) + 6656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[449] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[473] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[497] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[473] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[497] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[521] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[497] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[521] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[545] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[521] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[545] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[569] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[545] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[569] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[593] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[569] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[593] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[617] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[593] * weight_shared[(((int)threadIdx.x) + 5152)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[617] * weight_shared[(((int)threadIdx.x) + 5920)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[641] * weight_shared[(((int)threadIdx.x) + 6688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[450] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[474] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[498] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[474] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[498] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[522] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[498] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[522] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[546] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[522] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[546] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[570] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[546] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[570] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[594] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[570] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[594] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[618] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[594] * weight_shared[(((int)threadIdx.x) + 5184)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[618] * weight_shared[(((int)threadIdx.x) + 5952)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[642] * weight_shared[(((int)threadIdx.x) + 6720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[451] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[475] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[499] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[475] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[499] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[523] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[499] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[523] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[547] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[523] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[547] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[571] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[547] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[571] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[595] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[571] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[595] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[619] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[595] * weight_shared[(((int)threadIdx.x) + 5216)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[619] * weight_shared[(((int)threadIdx.x) + 5984)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[643] * weight_shared[(((int)threadIdx.x) + 6752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[452] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[476] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[500] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[476] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[500] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[524] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[500] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[524] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[548] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[524] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[548] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[572] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[548] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[572] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[596] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[572] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[596] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[620] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[596] * weight_shared[(((int)threadIdx.x) + 5248)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[620] * weight_shared[(((int)threadIdx.x) + 6016)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[644] * weight_shared[(((int)threadIdx.x) + 6784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[453] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[477] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[501] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[477] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[501] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[525] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[501] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[525] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[549] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[525] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[549] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[573] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[549] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[573] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[597] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[573] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[597] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[621] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[597] * weight_shared[(((int)threadIdx.x) + 5280)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[621] * weight_shared[(((int)threadIdx.x) + 6048)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[645] * weight_shared[(((int)threadIdx.x) + 6816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[454] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[478] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[502] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[478] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[502] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[526] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[502] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[526] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[550] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[526] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[550] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[574] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[550] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[574] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[598] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[574] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[598] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[622] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[598] * weight_shared[(((int)threadIdx.x) + 5312)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[622] * weight_shared[(((int)threadIdx.x) + 6080)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[646] * weight_shared[(((int)threadIdx.x) + 6848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[455] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[479] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[503] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[479] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[503] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[527] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[503] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[527] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[551] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[527] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[551] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[575] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[551] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[575] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[599] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[575] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[599] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[623] * weight_shared[(((int)threadIdx.x) + 6880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[599] * weight_shared[(((int)threadIdx.x) + 5344)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[623] * weight_shared[(((int)threadIdx.x) + 6112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[647] * weight_shared[(((int)threadIdx.x) + 6880)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[648] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[672] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[696] * weight_shared[(((int)threadIdx.x) + 8448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[672] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[696] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[720] * weight_shared[(((int)threadIdx.x) + 8448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[696] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[720] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[744] * weight_shared[(((int)threadIdx.x) + 8448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[720] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[744] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[768] * weight_shared[(((int)threadIdx.x) + 8448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[744] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[768] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[792] * weight_shared[(((int)threadIdx.x) + 8448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[768] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[792] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[816] * weight_shared[(((int)threadIdx.x) + 8448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[792] * weight_shared[(((int)threadIdx.x) + 6912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[816] * weight_shared[(((int)threadIdx.x) + 7680)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[840] * weight_shared[(((int)threadIdx.x) + 8448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[649] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[673] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[697] * weight_shared[(((int)threadIdx.x) + 8480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[673] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[697] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[721] * weight_shared[(((int)threadIdx.x) + 8480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[697] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[721] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[745] * weight_shared[(((int)threadIdx.x) + 8480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[721] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[745] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[769] * weight_shared[(((int)threadIdx.x) + 8480)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[745] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[769] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[793] * weight_shared[(((int)threadIdx.x) + 8480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[769] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[793] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[817] * weight_shared[(((int)threadIdx.x) + 8480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[793] * weight_shared[(((int)threadIdx.x) + 6944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[817] * weight_shared[(((int)threadIdx.x) + 7712)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[841] * weight_shared[(((int)threadIdx.x) + 8480)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[650] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[674] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[698] * weight_shared[(((int)threadIdx.x) + 8512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[674] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[698] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[722] * weight_shared[(((int)threadIdx.x) + 8512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[698] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[722] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[746] * weight_shared[(((int)threadIdx.x) + 8512)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[722] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[746] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[770] * weight_shared[(((int)threadIdx.x) + 8512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[746] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[770] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[794] * weight_shared[(((int)threadIdx.x) + 8512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[770] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[794] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[818] * weight_shared[(((int)threadIdx.x) + 8512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[794] * weight_shared[(((int)threadIdx.x) + 6976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[818] * weight_shared[(((int)threadIdx.x) + 7744)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[842] * weight_shared[(((int)threadIdx.x) + 8512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[651] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[675] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[699] * weight_shared[(((int)threadIdx.x) + 8544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[675] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[699] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[723] * weight_shared[(((int)threadIdx.x) + 8544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[699] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[723] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[747] * weight_shared[(((int)threadIdx.x) + 8544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[723] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[747] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[771] * weight_shared[(((int)threadIdx.x) + 8544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[747] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[771] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[795] * weight_shared[(((int)threadIdx.x) + 8544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[771] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[795] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[819] * weight_shared[(((int)threadIdx.x) + 8544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[795] * weight_shared[(((int)threadIdx.x) + 7008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[819] * weight_shared[(((int)threadIdx.x) + 7776)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[843] * weight_shared[(((int)threadIdx.x) + 8544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[652] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[676] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[700] * weight_shared[(((int)threadIdx.x) + 8576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[676] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[700] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[724] * weight_shared[(((int)threadIdx.x) + 8576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[700] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[724] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[748] * weight_shared[(((int)threadIdx.x) + 8576)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[724] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[748] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[772] * weight_shared[(((int)threadIdx.x) + 8576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[748] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[772] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[796] * weight_shared[(((int)threadIdx.x) + 8576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[772] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[796] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[820] * weight_shared[(((int)threadIdx.x) + 8576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[796] * weight_shared[(((int)threadIdx.x) + 7040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[820] * weight_shared[(((int)threadIdx.x) + 7808)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[844] * weight_shared[(((int)threadIdx.x) + 8576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[653] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[677] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[701] * weight_shared[(((int)threadIdx.x) + 8608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[677] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[701] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[725] * weight_shared[(((int)threadIdx.x) + 8608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[701] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[725] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[749] * weight_shared[(((int)threadIdx.x) + 8608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[725] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[749] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[773] * weight_shared[(((int)threadIdx.x) + 8608)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[749] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[773] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[797] * weight_shared[(((int)threadIdx.x) + 8608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[773] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[797] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[821] * weight_shared[(((int)threadIdx.x) + 8608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[797] * weight_shared[(((int)threadIdx.x) + 7072)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[821] * weight_shared[(((int)threadIdx.x) + 7840)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[845] * weight_shared[(((int)threadIdx.x) + 8608)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[654] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[678] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[702] * weight_shared[(((int)threadIdx.x) + 8640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[678] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[702] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[726] * weight_shared[(((int)threadIdx.x) + 8640)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[702] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[726] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[750] * weight_shared[(((int)threadIdx.x) + 8640)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[726] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[750] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[774] * weight_shared[(((int)threadIdx.x) + 8640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[750] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[774] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[798] * weight_shared[(((int)threadIdx.x) + 8640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[774] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[798] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[822] * weight_shared[(((int)threadIdx.x) + 8640)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[798] * weight_shared[(((int)threadIdx.x) + 7104)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[822] * weight_shared[(((int)threadIdx.x) + 7872)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[846] * weight_shared[(((int)threadIdx.x) + 8640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[655] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[679] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[703] * weight_shared[(((int)threadIdx.x) + 8672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[679] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[703] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[727] * weight_shared[(((int)threadIdx.x) + 8672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[703] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[727] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[751] * weight_shared[(((int)threadIdx.x) + 8672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[727] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[751] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[775] * weight_shared[(((int)threadIdx.x) + 8672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[751] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[775] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[799] * weight_shared[(((int)threadIdx.x) + 8672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[775] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[799] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[823] * weight_shared[(((int)threadIdx.x) + 8672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[799] * weight_shared[(((int)threadIdx.x) + 7136)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[823] * weight_shared[(((int)threadIdx.x) + 7904)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[847] * weight_shared[(((int)threadIdx.x) + 8672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[656] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[680] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[704] * weight_shared[(((int)threadIdx.x) + 8704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[680] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[704] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[728] * weight_shared[(((int)threadIdx.x) + 8704)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[704] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[728] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[752] * weight_shared[(((int)threadIdx.x) + 8704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[728] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[752] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[776] * weight_shared[(((int)threadIdx.x) + 8704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[752] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[776] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[800] * weight_shared[(((int)threadIdx.x) + 8704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[776] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[800] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[824] * weight_shared[(((int)threadIdx.x) + 8704)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[800] * weight_shared[(((int)threadIdx.x) + 7168)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[824] * weight_shared[(((int)threadIdx.x) + 7936)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[848] * weight_shared[(((int)threadIdx.x) + 8704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[657] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[681] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[705] * weight_shared[(((int)threadIdx.x) + 8736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[681] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[705] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[729] * weight_shared[(((int)threadIdx.x) + 8736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[705] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[729] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[753] * weight_shared[(((int)threadIdx.x) + 8736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[729] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[753] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[777] * weight_shared[(((int)threadIdx.x) + 8736)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[753] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[777] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[801] * weight_shared[(((int)threadIdx.x) + 8736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[777] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[801] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[825] * weight_shared[(((int)threadIdx.x) + 8736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[801] * weight_shared[(((int)threadIdx.x) + 7200)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[825] * weight_shared[(((int)threadIdx.x) + 7968)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[849] * weight_shared[(((int)threadIdx.x) + 8736)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[658] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[682] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[706] * weight_shared[(((int)threadIdx.x) + 8768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[682] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[706] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[730] * weight_shared[(((int)threadIdx.x) + 8768)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[706] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[730] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[754] * weight_shared[(((int)threadIdx.x) + 8768)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[730] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[754] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[778] * weight_shared[(((int)threadIdx.x) + 8768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[754] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[778] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[802] * weight_shared[(((int)threadIdx.x) + 8768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[778] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[802] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[826] * weight_shared[(((int)threadIdx.x) + 8768)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[802] * weight_shared[(((int)threadIdx.x) + 7232)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[826] * weight_shared[(((int)threadIdx.x) + 8000)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[850] * weight_shared[(((int)threadIdx.x) + 8768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[659] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[683] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[707] * weight_shared[(((int)threadIdx.x) + 8800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[683] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[707] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[731] * weight_shared[(((int)threadIdx.x) + 8800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[707] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[731] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[755] * weight_shared[(((int)threadIdx.x) + 8800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[731] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[755] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[779] * weight_shared[(((int)threadIdx.x) + 8800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[755] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[779] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[803] * weight_shared[(((int)threadIdx.x) + 8800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[779] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[803] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[827] * weight_shared[(((int)threadIdx.x) + 8800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[803] * weight_shared[(((int)threadIdx.x) + 7264)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[827] * weight_shared[(((int)threadIdx.x) + 8032)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[851] * weight_shared[(((int)threadIdx.x) + 8800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[660] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[684] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[708] * weight_shared[(((int)threadIdx.x) + 8832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[684] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[708] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[732] * weight_shared[(((int)threadIdx.x) + 8832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[708] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[732] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[756] * weight_shared[(((int)threadIdx.x) + 8832)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[732] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[756] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[780] * weight_shared[(((int)threadIdx.x) + 8832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[756] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[780] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[804] * weight_shared[(((int)threadIdx.x) + 8832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[780] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[804] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[828] * weight_shared[(((int)threadIdx.x) + 8832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[804] * weight_shared[(((int)threadIdx.x) + 7296)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[828] * weight_shared[(((int)threadIdx.x) + 8064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[852] * weight_shared[(((int)threadIdx.x) + 8832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[661] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[685] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[709] * weight_shared[(((int)threadIdx.x) + 8864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[685] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[709] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[733] * weight_shared[(((int)threadIdx.x) + 8864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[709] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[733] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[757] * weight_shared[(((int)threadIdx.x) + 8864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[733] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[757] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[781] * weight_shared[(((int)threadIdx.x) + 8864)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[757] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[781] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[805] * weight_shared[(((int)threadIdx.x) + 8864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[781] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[805] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[829] * weight_shared[(((int)threadIdx.x) + 8864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[805] * weight_shared[(((int)threadIdx.x) + 7328)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[829] * weight_shared[(((int)threadIdx.x) + 8096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[853] * weight_shared[(((int)threadIdx.x) + 8864)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[662] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[686] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[710] * weight_shared[(((int)threadIdx.x) + 8896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[686] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[710] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[734] * weight_shared[(((int)threadIdx.x) + 8896)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[710] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[734] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[758] * weight_shared[(((int)threadIdx.x) + 8896)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[734] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[758] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[782] * weight_shared[(((int)threadIdx.x) + 8896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[758] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[782] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[806] * weight_shared[(((int)threadIdx.x) + 8896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[782] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[806] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[830] * weight_shared[(((int)threadIdx.x) + 8896)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[806] * weight_shared[(((int)threadIdx.x) + 7360)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[830] * weight_shared[(((int)threadIdx.x) + 8128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[854] * weight_shared[(((int)threadIdx.x) + 8896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[663] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[687] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[711] * weight_shared[(((int)threadIdx.x) + 8928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[687] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[711] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[735] * weight_shared[(((int)threadIdx.x) + 8928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[711] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[735] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[759] * weight_shared[(((int)threadIdx.x) + 8928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[735] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[759] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[783] * weight_shared[(((int)threadIdx.x) + 8928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[759] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[783] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[807] * weight_shared[(((int)threadIdx.x) + 8928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[783] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[807] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[831] * weight_shared[(((int)threadIdx.x) + 8928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[807] * weight_shared[(((int)threadIdx.x) + 7392)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[831] * weight_shared[(((int)threadIdx.x) + 8160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[855] * weight_shared[(((int)threadIdx.x) + 8928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[664] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[688] * weight_shared[(((int)threadIdx.x) + 8192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[712] * weight_shared[(((int)threadIdx.x) + 8960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[688] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[712] * weight_shared[(((int)threadIdx.x) + 8192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[736] * weight_shared[(((int)threadIdx.x) + 8960)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[712] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[736] * weight_shared[(((int)threadIdx.x) + 8192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[760] * weight_shared[(((int)threadIdx.x) + 8960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[736] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[760] * weight_shared[(((int)threadIdx.x) + 8192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[784] * weight_shared[(((int)threadIdx.x) + 8960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[760] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[784] * weight_shared[(((int)threadIdx.x) + 8192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[808] * weight_shared[(((int)threadIdx.x) + 8960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[784] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[808] * weight_shared[(((int)threadIdx.x) + 8192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[832] * weight_shared[(((int)threadIdx.x) + 8960)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[808] * weight_shared[(((int)threadIdx.x) + 7424)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[832] * weight_shared[(((int)threadIdx.x) + 8192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[856] * weight_shared[(((int)threadIdx.x) + 8960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[665] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[689] * weight_shared[(((int)threadIdx.x) + 8224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[713] * weight_shared[(((int)threadIdx.x) + 8992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[689] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[713] * weight_shared[(((int)threadIdx.x) + 8224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[737] * weight_shared[(((int)threadIdx.x) + 8992)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[713] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[737] * weight_shared[(((int)threadIdx.x) + 8224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[761] * weight_shared[(((int)threadIdx.x) + 8992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[737] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[761] * weight_shared[(((int)threadIdx.x) + 8224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[785] * weight_shared[(((int)threadIdx.x) + 8992)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[761] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[785] * weight_shared[(((int)threadIdx.x) + 8224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[809] * weight_shared[(((int)threadIdx.x) + 8992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[785] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[809] * weight_shared[(((int)threadIdx.x) + 8224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[833] * weight_shared[(((int)threadIdx.x) + 8992)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[809] * weight_shared[(((int)threadIdx.x) + 7456)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[833] * weight_shared[(((int)threadIdx.x) + 8224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[857] * weight_shared[(((int)threadIdx.x) + 8992)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[666] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[690] * weight_shared[(((int)threadIdx.x) + 8256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[714] * weight_shared[(((int)threadIdx.x) + 9024)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[690] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[714] * weight_shared[(((int)threadIdx.x) + 8256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[738] * weight_shared[(((int)threadIdx.x) + 9024)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[714] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[738] * weight_shared[(((int)threadIdx.x) + 8256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[762] * weight_shared[(((int)threadIdx.x) + 9024)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[738] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[762] * weight_shared[(((int)threadIdx.x) + 8256)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[786] * weight_shared[(((int)threadIdx.x) + 9024)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[762] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[786] * weight_shared[(((int)threadIdx.x) + 8256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[810] * weight_shared[(((int)threadIdx.x) + 9024)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[786] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[810] * weight_shared[(((int)threadIdx.x) + 8256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[834] * weight_shared[(((int)threadIdx.x) + 9024)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[810] * weight_shared[(((int)threadIdx.x) + 7488)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[834] * weight_shared[(((int)threadIdx.x) + 8256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[858] * weight_shared[(((int)threadIdx.x) + 9024)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[667] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[691] * weight_shared[(((int)threadIdx.x) + 8288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[715] * weight_shared[(((int)threadIdx.x) + 9056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[691] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[715] * weight_shared[(((int)threadIdx.x) + 8288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[739] * weight_shared[(((int)threadIdx.x) + 9056)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[715] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[739] * weight_shared[(((int)threadIdx.x) + 8288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[763] * weight_shared[(((int)threadIdx.x) + 9056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[739] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[763] * weight_shared[(((int)threadIdx.x) + 8288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[787] * weight_shared[(((int)threadIdx.x) + 9056)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[763] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[787] * weight_shared[(((int)threadIdx.x) + 8288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[811] * weight_shared[(((int)threadIdx.x) + 9056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[787] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[811] * weight_shared[(((int)threadIdx.x) + 8288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[835] * weight_shared[(((int)threadIdx.x) + 9056)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[811] * weight_shared[(((int)threadIdx.x) + 7520)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[835] * weight_shared[(((int)threadIdx.x) + 8288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[859] * weight_shared[(((int)threadIdx.x) + 9056)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[668] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[692] * weight_shared[(((int)threadIdx.x) + 8320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[716] * weight_shared[(((int)threadIdx.x) + 9088)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[692] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[716] * weight_shared[(((int)threadIdx.x) + 8320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[740] * weight_shared[(((int)threadIdx.x) + 9088)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[716] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[740] * weight_shared[(((int)threadIdx.x) + 8320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[764] * weight_shared[(((int)threadIdx.x) + 9088)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[740] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[764] * weight_shared[(((int)threadIdx.x) + 8320)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[788] * weight_shared[(((int)threadIdx.x) + 9088)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[764] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[788] * weight_shared[(((int)threadIdx.x) + 8320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[812] * weight_shared[(((int)threadIdx.x) + 9088)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[788] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[812] * weight_shared[(((int)threadIdx.x) + 8320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[836] * weight_shared[(((int)threadIdx.x) + 9088)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[812] * weight_shared[(((int)threadIdx.x) + 7552)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[836] * weight_shared[(((int)threadIdx.x) + 8320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[860] * weight_shared[(((int)threadIdx.x) + 9088)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[669] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[693] * weight_shared[(((int)threadIdx.x) + 8352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[717] * weight_shared[(((int)threadIdx.x) + 9120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[693] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[717] * weight_shared[(((int)threadIdx.x) + 8352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[741] * weight_shared[(((int)threadIdx.x) + 9120)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[717] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[741] * weight_shared[(((int)threadIdx.x) + 8352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[765] * weight_shared[(((int)threadIdx.x) + 9120)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[741] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[765] * weight_shared[(((int)threadIdx.x) + 8352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[789] * weight_shared[(((int)threadIdx.x) + 9120)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[765] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[789] * weight_shared[(((int)threadIdx.x) + 8352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[813] * weight_shared[(((int)threadIdx.x) + 9120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[789] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[813] * weight_shared[(((int)threadIdx.x) + 8352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[837] * weight_shared[(((int)threadIdx.x) + 9120)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[813] * weight_shared[(((int)threadIdx.x) + 7584)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[837] * weight_shared[(((int)threadIdx.x) + 8352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[861] * weight_shared[(((int)threadIdx.x) + 9120)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[670] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[694] * weight_shared[(((int)threadIdx.x) + 8384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[718] * weight_shared[(((int)threadIdx.x) + 9152)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[694] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[718] * weight_shared[(((int)threadIdx.x) + 8384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[742] * weight_shared[(((int)threadIdx.x) + 9152)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[718] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[742] * weight_shared[(((int)threadIdx.x) + 8384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[766] * weight_shared[(((int)threadIdx.x) + 9152)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[742] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[766] * weight_shared[(((int)threadIdx.x) + 8384)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[790] * weight_shared[(((int)threadIdx.x) + 9152)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[766] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[790] * weight_shared[(((int)threadIdx.x) + 8384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[814] * weight_shared[(((int)threadIdx.x) + 9152)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[790] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[814] * weight_shared[(((int)threadIdx.x) + 8384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[838] * weight_shared[(((int)threadIdx.x) + 9152)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[814] * weight_shared[(((int)threadIdx.x) + 7616)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[838] * weight_shared[(((int)threadIdx.x) + 8384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[862] * weight_shared[(((int)threadIdx.x) + 9152)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[671] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[695] * weight_shared[(((int)threadIdx.x) + 8416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[719] * weight_shared[(((int)threadIdx.x) + 9184)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[695] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[719] * weight_shared[(((int)threadIdx.x) + 8416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[743] * weight_shared[(((int)threadIdx.x) + 9184)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[719] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[743] * weight_shared[(((int)threadIdx.x) + 8416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[767] * weight_shared[(((int)threadIdx.x) + 9184)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[743] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[767] * weight_shared[(((int)threadIdx.x) + 8416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[791] * weight_shared[(((int)threadIdx.x) + 9184)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[767] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[791] * weight_shared[(((int)threadIdx.x) + 8416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[815] * weight_shared[(((int)threadIdx.x) + 9184)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[791] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[815] * weight_shared[(((int)threadIdx.x) + 8416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[839] * weight_shared[(((int)threadIdx.x) + 9184)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[815] * weight_shared[(((int)threadIdx.x) + 7648)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[839] * weight_shared[(((int)threadIdx.x) + 8416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[863] * weight_shared[(((int)threadIdx.x) + 9184)]));
  conv2d_nhwc[((((int)blockIdx.x) * 32) + ((int)threadIdx.x))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) + 3584)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) + 7168)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) + 10752)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) + 14336)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) + 17920)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) + 21504)] = conv2d_nhwc_local[6];
}


