
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
  float conv2d_nhwc_local[32];
  __shared__ float PadInput_shared[2048];
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
  conv2d_nhwc_local[28] = 0.000000e+00f;
  conv2d_nhwc_local[29] = 0.000000e+00f;
  conv2d_nhwc_local[30] = 0.000000e+00f;
  conv2d_nhwc_local[31] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) * 4)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 28672))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 57344))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 86016))), "n"(16)
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

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 256))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 512))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 768))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 16))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 28688))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 57360))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 86032))), "n"(16)
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

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 640)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1280))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1536))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1792))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 32))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 28704))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 57376))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + ((((int)threadIdx.x) & 3) * 4)) + 86048))), "n"(16)
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

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((int)threadIdx.x) * 4) + 1152)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2304))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2560))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 3) * 64) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2816))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 48))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 28720))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 57392))), "n"(16)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((((int)blockIdx.x) / 28) * 114688) + ((((int)threadIdx.x) >> 4) * 14336)) + (((((int)blockIdx.x) % 28) >> 1) * 1024)) + (((((int)threadIdx.x) & 15) >> 2) * 256)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 86064))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 3) & 3) * 512) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3072))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 512) + (((int)threadIdx.x) * 4)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3328))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 512) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3584))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 3) & 3) * 512) + (((int)threadIdx.x) * 4)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3840))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 3;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16))] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16))] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16))] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16))] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 64)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 128)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 192)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 256)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 256)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 256)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 256)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 320)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 320)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 320)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 320)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 384)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 384)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 384)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 384)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 448)] * weight_shared[(((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 449)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 450)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 451)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 448)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 449)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 450)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 451)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 448)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 449)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 450)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 451)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 448)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 449)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 450)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 451)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 452)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 453)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 454)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 455)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 452)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 453)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 454)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 455)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 452)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 453)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 454)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 455)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 452)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 453)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 454)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 455)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 456)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 457)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 458)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 459)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 456)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 457)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 458)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 459)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 456)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 457)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 458)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 459)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 456)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 457)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 458)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 459)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 460)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 461)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 462)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 463)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 460)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 461)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 462)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 463)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 460)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 461)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 462)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 463)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 460)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 461)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 462)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) >> 3) * 16)) + 463)] * weight_shared[((((rh_0_rw_0_rc_0_fused & 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
  }
__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 512)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 513)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 514)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 515)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 512)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 513)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 514)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 515)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 512)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 513)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 514)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 515)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 512)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 513)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 514)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 515)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 576)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 577)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 578)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 579)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 576)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 577)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 578)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 579)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 576)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 577)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 578)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 579)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 576)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 577)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 578)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 579)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 640)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 641)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 642)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 643)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 640)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 641)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 642)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 643)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 640)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 641)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 642)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 643)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 640)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 641)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 642)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 643)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 704)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 705)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 706)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 707)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 704)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 705)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 706)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 707)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 704)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 705)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 706)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 707)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 704)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 705)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 706)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 707)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 768)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 769)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 770)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 771)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 768)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 769)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 770)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 771)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 768)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 769)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 770)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 771)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 768)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 769)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 770)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 771)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 832)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 833)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 834)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 835)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 832)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 833)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 834)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 835)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 832)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 833)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 834)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 835)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 832)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 833)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 834)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 835)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 896)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 897)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 898)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 899)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 896)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 897)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 898)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 899)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 896)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 897)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 898)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 899)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 896)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 897)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 898)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 899)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 960)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 961)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 962)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 963)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 960)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 961)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 962)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 963)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 960)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 961)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 962)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 963)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 960)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 961)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 962)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 963)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 516)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 517)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 518)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 519)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 516)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 517)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 518)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 519)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 516)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 517)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 518)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 519)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 516)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 517)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 518)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 519)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 580)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 581)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 582)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 583)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 580)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 581)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 582)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 583)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 580)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 581)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 582)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 583)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 580)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 581)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 582)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 583)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 644)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 645)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 646)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 647)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 644)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 645)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 646)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 647)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 644)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 645)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 646)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 647)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 644)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 645)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 646)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 647)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 708)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 709)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 710)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 711)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 708)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 709)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 710)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 711)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 708)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 709)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 710)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 711)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 708)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 709)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 710)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 711)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 772)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 773)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 774)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 775)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 772)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 773)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 774)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 775)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 772)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 773)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 774)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 775)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 772)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 773)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 774)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 775)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 836)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 837)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 838)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 839)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 836)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 837)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 838)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 839)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 836)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 837)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 838)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 839)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 836)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 837)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 838)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 839)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 900)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 901)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 902)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 903)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 900)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 901)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 902)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 903)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 900)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 901)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 902)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 903)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 900)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 901)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 902)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 903)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 964)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 965)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 966)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 967)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 964)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 965)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 966)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 967)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 964)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 965)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 966)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 967)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 964)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 965)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 966)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 967)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 520)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 521)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 522)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 523)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 520)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 521)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 522)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 523)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 520)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 521)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 522)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 523)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 520)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 521)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 522)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 523)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 584)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 585)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 586)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 587)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 584)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 585)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 586)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 587)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 584)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 585)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 586)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 587)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 584)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 585)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 586)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 587)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 648)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 649)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 650)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 651)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 648)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 649)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 650)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 651)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 648)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 649)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 650)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 651)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 648)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 649)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 650)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 651)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 712)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 713)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 714)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 715)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 712)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 713)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 714)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 715)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 712)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 713)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 714)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 715)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 712)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 713)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 714)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 715)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 776)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 777)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 778)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 779)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 776)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 777)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 778)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 779)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 776)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 777)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 778)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 779)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 776)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 777)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 778)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 779)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 840)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 841)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 842)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 843)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 840)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 841)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 842)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 843)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 840)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 841)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 842)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 843)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 840)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 841)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 842)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 843)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 904)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 905)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 906)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 907)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 904)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 905)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 906)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 907)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 904)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 905)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 906)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 907)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 904)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 905)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 906)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 907)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 968)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 969)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 970)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 971)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 968)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 969)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 970)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 971)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 968)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 969)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 970)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 971)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 968)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 969)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 970)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 971)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 524)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 525)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 526)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 527)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 524)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 525)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 526)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 527)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 524)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 525)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 526)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 527)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 524)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 525)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 526)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 527)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 588)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 589)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 590)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 591)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 588)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 589)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 590)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 591)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 588)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 589)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 590)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 591)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 588)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 589)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 590)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 591)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 652)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 653)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 654)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 655)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 652)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 653)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 654)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 655)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 652)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 653)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 654)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 655)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 652)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 653)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 654)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 655)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 716)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 717)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 718)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 719)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 716)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 717)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 718)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 719)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 716)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 717)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 718)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 719)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 716)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 717)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 718)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 719)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 780)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 781)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 782)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 783)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 780)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 781)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 782)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 783)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 780)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 781)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 782)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 783)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 780)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 781)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 782)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 783)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 844)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 845)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 846)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 847)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 844)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 845)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 846)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 847)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 844)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 845)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 846)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 847)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 844)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 845)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 846)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 847)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 908)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 909)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 910)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 911)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 908)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 909)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 910)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 911)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 908)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 909)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 910)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 911)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 908)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 909)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 910)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 911)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 972)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 973)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 974)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 975)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 972)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 973)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 974)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 975)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 972)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 973)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 974)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 975)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 972)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 973)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 974)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 975)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1024)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1024)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1025)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1056)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1026)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1088)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1027)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1120)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1024)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1025)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1025)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1057)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1026)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1089)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1027)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1121)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1024)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1026)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1025)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1058)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1026)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1090)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1027)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1122)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1024)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1027)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1025)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1059)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1026)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1091)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1027)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1123)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1088)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1024)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1089)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1056)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1090)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1088)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1091)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1120)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1088)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1025)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1089)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1057)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1090)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1089)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1091)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1121)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1088)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1026)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1089)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1058)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1090)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1090)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1091)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1122)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1088)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1027)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1089)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1059)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1090)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1091)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1091)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1123)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1152)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1024)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1153)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1056)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1154)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1088)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1155)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1120)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1152)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1025)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1153)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1057)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1154)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1089)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1155)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1121)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1152)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1026)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1153)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1058)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1154)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1090)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1155)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1122)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1152)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1027)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1153)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1059)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1154)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1091)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1155)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1123)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1216)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1024)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1217)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1056)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1218)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1088)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1219)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1120)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1216)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1025)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1217)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1057)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1218)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1089)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1219)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1121)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1216)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1026)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1217)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1058)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1218)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1090)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1219)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1122)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1216)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1027)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1217)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1059)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1218)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1091)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1219)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1123)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1280)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1024)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1281)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1056)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1282)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1088)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1283)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1120)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1280)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1025)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1281)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1057)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1282)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1089)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1283)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1121)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1280)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1026)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1281)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1058)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1282)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1090)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1283)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1122)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1280)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1027)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1281)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1059)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1282)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1091)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1283)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1123)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1344)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1024)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1345)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1056)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1346)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1088)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1347)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1120)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1344)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1025)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1345)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1057)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1346)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1089)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1347)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1121)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1344)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1026)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1345)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1058)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1346)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1090)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1347)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1122)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1344)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1027)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1345)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1059)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1346)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1091)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1347)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1123)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1408)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1024)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1409)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1056)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1410)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1088)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1411)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1120)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1408)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1025)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1409)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1057)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1410)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1089)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1411)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1121)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1408)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1026)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1409)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1058)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1410)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1090)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1411)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1122)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1408)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1027)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1409)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1059)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1410)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1091)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1411)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1123)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1472)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1024)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1473)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1056)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1474)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1088)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1475)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1120)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1472)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1025)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1473)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1057)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1474)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1089)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1475)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1121)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1472)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1026)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1473)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1058)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1474)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1090)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1475)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1122)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1472)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1027)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1473)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1059)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1474)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1091)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1475)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1123)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1028)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1152)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1029)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1184)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1030)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1216)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1031)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1248)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1028)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1153)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1029)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1185)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1030)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1217)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1031)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1249)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1028)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1154)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1029)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1186)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1030)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1218)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1031)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1250)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1028)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1155)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1029)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1187)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1030)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1219)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1031)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1251)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1092)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1152)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1093)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1184)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1094)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1216)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1095)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1248)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1092)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1153)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1093)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1185)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1094)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1217)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1095)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1249)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1092)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1154)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1093)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1186)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1094)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1218)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1095)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1250)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1092)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1155)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1093)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1187)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1094)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1219)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1095)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1251)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1156)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1152)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1157)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1184)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1158)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1216)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1159)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1248)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1156)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1153)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1157)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1185)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1158)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1217)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1159)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1249)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1156)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1154)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1157)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1186)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1158)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1218)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1159)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1250)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1156)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1155)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1157)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1187)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1158)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1219)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1159)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1251)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1220)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1152)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1221)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1184)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1222)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1216)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1223)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1248)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1220)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1153)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1221)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1185)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1222)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1217)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1223)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1249)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1220)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1154)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1221)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1186)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1222)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1218)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1223)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1250)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1220)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1155)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1221)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1187)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1222)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1219)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1223)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1251)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1284)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1152)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1285)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1184)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1286)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1216)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1287)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1248)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1284)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1153)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1285)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1185)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1286)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1217)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1287)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1249)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1284)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1154)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1285)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1186)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1286)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1218)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1287)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1250)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1284)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1155)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1285)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1187)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1286)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1219)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1287)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1251)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1348)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1152)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1349)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1184)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1350)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1216)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1351)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1248)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1348)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1153)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1349)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1185)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1350)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1217)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1351)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1249)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1348)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1154)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1349)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1186)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1350)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1218)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1351)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1250)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1348)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1155)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1349)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1187)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1350)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1219)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1351)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1251)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1412)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1152)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1413)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1184)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1414)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1216)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1415)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1248)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1412)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1153)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1413)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1185)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1414)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1217)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1415)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1249)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1412)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1154)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1413)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1186)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1414)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1218)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1415)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1250)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1412)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1155)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1413)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1187)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1414)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1219)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1415)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1251)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1476)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1152)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1477)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1184)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1478)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1216)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1479)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1248)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1476)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1153)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1477)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1185)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1478)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1217)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1479)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1249)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1476)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1154)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1477)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1186)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1478)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1218)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1479)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1250)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1476)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1155)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1477)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1187)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1478)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1219)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1479)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1251)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1032)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1280)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1033)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1312)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1034)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1344)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1035)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1376)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1032)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1281)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1033)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1313)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1034)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1345)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1035)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1377)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1032)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1282)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1033)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1314)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1034)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1346)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1035)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1378)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1032)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1283)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1033)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1315)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1034)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1347)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1035)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1379)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1096)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1280)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1097)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1312)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1098)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1344)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1099)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1376)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1096)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1281)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1097)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1313)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1098)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1345)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1099)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1377)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1096)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1282)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1097)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1314)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1098)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1346)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1099)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1378)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1096)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1283)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1097)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1315)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1098)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1347)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1099)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1379)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1160)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1280)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1161)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1312)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1162)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1344)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1163)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1376)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1160)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1281)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1161)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1313)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1162)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1345)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1163)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1377)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1160)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1282)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1161)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1314)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1162)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1346)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1163)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1378)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1160)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1283)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1161)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1315)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1162)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1347)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1163)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1379)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1224)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1280)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1225)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1312)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1226)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1344)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1227)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1376)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1224)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1281)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1225)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1313)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1226)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1345)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1227)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1377)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1224)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1282)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1225)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1314)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1226)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1346)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1227)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1378)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1224)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1283)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1225)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1315)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1226)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1347)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1227)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1379)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1288)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1280)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1289)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1312)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1290)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1344)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1291)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1376)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1288)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1281)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1289)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1313)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1290)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1345)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1291)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1377)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1288)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1282)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1289)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1314)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1290)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1346)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1291)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1378)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1288)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1283)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1289)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1315)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1290)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1347)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1291)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1379)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1352)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1280)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1353)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1312)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1354)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1344)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1355)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1376)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1352)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1281)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1353)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1313)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1354)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1345)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1355)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1377)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1352)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1282)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1353)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1314)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1354)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1346)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1355)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1378)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1352)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1283)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1353)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1315)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1354)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1347)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1355)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1379)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1416)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1280)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1417)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1312)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1418)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1344)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1419)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1376)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1416)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1281)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1417)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1313)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1418)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1345)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1419)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1377)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1416)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1282)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1417)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1314)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1418)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1346)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1419)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1378)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1416)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1283)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1417)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1315)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1418)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1347)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1419)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1379)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1480)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1280)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1481)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1312)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1482)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1344)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1483)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1376)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1480)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1281)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1481)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1313)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1482)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1345)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1483)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1377)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1480)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1282)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1481)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1314)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1482)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1346)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1483)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1378)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1480)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1283)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1481)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1315)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1482)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1347)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1483)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1379)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1036)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1408)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1037)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1440)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1038)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1472)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1039)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1504)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1036)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1409)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1037)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1441)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1038)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1473)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1039)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1505)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1036)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1410)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1037)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1442)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1038)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1474)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1039)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1506)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1036)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1411)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1037)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1443)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1038)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1475)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1039)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1507)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1100)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1408)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1101)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1440)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1102)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1472)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1103)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1504)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1100)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1409)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1101)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1441)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1102)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1473)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1103)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1505)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1100)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1410)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1101)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1442)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1102)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1474)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1103)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1506)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1100)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1411)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1101)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1443)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1102)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1475)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1103)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1507)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1164)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1408)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1165)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1440)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1166)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1472)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1167)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1504)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1164)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1409)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1165)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1441)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1166)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1473)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1167)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1505)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1164)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1410)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1165)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1442)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1166)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1474)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1167)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1506)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1164)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1411)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1165)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1443)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1166)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1475)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1167)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1507)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1228)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1408)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1229)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1440)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1230)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1472)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1231)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1504)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1228)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1409)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1229)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1441)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1230)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1473)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1231)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1505)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1228)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1410)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1229)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1442)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1230)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1474)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1231)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1506)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1228)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1411)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1229)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1443)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1230)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1475)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1231)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1507)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1292)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1408)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1293)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1440)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1294)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1472)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1295)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1504)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1292)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1409)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1293)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1441)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1294)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1473)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1295)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1505)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1292)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1410)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1293)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1442)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1294)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1474)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1295)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1506)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1292)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1411)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1293)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1443)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1294)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1475)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1295)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1507)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1356)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1408)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1357)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1440)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1358)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1472)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1359)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1504)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1356)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1409)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1357)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1441)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1358)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1473)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1359)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1505)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1356)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1410)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1357)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1442)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1358)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1474)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1359)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1506)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1356)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1411)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1357)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1443)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1358)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1475)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1359)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1507)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1420)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1408)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1421)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1440)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1422)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1472)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1423)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1504)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1420)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1409)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1421)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1441)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1422)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1473)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1423)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1505)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1420)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1410)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1421)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1442)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1422)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1474)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1423)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1506)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1420)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1411)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1421)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1443)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1422)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1475)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1423)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1507)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1484)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1408)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1485)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1440)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1486)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1472)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1487)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1504)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1484)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1409)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1485)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1441)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1486)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1473)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1487)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1505)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1484)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1410)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1485)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1442)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1486)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1474)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1487)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1506)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1484)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1411)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1485)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1443)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1486)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1475)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1487)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1507)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1536)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1536)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1537)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1568)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1538)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1600)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1539)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1632)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1536)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1537)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1537)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1569)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1538)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1601)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1539)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1633)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1536)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1538)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1537)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1570)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1538)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1602)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1539)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1634)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1536)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1539)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1537)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1571)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1538)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1603)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1539)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1635)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1600)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1536)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1601)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1568)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1602)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1600)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1603)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1632)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1600)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1537)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1601)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1569)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1602)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1601)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1603)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1633)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1600)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1538)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1601)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1570)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1602)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1602)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1603)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1634)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1600)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1539)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1601)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1571)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1602)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1603)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1603)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1635)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1664)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1536)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1665)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1568)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1666)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1600)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1667)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1632)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1664)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1537)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1665)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1569)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1666)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1601)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1667)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1633)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1664)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1538)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1665)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1570)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1666)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1602)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1667)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1634)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1664)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1539)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1665)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1571)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1666)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1603)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1667)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1635)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1728)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1536)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1729)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1568)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1730)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1600)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1731)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1632)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1728)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1537)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1729)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1569)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1730)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1601)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1731)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1633)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1728)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1538)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1729)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1570)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1730)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1602)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1731)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1634)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1728)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1539)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1729)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1571)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1730)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1603)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1731)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1635)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1792)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1536)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1793)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1568)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1794)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1600)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1795)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1632)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1792)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1537)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1793)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1569)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1794)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1601)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1795)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1633)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1792)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1538)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1793)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1570)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1794)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1602)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1795)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1634)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1792)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1539)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1793)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1571)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1794)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1603)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1795)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1635)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1856)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1536)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1857)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1568)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1858)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1600)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1859)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1632)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1856)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1537)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1857)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1569)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1858)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1601)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1859)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1633)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1856)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1538)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1857)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1570)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1858)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1602)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1859)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1634)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1856)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1539)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1857)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1571)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1858)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1603)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1859)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1635)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1920)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1536)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1921)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1568)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1922)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1600)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1923)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1632)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1920)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1537)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1921)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1569)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1922)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1601)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1923)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1633)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1920)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1538)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1921)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1570)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1922)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1602)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1923)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1634)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1920)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1539)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1921)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1571)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1922)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1603)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1923)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1635)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1984)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1536)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1985)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1568)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1986)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1600)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1987)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1632)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1984)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1537)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1985)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1569)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1986)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1601)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1987)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1633)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1984)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1538)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1985)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1570)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1986)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1602)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1987)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1634)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1984)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1539)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1985)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1571)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1986)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1603)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1987)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1635)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1540)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1664)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1541)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1696)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1542)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1728)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1543)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1760)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1540)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1665)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1541)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1697)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1542)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1729)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1543)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1761)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1540)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1666)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1541)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1698)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1542)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1730)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1543)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1762)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1540)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1667)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1541)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1699)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1542)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1731)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1543)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1763)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1604)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1664)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1605)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1696)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1606)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1728)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1607)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1760)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1604)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1665)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1605)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1697)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1606)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1729)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1607)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1761)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1604)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1666)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1605)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1698)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1606)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1730)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1607)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1762)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1604)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1667)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1605)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1699)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1606)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1731)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1607)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1763)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1668)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1664)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1669)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1696)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1670)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1728)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1671)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1760)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1668)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1665)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1669)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1697)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1670)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1729)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1671)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1761)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1668)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1666)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1669)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1698)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1670)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1730)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1671)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1762)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1668)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1667)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1669)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1699)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1670)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1731)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1671)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1763)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1732)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1664)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1733)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1696)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1734)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1728)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1735)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1760)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1732)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1665)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1733)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1697)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1734)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1729)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1735)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1761)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1732)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1666)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1733)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1698)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1734)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1730)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1735)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1762)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1732)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1667)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1733)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1699)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1734)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1731)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1735)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1763)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1796)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1664)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1797)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1696)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1798)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1728)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1799)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1760)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1796)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1665)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1797)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1697)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1798)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1729)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1799)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1761)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1796)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1666)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1797)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1698)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1798)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1730)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1799)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1762)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1796)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1667)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1797)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1699)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1798)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1731)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1799)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1763)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1860)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1664)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1861)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1696)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1862)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1728)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1863)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1760)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1860)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1665)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1861)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1697)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1862)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1729)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1863)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1761)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1860)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1666)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1861)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1698)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1862)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1730)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1863)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1762)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1860)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1667)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1861)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1699)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1862)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1731)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1863)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1763)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1924)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1664)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1925)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1696)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1926)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1728)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1927)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1760)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1924)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1665)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1925)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1697)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1926)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1729)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1927)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1761)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1924)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1666)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1925)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1698)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1926)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1730)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1927)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1762)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1924)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1667)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1925)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1699)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1926)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1731)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1927)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1763)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1988)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1664)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1989)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1696)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1990)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1728)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1991)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1760)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1988)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1665)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1989)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1697)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1990)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1729)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1991)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1761)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1988)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1666)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1989)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1698)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1990)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1730)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1991)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1762)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1988)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1667)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1989)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1699)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1990)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1731)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1991)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1763)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1544)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1792)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1545)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1824)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1546)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1856)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1547)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1888)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1544)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1793)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1545)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1825)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1546)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1857)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1547)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1889)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1544)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1794)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1545)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1826)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1546)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1858)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1547)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1890)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1544)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1795)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1545)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1827)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1546)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1859)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1547)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1891)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1608)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1792)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1609)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1824)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1610)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1856)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1611)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1888)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1608)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1793)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1609)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1825)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1610)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1857)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1611)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1889)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1608)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1794)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1609)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1826)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1610)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1858)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1611)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1890)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1608)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1795)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1609)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1827)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1610)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1859)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1611)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1891)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1672)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1792)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1673)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1824)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1674)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1856)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1675)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1888)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1672)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1793)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1673)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1825)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1674)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1857)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1675)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1889)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1672)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1794)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1673)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1826)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1674)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1858)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1675)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1890)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1672)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1795)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1673)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1827)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1674)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1859)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1675)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1891)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1736)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1792)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1737)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1824)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1738)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1856)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1739)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1888)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1736)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1793)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1737)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1825)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1738)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1857)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1739)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1889)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1736)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1794)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1737)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1826)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1738)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1858)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1739)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1890)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1736)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1795)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1737)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1827)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1738)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1859)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1739)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1891)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1800)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1792)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1801)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1824)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1802)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1856)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1803)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1888)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1800)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1793)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1801)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1825)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1802)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1857)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1803)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1889)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1800)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1794)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1801)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1826)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1802)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1858)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1803)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1890)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1800)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1795)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1801)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1827)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1802)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1859)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1803)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1891)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1864)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1792)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1865)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1824)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1866)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1856)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1867)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1888)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1864)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1793)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1865)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1825)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1866)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1857)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1867)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1889)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1864)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1794)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1865)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1826)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1866)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1858)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1867)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1890)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1864)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1795)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1865)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1827)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1866)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1859)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1867)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1891)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1928)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1792)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1929)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1824)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1930)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1856)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1931)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1888)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1928)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1793)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1929)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1825)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1930)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1857)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1931)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1889)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1928)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1794)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1929)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1826)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1930)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1858)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1931)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1890)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1928)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1795)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1929)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1827)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1930)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1859)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1931)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1891)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1992)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1792)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1993)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1824)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1994)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1856)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1995)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1888)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1992)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1793)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1993)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1825)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1994)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1857)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1995)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1889)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1992)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1794)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1993)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1826)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1994)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1858)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1995)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1890)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1992)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1795)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1993)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1827)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1994)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1859)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1995)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1891)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1548)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1920)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1549)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1952)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1550)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1984)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1551)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2016)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1548)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1921)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1549)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1953)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1550)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1985)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1551)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2017)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1548)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1922)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1549)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1954)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1550)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1986)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1551)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2018)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1548)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1923)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1549)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1955)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1550)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1987)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1551)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2019)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1612)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1920)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1613)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1952)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1614)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1984)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1615)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2016)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1612)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1921)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1613)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1953)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1614)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1985)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1615)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2017)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1612)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1922)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1613)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1954)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1614)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1986)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1615)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2018)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1612)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1923)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1613)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1955)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1614)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1987)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1615)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2019)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1676)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1920)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1677)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1952)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1678)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1984)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1679)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2016)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1676)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1921)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1677)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1953)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1678)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1985)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1679)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2017)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1676)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1922)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1677)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1954)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1678)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1986)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1679)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2018)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1676)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1923)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1677)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1955)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1678)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1987)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1679)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2019)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1740)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1920)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1741)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1952)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1742)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1984)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1743)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2016)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1740)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1921)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1741)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1953)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1742)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1985)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1743)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2017)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1740)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1922)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1741)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1954)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1742)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1986)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1743)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2018)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1740)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1923)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1741)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1955)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1742)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1987)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1743)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2019)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1804)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1920)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1805)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1952)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1806)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1984)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1807)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2016)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1804)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1921)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1805)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1953)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1806)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1985)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1807)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2017)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1804)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1922)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1805)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1954)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1806)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1986)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1807)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2018)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1804)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1923)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1805)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1955)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1806)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1987)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1807)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2019)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1868)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1920)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1869)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1952)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1870)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1984)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1871)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2016)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1868)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1921)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1869)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1953)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1870)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1985)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1871)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2017)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1868)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1922)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1869)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1954)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1870)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1986)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1871)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2018)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1868)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1923)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1869)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1955)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1870)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1987)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1871)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2019)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1932)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1920)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1933)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1952)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1934)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1984)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1935)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2016)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1932)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1921)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1933)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1953)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1934)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1985)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1935)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2017)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1932)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1922)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1933)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1954)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1934)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1986)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1935)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2018)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1932)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1923)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1933)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1955)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1934)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1987)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1935)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2019)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1996)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1920)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1997)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1952)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1998)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1984)]));
  conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1999)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2016)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1996)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1921)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1997)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1953)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1998)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1985)]));
  conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1999)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2017)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1996)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1922)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1997)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1954)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1998)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1986)]));
  conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1999)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2018)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1996)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1923)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1997)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1955)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1998)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1987)]));
  conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1999)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2019)]));
  conv2d_nhwc[((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3584)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3585)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3586)] = conv2d_nhwc_local[6];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3587)] = conv2d_nhwc_local[7];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 7168)] = conv2d_nhwc_local[8];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 7169)] = conv2d_nhwc_local[9];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 7170)] = conv2d_nhwc_local[10];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 7171)] = conv2d_nhwc_local[11];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 10752)] = conv2d_nhwc_local[12];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 10753)] = conv2d_nhwc_local[13];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 10754)] = conv2d_nhwc_local[14];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 10755)] = conv2d_nhwc_local[15];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14336)] = conv2d_nhwc_local[16];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14337)] = conv2d_nhwc_local[17];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14338)] = conv2d_nhwc_local[18];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14339)] = conv2d_nhwc_local[19];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 17920)] = conv2d_nhwc_local[20];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 17921)] = conv2d_nhwc_local[21];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 17922)] = conv2d_nhwc_local[22];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 17923)] = conv2d_nhwc_local[23];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 21504)] = conv2d_nhwc_local[24];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 21505)] = conv2d_nhwc_local[25];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 21506)] = conv2d_nhwc_local[26];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 21507)] = conv2d_nhwc_local[27];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 25088)] = conv2d_nhwc_local[28];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 25089)] = conv2d_nhwc_local[29];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 25090)] = conv2d_nhwc_local[30];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 28) * 28672) + (((((int)blockIdx.x) % 28) >> 1) * 256)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 25091)] = conv2d_nhwc_local[31];
}


