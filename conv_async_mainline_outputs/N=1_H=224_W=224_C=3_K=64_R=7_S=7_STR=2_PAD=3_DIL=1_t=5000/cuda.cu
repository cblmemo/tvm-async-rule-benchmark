
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
  float conv2d_nhwc_local[112];
  __shared__ float PadInput_shared[2079];
  __shared__ float weight_shared[9408];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[14] = 0.000000e+00f;
  conv2d_nhwc_local[28] = 0.000000e+00f;
  conv2d_nhwc_local[42] = 0.000000e+00f;
  conv2d_nhwc_local[56] = 0.000000e+00f;
  conv2d_nhwc_local[70] = 0.000000e+00f;
  conv2d_nhwc_local[84] = 0.000000e+00f;
  conv2d_nhwc_local[98] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[15] = 0.000000e+00f;
  conv2d_nhwc_local[29] = 0.000000e+00f;
  conv2d_nhwc_local[43] = 0.000000e+00f;
  conv2d_nhwc_local[57] = 0.000000e+00f;
  conv2d_nhwc_local[71] = 0.000000e+00f;
  conv2d_nhwc_local[85] = 0.000000e+00f;
  conv2d_nhwc_local[99] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[16] = 0.000000e+00f;
  conv2d_nhwc_local[30] = 0.000000e+00f;
  conv2d_nhwc_local[44] = 0.000000e+00f;
  conv2d_nhwc_local[58] = 0.000000e+00f;
  conv2d_nhwc_local[72] = 0.000000e+00f;
  conv2d_nhwc_local[86] = 0.000000e+00f;
  conv2d_nhwc_local[100] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[17] = 0.000000e+00f;
  conv2d_nhwc_local[31] = 0.000000e+00f;
  conv2d_nhwc_local[45] = 0.000000e+00f;
  conv2d_nhwc_local[59] = 0.000000e+00f;
  conv2d_nhwc_local[73] = 0.000000e+00f;
  conv2d_nhwc_local[87] = 0.000000e+00f;
  conv2d_nhwc_local[101] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[18] = 0.000000e+00f;
  conv2d_nhwc_local[32] = 0.000000e+00f;
  conv2d_nhwc_local[46] = 0.000000e+00f;
  conv2d_nhwc_local[60] = 0.000000e+00f;
  conv2d_nhwc_local[74] = 0.000000e+00f;
  conv2d_nhwc_local[88] = 0.000000e+00f;
  conv2d_nhwc_local[102] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[19] = 0.000000e+00f;
  conv2d_nhwc_local[33] = 0.000000e+00f;
  conv2d_nhwc_local[47] = 0.000000e+00f;
  conv2d_nhwc_local[61] = 0.000000e+00f;
  conv2d_nhwc_local[75] = 0.000000e+00f;
  conv2d_nhwc_local[89] = 0.000000e+00f;
  conv2d_nhwc_local[103] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  conv2d_nhwc_local[20] = 0.000000e+00f;
  conv2d_nhwc_local[34] = 0.000000e+00f;
  conv2d_nhwc_local[48] = 0.000000e+00f;
  conv2d_nhwc_local[62] = 0.000000e+00f;
  conv2d_nhwc_local[76] = 0.000000e+00f;
  conv2d_nhwc_local[90] = 0.000000e+00f;
  conv2d_nhwc_local[104] = 0.000000e+00f;
  conv2d_nhwc_local[7] = 0.000000e+00f;
  conv2d_nhwc_local[21] = 0.000000e+00f;
  conv2d_nhwc_local[35] = 0.000000e+00f;
  conv2d_nhwc_local[49] = 0.000000e+00f;
  conv2d_nhwc_local[63] = 0.000000e+00f;
  conv2d_nhwc_local[77] = 0.000000e+00f;
  conv2d_nhwc_local[91] = 0.000000e+00f;
  conv2d_nhwc_local[105] = 0.000000e+00f;
  conv2d_nhwc_local[8] = 0.000000e+00f;
  conv2d_nhwc_local[22] = 0.000000e+00f;
  conv2d_nhwc_local[36] = 0.000000e+00f;
  conv2d_nhwc_local[50] = 0.000000e+00f;
  conv2d_nhwc_local[64] = 0.000000e+00f;
  conv2d_nhwc_local[78] = 0.000000e+00f;
  conv2d_nhwc_local[92] = 0.000000e+00f;
  conv2d_nhwc_local[106] = 0.000000e+00f;
  conv2d_nhwc_local[9] = 0.000000e+00f;
  conv2d_nhwc_local[23] = 0.000000e+00f;
  conv2d_nhwc_local[37] = 0.000000e+00f;
  conv2d_nhwc_local[51] = 0.000000e+00f;
  conv2d_nhwc_local[65] = 0.000000e+00f;
  conv2d_nhwc_local[79] = 0.000000e+00f;
  conv2d_nhwc_local[93] = 0.000000e+00f;
  conv2d_nhwc_local[107] = 0.000000e+00f;
  conv2d_nhwc_local[10] = 0.000000e+00f;
  conv2d_nhwc_local[24] = 0.000000e+00f;
  conv2d_nhwc_local[38] = 0.000000e+00f;
  conv2d_nhwc_local[52] = 0.000000e+00f;
  conv2d_nhwc_local[66] = 0.000000e+00f;
  conv2d_nhwc_local[80] = 0.000000e+00f;
  conv2d_nhwc_local[94] = 0.000000e+00f;
  conv2d_nhwc_local[108] = 0.000000e+00f;
  conv2d_nhwc_local[11] = 0.000000e+00f;
  conv2d_nhwc_local[25] = 0.000000e+00f;
  conv2d_nhwc_local[39] = 0.000000e+00f;
  conv2d_nhwc_local[53] = 0.000000e+00f;
  conv2d_nhwc_local[67] = 0.000000e+00f;
  conv2d_nhwc_local[81] = 0.000000e+00f;
  conv2d_nhwc_local[95] = 0.000000e+00f;
  conv2d_nhwc_local[109] = 0.000000e+00f;
  conv2d_nhwc_local[12] = 0.000000e+00f;
  conv2d_nhwc_local[26] = 0.000000e+00f;
  conv2d_nhwc_local[40] = 0.000000e+00f;
  conv2d_nhwc_local[54] = 0.000000e+00f;
  conv2d_nhwc_local[68] = 0.000000e+00f;
  conv2d_nhwc_local[82] = 0.000000e+00f;
  conv2d_nhwc_local[96] = 0.000000e+00f;
  conv2d_nhwc_local[110] = 0.000000e+00f;
  conv2d_nhwc_local[13] = 0.000000e+00f;
  conv2d_nhwc_local[27] = 0.000000e+00f;
  conv2d_nhwc_local[41] = 0.000000e+00f;
  conv2d_nhwc_local[55] = 0.000000e+00f;
  conv2d_nhwc_local[69] = 0.000000e+00f;
  conv2d_nhwc_local[83] = 0.000000e+00f;
  conv2d_nhwc_local[97] = 0.000000e+00f;
  conv2d_nhwc_local[111] = 0.000000e+00f;

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + ((int)threadIdx.x)))
    );
    int src_bytes = (((3 <= (((((int)blockIdx.x) >> 3) * 16) + (((int)threadIdx.x) / 33))) && (3 <= (((((int)blockIdx.x) & 7) * 28) + (((int)threadIdx.x) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + (((int)threadIdx.x) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + ((((int)threadIdx.x) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + ((((int)threadIdx.x) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 64)))
    );
    int src_bytes = (((3 <= (((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 64) / 33))) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 31) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 31) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 64) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 31) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 128)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 29) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 29) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 128) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 29) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 192)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 27) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 27) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 192) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 27) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 256)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 25) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 25) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 256) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 25) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 320)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 23) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 23) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 320) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 23) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 384)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 21) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 21) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 384) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 21) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 448)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 19) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 19) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 448) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 19) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 512)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 17) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 17) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 512) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 17) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 576)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 576) / 33)) < 227) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 15) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 15) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 576) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 15) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 53) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 640)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 640) / 33)) < 227) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 13) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 13) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 640) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 13) % 33) * 3)) - 2025))), "n"(4), "r"(src_bytes)
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
       :: "r"(addr), "l"((void*)(weight + ((int)threadIdx.x))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 64)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 192)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 768))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 320)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 960))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 384)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1152))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1344))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 512)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1536))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 576)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1728))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 640)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1920))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 704)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2112))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 768)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2304))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 832)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2496))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2688))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 960)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2880))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3072))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1088)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3264))), "n"(4)
    );
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3456))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1216)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3648))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1280)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3840))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4032))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1408)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4224))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4416))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1536)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4608))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4800))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1664)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4992))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1728)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5184))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5376))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1856)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5568))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5760))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 1984)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5952))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6144))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2112)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6336))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2176)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6528))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2240)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6720))), "n"(4)
    );
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6912))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2368)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7104))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2432)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7296))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7488))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2560)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7680))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2624)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7872))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2688)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8064))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8256))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2816)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8448))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 2880)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8640))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8832))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3008)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 9024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3072)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 9216))), "n"(4)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 693)))
    );
    int src_bytes = (((3 <= (((((int)blockIdx.x) >> 3) * 16) + (((int)threadIdx.x) / 33))) && (3 <= (((((int)blockIdx.x) & 7) * 28) + (((int)threadIdx.x) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + (((int)threadIdx.x) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + ((((int)threadIdx.x) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + ((((int)threadIdx.x) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 757)))
    );
    int src_bytes = (((3 <= (((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 64) / 33))) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 31) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 31) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 64) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 31) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 821)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 29) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 29) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 128) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 29) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 885)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 27) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 27) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 192) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 27) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 949)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 25) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 25) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 256) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 25) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1013)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 23) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 23) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 320) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 23) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1077)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 21) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 21) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 384) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 21) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1141)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 19) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 19) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 448) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 19) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1205)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 17) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 17) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 512) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 17) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1269)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 576) / 33)) < 227) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 15) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 15) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 576) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 15) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 53) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1333)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 640) / 33)) < 227) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 13) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 13) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 640) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 13) % 33) * 3)) - 2024))), "n"(4), "r"(src_bytes)
    );
  }
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3136)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 64))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 256))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3264)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 448))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3328)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 640))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 832))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3456)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1024))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3520)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1216))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3584)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1408))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3648)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1600))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3712)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1792))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3776)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1984))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2176))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3904)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2368))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 3968)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2560))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4032)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2752))), "n"(4)
    );
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2944))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4160)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3136))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4224)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3328))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4288)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3520))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4352)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3712))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4416)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3904))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4480)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4096))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4288))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4608)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4480))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4672)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4672))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4736)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4864))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4800)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5056))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4864)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5248))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 4928)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5440))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5632))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5056)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5824))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5120)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6016))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5184)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6208))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5248)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6400))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5312)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6592))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5376)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6784))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6976))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5504)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7168))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5568)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7360))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5632)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7552))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5696)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7744))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5760)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7936))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5824)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8128))), "n"(4)
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
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8320))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 5952)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6016)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8704))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6080)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8896))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6144)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 9088))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6208)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 9280))), "n"(4)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");


  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1386)))
    );
    int src_bytes = (((3 <= (((((int)blockIdx.x) >> 3) * 16) + (((int)threadIdx.x) / 33))) && (3 <= (((((int)blockIdx.x) & 7) * 28) + (((int)threadIdx.x) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + (((int)threadIdx.x) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + ((((int)threadIdx.x) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + ((((int)threadIdx.x) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1450)))
    );
    int src_bytes = (((3 <= (((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 64) / 33))) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 31) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 31) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 64) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 31) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1514)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 29) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 29) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 128) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 29) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1578)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 27) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 27) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 192) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 27) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1642)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 25) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 25) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 256) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 25) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1706)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 23) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 23) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 320) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 23) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1770)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 21) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 21) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 384) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 21) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1834)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 19) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 19) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 448) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 19) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1898)))
    );
    int src_bytes = ((3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 17) % 33))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 17) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 512) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 17) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 1962)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 576) / 33)) < 227) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 15) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 15) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 576) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 15) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }
  if (((int)threadIdx.x) < 53) {

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(PadInput_shared + (((int)threadIdx.x) + 2026)))
    );
    int src_bytes = ((((((((int)blockIdx.x) >> 3) * 16) + ((((int)threadIdx.x) + 640) / 33)) < 227) && (3 <= (((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 13) % 33)))) && ((((((int)blockIdx.x) & 7) * 28) + ((((int)threadIdx.x) + 13) % 33)) < 227)) ? 4 : 0;
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2, %3;"
       :: "r"(addr), "l"((void*)(inputs + ((((((((int)blockIdx.x) >> 3) * 10752) + (((((int)threadIdx.x) + 640) / 33) * 672)) + ((((int)blockIdx.x) & 7) * 84)) + (((((int)threadIdx.x) + 13) % 33) * 3)) - 2023))), "n"(4), "r"(src_bytes)
    );
  }
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6272)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 128))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6336)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 320))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6400)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 512))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6464)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 704))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6528)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 896))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6592)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1088))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6656)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1280))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6720)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1472))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6784)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1664))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6848)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 1856))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6912)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2048))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 6976)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2240))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7040)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2432))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7104)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2624))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7168)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 2816))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7232)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3008))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7296)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3200))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7360)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3392))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7424)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3584))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7488)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3776))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7552)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 3968))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7616)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4160))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7680)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4352))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7744)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4544))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7808)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4736))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7872)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 4928))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 7936)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5120))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8000)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5312))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8064)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5504))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8128)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5696))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8192)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 5888))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8256)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6080))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8320)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6272))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8384)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6464))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8448)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6656))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8512)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 6848))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8576)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7040))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8640)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7232))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8704)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7424))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8768)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7616))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8832)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 7808))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8896)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8000))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 8960)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8192))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 9024)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8384))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 9088)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8576))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 9152)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8768))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 9216)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 8960))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 9280)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 9152))), "n"(4)
    );
  }

  {
    unsigned int addr;
    __asm__ __volatile__(
      "{ .reg .u64 addr; cvta.to.shared.u64 addr, %1; cvt.u32.u64 %0, addr; }\n"
      : "=r"(addr)
      : "l"((void *)(weight_shared + (((int)threadIdx.x) + 9344)))
    );
    __asm__ __volatile__(
      "cp.async.ca.shared.global [%0], [%1], %2;"
       :: "r"(addr), "l"((void*)(weight + (((int)threadIdx.x) + 9344))), "n"(4)
    );
  }
