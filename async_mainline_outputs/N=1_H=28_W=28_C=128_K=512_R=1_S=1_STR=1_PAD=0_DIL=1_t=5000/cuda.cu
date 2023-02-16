
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
  float conv2d_nhwc_local[28];
  __shared__ float PadInput_shared[1344];
  __shared__ float weight_shared[1536];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[8] = 0.000000e+00f;
  conv2d_nhwc_local[9] = 0.000000e+00f;
  conv2d_nhwc_local[12] = 0.000000e+00f;
  conv2d_nhwc_local[13] = 0.000000e+00f;
  conv2d_nhwc_local[16] = 0.000000e+00f;
  conv2d_nhwc_local[17] = 0.000000e+00f;
  conv2d_nhwc_local[20] = 0.000000e+00f;
  conv2d_nhwc_local[21] = 0.000000e+00f;
  conv2d_nhwc_local[24] = 0.000000e+00f;
  conv2d_nhwc_local[25] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  conv2d_nhwc_local[7] = 0.000000e+00f;
  conv2d_nhwc_local[10] = 0.000000e+00f;
  conv2d_nhwc_local[11] = 0.000000e+00f;
  conv2d_nhwc_local[14] = 0.000000e+00f;
  conv2d_nhwc_local[15] = 0.000000e+00f;
  conv2d_nhwc_local[18] = 0.000000e+00f;
  conv2d_nhwc_local[19] = 0.000000e+00f;
  conv2d_nhwc_local[22] = 0.000000e+00f;
  conv2d_nhwc_local[23] = 0.000000e+00f;
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
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 3584))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 7168))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 10752))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 14336))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 17920))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 21504))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 16))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 3600))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 7184))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 10768))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 14352))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 17936))), "n"(8)
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
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + 21520))), "n"(8)
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
__asm__ __volatile__("cp.async.commit_group;");

  for (int rh_0_rw_0_rc_0_fused = 0; rh_0_rw_0_rc_0_fused < 6; ++rh_0_rw_0_rc_0_fused) {
    __syncthreads();

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + (((int)threadIdx.x) * 2))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 32))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + (((int)threadIdx.x) * 2)) + 64)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 3616))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + (((int)threadIdx.x) * 2)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 7200))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + (((int)threadIdx.x) * 2)) + 192)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 10784))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + (((int)threadIdx.x) * 2)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 14368))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + (((int)threadIdx.x) * 2)) + 320)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 17952))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + (((int)threadIdx.x) * 2)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((((int)blockIdx.x) / 112) * 25088) + (((((int)blockIdx.x) % 112) >> 4) * 512)) + ((((int)threadIdx.x) >> 3) * 128)) + (rh_0_rw_0_rc_0_fused * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 21536))), "n"(8)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 512) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 16384))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 512) + (((int)threadIdx.x) * 4)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 18432))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 512) + (((int)threadIdx.x) * 4)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 20480))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 512) + (((int)threadIdx.x) * 4)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 8192) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 22528))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16))] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 64)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 128)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 192)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 256)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 256)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 320)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 320)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 384)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4))]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 384)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 1)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 32)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 33)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 64)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 65)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 96)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 97)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 128)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 129)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 160)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 161)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 192)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 193)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 224)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 225)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 256)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 257)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 288)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 289)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 320)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 321)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 352)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 353)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 384)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 385)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 416)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 417)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 448)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 449)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 480)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 481)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 128)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 192)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 256)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 256)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 320)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 320)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 384)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 2)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 384)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 3)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 129)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 193)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 257)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 321)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 34)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 385)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 35)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 130)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 194)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 258)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 322)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 66)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 386)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 67)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 131)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 195)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 259)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 323)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 98)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 387)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 99)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 132)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 196)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 260)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 324)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 130)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 388)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 131)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 133)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 197)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 261)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 325)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 162)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 389)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 163)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 134)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 198)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 262)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 326)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 194)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 390)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 195)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 135)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 199)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 263)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 327)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 226)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 391)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 227)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 136)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 200)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 264)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 328)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 258)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 392)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 259)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 137)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 201)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 265)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 329)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 290)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 393)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 291)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 138)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 202)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 266)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 330)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 322)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 394)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 323)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 139)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 203)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 267)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 331)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 354)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 395)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 355)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 140)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 204)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 268)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 332)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 386)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 396)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 387)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 141)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 205)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 269)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 333)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 418)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 397)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 419)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 142)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 206)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 270)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 334)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 450)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 398)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 451)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 143)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 207)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 271)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 335)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 482)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 3) * 16)) + 399)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 512) + ((((int)threadIdx.x) & 7) * 4)) + 483)]));
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((int)threadIdx.x) >> 3) * 16)] * weight_shared[((((int)threadIdx.x) & 7) * 4)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((int)threadIdx.x) >> 3) * 16)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 64)] * weight_shared[((((int)threadIdx.x) & 7) * 4)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 64)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 128)] * weight_shared[((((int)threadIdx.x) & 7) * 4)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 128)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 192)] * weight_shared[((((int)threadIdx.x) & 7) * 4)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 192)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 256)] * weight_shared[((((int)threadIdx.x) & 7) * 4)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 256)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 320)] * weight_shared[((((int)threadIdx.x) & 7) * 4)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 320)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 384)] * weight_shared[((((int)threadIdx.x) & 7) * 4)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 384)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 1)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 32)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 33)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 65)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 32)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 65)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 33)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 129)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 32)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 129)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 33)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 193)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 32)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 193)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 33)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 257)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 32)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 257)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 33)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 321)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 32)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 321)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 33)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 385)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 32)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 385)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 33)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 2)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 64)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 2)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 65)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 66)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 64)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 66)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 65)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 130)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 64)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 130)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 65)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 194)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 64)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 194)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 65)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 258)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 64)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 258)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 65)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 322)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 64)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 322)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 65)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 386)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 64)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 386)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 65)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 3)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 96)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 3)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 97)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 67)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 96)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 67)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 97)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 131)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 96)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 131)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 97)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 195)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 96)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 195)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 97)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 259)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 96)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 259)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 97)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 323)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 96)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 323)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 97)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 387)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 96)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 387)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 97)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 4)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 128)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 4)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 129)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 68)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 128)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 68)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 129)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 132)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 128)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 132)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 129)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 196)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 128)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 196)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 129)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 260)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 128)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 260)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 129)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 324)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 128)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 324)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 129)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 388)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 128)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 388)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 129)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 5)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 160)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 5)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 161)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 69)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 160)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 69)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 161)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 133)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 160)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 133)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 161)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 197)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 160)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 197)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 161)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 261)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 160)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 261)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 161)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 325)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 160)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 325)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 161)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 389)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 160)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 389)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 161)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 6)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 6)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 193)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 70)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 70)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 193)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 134)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 192)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 134)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 193)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 198)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 192)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 198)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 193)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 262)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 192)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 262)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 193)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 326)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 192)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 326)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 193)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 390)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 192)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 390)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 193)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 7)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 224)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 7)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 225)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 71)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 224)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 71)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 225)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 135)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 224)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 135)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 225)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 199)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 224)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 199)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 225)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 263)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 224)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 263)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 225)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 327)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 224)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 327)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 225)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 391)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 224)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 391)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 225)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 8)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 256)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 8)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 257)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 72)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 256)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 72)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 257)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 136)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 256)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 136)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 257)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 200)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 256)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 200)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 257)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 264)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 256)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 264)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 257)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 328)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 256)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 328)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 257)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 392)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 256)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 392)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 257)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 9)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 9)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 289)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 73)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 73)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 289)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 137)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 288)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 137)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 289)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 201)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 288)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 201)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 289)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 265)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 288)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 265)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 289)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 329)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 288)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 329)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 289)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 393)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 288)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 393)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 289)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 10)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 320)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 10)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 321)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 74)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 320)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 74)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 321)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 138)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 320)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 138)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 321)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 202)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 320)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 202)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 321)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 266)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 320)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 266)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 321)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 330)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 320)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 330)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 321)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 394)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 320)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 394)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 321)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 11)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 352)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 11)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 353)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 75)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 352)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 75)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 353)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 139)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 352)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 139)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 353)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 203)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 352)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 203)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 353)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 267)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 352)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 267)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 353)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 331)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 352)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 331)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 353)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 395)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 352)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 395)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 353)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 12)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 384)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 12)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 385)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 76)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 384)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 76)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 385)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 140)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 384)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 140)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 385)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 204)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 384)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 204)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 385)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 268)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 384)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 268)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 385)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 332)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 384)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 332)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 385)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 396)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 384)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 396)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 385)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 13)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 416)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 13)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 417)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 77)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 416)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 77)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 417)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 141)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 416)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 141)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 417)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 205)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 416)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 205)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 417)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 269)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 416)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 269)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 417)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 333)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 416)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 333)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 417)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 397)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 416)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 397)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 417)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 14)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 14)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 449)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 78)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 78)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 449)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 142)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 448)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 142)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 449)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 206)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 448)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 206)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 449)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 270)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 448)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 270)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 449)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 334)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 448)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 334)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 449)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 398)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 448)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 398)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 449)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 15)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 480)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 15)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 481)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 79)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 480)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 79)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 481)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 143)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 480)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 143)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 481)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 207)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 480)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 207)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 481)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 271)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 480)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 271)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 481)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 335)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 480)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 335)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 481)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 399)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 480)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 399)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 481)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((int)threadIdx.x) >> 3) * 16)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((int)threadIdx.x) >> 3) * 16)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 3)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 64)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 64)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 3)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 128)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 128)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 3)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 192)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 192)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 3)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 256)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 256)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 3)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 320)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 320)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 3)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 384)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 2)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 384)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 3)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 34)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 1)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 35)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 65)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 34)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 65)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 35)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 129)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 34)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 129)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 35)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 193)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 34)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 193)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 35)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 257)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 34)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 257)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 35)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 321)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 34)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 321)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 35)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 385)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 34)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 385)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 35)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 2)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 66)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 2)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 67)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 66)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 66)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 66)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 67)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 130)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 66)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 130)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 67)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 194)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 66)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 194)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 67)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 258)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 66)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 258)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 67)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 322)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 66)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 322)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 67)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 386)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 66)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 386)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 67)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 3)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 98)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 3)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 99)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 67)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 98)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 67)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 99)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 131)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 98)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 131)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 99)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 195)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 98)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 195)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 99)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 259)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 98)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 259)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 99)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 323)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 98)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 323)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 99)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 387)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 98)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 387)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 99)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 4)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 130)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 4)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 131)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 68)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 130)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 68)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 131)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 132)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 130)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 132)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 131)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 196)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 130)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 196)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 131)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 260)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 130)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 260)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 131)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 324)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 130)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 324)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 131)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 388)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 130)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 388)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 131)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 5)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 162)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 5)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 163)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 69)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 162)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 69)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 163)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 133)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 162)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 133)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 163)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 197)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 162)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 197)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 163)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 261)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 162)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 261)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 163)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 325)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 162)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 325)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 163)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 389)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 162)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 389)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 163)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 6)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 194)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 6)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 195)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 70)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 194)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 70)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 195)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 134)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 194)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 134)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 195)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 198)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 194)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 198)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 195)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 262)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 194)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 262)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 195)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 326)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 194)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 326)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 195)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 390)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 194)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 390)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 195)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 7)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 226)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 7)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 227)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 71)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 226)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 71)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 227)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 135)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 226)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 135)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 227)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 199)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 226)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 199)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 227)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 263)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 226)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 263)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 227)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 327)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 226)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 327)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 227)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 391)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 226)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 391)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 227)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 8)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 258)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 8)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 259)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 72)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 258)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 72)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 259)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 136)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 258)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 136)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 259)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 200)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 258)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 200)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 259)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 264)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 258)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 264)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 259)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 328)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 258)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 328)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 259)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 392)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 258)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 392)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 259)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 9)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 290)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 9)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 291)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 73)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 290)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 73)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 291)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 137)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 290)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 137)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 291)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 201)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 290)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 201)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 291)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 265)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 290)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 265)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 291)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 329)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 290)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 329)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 291)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 393)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 290)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 393)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 291)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 10)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 322)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 10)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 323)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 74)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 322)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 74)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 323)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 138)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 322)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 138)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 323)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 202)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 322)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 202)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 323)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 266)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 322)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 266)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 323)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 330)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 322)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 330)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 323)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 394)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 322)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 394)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 323)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 11)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 354)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 11)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 355)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 75)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 354)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 75)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 355)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 139)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 354)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 139)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 355)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 203)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 354)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 203)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 355)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 267)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 354)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 267)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 355)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 331)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 354)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 331)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 355)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 395)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 354)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 395)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 355)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 12)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 386)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 12)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 387)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 76)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 386)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 76)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 387)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 140)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 386)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 140)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 387)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 204)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 386)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 204)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 387)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 268)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 386)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 268)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 387)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 332)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 386)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 332)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 387)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 396)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 386)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 396)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 387)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 13)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 418)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 13)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 419)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 77)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 418)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 77)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 419)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 141)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 418)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 141)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 419)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 205)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 418)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 205)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 419)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 269)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 418)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 269)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 419)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 333)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 418)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 333)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 419)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 397)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 418)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 397)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 419)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 14)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 450)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 14)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 451)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 78)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 450)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 78)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 451)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 142)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 450)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 142)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 451)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 206)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 450)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 206)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 451)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 270)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 450)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 270)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 451)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 334)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 450)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 334)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 451)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 398)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 450)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 398)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 451)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 15)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 482)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 15)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 483)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 79)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 482)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 79)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 483)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 143)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 482)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 143)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 483)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 207)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 482)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 207)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 483)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 271)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 482)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 271)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 483)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 335)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 482)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 335)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 483)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 399)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 482)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 399)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 483)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 448)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 448)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 512)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 512)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 576)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 576)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 640)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 640)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 704)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 704)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 768)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 768)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 832)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 512)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 832)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 513)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 449)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 449)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 513)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 513)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 577)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 577)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 641)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 641)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 705)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 705)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 769)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 769)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 833)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 544)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 833)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 545)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 450)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 450)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 514)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 514)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 578)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 578)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 642)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 642)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 706)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 706)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 770)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 770)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 834)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 576)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 834)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 577)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 451)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 451)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 515)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 515)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 579)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 579)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 643)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 643)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 707)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 707)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 771)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 771)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 835)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 608)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 835)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 609)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 452)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 452)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 516)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 516)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 580)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 580)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 644)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 644)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 708)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 708)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 772)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 772)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 836)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 640)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 836)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 641)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 453)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 453)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 517)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 517)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 581)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 581)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 645)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 645)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 709)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 709)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 773)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 773)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 837)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 672)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 837)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 673)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 454)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 454)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 518)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 518)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 582)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 582)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 646)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 646)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 710)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 710)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 774)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 774)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 838)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 704)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 838)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 705)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 455)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 455)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 519)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 519)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 583)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 583)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 647)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 647)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 711)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 711)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 775)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 775)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 839)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 736)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 839)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 737)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 456)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 456)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 520)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 520)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 584)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 584)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 648)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 648)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 712)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 712)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 776)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 776)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 840)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 768)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 840)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 769)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 457)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 457)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 521)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 521)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 585)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 585)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 649)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 649)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 713)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 713)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 777)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 777)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 841)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 800)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 841)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 801)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 458)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 458)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 522)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 522)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 586)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 586)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 650)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 650)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 714)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 714)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 778)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 778)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 842)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 832)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 842)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 833)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 459)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 459)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 523)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 523)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 587)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 587)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 651)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 651)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 715)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 715)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 779)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 779)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 843)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 864)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 843)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 865)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 460)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 460)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 524)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 524)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 588)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 588)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 652)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 652)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 716)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 716)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 780)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 780)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 844)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 896)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 844)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 897)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 461)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 461)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 525)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 525)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 589)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 589)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 653)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 653)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 717)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 717)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 781)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 781)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 845)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 928)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 845)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 929)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 462)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 462)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 526)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 526)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 590)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 590)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 654)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 654)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 718)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 718)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 782)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 782)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 846)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 960)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 846)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 961)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 463)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 463)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 527)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 527)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 591)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 591)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 655)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 655)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 719)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 719)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 783)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 783)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 847)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 992)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 847)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 993)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 448)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 448)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 512)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 512)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 576)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 576)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 640)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 640)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 704)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 704)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 768)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 768)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 832)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 514)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 832)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 515)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 449)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 449)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 513)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 513)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 577)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 577)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 641)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 641)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 705)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 705)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 769)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 769)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 833)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 546)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 833)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 547)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 450)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 450)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 514)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 514)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 578)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 578)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 642)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 642)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 706)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 706)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 770)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 770)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 834)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 578)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 834)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 579)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 451)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 451)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 515)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 515)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 579)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 579)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 643)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 643)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 707)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 707)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 771)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 771)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 835)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 610)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 835)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 611)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 452)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 452)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 516)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 516)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 580)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 580)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 644)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 644)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 708)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 708)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 772)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 772)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 836)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 642)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 836)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 643)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 453)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 453)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 517)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 517)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 581)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 581)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 645)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 645)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 709)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 709)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 773)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 773)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 837)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 674)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 837)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 675)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 454)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 454)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 518)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 518)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 582)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 582)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 646)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 646)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 710)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 710)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 774)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 774)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 838)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 706)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 838)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 707)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 455)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 455)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 519)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 519)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 583)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 583)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 647)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 647)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 711)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 711)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 775)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 775)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 839)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 738)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 839)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 739)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 456)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 456)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 520)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 520)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 584)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 584)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 648)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 648)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 712)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 712)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 776)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 776)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 840)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 770)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 840)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 771)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 457)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 457)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 521)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 521)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 585)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 585)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 649)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 649)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 713)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 713)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 777)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 777)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 841)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 802)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 841)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 803)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 458)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 458)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 522)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 522)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 586)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 586)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 650)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 650)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 714)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 714)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 778)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 778)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 842)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 834)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 842)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 835)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 459)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 459)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 523)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 523)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 587)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 587)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 651)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 651)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 715)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 715)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 779)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 779)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 843)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 866)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 843)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 867)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 460)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 460)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 524)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 524)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 588)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 588)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 652)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 652)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 716)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 716)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 780)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 780)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 844)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 898)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 844)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 899)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 461)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 461)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 525)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 525)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 589)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 589)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 653)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 653)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 717)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 717)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 781)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 781)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 845)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 930)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 845)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 931)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 462)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 462)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 526)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 526)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 590)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 590)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 654)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 654)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 718)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 718)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 782)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 782)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 846)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 962)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 846)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 963)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 463)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 463)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 527)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 527)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 591)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 591)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 655)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 655)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 719)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 719)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 783)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 783)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 847)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 994)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 3) * 16) + 847)] * weight_shared[(((((int)threadIdx.x) & 7) * 4) + 995)]));
  conv2d_nhwc[((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14336)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14337)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14338)] = conv2d_nhwc_local[6];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 14339)] = conv2d_nhwc_local[7];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 28672)] = conv2d_nhwc_local[8];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 28673)] = conv2d_nhwc_local[9];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 28674)] = conv2d_nhwc_local[10];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 28675)] = conv2d_nhwc_local[11];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 43008)] = conv2d_nhwc_local[12];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 43009)] = conv2d_nhwc_local[13];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 43010)] = conv2d_nhwc_local[14];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 43011)] = conv2d_nhwc_local[15];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 57344)] = conv2d_nhwc_local[16];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 57345)] = conv2d_nhwc_local[17];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 57346)] = conv2d_nhwc_local[18];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 57347)] = conv2d_nhwc_local[19];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 71680)] = conv2d_nhwc_local[20];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 71681)] = conv2d_nhwc_local[21];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 71682)] = conv2d_nhwc_local[22];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 71683)] = conv2d_nhwc_local[23];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 86016)] = conv2d_nhwc_local[24];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 86017)] = conv2d_nhwc_local[25];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 86018)] = conv2d_nhwc_local[26];
  conv2d_nhwc[(((((((((int)blockIdx.x) / 112) * 100352) + (((((int)blockIdx.x) % 112) >> 4) * 2048)) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 15) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 86019)] = conv2d_nhwc_local[27];
}


