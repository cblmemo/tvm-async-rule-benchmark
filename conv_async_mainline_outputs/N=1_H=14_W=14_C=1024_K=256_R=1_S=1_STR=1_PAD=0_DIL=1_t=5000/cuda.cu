
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
  __shared__ float PadInput_shared[5376];
  __shared__ float weight_shared[3072];
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
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) * 4)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 4096))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 8192))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 12288))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 16384))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 20480))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 24576))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 2) * 256) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 2) * 256) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 4096))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 2) * 256) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 8192))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 2) * 256) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 12288))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 1792)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 64))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 2048)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 4160))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 2304)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 8256))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 2560)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 12352))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 2816)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 16448))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 3072)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 20544))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((int)threadIdx.x) * 4) + 3328)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)threadIdx.x) & 15) * 4)) + 24640))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 2) * 256) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 16384))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 2) * 256) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 20480))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 2) * 256) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 24576))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 2) * 256) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 28672))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 14; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1792) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rh_0_rw_0_rc_0_fused * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 128))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1792) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rh_0_rw_0_rc_0_fused * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4224))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1792) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rh_0_rw_0_rc_0_fused * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 8320))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1792) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rh_0_rw_0_rc_0_fused * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 12416))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1792) + (((int)threadIdx.x) * 4)) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rh_0_rw_0_rc_0_fused * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 16512))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1792) + (((int)threadIdx.x) * 4)) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rh_0_rw_0_rc_0_fused * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 20608))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1792) + (((int)threadIdx.x) * 4)) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 4) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rh_0_rw_0_rc_0_fused * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 24704))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 16384) + ((((int)threadIdx.x) >> 2) * 256)) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 32768))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 16384) + ((((int)threadIdx.x) >> 2) * 256)) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 36864))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 16384) + ((((int)threadIdx.x) >> 2) * 256)) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 40960))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 1024) + (((int)threadIdx.x) * 4)) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 16384) + ((((int)threadIdx.x) >> 2) * 256)) + ((((int)blockIdx.x) & 15) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 45056))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448))] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 448)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 464)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 480)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 496)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 64)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 448)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 464)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 496)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 128)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 144)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 145)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 146)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 147)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 148)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 149)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 150)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 151)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 152)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 153)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 154)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 155)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 156)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 448)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 157)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 464)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 158)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 480)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 159)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 496)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 192)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 208)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 209)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 210)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 211)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 212)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 213)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 214)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 215)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 216)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 217)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 218)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 219)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 220)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 448)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 221)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 464)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 222)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 480)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 223)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 496)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 256)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 272)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 273)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 274)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 275)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 276)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 277)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 278)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 279)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 280)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 281)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 282)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 283)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 284)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 448)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 285)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 464)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 286)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 480)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 287)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 496)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 320)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 336)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 337)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 338)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 339)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 340)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 341)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 342)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 343)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 344)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 345)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 346)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 347)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 348)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 448)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 349)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 464)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 350)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 351)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 496)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 384)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 400)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 401)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 402)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 403)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 404)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 405)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 406)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 407)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 408)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 409)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 410)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 411)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 412)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 448)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 413)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 464)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 414)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 480)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 415)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 496)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 512)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 528)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 544)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 560)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 576)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 592)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 608)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 624)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 640)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 656)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 672)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 688)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 704)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 720)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 736)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 752)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 768)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 784)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 800)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 816)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 832)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 848)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 864)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 880)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 896)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 912)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 928)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 944)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 960)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 976)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 992)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 1008)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 512)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 528)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 544)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 560)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 576)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 592)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 608)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 624)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 640)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 656)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 672)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 688)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 704)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 720)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 736)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 752)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 112)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 768)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 113)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 784)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 114)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 800)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 115)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 816)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 116)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 832)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 117)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 848)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 118)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 864)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 119)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 880)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 120)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 896)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 121)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 912)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 122)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 928)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 123)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 944)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 124)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 960)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 125)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 976)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 126)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 992)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 127)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 1008)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 160)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 512)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 161)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 528)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 162)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 544)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 163)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 560)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 164)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 165)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 592)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 166)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 608)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 167)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 624)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 168)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 640)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 169)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 656)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 170)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 672)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 171)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 688)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 172)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 704)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 173)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 720)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 174)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 736)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 175)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 752)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 176)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 768)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 177)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 784)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 178)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 800)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 179)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 816)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 180)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 832)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 181)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 848)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 182)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 864)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 183)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 880)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 184)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 896)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 185)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 912)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 186)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 928)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 187)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 944)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 188)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 960)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 189)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 976)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 190)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 992)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 191)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 1008)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 224)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 512)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 225)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 528)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 226)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 544)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 227)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 560)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 228)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 576)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 229)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 592)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 230)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 608)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 231)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 624)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 232)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 640)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 233)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 656)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 234)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 672)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 235)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 688)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 236)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 704)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 237)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 720)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 238)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 736)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 239)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 752)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 240)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 768)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 241)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 784)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 242)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 800)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 243)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 816)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 244)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 832)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 245)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 848)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 246)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 864)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 247)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 880)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 248)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 896)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 249)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 912)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 250)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 928)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 251)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 944)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 252)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 960)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 253)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 976)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 254)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 992)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 255)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 1008)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 288)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 512)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 289)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 528)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 290)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 544)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 291)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 560)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 292)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 576)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 293)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 592)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 294)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 608)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 295)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 624)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 296)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 640)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 297)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 656)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 298)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 672)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 299)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 688)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 300)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 704)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 301)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 720)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 302)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 736)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 303)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 752)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 304)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 768)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 305)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 784)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 306)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 800)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 307)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 816)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 308)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 832)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 309)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 848)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 310)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 864)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 311)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 880)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 312)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 896)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 313)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 912)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 314)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 928)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 315)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 944)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 316)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 960)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 317)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 976)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 318)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 992)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 319)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 1008)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 352)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 512)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 353)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 528)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 354)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 544)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 355)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 560)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 356)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 576)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 357)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 592)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 358)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 608)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 359)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 624)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 360)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 640)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 361)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 656)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 362)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 672)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 363)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 688)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 364)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 704)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 365)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 720)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 366)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 736)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 367)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 752)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 368)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 768)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 369)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 784)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 370)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 800)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 371)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 816)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 372)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 832)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 373)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 848)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 374)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 864)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 375)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 880)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 376)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 896)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 377)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 912)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 378)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 928)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 379)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 944)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 380)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 960)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 381)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 976)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 382)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 992)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 383)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 1008)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 416)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 512)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 417)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 528)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 418)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 544)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 419)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 560)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 420)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 421)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 592)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 422)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 608)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 423)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 624)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 424)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 640)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 425)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 656)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 426)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 672)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 427)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 688)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 428)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 704)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 429)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 720)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 430)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 736)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 431)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 752)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 432)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 768)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 433)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 784)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 434)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 800)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 435)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 816)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 436)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 832)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 437)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 848)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 438)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 864)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 439)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 880)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 440)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 896)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 441)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 912)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 442)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 928)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 443)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 944)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 444)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 960)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 445)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 976)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 446)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 992)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1792) + ((((int)threadIdx.x) >> 4) * 448)) + 447)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 1024) + (((int)threadIdx.x) & 15)) + 1008)]));
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3584)] * weight_shared[((((int)threadIdx.x) & 15) + 2048)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3585)] * weight_shared[((((int)threadIdx.x) & 15) + 2064)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3586)] * weight_shared[((((int)threadIdx.x) & 15) + 2080)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3587)] * weight_shared[((((int)threadIdx.x) & 15) + 2096)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3588)] * weight_shared[((((int)threadIdx.x) & 15) + 2112)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3589)] * weight_shared[((((int)threadIdx.x) & 15) + 2128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3590)] * weight_shared[((((int)threadIdx.x) & 15) + 2144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3591)] * weight_shared[((((int)threadIdx.x) & 15) + 2160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3592)] * weight_shared[((((int)threadIdx.x) & 15) + 2176)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3593)] * weight_shared[((((int)threadIdx.x) & 15) + 2192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3594)] * weight_shared[((((int)threadIdx.x) & 15) + 2208)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3595)] * weight_shared[((((int)threadIdx.x) & 15) + 2224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3596)] * weight_shared[((((int)threadIdx.x) & 15) + 2240)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3597)] * weight_shared[((((int)threadIdx.x) & 15) + 2256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3598)] * weight_shared[((((int)threadIdx.x) & 15) + 2272)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3599)] * weight_shared[((((int)threadIdx.x) & 15) + 2288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3600)] * weight_shared[((((int)threadIdx.x) & 15) + 2304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3601)] * weight_shared[((((int)threadIdx.x) & 15) + 2320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3602)] * weight_shared[((((int)threadIdx.x) & 15) + 2336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3603)] * weight_shared[((((int)threadIdx.x) & 15) + 2352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3604)] * weight_shared[((((int)threadIdx.x) & 15) + 2368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3605)] * weight_shared[((((int)threadIdx.x) & 15) + 2384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3606)] * weight_shared[((((int)threadIdx.x) & 15) + 2400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3607)] * weight_shared[((((int)threadIdx.x) & 15) + 2416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3608)] * weight_shared[((((int)threadIdx.x) & 15) + 2432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3609)] * weight_shared[((((int)threadIdx.x) & 15) + 2448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3610)] * weight_shared[((((int)threadIdx.x) & 15) + 2464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3611)] * weight_shared[((((int)threadIdx.x) & 15) + 2480)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3612)] * weight_shared[((((int)threadIdx.x) & 15) + 2496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3613)] * weight_shared[((((int)threadIdx.x) & 15) + 2512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3614)] * weight_shared[((((int)threadIdx.x) & 15) + 2528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3615)] * weight_shared[((((int)threadIdx.x) & 15) + 2544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3648)] * weight_shared[((((int)threadIdx.x) & 15) + 2048)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3649)] * weight_shared[((((int)threadIdx.x) & 15) + 2064)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3650)] * weight_shared[((((int)threadIdx.x) & 15) + 2080)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3651)] * weight_shared[((((int)threadIdx.x) & 15) + 2096)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3652)] * weight_shared[((((int)threadIdx.x) & 15) + 2112)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3653)] * weight_shared[((((int)threadIdx.x) & 15) + 2128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3654)] * weight_shared[((((int)threadIdx.x) & 15) + 2144)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3655)] * weight_shared[((((int)threadIdx.x) & 15) + 2160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3656)] * weight_shared[((((int)threadIdx.x) & 15) + 2176)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3657)] * weight_shared[((((int)threadIdx.x) & 15) + 2192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3658)] * weight_shared[((((int)threadIdx.x) & 15) + 2208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3659)] * weight_shared[((((int)threadIdx.x) & 15) + 2224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3660)] * weight_shared[((((int)threadIdx.x) & 15) + 2240)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3661)] * weight_shared[((((int)threadIdx.x) & 15) + 2256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3662)] * weight_shared[((((int)threadIdx.x) & 15) + 2272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3663)] * weight_shared[((((int)threadIdx.x) & 15) + 2288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3664)] * weight_shared[((((int)threadIdx.x) & 15) + 2304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3665)] * weight_shared[((((int)threadIdx.x) & 15) + 2320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3666)] * weight_shared[((((int)threadIdx.x) & 15) + 2336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3667)] * weight_shared[((((int)threadIdx.x) & 15) + 2352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3668)] * weight_shared[((((int)threadIdx.x) & 15) + 2368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3669)] * weight_shared[((((int)threadIdx.x) & 15) + 2384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3670)] * weight_shared[((((int)threadIdx.x) & 15) + 2400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3671)] * weight_shared[((((int)threadIdx.x) & 15) + 2416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3672)] * weight_shared[((((int)threadIdx.x) & 15) + 2432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3673)] * weight_shared[((((int)threadIdx.x) & 15) + 2448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3674)] * weight_shared[((((int)threadIdx.x) & 15) + 2464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3675)] * weight_shared[((((int)threadIdx.x) & 15) + 2480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3676)] * weight_shared[((((int)threadIdx.x) & 15) + 2496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3677)] * weight_shared[((((int)threadIdx.x) & 15) + 2512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3678)] * weight_shared[((((int)threadIdx.x) & 15) + 2528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3679)] * weight_shared[((((int)threadIdx.x) & 15) + 2544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3712)] * weight_shared[((((int)threadIdx.x) & 15) + 2048)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3713)] * weight_shared[((((int)threadIdx.x) & 15) + 2064)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3714)] * weight_shared[((((int)threadIdx.x) & 15) + 2080)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3715)] * weight_shared[((((int)threadIdx.x) & 15) + 2096)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3716)] * weight_shared[((((int)threadIdx.x) & 15) + 2112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3717)] * weight_shared[((((int)threadIdx.x) & 15) + 2128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3718)] * weight_shared[((((int)threadIdx.x) & 15) + 2144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3719)] * weight_shared[((((int)threadIdx.x) & 15) + 2160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3720)] * weight_shared[((((int)threadIdx.x) & 15) + 2176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3721)] * weight_shared[((((int)threadIdx.x) & 15) + 2192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3722)] * weight_shared[((((int)threadIdx.x) & 15) + 2208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3723)] * weight_shared[((((int)threadIdx.x) & 15) + 2224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3724)] * weight_shared[((((int)threadIdx.x) & 15) + 2240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3725)] * weight_shared[((((int)threadIdx.x) & 15) + 2256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3726)] * weight_shared[((((int)threadIdx.x) & 15) + 2272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3727)] * weight_shared[((((int)threadIdx.x) & 15) + 2288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3728)] * weight_shared[((((int)threadIdx.x) & 15) + 2304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3729)] * weight_shared[((((int)threadIdx.x) & 15) + 2320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3730)] * weight_shared[((((int)threadIdx.x) & 15) + 2336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3731)] * weight_shared[((((int)threadIdx.x) & 15) + 2352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3732)] * weight_shared[((((int)threadIdx.x) & 15) + 2368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3733)] * weight_shared[((((int)threadIdx.x) & 15) + 2384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3734)] * weight_shared[((((int)threadIdx.x) & 15) + 2400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3735)] * weight_shared[((((int)threadIdx.x) & 15) + 2416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3736)] * weight_shared[((((int)threadIdx.x) & 15) + 2432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3737)] * weight_shared[((((int)threadIdx.x) & 15) + 2448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3738)] * weight_shared[((((int)threadIdx.x) & 15) + 2464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3739)] * weight_shared[((((int)threadIdx.x) & 15) + 2480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3740)] * weight_shared[((((int)threadIdx.x) & 15) + 2496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3741)] * weight_shared[((((int)threadIdx.x) & 15) + 2512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3742)] * weight_shared[((((int)threadIdx.x) & 15) + 2528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3743)] * weight_shared[((((int)threadIdx.x) & 15) + 2544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3776)] * weight_shared[((((int)threadIdx.x) & 15) + 2048)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3777)] * weight_shared[((((int)threadIdx.x) & 15) + 2064)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3778)] * weight_shared[((((int)threadIdx.x) & 15) + 2080)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3779)] * weight_shared[((((int)threadIdx.x) & 15) + 2096)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3780)] * weight_shared[((((int)threadIdx.x) & 15) + 2112)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3781)] * weight_shared[((((int)threadIdx.x) & 15) + 2128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3782)] * weight_shared[((((int)threadIdx.x) & 15) + 2144)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3783)] * weight_shared[((((int)threadIdx.x) & 15) + 2160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3784)] * weight_shared[((((int)threadIdx.x) & 15) + 2176)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3785)] * weight_shared[((((int)threadIdx.x) & 15) + 2192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3786)] * weight_shared[((((int)threadIdx.x) & 15) + 2208)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3787)] * weight_shared[((((int)threadIdx.x) & 15) + 2224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3788)] * weight_shared[((((int)threadIdx.x) & 15) + 2240)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3789)] * weight_shared[((((int)threadIdx.x) & 15) + 2256)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3790)] * weight_shared[((((int)threadIdx.x) & 15) + 2272)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3791)] * weight_shared[((((int)threadIdx.x) & 15) + 2288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3792)] * weight_shared[((((int)threadIdx.x) & 15) + 2304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3793)] * weight_shared[((((int)threadIdx.x) & 15) + 2320)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3794)] * weight_shared[((((int)threadIdx.x) & 15) + 2336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3795)] * weight_shared[((((int)threadIdx.x) & 15) + 2352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3796)] * weight_shared[((((int)threadIdx.x) & 15) + 2368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3797)] * weight_shared[((((int)threadIdx.x) & 15) + 2384)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3798)] * weight_shared[((((int)threadIdx.x) & 15) + 2400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3799)] * weight_shared[((((int)threadIdx.x) & 15) + 2416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3800)] * weight_shared[((((int)threadIdx.x) & 15) + 2432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3801)] * weight_shared[((((int)threadIdx.x) & 15) + 2448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3802)] * weight_shared[((((int)threadIdx.x) & 15) + 2464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3803)] * weight_shared[((((int)threadIdx.x) & 15) + 2480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3804)] * weight_shared[((((int)threadIdx.x) & 15) + 2496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3805)] * weight_shared[((((int)threadIdx.x) & 15) + 2512)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3806)] * weight_shared[((((int)threadIdx.x) & 15) + 2528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3807)] * weight_shared[((((int)threadIdx.x) & 15) + 2544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3840)] * weight_shared[((((int)threadIdx.x) & 15) + 2048)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3841)] * weight_shared[((((int)threadIdx.x) & 15) + 2064)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3842)] * weight_shared[((((int)threadIdx.x) & 15) + 2080)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3843)] * weight_shared[((((int)threadIdx.x) & 15) + 2096)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3844)] * weight_shared[((((int)threadIdx.x) & 15) + 2112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3845)] * weight_shared[((((int)threadIdx.x) & 15) + 2128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3846)] * weight_shared[((((int)threadIdx.x) & 15) + 2144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3847)] * weight_shared[((((int)threadIdx.x) & 15) + 2160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3848)] * weight_shared[((((int)threadIdx.x) & 15) + 2176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3849)] * weight_shared[((((int)threadIdx.x) & 15) + 2192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3850)] * weight_shared[((((int)threadIdx.x) & 15) + 2208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3851)] * weight_shared[((((int)threadIdx.x) & 15) + 2224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3852)] * weight_shared[((((int)threadIdx.x) & 15) + 2240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3853)] * weight_shared[((((int)threadIdx.x) & 15) + 2256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3854)] * weight_shared[((((int)threadIdx.x) & 15) + 2272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3855)] * weight_shared[((((int)threadIdx.x) & 15) + 2288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3856)] * weight_shared[((((int)threadIdx.x) & 15) + 2304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3857)] * weight_shared[((((int)threadIdx.x) & 15) + 2320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3858)] * weight_shared[((((int)threadIdx.x) & 15) + 2336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3859)] * weight_shared[((((int)threadIdx.x) & 15) + 2352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3860)] * weight_shared[((((int)threadIdx.x) & 15) + 2368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3861)] * weight_shared[((((int)threadIdx.x) & 15) + 2384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3862)] * weight_shared[((((int)threadIdx.x) & 15) + 2400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3863)] * weight_shared[((((int)threadIdx.x) & 15) + 2416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3864)] * weight_shared[((((int)threadIdx.x) & 15) + 2432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3865)] * weight_shared[((((int)threadIdx.x) & 15) + 2448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3866)] * weight_shared[((((int)threadIdx.x) & 15) + 2464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3867)] * weight_shared[((((int)threadIdx.x) & 15) + 2480)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3868)] * weight_shared[((((int)threadIdx.x) & 15) + 2496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3869)] * weight_shared[((((int)threadIdx.x) & 15) + 2512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3870)] * weight_shared[((((int)threadIdx.x) & 15) + 2528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3871)] * weight_shared[((((int)threadIdx.x) & 15) + 2544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3904)] * weight_shared[((((int)threadIdx.x) & 15) + 2048)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3905)] * weight_shared[((((int)threadIdx.x) & 15) + 2064)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3906)] * weight_shared[((((int)threadIdx.x) & 15) + 2080)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3907)] * weight_shared[((((int)threadIdx.x) & 15) + 2096)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3908)] * weight_shared[((((int)threadIdx.x) & 15) + 2112)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3909)] * weight_shared[((((int)threadIdx.x) & 15) + 2128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3910)] * weight_shared[((((int)threadIdx.x) & 15) + 2144)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3911)] * weight_shared[((((int)threadIdx.x) & 15) + 2160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3912)] * weight_shared[((((int)threadIdx.x) & 15) + 2176)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3913)] * weight_shared[((((int)threadIdx.x) & 15) + 2192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3914)] * weight_shared[((((int)threadIdx.x) & 15) + 2208)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3915)] * weight_shared[((((int)threadIdx.x) & 15) + 2224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3916)] * weight_shared[((((int)threadIdx.x) & 15) + 2240)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3917)] * weight_shared[((((int)threadIdx.x) & 15) + 2256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3918)] * weight_shared[((((int)threadIdx.x) & 15) + 2272)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3919)] * weight_shared[((((int)threadIdx.x) & 15) + 2288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3920)] * weight_shared[((((int)threadIdx.x) & 15) + 2304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3921)] * weight_shared[((((int)threadIdx.x) & 15) + 2320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3922)] * weight_shared[((((int)threadIdx.x) & 15) + 2336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3923)] * weight_shared[((((int)threadIdx.x) & 15) + 2352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3924)] * weight_shared[((((int)threadIdx.x) & 15) + 2368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3925)] * weight_shared[((((int)threadIdx.x) & 15) + 2384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3926)] * weight_shared[((((int)threadIdx.x) & 15) + 2400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3927)] * weight_shared[((((int)threadIdx.x) & 15) + 2416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3928)] * weight_shared[((((int)threadIdx.x) & 15) + 2432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3929)] * weight_shared[((((int)threadIdx.x) & 15) + 2448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3930)] * weight_shared[((((int)threadIdx.x) & 15) + 2464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3931)] * weight_shared[((((int)threadIdx.x) & 15) + 2480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3932)] * weight_shared[((((int)threadIdx.x) & 15) + 2496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3933)] * weight_shared[((((int)threadIdx.x) & 15) + 2512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3934)] * weight_shared[((((int)threadIdx.x) & 15) + 2528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3935)] * weight_shared[((((int)threadIdx.x) & 15) + 2544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3968)] * weight_shared[((((int)threadIdx.x) & 15) + 2048)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3969)] * weight_shared[((((int)threadIdx.x) & 15) + 2064)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3970)] * weight_shared[((((int)threadIdx.x) & 15) + 2080)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3971)] * weight_shared[((((int)threadIdx.x) & 15) + 2096)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3972)] * weight_shared[((((int)threadIdx.x) & 15) + 2112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3973)] * weight_shared[((((int)threadIdx.x) & 15) + 2128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3974)] * weight_shared[((((int)threadIdx.x) & 15) + 2144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3975)] * weight_shared[((((int)threadIdx.x) & 15) + 2160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3976)] * weight_shared[((((int)threadIdx.x) & 15) + 2176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3977)] * weight_shared[((((int)threadIdx.x) & 15) + 2192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3978)] * weight_shared[((((int)threadIdx.x) & 15) + 2208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3979)] * weight_shared[((((int)threadIdx.x) & 15) + 2224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3980)] * weight_shared[((((int)threadIdx.x) & 15) + 2240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3981)] * weight_shared[((((int)threadIdx.x) & 15) + 2256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3982)] * weight_shared[((((int)threadIdx.x) & 15) + 2272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3983)] * weight_shared[((((int)threadIdx.x) & 15) + 2288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3984)] * weight_shared[((((int)threadIdx.x) & 15) + 2304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3985)] * weight_shared[((((int)threadIdx.x) & 15) + 2320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3986)] * weight_shared[((((int)threadIdx.x) & 15) + 2336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3987)] * weight_shared[((((int)threadIdx.x) & 15) + 2352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3988)] * weight_shared[((((int)threadIdx.x) & 15) + 2368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3989)] * weight_shared[((((int)threadIdx.x) & 15) + 2384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3990)] * weight_shared[((((int)threadIdx.x) & 15) + 2400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3991)] * weight_shared[((((int)threadIdx.x) & 15) + 2416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3992)] * weight_shared[((((int)threadIdx.x) & 15) + 2432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3993)] * weight_shared[((((int)threadIdx.x) & 15) + 2448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3994)] * weight_shared[((((int)threadIdx.x) & 15) + 2464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3995)] * weight_shared[((((int)threadIdx.x) & 15) + 2480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3996)] * weight_shared[((((int)threadIdx.x) & 15) + 2496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3997)] * weight_shared[((((int)threadIdx.x) & 15) + 2512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3998)] * weight_shared[((((int)threadIdx.x) & 15) + 2528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3999)] * weight_shared[((((int)threadIdx.x) & 15) + 2544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3616)] * weight_shared[((((int)threadIdx.x) & 15) + 2560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3617)] * weight_shared[((((int)threadIdx.x) & 15) + 2576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3618)] * weight_shared[((((int)threadIdx.x) & 15) + 2592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3619)] * weight_shared[((((int)threadIdx.x) & 15) + 2608)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3620)] * weight_shared[((((int)threadIdx.x) & 15) + 2624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3621)] * weight_shared[((((int)threadIdx.x) & 15) + 2640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3622)] * weight_shared[((((int)threadIdx.x) & 15) + 2656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3623)] * weight_shared[((((int)threadIdx.x) & 15) + 2672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3624)] * weight_shared[((((int)threadIdx.x) & 15) + 2688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3625)] * weight_shared[((((int)threadIdx.x) & 15) + 2704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3626)] * weight_shared[((((int)threadIdx.x) & 15) + 2720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3627)] * weight_shared[((((int)threadIdx.x) & 15) + 2736)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3628)] * weight_shared[((((int)threadIdx.x) & 15) + 2752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3629)] * weight_shared[((((int)threadIdx.x) & 15) + 2768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3630)] * weight_shared[((((int)threadIdx.x) & 15) + 2784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3631)] * weight_shared[((((int)threadIdx.x) & 15) + 2800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3632)] * weight_shared[((((int)threadIdx.x) & 15) + 2816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3633)] * weight_shared[((((int)threadIdx.x) & 15) + 2832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3634)] * weight_shared[((((int)threadIdx.x) & 15) + 2848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3635)] * weight_shared[((((int)threadIdx.x) & 15) + 2864)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3636)] * weight_shared[((((int)threadIdx.x) & 15) + 2880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3637)] * weight_shared[((((int)threadIdx.x) & 15) + 2896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3638)] * weight_shared[((((int)threadIdx.x) & 15) + 2912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3639)] * weight_shared[((((int)threadIdx.x) & 15) + 2928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3640)] * weight_shared[((((int)threadIdx.x) & 15) + 2944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3641)] * weight_shared[((((int)threadIdx.x) & 15) + 2960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3642)] * weight_shared[((((int)threadIdx.x) & 15) + 2976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3643)] * weight_shared[((((int)threadIdx.x) & 15) + 2992)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3644)] * weight_shared[((((int)threadIdx.x) & 15) + 3008)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3645)] * weight_shared[((((int)threadIdx.x) & 15) + 3024)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3646)] * weight_shared[((((int)threadIdx.x) & 15) + 3040)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3647)] * weight_shared[((((int)threadIdx.x) & 15) + 3056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3680)] * weight_shared[((((int)threadIdx.x) & 15) + 2560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3681)] * weight_shared[((((int)threadIdx.x) & 15) + 2576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3682)] * weight_shared[((((int)threadIdx.x) & 15) + 2592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3683)] * weight_shared[((((int)threadIdx.x) & 15) + 2608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3684)] * weight_shared[((((int)threadIdx.x) & 15) + 2624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3685)] * weight_shared[((((int)threadIdx.x) & 15) + 2640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3686)] * weight_shared[((((int)threadIdx.x) & 15) + 2656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3687)] * weight_shared[((((int)threadIdx.x) & 15) + 2672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3688)] * weight_shared[((((int)threadIdx.x) & 15) + 2688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3689)] * weight_shared[((((int)threadIdx.x) & 15) + 2704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3690)] * weight_shared[((((int)threadIdx.x) & 15) + 2720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3691)] * weight_shared[((((int)threadIdx.x) & 15) + 2736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3692)] * weight_shared[((((int)threadIdx.x) & 15) + 2752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3693)] * weight_shared[((((int)threadIdx.x) & 15) + 2768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3694)] * weight_shared[((((int)threadIdx.x) & 15) + 2784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3695)] * weight_shared[((((int)threadIdx.x) & 15) + 2800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3696)] * weight_shared[((((int)threadIdx.x) & 15) + 2816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3697)] * weight_shared[((((int)threadIdx.x) & 15) + 2832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3698)] * weight_shared[((((int)threadIdx.x) & 15) + 2848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3699)] * weight_shared[((((int)threadIdx.x) & 15) + 2864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3700)] * weight_shared[((((int)threadIdx.x) & 15) + 2880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3701)] * weight_shared[((((int)threadIdx.x) & 15) + 2896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3702)] * weight_shared[((((int)threadIdx.x) & 15) + 2912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3703)] * weight_shared[((((int)threadIdx.x) & 15) + 2928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3704)] * weight_shared[((((int)threadIdx.x) & 15) + 2944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3705)] * weight_shared[((((int)threadIdx.x) & 15) + 2960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3706)] * weight_shared[((((int)threadIdx.x) & 15) + 2976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3707)] * weight_shared[((((int)threadIdx.x) & 15) + 2992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3708)] * weight_shared[((((int)threadIdx.x) & 15) + 3008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3709)] * weight_shared[((((int)threadIdx.x) & 15) + 3024)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3710)] * weight_shared[((((int)threadIdx.x) & 15) + 3040)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3711)] * weight_shared[((((int)threadIdx.x) & 15) + 3056)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3744)] * weight_shared[((((int)threadIdx.x) & 15) + 2560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3745)] * weight_shared[((((int)threadIdx.x) & 15) + 2576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3746)] * weight_shared[((((int)threadIdx.x) & 15) + 2592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3747)] * weight_shared[((((int)threadIdx.x) & 15) + 2608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3748)] * weight_shared[((((int)threadIdx.x) & 15) + 2624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3749)] * weight_shared[((((int)threadIdx.x) & 15) + 2640)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3750)] * weight_shared[((((int)threadIdx.x) & 15) + 2656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3751)] * weight_shared[((((int)threadIdx.x) & 15) + 2672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3752)] * weight_shared[((((int)threadIdx.x) & 15) + 2688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3753)] * weight_shared[((((int)threadIdx.x) & 15) + 2704)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3754)] * weight_shared[((((int)threadIdx.x) & 15) + 2720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3755)] * weight_shared[((((int)threadIdx.x) & 15) + 2736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3756)] * weight_shared[((((int)threadIdx.x) & 15) + 2752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3757)] * weight_shared[((((int)threadIdx.x) & 15) + 2768)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3758)] * weight_shared[((((int)threadIdx.x) & 15) + 2784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3759)] * weight_shared[((((int)threadIdx.x) & 15) + 2800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3760)] * weight_shared[((((int)threadIdx.x) & 15) + 2816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3761)] * weight_shared[((((int)threadIdx.x) & 15) + 2832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3762)] * weight_shared[((((int)threadIdx.x) & 15) + 2848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3763)] * weight_shared[((((int)threadIdx.x) & 15) + 2864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3764)] * weight_shared[((((int)threadIdx.x) & 15) + 2880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3765)] * weight_shared[((((int)threadIdx.x) & 15) + 2896)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3766)] * weight_shared[((((int)threadIdx.x) & 15) + 2912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3767)] * weight_shared[((((int)threadIdx.x) & 15) + 2928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3768)] * weight_shared[((((int)threadIdx.x) & 15) + 2944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3769)] * weight_shared[((((int)threadIdx.x) & 15) + 2960)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3770)] * weight_shared[((((int)threadIdx.x) & 15) + 2976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3771)] * weight_shared[((((int)threadIdx.x) & 15) + 2992)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3772)] * weight_shared[((((int)threadIdx.x) & 15) + 3008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3773)] * weight_shared[((((int)threadIdx.x) & 15) + 3024)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3774)] * weight_shared[((((int)threadIdx.x) & 15) + 3040)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3775)] * weight_shared[((((int)threadIdx.x) & 15) + 3056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3808)] * weight_shared[((((int)threadIdx.x) & 15) + 2560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3809)] * weight_shared[((((int)threadIdx.x) & 15) + 2576)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3810)] * weight_shared[((((int)threadIdx.x) & 15) + 2592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3811)] * weight_shared[((((int)threadIdx.x) & 15) + 2608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3812)] * weight_shared[((((int)threadIdx.x) & 15) + 2624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3813)] * weight_shared[((((int)threadIdx.x) & 15) + 2640)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3814)] * weight_shared[((((int)threadIdx.x) & 15) + 2656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3815)] * weight_shared[((((int)threadIdx.x) & 15) + 2672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3816)] * weight_shared[((((int)threadIdx.x) & 15) + 2688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3817)] * weight_shared[((((int)threadIdx.x) & 15) + 2704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3818)] * weight_shared[((((int)threadIdx.x) & 15) + 2720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3819)] * weight_shared[((((int)threadIdx.x) & 15) + 2736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3820)] * weight_shared[((((int)threadIdx.x) & 15) + 2752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3821)] * weight_shared[((((int)threadIdx.x) & 15) + 2768)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3822)] * weight_shared[((((int)threadIdx.x) & 15) + 2784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3823)] * weight_shared[((((int)threadIdx.x) & 15) + 2800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3824)] * weight_shared[((((int)threadIdx.x) & 15) + 2816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3825)] * weight_shared[((((int)threadIdx.x) & 15) + 2832)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3826)] * weight_shared[((((int)threadIdx.x) & 15) + 2848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3827)] * weight_shared[((((int)threadIdx.x) & 15) + 2864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3828)] * weight_shared[((((int)threadIdx.x) & 15) + 2880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3829)] * weight_shared[((((int)threadIdx.x) & 15) + 2896)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3830)] * weight_shared[((((int)threadIdx.x) & 15) + 2912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3831)] * weight_shared[((((int)threadIdx.x) & 15) + 2928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3832)] * weight_shared[((((int)threadIdx.x) & 15) + 2944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3833)] * weight_shared[((((int)threadIdx.x) & 15) + 2960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3834)] * weight_shared[((((int)threadIdx.x) & 15) + 2976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3835)] * weight_shared[((((int)threadIdx.x) & 15) + 2992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3836)] * weight_shared[((((int)threadIdx.x) & 15) + 3008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3837)] * weight_shared[((((int)threadIdx.x) & 15) + 3024)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3838)] * weight_shared[((((int)threadIdx.x) & 15) + 3040)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3839)] * weight_shared[((((int)threadIdx.x) & 15) + 3056)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3872)] * weight_shared[((((int)threadIdx.x) & 15) + 2560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3873)] * weight_shared[((((int)threadIdx.x) & 15) + 2576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3874)] * weight_shared[((((int)threadIdx.x) & 15) + 2592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3875)] * weight_shared[((((int)threadIdx.x) & 15) + 2608)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3876)] * weight_shared[((((int)threadIdx.x) & 15) + 2624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3877)] * weight_shared[((((int)threadIdx.x) & 15) + 2640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3878)] * weight_shared[((((int)threadIdx.x) & 15) + 2656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3879)] * weight_shared[((((int)threadIdx.x) & 15) + 2672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3880)] * weight_shared[((((int)threadIdx.x) & 15) + 2688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3881)] * weight_shared[((((int)threadIdx.x) & 15) + 2704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3882)] * weight_shared[((((int)threadIdx.x) & 15) + 2720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3883)] * weight_shared[((((int)threadIdx.x) & 15) + 2736)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3884)] * weight_shared[((((int)threadIdx.x) & 15) + 2752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3885)] * weight_shared[((((int)threadIdx.x) & 15) + 2768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3886)] * weight_shared[((((int)threadIdx.x) & 15) + 2784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3887)] * weight_shared[((((int)threadIdx.x) & 15) + 2800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3888)] * weight_shared[((((int)threadIdx.x) & 15) + 2816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3889)] * weight_shared[((((int)threadIdx.x) & 15) + 2832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3890)] * weight_shared[((((int)threadIdx.x) & 15) + 2848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3891)] * weight_shared[((((int)threadIdx.x) & 15) + 2864)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3892)] * weight_shared[((((int)threadIdx.x) & 15) + 2880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3893)] * weight_shared[((((int)threadIdx.x) & 15) + 2896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3894)] * weight_shared[((((int)threadIdx.x) & 15) + 2912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3895)] * weight_shared[((((int)threadIdx.x) & 15) + 2928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3896)] * weight_shared[((((int)threadIdx.x) & 15) + 2944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3897)] * weight_shared[((((int)threadIdx.x) & 15) + 2960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3898)] * weight_shared[((((int)threadIdx.x) & 15) + 2976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3899)] * weight_shared[((((int)threadIdx.x) & 15) + 2992)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3900)] * weight_shared[((((int)threadIdx.x) & 15) + 3008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3901)] * weight_shared[((((int)threadIdx.x) & 15) + 3024)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3902)] * weight_shared[((((int)threadIdx.x) & 15) + 3040)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3903)] * weight_shared[((((int)threadIdx.x) & 15) + 3056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3936)] * weight_shared[((((int)threadIdx.x) & 15) + 2560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3937)] * weight_shared[((((int)threadIdx.x) & 15) + 2576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3938)] * weight_shared[((((int)threadIdx.x) & 15) + 2592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3939)] * weight_shared[((((int)threadIdx.x) & 15) + 2608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3940)] * weight_shared[((((int)threadIdx.x) & 15) + 2624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3941)] * weight_shared[((((int)threadIdx.x) & 15) + 2640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3942)] * weight_shared[((((int)threadIdx.x) & 15) + 2656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3943)] * weight_shared[((((int)threadIdx.x) & 15) + 2672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3944)] * weight_shared[((((int)threadIdx.x) & 15) + 2688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3945)] * weight_shared[((((int)threadIdx.x) & 15) + 2704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3946)] * weight_shared[((((int)threadIdx.x) & 15) + 2720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3947)] * weight_shared[((((int)threadIdx.x) & 15) + 2736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3948)] * weight_shared[((((int)threadIdx.x) & 15) + 2752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3949)] * weight_shared[((((int)threadIdx.x) & 15) + 2768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3950)] * weight_shared[((((int)threadIdx.x) & 15) + 2784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3951)] * weight_shared[((((int)threadIdx.x) & 15) + 2800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3952)] * weight_shared[((((int)threadIdx.x) & 15) + 2816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3953)] * weight_shared[((((int)threadIdx.x) & 15) + 2832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3954)] * weight_shared[((((int)threadIdx.x) & 15) + 2848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3955)] * weight_shared[((((int)threadIdx.x) & 15) + 2864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3956)] * weight_shared[((((int)threadIdx.x) & 15) + 2880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3957)] * weight_shared[((((int)threadIdx.x) & 15) + 2896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3958)] * weight_shared[((((int)threadIdx.x) & 15) + 2912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3959)] * weight_shared[((((int)threadIdx.x) & 15) + 2928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3960)] * weight_shared[((((int)threadIdx.x) & 15) + 2944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3961)] * weight_shared[((((int)threadIdx.x) & 15) + 2960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3962)] * weight_shared[((((int)threadIdx.x) & 15) + 2976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3963)] * weight_shared[((((int)threadIdx.x) & 15) + 2992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3964)] * weight_shared[((((int)threadIdx.x) & 15) + 3008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3965)] * weight_shared[((((int)threadIdx.x) & 15) + 3024)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3966)] * weight_shared[((((int)threadIdx.x) & 15) + 3040)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3967)] * weight_shared[((((int)threadIdx.x) & 15) + 3056)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4000)] * weight_shared[((((int)threadIdx.x) & 15) + 2560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4001)] * weight_shared[((((int)threadIdx.x) & 15) + 2576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4002)] * weight_shared[((((int)threadIdx.x) & 15) + 2592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4003)] * weight_shared[((((int)threadIdx.x) & 15) + 2608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4004)] * weight_shared[((((int)threadIdx.x) & 15) + 2624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4005)] * weight_shared[((((int)threadIdx.x) & 15) + 2640)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4006)] * weight_shared[((((int)threadIdx.x) & 15) + 2656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4007)] * weight_shared[((((int)threadIdx.x) & 15) + 2672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4008)] * weight_shared[((((int)threadIdx.x) & 15) + 2688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4009)] * weight_shared[((((int)threadIdx.x) & 15) + 2704)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4010)] * weight_shared[((((int)threadIdx.x) & 15) + 2720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4011)] * weight_shared[((((int)threadIdx.x) & 15) + 2736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4012)] * weight_shared[((((int)threadIdx.x) & 15) + 2752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4013)] * weight_shared[((((int)threadIdx.x) & 15) + 2768)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4014)] * weight_shared[((((int)threadIdx.x) & 15) + 2784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4015)] * weight_shared[((((int)threadIdx.x) & 15) + 2800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4016)] * weight_shared[((((int)threadIdx.x) & 15) + 2816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4017)] * weight_shared[((((int)threadIdx.x) & 15) + 2832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4018)] * weight_shared[((((int)threadIdx.x) & 15) + 2848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4019)] * weight_shared[((((int)threadIdx.x) & 15) + 2864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4020)] * weight_shared[((((int)threadIdx.x) & 15) + 2880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4021)] * weight_shared[((((int)threadIdx.x) & 15) + 2896)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4022)] * weight_shared[((((int)threadIdx.x) & 15) + 2912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4023)] * weight_shared[((((int)threadIdx.x) & 15) + 2928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4024)] * weight_shared[((((int)threadIdx.x) & 15) + 2944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4025)] * weight_shared[((((int)threadIdx.x) & 15) + 2960)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4026)] * weight_shared[((((int)threadIdx.x) & 15) + 2976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4027)] * weight_shared[((((int)threadIdx.x) & 15) + 2992)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4028)] * weight_shared[((((int)threadIdx.x) & 15) + 3008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4029)] * weight_shared[((((int)threadIdx.x) & 15) + 3024)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4030)] * weight_shared[((((int)threadIdx.x) & 15) + 3040)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4031)] * weight_shared[((((int)threadIdx.x) & 15) + 3056)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((int)threadIdx.x) >> 4) * 448)] * weight_shared[(((int)threadIdx.x) & 15)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 1)] * weight_shared[((((int)threadIdx.x) & 15) + 16)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 2)] * weight_shared[((((int)threadIdx.x) & 15) + 32)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 3)] * weight_shared[((((int)threadIdx.x) & 15) + 48)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 4)] * weight_shared[((((int)threadIdx.x) & 15) + 64)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 5)] * weight_shared[((((int)threadIdx.x) & 15) + 80)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 6)] * weight_shared[((((int)threadIdx.x) & 15) + 96)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 7)] * weight_shared[((((int)threadIdx.x) & 15) + 112)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 8)] * weight_shared[((((int)threadIdx.x) & 15) + 128)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 9)] * weight_shared[((((int)threadIdx.x) & 15) + 144)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 10)] * weight_shared[((((int)threadIdx.x) & 15) + 160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 11)] * weight_shared[((((int)threadIdx.x) & 15) + 176)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 12)] * weight_shared[((((int)threadIdx.x) & 15) + 192)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 13)] * weight_shared[((((int)threadIdx.x) & 15) + 208)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 14)] * weight_shared[((((int)threadIdx.x) & 15) + 224)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 15)] * weight_shared[((((int)threadIdx.x) & 15) + 240)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 16)] * weight_shared[((((int)threadIdx.x) & 15) + 256)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 17)] * weight_shared[((((int)threadIdx.x) & 15) + 272)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 18)] * weight_shared[((((int)threadIdx.x) & 15) + 288)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 19)] * weight_shared[((((int)threadIdx.x) & 15) + 304)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 20)] * weight_shared[((((int)threadIdx.x) & 15) + 320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 21)] * weight_shared[((((int)threadIdx.x) & 15) + 336)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 22)] * weight_shared[((((int)threadIdx.x) & 15) + 352)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 23)] * weight_shared[((((int)threadIdx.x) & 15) + 368)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 24)] * weight_shared[((((int)threadIdx.x) & 15) + 384)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 25)] * weight_shared[((((int)threadIdx.x) & 15) + 400)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 26)] * weight_shared[((((int)threadIdx.x) & 15) + 416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 27)] * weight_shared[((((int)threadIdx.x) & 15) + 432)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 28)] * weight_shared[((((int)threadIdx.x) & 15) + 448)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 29)] * weight_shared[((((int)threadIdx.x) & 15) + 464)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 30)] * weight_shared[((((int)threadIdx.x) & 15) + 480)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 31)] * weight_shared[((((int)threadIdx.x) & 15) + 496)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 64)] * weight_shared[(((int)threadIdx.x) & 15)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 65)] * weight_shared[((((int)threadIdx.x) & 15) + 16)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 66)] * weight_shared[((((int)threadIdx.x) & 15) + 32)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 67)] * weight_shared[((((int)threadIdx.x) & 15) + 48)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 68)] * weight_shared[((((int)threadIdx.x) & 15) + 64)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 69)] * weight_shared[((((int)threadIdx.x) & 15) + 80)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 70)] * weight_shared[((((int)threadIdx.x) & 15) + 96)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 71)] * weight_shared[((((int)threadIdx.x) & 15) + 112)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 72)] * weight_shared[((((int)threadIdx.x) & 15) + 128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 73)] * weight_shared[((((int)threadIdx.x) & 15) + 144)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 74)] * weight_shared[((((int)threadIdx.x) & 15) + 160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 75)] * weight_shared[((((int)threadIdx.x) & 15) + 176)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 76)] * weight_shared[((((int)threadIdx.x) & 15) + 192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 77)] * weight_shared[((((int)threadIdx.x) & 15) + 208)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 78)] * weight_shared[((((int)threadIdx.x) & 15) + 224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 79)] * weight_shared[((((int)threadIdx.x) & 15) + 240)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 80)] * weight_shared[((((int)threadIdx.x) & 15) + 256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 81)] * weight_shared[((((int)threadIdx.x) & 15) + 272)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 82)] * weight_shared[((((int)threadIdx.x) & 15) + 288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 83)] * weight_shared[((((int)threadIdx.x) & 15) + 304)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 84)] * weight_shared[((((int)threadIdx.x) & 15) + 320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 85)] * weight_shared[((((int)threadIdx.x) & 15) + 336)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 86)] * weight_shared[((((int)threadIdx.x) & 15) + 352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 87)] * weight_shared[((((int)threadIdx.x) & 15) + 368)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 88)] * weight_shared[((((int)threadIdx.x) & 15) + 384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 89)] * weight_shared[((((int)threadIdx.x) & 15) + 400)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 90)] * weight_shared[((((int)threadIdx.x) & 15) + 416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 91)] * weight_shared[((((int)threadIdx.x) & 15) + 432)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 92)] * weight_shared[((((int)threadIdx.x) & 15) + 448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 93)] * weight_shared[((((int)threadIdx.x) & 15) + 464)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 94)] * weight_shared[((((int)threadIdx.x) & 15) + 480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 95)] * weight_shared[((((int)threadIdx.x) & 15) + 496)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 128)] * weight_shared[(((int)threadIdx.x) & 15)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 129)] * weight_shared[((((int)threadIdx.x) & 15) + 16)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 130)] * weight_shared[((((int)threadIdx.x) & 15) + 32)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 131)] * weight_shared[((((int)threadIdx.x) & 15) + 48)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 132)] * weight_shared[((((int)threadIdx.x) & 15) + 64)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 133)] * weight_shared[((((int)threadIdx.x) & 15) + 80)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 134)] * weight_shared[((((int)threadIdx.x) & 15) + 96)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 135)] * weight_shared[((((int)threadIdx.x) & 15) + 112)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 136)] * weight_shared[((((int)threadIdx.x) & 15) + 128)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 137)] * weight_shared[((((int)threadIdx.x) & 15) + 144)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 138)] * weight_shared[((((int)threadIdx.x) & 15) + 160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 139)] * weight_shared[((((int)threadIdx.x) & 15) + 176)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 140)] * weight_shared[((((int)threadIdx.x) & 15) + 192)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 141)] * weight_shared[((((int)threadIdx.x) & 15) + 208)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 142)] * weight_shared[((((int)threadIdx.x) & 15) + 224)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 143)] * weight_shared[((((int)threadIdx.x) & 15) + 240)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 144)] * weight_shared[((((int)threadIdx.x) & 15) + 256)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 145)] * weight_shared[((((int)threadIdx.x) & 15) + 272)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 146)] * weight_shared[((((int)threadIdx.x) & 15) + 288)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 147)] * weight_shared[((((int)threadIdx.x) & 15) + 304)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 148)] * weight_shared[((((int)threadIdx.x) & 15) + 320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 149)] * weight_shared[((((int)threadIdx.x) & 15) + 336)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 150)] * weight_shared[((((int)threadIdx.x) & 15) + 352)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 151)] * weight_shared[((((int)threadIdx.x) & 15) + 368)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 152)] * weight_shared[((((int)threadIdx.x) & 15) + 384)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 153)] * weight_shared[((((int)threadIdx.x) & 15) + 400)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 154)] * weight_shared[((((int)threadIdx.x) & 15) + 416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 155)] * weight_shared[((((int)threadIdx.x) & 15) + 432)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 156)] * weight_shared[((((int)threadIdx.x) & 15) + 448)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 157)] * weight_shared[((((int)threadIdx.x) & 15) + 464)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 158)] * weight_shared[((((int)threadIdx.x) & 15) + 480)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 159)] * weight_shared[((((int)threadIdx.x) & 15) + 496)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 192)] * weight_shared[(((int)threadIdx.x) & 15)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 193)] * weight_shared[((((int)threadIdx.x) & 15) + 16)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 194)] * weight_shared[((((int)threadIdx.x) & 15) + 32)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 195)] * weight_shared[((((int)threadIdx.x) & 15) + 48)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 196)] * weight_shared[((((int)threadIdx.x) & 15) + 64)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 197)] * weight_shared[((((int)threadIdx.x) & 15) + 80)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 198)] * weight_shared[((((int)threadIdx.x) & 15) + 96)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 199)] * weight_shared[((((int)threadIdx.x) & 15) + 112)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 200)] * weight_shared[((((int)threadIdx.x) & 15) + 128)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 201)] * weight_shared[((((int)threadIdx.x) & 15) + 144)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 202)] * weight_shared[((((int)threadIdx.x) & 15) + 160)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 203)] * weight_shared[((((int)threadIdx.x) & 15) + 176)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 204)] * weight_shared[((((int)threadIdx.x) & 15) + 192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 205)] * weight_shared[((((int)threadIdx.x) & 15) + 208)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 206)] * weight_shared[((((int)threadIdx.x) & 15) + 224)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 207)] * weight_shared[((((int)threadIdx.x) & 15) + 240)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 208)] * weight_shared[((((int)threadIdx.x) & 15) + 256)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 209)] * weight_shared[((((int)threadIdx.x) & 15) + 272)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 210)] * weight_shared[((((int)threadIdx.x) & 15) + 288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 211)] * weight_shared[((((int)threadIdx.x) & 15) + 304)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 212)] * weight_shared[((((int)threadIdx.x) & 15) + 320)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 213)] * weight_shared[((((int)threadIdx.x) & 15) + 336)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 214)] * weight_shared[((((int)threadIdx.x) & 15) + 352)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 215)] * weight_shared[((((int)threadIdx.x) & 15) + 368)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 216)] * weight_shared[((((int)threadIdx.x) & 15) + 384)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 217)] * weight_shared[((((int)threadIdx.x) & 15) + 400)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 218)] * weight_shared[((((int)threadIdx.x) & 15) + 416)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 219)] * weight_shared[((((int)threadIdx.x) & 15) + 432)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 220)] * weight_shared[((((int)threadIdx.x) & 15) + 448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 221)] * weight_shared[((((int)threadIdx.x) & 15) + 464)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 222)] * weight_shared[((((int)threadIdx.x) & 15) + 480)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 223)] * weight_shared[((((int)threadIdx.x) & 15) + 496)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 256)] * weight_shared[(((int)threadIdx.x) & 15)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 257)] * weight_shared[((((int)threadIdx.x) & 15) + 16)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 258)] * weight_shared[((((int)threadIdx.x) & 15) + 32)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 259)] * weight_shared[((((int)threadIdx.x) & 15) + 48)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 260)] * weight_shared[((((int)threadIdx.x) & 15) + 64)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 261)] * weight_shared[((((int)threadIdx.x) & 15) + 80)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 262)] * weight_shared[((((int)threadIdx.x) & 15) + 96)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 263)] * weight_shared[((((int)threadIdx.x) & 15) + 112)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 264)] * weight_shared[((((int)threadIdx.x) & 15) + 128)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 265)] * weight_shared[((((int)threadIdx.x) & 15) + 144)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 266)] * weight_shared[((((int)threadIdx.x) & 15) + 160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 267)] * weight_shared[((((int)threadIdx.x) & 15) + 176)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 268)] * weight_shared[((((int)threadIdx.x) & 15) + 192)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 269)] * weight_shared[((((int)threadIdx.x) & 15) + 208)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 270)] * weight_shared[((((int)threadIdx.x) & 15) + 224)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 271)] * weight_shared[((((int)threadIdx.x) & 15) + 240)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 272)] * weight_shared[((((int)threadIdx.x) & 15) + 256)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 273)] * weight_shared[((((int)threadIdx.x) & 15) + 272)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 274)] * weight_shared[((((int)threadIdx.x) & 15) + 288)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 275)] * weight_shared[((((int)threadIdx.x) & 15) + 304)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 276)] * weight_shared[((((int)threadIdx.x) & 15) + 320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 277)] * weight_shared[((((int)threadIdx.x) & 15) + 336)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 278)] * weight_shared[((((int)threadIdx.x) & 15) + 352)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 279)] * weight_shared[((((int)threadIdx.x) & 15) + 368)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 280)] * weight_shared[((((int)threadIdx.x) & 15) + 384)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 281)] * weight_shared[((((int)threadIdx.x) & 15) + 400)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 282)] * weight_shared[((((int)threadIdx.x) & 15) + 416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 283)] * weight_shared[((((int)threadIdx.x) & 15) + 432)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 284)] * weight_shared[((((int)threadIdx.x) & 15) + 448)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 285)] * weight_shared[((((int)threadIdx.x) & 15) + 464)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 286)] * weight_shared[((((int)threadIdx.x) & 15) + 480)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 287)] * weight_shared[((((int)threadIdx.x) & 15) + 496)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 320)] * weight_shared[(((int)threadIdx.x) & 15)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 321)] * weight_shared[((((int)threadIdx.x) & 15) + 16)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 322)] * weight_shared[((((int)threadIdx.x) & 15) + 32)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 323)] * weight_shared[((((int)threadIdx.x) & 15) + 48)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 324)] * weight_shared[((((int)threadIdx.x) & 15) + 64)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 325)] * weight_shared[((((int)threadIdx.x) & 15) + 80)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 326)] * weight_shared[((((int)threadIdx.x) & 15) + 96)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 327)] * weight_shared[((((int)threadIdx.x) & 15) + 112)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 328)] * weight_shared[((((int)threadIdx.x) & 15) + 128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 329)] * weight_shared[((((int)threadIdx.x) & 15) + 144)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 330)] * weight_shared[((((int)threadIdx.x) & 15) + 160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 331)] * weight_shared[((((int)threadIdx.x) & 15) + 176)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 332)] * weight_shared[((((int)threadIdx.x) & 15) + 192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 333)] * weight_shared[((((int)threadIdx.x) & 15) + 208)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 334)] * weight_shared[((((int)threadIdx.x) & 15) + 224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 335)] * weight_shared[((((int)threadIdx.x) & 15) + 240)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 336)] * weight_shared[((((int)threadIdx.x) & 15) + 256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 337)] * weight_shared[((((int)threadIdx.x) & 15) + 272)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 338)] * weight_shared[((((int)threadIdx.x) & 15) + 288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 339)] * weight_shared[((((int)threadIdx.x) & 15) + 304)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 340)] * weight_shared[((((int)threadIdx.x) & 15) + 320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 341)] * weight_shared[((((int)threadIdx.x) & 15) + 336)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 342)] * weight_shared[((((int)threadIdx.x) & 15) + 352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 343)] * weight_shared[((((int)threadIdx.x) & 15) + 368)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 344)] * weight_shared[((((int)threadIdx.x) & 15) + 384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 345)] * weight_shared[((((int)threadIdx.x) & 15) + 400)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 346)] * weight_shared[((((int)threadIdx.x) & 15) + 416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 347)] * weight_shared[((((int)threadIdx.x) & 15) + 432)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 348)] * weight_shared[((((int)threadIdx.x) & 15) + 448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 349)] * weight_shared[((((int)threadIdx.x) & 15) + 464)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 350)] * weight_shared[((((int)threadIdx.x) & 15) + 480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 351)] * weight_shared[((((int)threadIdx.x) & 15) + 496)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 384)] * weight_shared[(((int)threadIdx.x) & 15)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 385)] * weight_shared[((((int)threadIdx.x) & 15) + 16)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 386)] * weight_shared[((((int)threadIdx.x) & 15) + 32)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 387)] * weight_shared[((((int)threadIdx.x) & 15) + 48)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 388)] * weight_shared[((((int)threadIdx.x) & 15) + 64)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 389)] * weight_shared[((((int)threadIdx.x) & 15) + 80)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 390)] * weight_shared[((((int)threadIdx.x) & 15) + 96)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 391)] * weight_shared[((((int)threadIdx.x) & 15) + 112)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 392)] * weight_shared[((((int)threadIdx.x) & 15) + 128)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 393)] * weight_shared[((((int)threadIdx.x) & 15) + 144)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 394)] * weight_shared[((((int)threadIdx.x) & 15) + 160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 395)] * weight_shared[((((int)threadIdx.x) & 15) + 176)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 396)] * weight_shared[((((int)threadIdx.x) & 15) + 192)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 397)] * weight_shared[((((int)threadIdx.x) & 15) + 208)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 398)] * weight_shared[((((int)threadIdx.x) & 15) + 224)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 399)] * weight_shared[((((int)threadIdx.x) & 15) + 240)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 400)] * weight_shared[((((int)threadIdx.x) & 15) + 256)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 401)] * weight_shared[((((int)threadIdx.x) & 15) + 272)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 402)] * weight_shared[((((int)threadIdx.x) & 15) + 288)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 403)] * weight_shared[((((int)threadIdx.x) & 15) + 304)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 404)] * weight_shared[((((int)threadIdx.x) & 15) + 320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 405)] * weight_shared[((((int)threadIdx.x) & 15) + 336)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 406)] * weight_shared[((((int)threadIdx.x) & 15) + 352)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 407)] * weight_shared[((((int)threadIdx.x) & 15) + 368)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 408)] * weight_shared[((((int)threadIdx.x) & 15) + 384)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 409)] * weight_shared[((((int)threadIdx.x) & 15) + 400)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 410)] * weight_shared[((((int)threadIdx.x) & 15) + 416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 411)] * weight_shared[((((int)threadIdx.x) & 15) + 432)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 412)] * weight_shared[((((int)threadIdx.x) & 15) + 448)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 413)] * weight_shared[((((int)threadIdx.x) & 15) + 464)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 414)] * weight_shared[((((int)threadIdx.x) & 15) + 480)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 415)] * weight_shared[((((int)threadIdx.x) & 15) + 496)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 32)] * weight_shared[((((int)threadIdx.x) & 15) + 512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 33)] * weight_shared[((((int)threadIdx.x) & 15) + 528)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 34)] * weight_shared[((((int)threadIdx.x) & 15) + 544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 35)] * weight_shared[((((int)threadIdx.x) & 15) + 560)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 36)] * weight_shared[((((int)threadIdx.x) & 15) + 576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 37)] * weight_shared[((((int)threadIdx.x) & 15) + 592)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 38)] * weight_shared[((((int)threadIdx.x) & 15) + 608)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 39)] * weight_shared[((((int)threadIdx.x) & 15) + 624)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 40)] * weight_shared[((((int)threadIdx.x) & 15) + 640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 41)] * weight_shared[((((int)threadIdx.x) & 15) + 656)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 42)] * weight_shared[((((int)threadIdx.x) & 15) + 672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 43)] * weight_shared[((((int)threadIdx.x) & 15) + 688)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 44)] * weight_shared[((((int)threadIdx.x) & 15) + 704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 45)] * weight_shared[((((int)threadIdx.x) & 15) + 720)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 46)] * weight_shared[((((int)threadIdx.x) & 15) + 736)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 47)] * weight_shared[((((int)threadIdx.x) & 15) + 752)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 48)] * weight_shared[((((int)threadIdx.x) & 15) + 768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 49)] * weight_shared[((((int)threadIdx.x) & 15) + 784)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 50)] * weight_shared[((((int)threadIdx.x) & 15) + 800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 51)] * weight_shared[((((int)threadIdx.x) & 15) + 816)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 52)] * weight_shared[((((int)threadIdx.x) & 15) + 832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 53)] * weight_shared[((((int)threadIdx.x) & 15) + 848)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 54)] * weight_shared[((((int)threadIdx.x) & 15) + 864)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 55)] * weight_shared[((((int)threadIdx.x) & 15) + 880)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 56)] * weight_shared[((((int)threadIdx.x) & 15) + 896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 57)] * weight_shared[((((int)threadIdx.x) & 15) + 912)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 58)] * weight_shared[((((int)threadIdx.x) & 15) + 928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 59)] * weight_shared[((((int)threadIdx.x) & 15) + 944)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 60)] * weight_shared[((((int)threadIdx.x) & 15) + 960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 61)] * weight_shared[((((int)threadIdx.x) & 15) + 976)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 62)] * weight_shared[((((int)threadIdx.x) & 15) + 992)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 63)] * weight_shared[((((int)threadIdx.x) & 15) + 1008)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 96)] * weight_shared[((((int)threadIdx.x) & 15) + 512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 97)] * weight_shared[((((int)threadIdx.x) & 15) + 528)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 98)] * weight_shared[((((int)threadIdx.x) & 15) + 544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 99)] * weight_shared[((((int)threadIdx.x) & 15) + 560)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 100)] * weight_shared[((((int)threadIdx.x) & 15) + 576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 101)] * weight_shared[((((int)threadIdx.x) & 15) + 592)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 102)] * weight_shared[((((int)threadIdx.x) & 15) + 608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 103)] * weight_shared[((((int)threadIdx.x) & 15) + 624)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 104)] * weight_shared[((((int)threadIdx.x) & 15) + 640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 105)] * weight_shared[((((int)threadIdx.x) & 15) + 656)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 106)] * weight_shared[((((int)threadIdx.x) & 15) + 672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 107)] * weight_shared[((((int)threadIdx.x) & 15) + 688)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 108)] * weight_shared[((((int)threadIdx.x) & 15) + 704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 109)] * weight_shared[((((int)threadIdx.x) & 15) + 720)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 110)] * weight_shared[((((int)threadIdx.x) & 15) + 736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 111)] * weight_shared[((((int)threadIdx.x) & 15) + 752)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 112)] * weight_shared[((((int)threadIdx.x) & 15) + 768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 113)] * weight_shared[((((int)threadIdx.x) & 15) + 784)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 114)] * weight_shared[((((int)threadIdx.x) & 15) + 800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 115)] * weight_shared[((((int)threadIdx.x) & 15) + 816)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 116)] * weight_shared[((((int)threadIdx.x) & 15) + 832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 117)] * weight_shared[((((int)threadIdx.x) & 15) + 848)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 118)] * weight_shared[((((int)threadIdx.x) & 15) + 864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 119)] * weight_shared[((((int)threadIdx.x) & 15) + 880)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 120)] * weight_shared[((((int)threadIdx.x) & 15) + 896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 121)] * weight_shared[((((int)threadIdx.x) & 15) + 912)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 122)] * weight_shared[((((int)threadIdx.x) & 15) + 928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 123)] * weight_shared[((((int)threadIdx.x) & 15) + 944)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 124)] * weight_shared[((((int)threadIdx.x) & 15) + 960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 125)] * weight_shared[((((int)threadIdx.x) & 15) + 976)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 126)] * weight_shared[((((int)threadIdx.x) & 15) + 992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 127)] * weight_shared[((((int)threadIdx.x) & 15) + 1008)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 160)] * weight_shared[((((int)threadIdx.x) & 15) + 512)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 161)] * weight_shared[((((int)threadIdx.x) & 15) + 528)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 162)] * weight_shared[((((int)threadIdx.x) & 15) + 544)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 163)] * weight_shared[((((int)threadIdx.x) & 15) + 560)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 164)] * weight_shared[((((int)threadIdx.x) & 15) + 576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 165)] * weight_shared[((((int)threadIdx.x) & 15) + 592)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 166)] * weight_shared[((((int)threadIdx.x) & 15) + 608)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 167)] * weight_shared[((((int)threadIdx.x) & 15) + 624)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 168)] * weight_shared[((((int)threadIdx.x) & 15) + 640)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 169)] * weight_shared[((((int)threadIdx.x) & 15) + 656)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 170)] * weight_shared[((((int)threadIdx.x) & 15) + 672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 171)] * weight_shared[((((int)threadIdx.x) & 15) + 688)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 172)] * weight_shared[((((int)threadIdx.x) & 15) + 704)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 173)] * weight_shared[((((int)threadIdx.x) & 15) + 720)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 174)] * weight_shared[((((int)threadIdx.x) & 15) + 736)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 175)] * weight_shared[((((int)threadIdx.x) & 15) + 752)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 176)] * weight_shared[((((int)threadIdx.x) & 15) + 768)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 177)] * weight_shared[((((int)threadIdx.x) & 15) + 784)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 178)] * weight_shared[((((int)threadIdx.x) & 15) + 800)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 179)] * weight_shared[((((int)threadIdx.x) & 15) + 816)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 180)] * weight_shared[((((int)threadIdx.x) & 15) + 832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 181)] * weight_shared[((((int)threadIdx.x) & 15) + 848)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 182)] * weight_shared[((((int)threadIdx.x) & 15) + 864)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 183)] * weight_shared[((((int)threadIdx.x) & 15) + 880)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 184)] * weight_shared[((((int)threadIdx.x) & 15) + 896)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 185)] * weight_shared[((((int)threadIdx.x) & 15) + 912)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 186)] * weight_shared[((((int)threadIdx.x) & 15) + 928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 187)] * weight_shared[((((int)threadIdx.x) & 15) + 944)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 188)] * weight_shared[((((int)threadIdx.x) & 15) + 960)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 189)] * weight_shared[((((int)threadIdx.x) & 15) + 976)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 190)] * weight_shared[((((int)threadIdx.x) & 15) + 992)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 191)] * weight_shared[((((int)threadIdx.x) & 15) + 1008)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 224)] * weight_shared[((((int)threadIdx.x) & 15) + 512)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 225)] * weight_shared[((((int)threadIdx.x) & 15) + 528)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 226)] * weight_shared[((((int)threadIdx.x) & 15) + 544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 227)] * weight_shared[((((int)threadIdx.x) & 15) + 560)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 228)] * weight_shared[((((int)threadIdx.x) & 15) + 576)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 229)] * weight_shared[((((int)threadIdx.x) & 15) + 592)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 230)] * weight_shared[((((int)threadIdx.x) & 15) + 608)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 231)] * weight_shared[((((int)threadIdx.x) & 15) + 624)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 232)] * weight_shared[((((int)threadIdx.x) & 15) + 640)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 233)] * weight_shared[((((int)threadIdx.x) & 15) + 656)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 234)] * weight_shared[((((int)threadIdx.x) & 15) + 672)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 235)] * weight_shared[((((int)threadIdx.x) & 15) + 688)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 236)] * weight_shared[((((int)threadIdx.x) & 15) + 704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 237)] * weight_shared[((((int)threadIdx.x) & 15) + 720)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 238)] * weight_shared[((((int)threadIdx.x) & 15) + 736)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 239)] * weight_shared[((((int)threadIdx.x) & 15) + 752)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 240)] * weight_shared[((((int)threadIdx.x) & 15) + 768)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 241)] * weight_shared[((((int)threadIdx.x) & 15) + 784)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 242)] * weight_shared[((((int)threadIdx.x) & 15) + 800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 243)] * weight_shared[((((int)threadIdx.x) & 15) + 816)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 244)] * weight_shared[((((int)threadIdx.x) & 15) + 832)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 245)] * weight_shared[((((int)threadIdx.x) & 15) + 848)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 246)] * weight_shared[((((int)threadIdx.x) & 15) + 864)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 247)] * weight_shared[((((int)threadIdx.x) & 15) + 880)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 248)] * weight_shared[((((int)threadIdx.x) & 15) + 896)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 249)] * weight_shared[((((int)threadIdx.x) & 15) + 912)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 250)] * weight_shared[((((int)threadIdx.x) & 15) + 928)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 251)] * weight_shared[((((int)threadIdx.x) & 15) + 944)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 252)] * weight_shared[((((int)threadIdx.x) & 15) + 960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 253)] * weight_shared[((((int)threadIdx.x) & 15) + 976)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 254)] * weight_shared[((((int)threadIdx.x) & 15) + 992)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 255)] * weight_shared[((((int)threadIdx.x) & 15) + 1008)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 288)] * weight_shared[((((int)threadIdx.x) & 15) + 512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 289)] * weight_shared[((((int)threadIdx.x) & 15) + 528)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 290)] * weight_shared[((((int)threadIdx.x) & 15) + 544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 291)] * weight_shared[((((int)threadIdx.x) & 15) + 560)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 292)] * weight_shared[((((int)threadIdx.x) & 15) + 576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 293)] * weight_shared[((((int)threadIdx.x) & 15) + 592)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 294)] * weight_shared[((((int)threadIdx.x) & 15) + 608)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 295)] * weight_shared[((((int)threadIdx.x) & 15) + 624)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 296)] * weight_shared[((((int)threadIdx.x) & 15) + 640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 297)] * weight_shared[((((int)threadIdx.x) & 15) + 656)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 298)] * weight_shared[((((int)threadIdx.x) & 15) + 672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 299)] * weight_shared[((((int)threadIdx.x) & 15) + 688)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 300)] * weight_shared[((((int)threadIdx.x) & 15) + 704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 301)] * weight_shared[((((int)threadIdx.x) & 15) + 720)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 302)] * weight_shared[((((int)threadIdx.x) & 15) + 736)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 303)] * weight_shared[((((int)threadIdx.x) & 15) + 752)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 304)] * weight_shared[((((int)threadIdx.x) & 15) + 768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 305)] * weight_shared[((((int)threadIdx.x) & 15) + 784)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 306)] * weight_shared[((((int)threadIdx.x) & 15) + 800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 307)] * weight_shared[((((int)threadIdx.x) & 15) + 816)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 308)] * weight_shared[((((int)threadIdx.x) & 15) + 832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 309)] * weight_shared[((((int)threadIdx.x) & 15) + 848)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 310)] * weight_shared[((((int)threadIdx.x) & 15) + 864)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 311)] * weight_shared[((((int)threadIdx.x) & 15) + 880)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 312)] * weight_shared[((((int)threadIdx.x) & 15) + 896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 313)] * weight_shared[((((int)threadIdx.x) & 15) + 912)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 314)] * weight_shared[((((int)threadIdx.x) & 15) + 928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 315)] * weight_shared[((((int)threadIdx.x) & 15) + 944)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 316)] * weight_shared[((((int)threadIdx.x) & 15) + 960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 317)] * weight_shared[((((int)threadIdx.x) & 15) + 976)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 318)] * weight_shared[((((int)threadIdx.x) & 15) + 992)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 319)] * weight_shared[((((int)threadIdx.x) & 15) + 1008)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 352)] * weight_shared[((((int)threadIdx.x) & 15) + 512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 353)] * weight_shared[((((int)threadIdx.x) & 15) + 528)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 354)] * weight_shared[((((int)threadIdx.x) & 15) + 544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 355)] * weight_shared[((((int)threadIdx.x) & 15) + 560)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 356)] * weight_shared[((((int)threadIdx.x) & 15) + 576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 357)] * weight_shared[((((int)threadIdx.x) & 15) + 592)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 358)] * weight_shared[((((int)threadIdx.x) & 15) + 608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 359)] * weight_shared[((((int)threadIdx.x) & 15) + 624)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 360)] * weight_shared[((((int)threadIdx.x) & 15) + 640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 361)] * weight_shared[((((int)threadIdx.x) & 15) + 656)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 362)] * weight_shared[((((int)threadIdx.x) & 15) + 672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 363)] * weight_shared[((((int)threadIdx.x) & 15) + 688)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 364)] * weight_shared[((((int)threadIdx.x) & 15) + 704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 365)] * weight_shared[((((int)threadIdx.x) & 15) + 720)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 366)] * weight_shared[((((int)threadIdx.x) & 15) + 736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 367)] * weight_shared[((((int)threadIdx.x) & 15) + 752)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 368)] * weight_shared[((((int)threadIdx.x) & 15) + 768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 369)] * weight_shared[((((int)threadIdx.x) & 15) + 784)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 370)] * weight_shared[((((int)threadIdx.x) & 15) + 800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 371)] * weight_shared[((((int)threadIdx.x) & 15) + 816)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 372)] * weight_shared[((((int)threadIdx.x) & 15) + 832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 373)] * weight_shared[((((int)threadIdx.x) & 15) + 848)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 374)] * weight_shared[((((int)threadIdx.x) & 15) + 864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 375)] * weight_shared[((((int)threadIdx.x) & 15) + 880)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 376)] * weight_shared[((((int)threadIdx.x) & 15) + 896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 377)] * weight_shared[((((int)threadIdx.x) & 15) + 912)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 378)] * weight_shared[((((int)threadIdx.x) & 15) + 928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 379)] * weight_shared[((((int)threadIdx.x) & 15) + 944)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 380)] * weight_shared[((((int)threadIdx.x) & 15) + 960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 381)] * weight_shared[((((int)threadIdx.x) & 15) + 976)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 382)] * weight_shared[((((int)threadIdx.x) & 15) + 992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 383)] * weight_shared[((((int)threadIdx.x) & 15) + 1008)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 416)] * weight_shared[((((int)threadIdx.x) & 15) + 512)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 417)] * weight_shared[((((int)threadIdx.x) & 15) + 528)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 418)] * weight_shared[((((int)threadIdx.x) & 15) + 544)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 419)] * weight_shared[((((int)threadIdx.x) & 15) + 560)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 420)] * weight_shared[((((int)threadIdx.x) & 15) + 576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 421)] * weight_shared[((((int)threadIdx.x) & 15) + 592)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 422)] * weight_shared[((((int)threadIdx.x) & 15) + 608)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 423)] * weight_shared[((((int)threadIdx.x) & 15) + 624)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 424)] * weight_shared[((((int)threadIdx.x) & 15) + 640)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 425)] * weight_shared[((((int)threadIdx.x) & 15) + 656)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 426)] * weight_shared[((((int)threadIdx.x) & 15) + 672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 427)] * weight_shared[((((int)threadIdx.x) & 15) + 688)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 428)] * weight_shared[((((int)threadIdx.x) & 15) + 704)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 429)] * weight_shared[((((int)threadIdx.x) & 15) + 720)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 430)] * weight_shared[((((int)threadIdx.x) & 15) + 736)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 431)] * weight_shared[((((int)threadIdx.x) & 15) + 752)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 432)] * weight_shared[((((int)threadIdx.x) & 15) + 768)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 433)] * weight_shared[((((int)threadIdx.x) & 15) + 784)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 434)] * weight_shared[((((int)threadIdx.x) & 15) + 800)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 435)] * weight_shared[((((int)threadIdx.x) & 15) + 816)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 436)] * weight_shared[((((int)threadIdx.x) & 15) + 832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 437)] * weight_shared[((((int)threadIdx.x) & 15) + 848)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 438)] * weight_shared[((((int)threadIdx.x) & 15) + 864)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 439)] * weight_shared[((((int)threadIdx.x) & 15) + 880)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 440)] * weight_shared[((((int)threadIdx.x) & 15) + 896)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 441)] * weight_shared[((((int)threadIdx.x) & 15) + 912)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 442)] * weight_shared[((((int)threadIdx.x) & 15) + 928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 443)] * weight_shared[((((int)threadIdx.x) & 15) + 944)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 444)] * weight_shared[((((int)threadIdx.x) & 15) + 960)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 445)] * weight_shared[((((int)threadIdx.x) & 15) + 976)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 446)] * weight_shared[((((int)threadIdx.x) & 15) + 992)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 448) + 447)] * weight_shared[((((int)threadIdx.x) & 15) + 1008)]));
  conv2d_nhwc[(((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 4) * 1792)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15))] = conv2d_nhwc_local[0];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 4) * 1792)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 256)] = conv2d_nhwc_local[1];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 4) * 1792)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 512)] = conv2d_nhwc_local[2];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 4) * 1792)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 768)] = conv2d_nhwc_local[3];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 4) * 1792)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 1024)] = conv2d_nhwc_local[4];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 4) * 1792)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 1280)] = conv2d_nhwc_local[5];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 4) * 7168) + ((((int)threadIdx.x) >> 4) * 1792)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 1536)] = conv2d_nhwc_local[6];
}