__asm__ __volatile__("cp.async.commit_group;");

__asm__ __volatile__("cp.async.wait_group 2;");

  __syncthreads();
  for (int rh_1 = 0; rh_1 < 7; ++rh_1) {
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33))] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33))] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33))] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[(((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33))] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 264)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 264)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 264)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 264)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 1)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 1)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 1)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 1)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 265)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 265)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 265)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 265)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 2)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 2)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 2)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 2)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 266)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 266)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 266)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 266)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 3)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 3)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 3)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 3)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 267)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 267)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 267)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 267)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 2)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 2)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 2)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 2)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 266)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 266)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 266)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 266)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 3)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 3)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 3)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 3)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 267)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 267)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 267)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 267)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 4)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 268)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 5)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 269)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 6)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 270)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 7)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 271)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 8)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 272)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 9)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 273)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 10)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 274)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 11)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 275)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 12)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 276)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 13)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 277)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 14)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 278)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 15)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 279)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 16)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 280)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 17)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 281)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 18)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 282)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 19)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 283)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 20)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 284)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 21)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 285)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 22)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 286)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 23)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 287)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 24)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 288)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 25)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 289)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 29)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 29)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 29)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 29)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 293)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 293)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 293)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 293)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 30)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 30)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 30)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 30)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 294)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 294)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 294)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 294)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 26)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[((rh_1 * 448) + (((int)threadIdx.x) & 15))]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 16)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 32)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 290)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 48)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 27)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 64)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 80)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 96)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 291)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 112)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 28)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 128)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 144)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 160)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 292)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 176)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 29)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 29)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 29)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 29)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 293)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 192)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 293)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 208)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 293)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 224)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 293)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 240)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 30)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 30)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 30)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 30)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 294)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 256)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 294)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 272)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 294)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 288)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 294)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 304)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 31)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 31)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 31)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 31)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 295)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 320)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 295)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 336)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 295)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 352)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 295)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 368)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 32)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 32)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 32)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 32)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 296)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 384)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 296)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 400)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 296)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 416)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1 * 33)) + 296)] * weight_shared[(((rh_1 * 448) + (((int)threadIdx.x) & 15)) + 432)]));
  }
