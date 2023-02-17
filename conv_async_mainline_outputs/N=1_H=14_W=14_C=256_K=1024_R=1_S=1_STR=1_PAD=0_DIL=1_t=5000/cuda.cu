
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
  __shared__ float PadInput_shared[1344];
  __shared__ float weight_shared[6144];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[14] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[15] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[16] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[17] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[18] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[19] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  conv2d_nhwc_local[20] = 0.000000e+00f;
  conv2d_nhwc_local[7] = 0.000000e+00f;
  conv2d_nhwc_local[21] = 0.000000e+00f;
  conv2d_nhwc_local[8] = 0.000000e+00f;
  conv2d_nhwc_local[22] = 0.000000e+00f;
  conv2d_nhwc_local[9] = 0.000000e+00f;
  conv2d_nhwc_local[23] = 0.000000e+00f;
  conv2d_nhwc_local[10] = 0.000000e+00f;
  conv2d_nhwc_local[24] = 0.000000e+00f;
  conv2d_nhwc_local[11] = 0.000000e+00f;
  conv2d_nhwc_local[25] = 0.000000e+00f;
  conv2d_nhwc_local[12] = 0.000000e+00f;
  conv2d_nhwc_local[26] = 0.000000e+00f;
  conv2d_nhwc_local[13] = 0.000000e+00f;
  conv2d_nhwc_local[27] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((int)threadIdx.x)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 2048))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 4096))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 64) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 6144))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + ((((((int)threadIdx.x) >> 5) * 1024) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 1024) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 4096))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 1024) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 8192))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 1024) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 12288))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 16))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 576)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 2064))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 704)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 4112))), "n"(4)
    );
  }
  if (((int)threadIdx.x) < 64) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 832)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + (((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 6160))), "n"(4)
    );
  }
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 1024) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 16384))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 1024) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 20480))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 1024) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 24576))), "n"(16)
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
       :: "r"(addr), "l"((void*)(weight + (((((((int)threadIdx.x) >> 5) * 1024) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 28672))), "n"(16)
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
      : "l"((void *)(PadInput_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + ((int)threadIdx.x))))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 16)) + (((int)threadIdx.x) & 15)) + 32))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + ((int)threadIdx.x)) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 16)) + (((int)threadIdx.x) & 15)) + 2080))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + ((int)threadIdx.x)) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 16)) + (((int)threadIdx.x) & 15)) + 4128))), "n"(4)
    );
  }
    if (((int)threadIdx.x) < 64) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 448) + ((int)threadIdx.x)) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 7168) + ((((int)threadIdx.x) >> 4) * 256)) + (rh_0_rw_0_rc_0_fused * 16)) + (((int)threadIdx.x) & 15)) + 6176))), "n"(4)
    );
  }
    }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + ((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4))))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 16384) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 32768))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 16384) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 36864))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 1024)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 16384) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 40960))), "n"(16)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((((rh_0_rw_0_rc_0_fused + 2) % 3) * 2048) + (((int)threadIdx.x) * 4)) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.cg.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((((rh_0_rw_0_rc_0_fused * 16384) + ((((int)threadIdx.x) >> 5) * 1024)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 4)) + 45056))), "n"(16)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

    __syncthreads();
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112))] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112))] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 1)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 16)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 16)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 17)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 32)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 32)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 33)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 48)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 48)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 49)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 64)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 64)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 65)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 80)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 80)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 81)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 96)] * weight_shared[(((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2))]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 64)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 128)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 192)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 96)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 65)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 129)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 97)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 193)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 2)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 3)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 18)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 19)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 34)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 35)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 50)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 51)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 66)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 67)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 82)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 83)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 256)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 320)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 384)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 448)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 257)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 98)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 321)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 385)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 99)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 449)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 4)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 5)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 20)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 21)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 36)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 37)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 52)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 53)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 68)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 69)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 84)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 85)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 512)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 576)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 640)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 704)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 513)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 100)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 577)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 641)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 101)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 705)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 6)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 7)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 22)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 23)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 38)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 39)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 54)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 55)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 70)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 71)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 86)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 87)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 768)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 832)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 896)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 960)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 769)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 102)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 833)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 897)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 103)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 961)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 8)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 9)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 24)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 25)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 40)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 41)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 56)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 57)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 72)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 73)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 88)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 89)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1024)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1088)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1152)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1216)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1025)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 104)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1089)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1153)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 105)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1217)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 10)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 11)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 26)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 27)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 42)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 43)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 58)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 59)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 74)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 75)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 90)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 91)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1280)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1344)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1408)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1472)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1281)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 106)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1345)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1409)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 107)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1473)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 12)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 13)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 28)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 29)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 44)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 45)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 60)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 61)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 76)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 77)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 92)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 93)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1536)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1600)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1664)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1728)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1537)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 108)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1601)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1665)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 109)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1729)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 14)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 15)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 30)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 31)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 46)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 47)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 62)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 63)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 78)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 79)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 94)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 95)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1792)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1856)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1920)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1984)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1793)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 110)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1857)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1921)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((rh_0_rw_0_rc_0_fused % 3) * 448) + ((((int)threadIdx.x) >> 5) * 112)) + 111)] * weight_shared[((((rh_0_rw_0_rc_0_fused % 3) * 2048) + ((((int)threadIdx.x) & 31) * 2)) + 1985)]));
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 896)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4096)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 896)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4160)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 897)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4224)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 897)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4288)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 896)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4097)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 896)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4161)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 897)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4225)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 897)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4289)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 912)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4096)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 912)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4160)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 913)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4224)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 913)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4288)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 912)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4097)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 912)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4161)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 913)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4225)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 913)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4289)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 928)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4096)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 928)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4160)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 929)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4224)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 929)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4288)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 928)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4097)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 928)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4161)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 929)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4225)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 929)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4289)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 944)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4096)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 944)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4160)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 945)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4224)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 945)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4288)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 944)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4097)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 944)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4161)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 945)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4225)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 945)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4289)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 960)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4096)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 960)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4160)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 961)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4224)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 961)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4288)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 960)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4097)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 960)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4161)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 961)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4225)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 961)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4289)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 976)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4096)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 976)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4160)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 977)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4224)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 977)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4288)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 976)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4097)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 976)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4161)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 977)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4225)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 977)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4289)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 992)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4096)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 992)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4160)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 993)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4224)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 993)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4288)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 992)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4097)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 992)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4161)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 993)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4225)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 993)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4289)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 898)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4352)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 898)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4416)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 899)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4480)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 899)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4544)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 898)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4353)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 898)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4417)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 899)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4481)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 899)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4545)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 914)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4352)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 914)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4416)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 915)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4480)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 915)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4544)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 914)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4353)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 914)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4417)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 915)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4481)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 915)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4545)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 930)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4352)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 930)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4416)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 931)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4480)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 931)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4544)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 930)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4353)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 930)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4417)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 931)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4481)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 931)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4545)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 946)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4352)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 946)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4416)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 947)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4480)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 947)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4544)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 946)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4353)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 946)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4417)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 947)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4481)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 947)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4545)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 962)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4352)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 962)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4416)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 963)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4480)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 963)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4544)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 962)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4353)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 962)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4417)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 963)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4481)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 963)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4545)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 978)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4352)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 978)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4416)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 979)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4480)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 979)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4544)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 978)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4353)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 978)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4417)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 979)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4481)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 979)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4545)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 994)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4352)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 994)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4416)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 995)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4480)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 995)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4544)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 994)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4353)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 994)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4417)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 995)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4481)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 995)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4545)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 900)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4608)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 900)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4672)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 901)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4736)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 901)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4800)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 900)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4609)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 900)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4673)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 901)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4737)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 901)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4801)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 916)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4608)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 916)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4672)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 917)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4736)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 917)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4800)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 916)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4609)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 916)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4673)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 917)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4737)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 917)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4801)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 932)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4608)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 932)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4672)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 933)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4736)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 933)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4800)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 932)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4609)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 932)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4673)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 933)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4737)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 933)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4801)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 948)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4608)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 948)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4672)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 949)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4736)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 949)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4800)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 948)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4609)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 948)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4673)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 949)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4737)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 949)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4801)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 964)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4608)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 964)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4672)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 965)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4736)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 965)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4800)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 964)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4609)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 964)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4673)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 965)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4737)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 965)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4801)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 980)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4608)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 980)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4672)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 981)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4736)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 981)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4800)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 980)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4609)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 980)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4673)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 981)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4737)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 981)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4801)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 996)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4608)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 996)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4672)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 997)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4736)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 997)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4800)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 996)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4609)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 996)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4673)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 997)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4737)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 997)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4801)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 902)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4864)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 902)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4928)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 903)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4992)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 903)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5056)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 902)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4865)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 902)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4929)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 903)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4993)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 903)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5057)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 918)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4864)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 918)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4928)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 919)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4992)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 919)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5056)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 918)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4865)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 918)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4929)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 919)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4993)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 919)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5057)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 934)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4864)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 934)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4928)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 935)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4992)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 935)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5056)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 934)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4865)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 934)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4929)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 935)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4993)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 935)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5057)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 950)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4864)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 950)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4928)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 951)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4992)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 951)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5056)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 950)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4865)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 950)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4929)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 951)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4993)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 951)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5057)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 966)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4864)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 966)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4928)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 967)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4992)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 967)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5056)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 966)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4865)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 966)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4929)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 967)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4993)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 967)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5057)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 982)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4864)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 982)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4928)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 983)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4992)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 983)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5056)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 982)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4865)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 982)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4929)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 983)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4993)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 983)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5057)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 998)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4864)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 998)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4928)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 999)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4992)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 999)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5056)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 998)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4865)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 998)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4929)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 999)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 4993)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 999)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5057)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 904)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5120)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 904)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5184)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 905)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5248)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 905)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5312)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 904)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5121)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 904)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5185)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 905)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5249)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 905)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5313)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 920)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5120)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 920)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5184)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 921)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5248)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 921)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5312)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 920)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5121)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 920)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5185)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 921)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5249)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 921)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5313)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 936)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5120)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 936)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5184)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 937)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5248)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 937)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5312)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 936)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5121)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 936)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5185)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 937)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5249)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 937)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5313)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 952)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5120)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 952)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5184)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 953)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5248)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 953)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5312)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 952)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5121)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 952)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5185)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 953)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5249)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 953)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5313)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 968)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5120)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 968)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5184)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 969)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5248)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 969)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5312)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 968)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5121)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 968)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5185)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 969)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5249)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 969)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5313)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 984)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5120)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 984)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5184)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 985)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5248)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 985)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5312)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 984)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5121)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 984)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5185)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 985)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5249)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 985)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5313)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1000)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5120)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1000)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5184)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1001)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5248)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1001)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5312)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1000)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5121)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1000)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5185)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1001)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5249)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1001)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5313)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 906)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5376)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 906)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5440)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 907)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5504)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 907)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5568)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 906)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5377)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 906)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5441)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 907)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5505)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 907)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5569)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 922)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5376)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 922)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5440)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 923)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5504)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 923)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5568)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 922)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5377)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 922)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5441)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 923)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5505)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 923)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5569)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 938)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5376)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 938)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5440)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 939)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5504)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 939)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5568)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 938)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5377)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 938)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5441)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 939)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5505)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 939)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5569)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 954)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5376)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 954)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5440)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 955)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5504)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 955)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5568)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 954)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5377)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 954)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5441)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 955)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5505)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 955)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5569)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 970)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5376)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 970)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5440)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 971)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5504)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 971)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5568)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 970)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5377)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 970)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5441)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 971)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5505)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 971)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5569)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 986)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5376)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 986)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5440)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 987)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5504)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 987)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5568)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 986)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5377)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 986)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5441)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 987)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5505)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 987)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5569)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1002)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5376)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1002)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5440)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1003)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5504)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1003)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5568)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1002)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5377)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1002)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5441)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1003)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5505)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1003)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5569)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 908)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5632)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 908)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5696)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 909)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5760)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 909)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5824)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 908)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5633)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 908)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5697)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 909)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5761)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 909)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5825)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 924)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5632)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 924)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5696)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 925)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5760)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 925)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5824)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 924)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5633)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 924)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5697)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 925)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5761)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 925)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5825)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 940)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5632)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 940)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5696)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 941)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5760)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 941)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5824)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 940)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5633)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 940)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5697)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 941)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5761)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 941)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5825)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 956)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5632)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 956)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5696)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 957)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5760)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 957)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5824)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 956)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5633)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 956)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5697)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 957)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5761)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 957)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5825)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 972)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5632)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 972)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5696)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 973)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5760)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 973)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5824)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 972)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5633)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 972)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5697)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 973)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5761)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 973)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5825)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 988)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5632)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 988)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5696)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 989)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5760)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 989)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5824)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 988)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5633)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 988)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5697)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 989)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5761)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 989)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5825)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1004)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5632)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1004)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5696)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1005)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5760)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1005)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5824)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1004)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5633)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1004)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5697)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1005)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5761)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1005)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5825)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 910)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5888)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 910)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5952)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 911)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6016)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 911)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6080)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 910)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5889)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 910)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5953)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 911)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6017)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 911)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6081)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 926)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5888)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 926)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5952)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 927)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6016)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 927)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6080)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 926)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5889)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 926)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5953)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 927)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6017)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 927)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6081)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 942)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5888)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 942)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5952)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 943)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6016)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 943)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6080)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 942)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5889)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 942)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5953)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 943)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6017)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 943)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6081)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 958)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5888)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 958)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5952)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 959)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6016)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 959)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6080)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 958)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5889)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 958)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5953)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 959)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6017)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 959)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6081)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 974)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5888)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 974)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5952)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 975)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6016)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 975)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6080)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 974)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5889)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 974)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5953)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 975)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6017)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 975)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6081)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 990)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5888)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 990)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5952)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 991)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6016)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 991)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6080)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 990)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5889)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 990)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5953)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 991)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6017)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 991)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6081)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1006)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5888)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1006)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5952)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1007)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6016)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1007)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6080)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1006)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5889)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1006)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 5953)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1007)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6017)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1007)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 6081)]));
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((int)threadIdx.x) >> 5) * 112)] * weight_shared[((((int)threadIdx.x) & 31) * 2)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((int)threadIdx.x) >> 5) * 112)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((int)threadIdx.x) >> 5) * 112)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((int)threadIdx.x) >> 5) * 112)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 1)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 16)] * weight_shared[((((int)threadIdx.x) & 31) * 2)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 16)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 17)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 17)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 16)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 16)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 17)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 17)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 32)] * weight_shared[((((int)threadIdx.x) & 31) * 2)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 32)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 33)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 33)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 32)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 32)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 33)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 33)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 48)] * weight_shared[((((int)threadIdx.x) & 31) * 2)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 48)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 49)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 49)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 48)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 48)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 49)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 49)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 64)] * weight_shared[((((int)threadIdx.x) & 31) * 2)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 64)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 65)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 65)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 64)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 64)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 65)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 65)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 80)] * weight_shared[((((int)threadIdx.x) & 31) * 2)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 80)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 81)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 81)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 80)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 80)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 81)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 81)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 96)] * weight_shared[((((int)threadIdx.x) & 31) * 2)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 96)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 64)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 97)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 128)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 97)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 192)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 96)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 96)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 65)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 97)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 129)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 97)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 193)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 2)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 2)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 3)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 3)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 2)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 2)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 3)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 3)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 18)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 18)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 19)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 19)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 18)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 18)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 19)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 19)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 34)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 34)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 35)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 35)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 34)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 34)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 35)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 35)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 50)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 50)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 51)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 51)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 50)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 50)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 51)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 51)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 66)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 66)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 67)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 67)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 66)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 66)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 67)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 67)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 82)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 82)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 83)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 83)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 82)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 82)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 83)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 83)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 98)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 256)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 98)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 320)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 99)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 384)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 99)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 448)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 98)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 257)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 98)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 321)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 99)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 385)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 99)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 449)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 4)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 4)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 5)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 5)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 4)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 4)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 5)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 5)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 20)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 20)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 21)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 21)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 20)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 20)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 21)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 21)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 36)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 36)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 37)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 37)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 36)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 36)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 37)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 37)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 52)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 52)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 53)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 53)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 52)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 52)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 53)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 53)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 68)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 68)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 69)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 69)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 68)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 68)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 69)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 69)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 84)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 84)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 85)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 85)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 84)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 84)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 85)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 85)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 100)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 512)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 100)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 576)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 101)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 640)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 101)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 704)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 100)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 513)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 100)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 577)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 101)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 641)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 101)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 705)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 6)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 6)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 7)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 7)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 6)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 6)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 7)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 7)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 22)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 22)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 23)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 23)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 22)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 22)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 23)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 23)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 38)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 38)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 39)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 39)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 38)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 38)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 39)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 39)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 54)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 54)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 55)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 55)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 54)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 54)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 55)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 55)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 70)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 70)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 71)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 71)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 70)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 70)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 71)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 71)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 86)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 86)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 87)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 87)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 86)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 86)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 87)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 87)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 102)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 768)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 102)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 832)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 103)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 896)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 103)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 960)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 102)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 769)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 102)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 833)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 103)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 897)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 103)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 961)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 8)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 8)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 9)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 9)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 8)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 8)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 9)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 9)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 24)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 24)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 25)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 25)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 24)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 24)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 25)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 25)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 40)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 40)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 41)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 41)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 40)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 40)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 41)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 41)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 56)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 56)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 57)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 57)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 56)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 56)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 57)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 57)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 72)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 72)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 73)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 73)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 72)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 72)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 73)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 73)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 88)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 88)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 89)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 89)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 88)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 88)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 89)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 89)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 104)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1024)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 104)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1088)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 105)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1152)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 105)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1216)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 104)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1025)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 104)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1089)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 105)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1153)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 105)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1217)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 10)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 10)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 11)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 11)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 10)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 10)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 11)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 11)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 26)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 26)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 27)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 27)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 26)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 26)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 27)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 27)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 42)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 42)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 43)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 43)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 42)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 42)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 43)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 43)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 58)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 58)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 59)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 59)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 58)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 58)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 59)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 59)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 74)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 74)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 75)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 75)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 74)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 74)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 75)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 75)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 90)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 90)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 91)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 91)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 90)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 90)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 91)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 91)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 106)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1280)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 106)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1344)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 107)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1408)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 107)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1472)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 106)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1281)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 106)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1345)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 107)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1409)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 107)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1473)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 12)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 12)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 13)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 13)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 12)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 12)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 13)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 13)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 28)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 28)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 29)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 29)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 28)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 28)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 29)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 29)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 44)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 44)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 45)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 45)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 44)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 44)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 45)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 45)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 60)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 60)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 61)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 61)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 60)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 60)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 61)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 61)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 76)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 76)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 77)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 77)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 76)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 76)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 77)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 77)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 92)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 92)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 93)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 93)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 92)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 92)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 93)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 93)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 108)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1536)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 108)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1600)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 109)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1664)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 109)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1728)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 108)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1537)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 108)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1601)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 109)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1665)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 109)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1729)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 14)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 14)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 15)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 15)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 14)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 14)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 15)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 15)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 30)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 30)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 31)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 31)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 30)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 30)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 31)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 31)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 46)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 46)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 47)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 47)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 46)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 46)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 47)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 47)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 62)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 62)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 63)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 63)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 62)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 62)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 63)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 63)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 78)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 78)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 79)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 79)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 78)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 78)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 79)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 79)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 94)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 94)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 95)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 95)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 94)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 94)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 95)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 95)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 110)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1792)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 110)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1856)]));
  conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 111)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1920)]));
  conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 111)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1984)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 110)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1793)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 110)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1857)]));
  conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 111)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1921)]));
  conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[(((((int)threadIdx.x) >> 5) * 112) + 111)] * weight_shared[(((((int)threadIdx.x) & 31) * 2) + 1985)]));
  conv2d_nhwc[(((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2))] = conv2d_nhwc_local[0];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 64)] = conv2d_nhwc_local[14];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 1)] = conv2d_nhwc_local[1];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 65)] = conv2d_nhwc_local[15];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 1024)] = conv2d_nhwc_local[2];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 1088)] = conv2d_nhwc_local[16];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 1025)] = conv2d_nhwc_local[3];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 1089)] = conv2d_nhwc_local[17];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 2048)] = conv2d_nhwc_local[4];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 2112)] = conv2d_nhwc_local[18];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 2049)] = conv2d_nhwc_local[5];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 2113)] = conv2d_nhwc_local[19];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 3072)] = conv2d_nhwc_local[6];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 3136)] = conv2d_nhwc_local[20];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 3073)] = conv2d_nhwc_local[7];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 3137)] = conv2d_nhwc_local[21];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 4096)] = conv2d_nhwc_local[8];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 4160)] = conv2d_nhwc_local[22];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 4097)] = conv2d_nhwc_local[9];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 4161)] = conv2d_nhwc_local[23];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 5120)] = conv2d_nhwc_local[10];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 5184)] = conv2d_nhwc_local[24];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 5121)] = conv2d_nhwc_local[11];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 5185)] = conv2d_nhwc_local[25];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 6144)] = conv2d_nhwc_local[12];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 6208)] = conv2d_nhwc_local[26];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 6145)] = conv2d_nhwc_local[13];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + ((((int)blockIdx.x) & 7) * 128)) + ((((int)threadIdx.x) & 31) * 2)) + 6209)] = conv2d_nhwc_local[27];
}