__asm__ __volatile__("cp.async.wait_group 1;");

  __syncthreads();
  for (int rh_1_1 = 0; rh_1_1 < 7; ++rh_1_1) {
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 693)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 693)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 693)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 693)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 957)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 957)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 957)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 957)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 694)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 694)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 694)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 694)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 958)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 958)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 958)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 958)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 695)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 695)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 695)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 695)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 959)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 959)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 959)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 959)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 696)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 696)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 696)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 696)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 960)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 960)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 960)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 960)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 695)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 695)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 695)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 695)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 959)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 959)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 959)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 959)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 696)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 696)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 696)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 696)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 960)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 960)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 960)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 960)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 697)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 961)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 698)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 962)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 699)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 963)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 700)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 964)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 701)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 965)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 702)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 966)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 703)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 967)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 704)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 968)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 705)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 969)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 706)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 970)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 707)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 971)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 708)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 972)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 709)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 973)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 710)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 974)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 711)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 975)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 712)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 976)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 713)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 977)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 714)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 978)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 715)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 979)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 716)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 980)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 717)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 981)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 718)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 982)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 722)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 722)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 722)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 722)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 986)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 986)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 986)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 986)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 723)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 723)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 723)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 723)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 987)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 987)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 987)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 987)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 719)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3136)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3152)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3168)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 983)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3184)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 720)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3200)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3216)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3232)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 984)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3248)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 721)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3264)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3280)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3296)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 985)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3312)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 722)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 722)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 722)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 722)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 986)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3328)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 986)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3344)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 986)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3360)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 986)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3376)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 723)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 723)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 723)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 723)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 987)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3392)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 987)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3408)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 987)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3424)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 987)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3440)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 724)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 724)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 724)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 724)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 988)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3456)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 988)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3472)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 988)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3488)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 988)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3504)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 725)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 725)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 725)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 725)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 989)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3520)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 989)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3536)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 989)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3552)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_1 * 33)) + 989)] * weight_shared[(((rh_1_1 * 448) + (((int)threadIdx.x) & 15)) + 3568)]));
  }
__asm__ __volatile__("cp.async.wait_group 0;");

  __syncthreads();
  for (int rh_1_2 = 0; rh_1_2 < 7; ++rh_1_2) {
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1386)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1386)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1386)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1386)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1650)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1650)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1650)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1650)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1387)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1387)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1387)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1387)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1651)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1651)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1651)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1651)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1388)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1388)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1388)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1388)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1652)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1652)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1652)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1652)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1389)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1389)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1389)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1389)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1653)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1653)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1653)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1653)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[14] = (conv2d_nhwc_local[14] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[28] = (conv2d_nhwc_local[28] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[42] = (conv2d_nhwc_local[42] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[56] = (conv2d_nhwc_local[56] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[70] = (conv2d_nhwc_local[70] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[84] = (conv2d_nhwc_local[84] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[98] = (conv2d_nhwc_local[98] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1388)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1388)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1388)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1388)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1652)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1652)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1652)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1652)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1389)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1389)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1389)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1389)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1653)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1653)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1653)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1653)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[15] = (conv2d_nhwc_local[15] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[29] = (conv2d_nhwc_local[29] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[43] = (conv2d_nhwc_local[43] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[57] = (conv2d_nhwc_local[57] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[71] = (conv2d_nhwc_local[71] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[85] = (conv2d_nhwc_local[85] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[99] = (conv2d_nhwc_local[99] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1390)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1654)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1391)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1655)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[16] = (conv2d_nhwc_local[16] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[30] = (conv2d_nhwc_local[30] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[44] = (conv2d_nhwc_local[44] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[58] = (conv2d_nhwc_local[58] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[72] = (conv2d_nhwc_local[72] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[86] = (conv2d_nhwc_local[86] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[100] = (conv2d_nhwc_local[100] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1392)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1656)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1393)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1657)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[17] = (conv2d_nhwc_local[17] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[31] = (conv2d_nhwc_local[31] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[45] = (conv2d_nhwc_local[45] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[59] = (conv2d_nhwc_local[59] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[73] = (conv2d_nhwc_local[73] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[87] = (conv2d_nhwc_local[87] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[101] = (conv2d_nhwc_local[101] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1394)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1658)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1395)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1659)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[18] = (conv2d_nhwc_local[18] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[32] = (conv2d_nhwc_local[32] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[46] = (conv2d_nhwc_local[46] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[60] = (conv2d_nhwc_local[60] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[74] = (conv2d_nhwc_local[74] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[88] = (conv2d_nhwc_local[88] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[102] = (conv2d_nhwc_local[102] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1396)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1660)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1397)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1661)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[19] = (conv2d_nhwc_local[19] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[33] = (conv2d_nhwc_local[33] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[47] = (conv2d_nhwc_local[47] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[61] = (conv2d_nhwc_local[61] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[75] = (conv2d_nhwc_local[75] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[89] = (conv2d_nhwc_local[89] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[103] = (conv2d_nhwc_local[103] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1398)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1662)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1399)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1663)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[20] = (conv2d_nhwc_local[20] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[34] = (conv2d_nhwc_local[34] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[48] = (conv2d_nhwc_local[48] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[62] = (conv2d_nhwc_local[62] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[76] = (conv2d_nhwc_local[76] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[90] = (conv2d_nhwc_local[90] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[104] = (conv2d_nhwc_local[104] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1400)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1664)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1401)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1665)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[7] = (conv2d_nhwc_local[7] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[21] = (conv2d_nhwc_local[21] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[35] = (conv2d_nhwc_local[35] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[49] = (conv2d_nhwc_local[49] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[63] = (conv2d_nhwc_local[63] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[77] = (conv2d_nhwc_local[77] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[91] = (conv2d_nhwc_local[91] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[105] = (conv2d_nhwc_local[105] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1402)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1666)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1403)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1667)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[8] = (conv2d_nhwc_local[8] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[22] = (conv2d_nhwc_local[22] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[36] = (conv2d_nhwc_local[36] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[50] = (conv2d_nhwc_local[50] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[64] = (conv2d_nhwc_local[64] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[78] = (conv2d_nhwc_local[78] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[92] = (conv2d_nhwc_local[92] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[106] = (conv2d_nhwc_local[106] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1404)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1668)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1405)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1669)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[9] = (conv2d_nhwc_local[9] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[23] = (conv2d_nhwc_local[23] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[37] = (conv2d_nhwc_local[37] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[51] = (conv2d_nhwc_local[51] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[65] = (conv2d_nhwc_local[65] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[79] = (conv2d_nhwc_local[79] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[93] = (conv2d_nhwc_local[93] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[107] = (conv2d_nhwc_local[107] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1406)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1670)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1407)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1671)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[10] = (conv2d_nhwc_local[10] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[24] = (conv2d_nhwc_local[24] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[38] = (conv2d_nhwc_local[38] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[52] = (conv2d_nhwc_local[52] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[66] = (conv2d_nhwc_local[66] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[80] = (conv2d_nhwc_local[80] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[94] = (conv2d_nhwc_local[94] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[108] = (conv2d_nhwc_local[108] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1408)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1672)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1409)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1673)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[11] = (conv2d_nhwc_local[11] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[25] = (conv2d_nhwc_local[25] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[39] = (conv2d_nhwc_local[39] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[53] = (conv2d_nhwc_local[53] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[67] = (conv2d_nhwc_local[67] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[81] = (conv2d_nhwc_local[81] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[95] = (conv2d_nhwc_local[95] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[109] = (conv2d_nhwc_local[109] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1410)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1674)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1411)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1675)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1415)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1415)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1415)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1415)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1679)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1679)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1679)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1679)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[12] = (conv2d_nhwc_local[12] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1416)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[26] = (conv2d_nhwc_local[26] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1416)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[40] = (conv2d_nhwc_local[40] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1416)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[54] = (conv2d_nhwc_local[54] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1416)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[68] = (conv2d_nhwc_local[68] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1680)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[82] = (conv2d_nhwc_local[82] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1680)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[96] = (conv2d_nhwc_local[96] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1680)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[110] = (conv2d_nhwc_local[110] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1680)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1412)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6272)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6288)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6304)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1676)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6320)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1413)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6336)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6352)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6368)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1677)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6384)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1414)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6400)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6416)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6432)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1678)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6448)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1415)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1415)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1415)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1415)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1679)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6464)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1679)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6480)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1679)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6496)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1679)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6512)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1416)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1416)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1416)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1416)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1680)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6528)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1680)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6544)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1680)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6560)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1680)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6576)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1417)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1417)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1417)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1417)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1681)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6592)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1681)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6608)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1681)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6624)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1681)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6640)]));
    conv2d_nhwc_local[13] = (conv2d_nhwc_local[13] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1418)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[27] = (conv2d_nhwc_local[27] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1418)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[41] = (conv2d_nhwc_local[41] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1418)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[55] = (conv2d_nhwc_local[55] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1418)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
    conv2d_nhwc_local[69] = (conv2d_nhwc_local[69] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1682)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6656)]));
    conv2d_nhwc_local[83] = (conv2d_nhwc_local[83] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1682)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6672)]));
    conv2d_nhwc_local[97] = (conv2d_nhwc_local[97] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1682)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6688)]));
    conv2d_nhwc_local[111] = (conv2d_nhwc_local[111] + (PadInput_shared[((((((int)threadIdx.x) >> 4) * 66) + (rh_1_2 * 33)) + 1682)] * weight_shared[(((rh_1_2 * 448) + (((int)threadIdx.x) & 15)) + 6704)]));
  }
  conv2d_nhwc[(((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15))] = conv2d_nhwc_local[0];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 16)] = conv2d_nhwc_local[14];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 32)] = conv2d_nhwc_local[28];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 48)] = conv2d_nhwc_local[42];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28672)] = conv2d_nhwc_local[56];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28688)] = conv2d_nhwc_local[70];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28704)] = conv2d_nhwc_local[84];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28720)] = conv2d_nhwc_local[98];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 64)] = conv2d_nhwc_local[1];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 80)] = conv2d_nhwc_local[15];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 96)] = conv2d_nhwc_local[29];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 112)] = conv2d_nhwc_local[43];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28736)] = conv2d_nhwc_local[57];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28752)] = conv2d_nhwc_local[71];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28768)] = conv2d_nhwc_local[85];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28784)] = conv2d_nhwc_local[99];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 128)] = conv2d_nhwc_local[2];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 144)] = conv2d_nhwc_local[16];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 160)] = conv2d_nhwc_local[30];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 176)] = conv2d_nhwc_local[44];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28800)] = conv2d_nhwc_local[58];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28816)] = conv2d_nhwc_local[72];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28832)] = conv2d_nhwc_local[86];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28848)] = conv2d_nhwc_local[100];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 192)] = conv2d_nhwc_local[3];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 208)] = conv2d_nhwc_local[17];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 224)] = conv2d_nhwc_local[31];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 240)] = conv2d_nhwc_local[45];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28864)] = conv2d_nhwc_local[59];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28880)] = conv2d_nhwc_local[73];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28896)] = conv2d_nhwc_local[87];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28912)] = conv2d_nhwc_local[101];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 256)] = conv2d_nhwc_local[4];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 272)] = conv2d_nhwc_local[18];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 288)] = conv2d_nhwc_local[32];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 304)] = conv2d_nhwc_local[46];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28928)] = conv2d_nhwc_local[60];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28944)] = conv2d_nhwc_local[74];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28960)] = conv2d_nhwc_local[88];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28976)] = conv2d_nhwc_local[102];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 320)] = conv2d_nhwc_local[5];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 336)] = conv2d_nhwc_local[19];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 352)] = conv2d_nhwc_local[33];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 368)] = conv2d_nhwc_local[47];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 28992)] = conv2d_nhwc_local[61];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29008)] = conv2d_nhwc_local[75];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29024)] = conv2d_nhwc_local[89];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29040)] = conv2d_nhwc_local[103];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 384)] = conv2d_nhwc_local[6];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 400)] = conv2d_nhwc_local[20];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 416)] = conv2d_nhwc_local[34];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 432)] = conv2d_nhwc_local[48];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29056)] = conv2d_nhwc_local[62];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29072)] = conv2d_nhwc_local[76];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29088)] = conv2d_nhwc_local[90];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29104)] = conv2d_nhwc_local[104];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 448)] = conv2d_nhwc_local[7];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 464)] = conv2d_nhwc_local[21];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 480)] = conv2d_nhwc_local[35];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 496)] = conv2d_nhwc_local[49];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29120)] = conv2d_nhwc_local[63];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29136)] = conv2d_nhwc_local[77];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29152)] = conv2d_nhwc_local[91];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29168)] = conv2d_nhwc_local[105];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 512)] = conv2d_nhwc_local[8];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 528)] = conv2d_nhwc_local[22];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 544)] = conv2d_nhwc_local[36];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 560)] = conv2d_nhwc_local[50];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29184)] = conv2d_nhwc_local[64];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29200)] = conv2d_nhwc_local[78];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29216)] = conv2d_nhwc_local[92];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29232)] = conv2d_nhwc_local[106];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 576)] = conv2d_nhwc_local[9];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 592)] = conv2d_nhwc_local[23];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 608)] = conv2d_nhwc_local[37];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 624)] = conv2d_nhwc_local[51];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29248)] = conv2d_nhwc_local[65];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29264)] = conv2d_nhwc_local[79];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29280)] = conv2d_nhwc_local[93];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29296)] = conv2d_nhwc_local[107];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 640)] = conv2d_nhwc_local[10];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 656)] = conv2d_nhwc_local[24];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 672)] = conv2d_nhwc_local[38];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 688)] = conv2d_nhwc_local[52];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29312)] = conv2d_nhwc_local[66];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29328)] = conv2d_nhwc_local[80];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29344)] = conv2d_nhwc_local[94];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29360)] = conv2d_nhwc_local[108];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 704)] = conv2d_nhwc_local[11];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 720)] = conv2d_nhwc_local[25];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 736)] = conv2d_nhwc_local[39];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 752)] = conv2d_nhwc_local[53];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29376)] = conv2d_nhwc_local[67];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29392)] = conv2d_nhwc_local[81];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29408)] = conv2d_nhwc_local[95];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29424)] = conv2d_nhwc_local[109];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 768)] = conv2d_nhwc_local[12];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 784)] = conv2d_nhwc_local[26];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 800)] = conv2d_nhwc_local[40];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 816)] = conv2d_nhwc_local[54];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29440)] = conv2d_nhwc_local[68];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29456)] = conv2d_nhwc_local[82];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29472)] = conv2d_nhwc_local[96];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29488)] = conv2d_nhwc_local[110];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 832)] = conv2d_nhwc_local[13];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 848)] = conv2d_nhwc_local[27];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 864)] = conv2d_nhwc_local[41];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 880)] = conv2d_nhwc_local[55];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29504)] = conv2d_nhwc_local[69];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29520)] = conv2d_nhwc_local[83];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29536)] = conv2d_nhwc_local[97];
  conv2d_nhwc[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) >> 4) * 7168)) + ((((int)blockIdx.x) & 7) * 896)) + (((int)threadIdx.x) & 15)) + 29552)] = conv2d_nhwc_local[111];
}


