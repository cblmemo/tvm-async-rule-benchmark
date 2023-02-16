
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
extern "C" __global__ void __launch_bounds__(56) main_kernel0(float* __restrict__ inputs, float* __restrict__ weight, float* __restrict__ conv2d_nhwc) {
  float conv2d_nhwc_local[7];
  __shared__ float PadInput_shared[5184];
  __shared__ float weight_shared[4608];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  for (int rc_0 = 0; rc_0 < 8; ++rc_0) {
    __syncthreads();
    PadInput_shared[(((int)threadIdx.x) * 4)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 1)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 2)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 3)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 224)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 225)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 226)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 227)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 448)] = ((((32 <= ((int)threadIdx.x)) && (1 <= (((((int)threadIdx.x) >> 4) + 7) % 9))) && ((((((int)threadIdx.x) * 4) + 448) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 112) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 7) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 449)] = ((((32 <= ((int)threadIdx.x)) && (1 <= (((((int)threadIdx.x) >> 4) + 7) % 9))) && ((((((int)threadIdx.x) * 4) + 449) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 112) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 7) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4095)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 450)] = ((((32 <= ((int)threadIdx.x)) && (1 <= (((((int)threadIdx.x) >> 4) + 7) % 9))) && ((((((int)threadIdx.x) * 4) + 450) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 112) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 7) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4094)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 451)] = ((((32 <= ((int)threadIdx.x)) && (1 <= (((((int)threadIdx.x) >> 4) + 7) % 9))) && ((((((int)threadIdx.x) * 4) + 451) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 112) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 7) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4093)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 672)] = inputs[(((((((((int)threadIdx.x) + 168) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 3) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 673)] = inputs[(((((((((int)threadIdx.x) + 168) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 3) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 674)] = inputs[(((((((((int)threadIdx.x) + 168) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 3) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 675)] = inputs[(((((((((int)threadIdx.x) + 168) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 3) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 896)] = ((((int)threadIdx.x) < 48) ? inputs[(((((((((int)threadIdx.x) + 224) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 1536)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 897)] = ((((int)threadIdx.x) < 48) ? inputs[(((((((((int)threadIdx.x) + 224) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 1535)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 898)] = ((((int)threadIdx.x) < 48) ? inputs[(((((((((int)threadIdx.x) + 224) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 1534)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 899)] = ((((int)threadIdx.x) < 48) ? inputs[(((((((((int)threadIdx.x) + 224) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 1533)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1120)] = (((2 <= (((((int)threadIdx.x) >> 3) + 17) % 18)) && ((((((int)threadIdx.x) * 4) + 544) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 280) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 17) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1121)] = (((2 <= (((((int)threadIdx.x) >> 3) + 17) % 18)) && ((((((int)threadIdx.x) * 4) + 545) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 280) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 17) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1122)] = (((2 <= (((((int)threadIdx.x) >> 3) + 17) % 18)) && ((((((int)threadIdx.x) * 4) + 546) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 280) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 17) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1123)] = (((2 <= (((((int)threadIdx.x) >> 3) + 17) % 18)) && ((((((int)threadIdx.x) * 4) + 547) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 280) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 17) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1344)] = inputs[(((((((((int)threadIdx.x) + 336) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 2560)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 1345)] = inputs[(((((((((int)threadIdx.x) + 336) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 2559)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 1346)] = inputs[(((((((((int)threadIdx.x) + 336) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 2558)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 1347)] = inputs[(((((((((int)threadIdx.x) + 336) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 2557)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 1568)] = (((2 <= (((((int)threadIdx.x) >> 3) + 13) % 18)) && ((((((int)threadIdx.x) * 4) + 416) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 392) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 13) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1569)] = (((2 <= (((((int)threadIdx.x) >> 3) + 13) % 18)) && ((((((int)threadIdx.x) * 4) + 417) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 392) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 13) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1570)] = (((2 <= (((((int)threadIdx.x) >> 3) + 13) % 18)) && ((((((int)threadIdx.x) * 4) + 418) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 392) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 13) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1571)] = (((2 <= (((((int)threadIdx.x) >> 3) + 13) % 18)) && ((((((int)threadIdx.x) * 4) + 419) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 392) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 13) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 1792)] = inputs[(((((((((int)threadIdx.x) + 448) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 3584)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 1793)] = inputs[(((((((((int)threadIdx.x) + 448) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 3583)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 1794)] = inputs[(((((((((int)threadIdx.x) + 448) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 3582)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 1795)] = inputs[(((((((((int)threadIdx.x) + 448) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 3581)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2016)] = inputs[(((((((((int)threadIdx.x) + 504) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 9) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2017)] = inputs[(((((((((int)threadIdx.x) + 504) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 9) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2018)] = inputs[(((((((((int)threadIdx.x) + 504) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 9) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2019)] = inputs[(((((((((int)threadIdx.x) + 504) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 9) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2240)] = (((1 <= (((((int)threadIdx.x) >> 4) + 8) % 9)) && ((((((int)threadIdx.x) * 4) + 512) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 560) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 8) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2241)] = (((1 <= (((((int)threadIdx.x) >> 4) + 8) % 9)) && ((((((int)threadIdx.x) * 4) + 513) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 560) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 8) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4095)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2242)] = (((1 <= (((((int)threadIdx.x) >> 4) + 8) % 9)) && ((((((int)threadIdx.x) * 4) + 514) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 560) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 8) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4094)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2243)] = (((1 <= (((((int)threadIdx.x) >> 4) + 8) % 9)) && ((((((int)threadIdx.x) * 4) + 515) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 560) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 8) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4093)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2464)] = inputs[(((((((((int)threadIdx.x) + 616) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 5) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2465)] = inputs[(((((((((int)threadIdx.x) + 616) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 5) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2466)] = inputs[(((((((((int)threadIdx.x) + 616) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 5) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2467)] = inputs[(((((((((int)threadIdx.x) + 616) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 5) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2688)] = (((1 <= (((((int)threadIdx.x) >> 4) + 6) % 9)) && ((((((int)threadIdx.x) * 4) + 384) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 672) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 6) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2689)] = (((1 <= (((((int)threadIdx.x) >> 4) + 6) % 9)) && ((((((int)threadIdx.x) * 4) + 385) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 672) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 6) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4095)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2690)] = (((1 <= (((((int)threadIdx.x) >> 4) + 6) % 9)) && ((((((int)threadIdx.x) * 4) + 386) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 672) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 6) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4094)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2691)] = (((1 <= (((((int)threadIdx.x) >> 4) + 6) % 9)) && ((((((int)threadIdx.x) * 4) + 387) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 672) / 144) * 3584) + ((((((int)threadIdx.x) >> 4) + 6) % 9) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 4093)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2912)] = ((8 <= ((int)threadIdx.x)) ? inputs[(((((((((int)threadIdx.x) + 728) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 1) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2913)] = ((8 <= ((int)threadIdx.x)) ? inputs[(((((((((int)threadIdx.x) + 728) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 1) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2914)] = ((8 <= ((int)threadIdx.x)) ? inputs[(((((((((int)threadIdx.x) + 728) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 1) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 2915)] = ((8 <= ((int)threadIdx.x)) ? inputs[(((((((((int)threadIdx.x) + 728) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 1) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 3136)] = inputs[(((((((((int)threadIdx.x) + 784) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 2048)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3137)] = inputs[(((((((((int)threadIdx.x) + 784) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 2047)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3138)] = inputs[(((((((((int)threadIdx.x) + 784) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 2046)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3139)] = inputs[(((((((((int)threadIdx.x) + 784) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 2045)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3360)] = (((2 <= (((((int)threadIdx.x) >> 3) + 15) % 18)) && ((((((int)threadIdx.x) * 4) + 480) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 840) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 15) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 3361)] = (((2 <= (((((int)threadIdx.x) >> 3) + 15) % 18)) && ((((((int)threadIdx.x) * 4) + 481) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 840) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 15) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 3362)] = (((2 <= (((((int)threadIdx.x) >> 3) + 15) % 18)) && ((((((int)threadIdx.x) * 4) + 482) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 840) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 15) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 3363)] = (((2 <= (((((int)threadIdx.x) >> 3) + 15) % 18)) && ((((((int)threadIdx.x) * 4) + 483) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 840) / 144) * 3584) + (((((((int)threadIdx.x) >> 3) + 15) % 18) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 3584)] = inputs[(((((((((int)threadIdx.x) + 896) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 3072)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3585)] = inputs[(((((((((int)threadIdx.x) + 896) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 3071)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3586)] = inputs[(((((((((int)threadIdx.x) + 896) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 3070)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3587)] = inputs[(((((((((int)threadIdx.x) + 896) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 3069)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3808)] = ((((int)threadIdx.x) < 40) ? inputs[(((((((((int)threadIdx.x) + 952) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 11) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 3809)] = ((((int)threadIdx.x) < 40) ? inputs[(((((((((int)threadIdx.x) + 952) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 11) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 3810)] = ((((int)threadIdx.x) < 40) ? inputs[(((((((((int)threadIdx.x) + 952) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 11) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 3811)] = ((((int)threadIdx.x) < 40) ? inputs[(((((((((int)threadIdx.x) + 952) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 11) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4032)] = ((16 <= ((int)threadIdx.x)) ? inputs[(((((((int)threadIdx.x) >> 4) * 512) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 20992)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4033)] = ((16 <= ((int)threadIdx.x)) ? inputs[(((((((int)threadIdx.x) >> 4) * 512) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 20993)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4034)] = ((16 <= ((int)threadIdx.x)) ? inputs[(((((((int)threadIdx.x) >> 4) * 512) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 20994)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4035)] = ((16 <= ((int)threadIdx.x)) ? inputs[(((((((int)threadIdx.x) >> 4) * 512) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 20995)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4256)] = inputs[(((((((((int)threadIdx.x) + 1064) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 7) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 32) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 4257)] = inputs[(((((((((int)threadIdx.x) + 1064) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 7) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 33) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 4258)] = inputs[(((((((((int)threadIdx.x) + 1064) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 7) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 34) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 4259)] = inputs[(((((((((int)threadIdx.x) + 1064) / 144) * 3584) + ((((((int)threadIdx.x) >> 3) + 7) >> 1) * 512)) + (rc_0 * 64)) + (((((int)threadIdx.x) * 4) + 35) & 63)) - 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 4480)] = ((((((int)threadIdx.x) < 32) && (1 <= (((((int)threadIdx.x) >> 4) + 7) % 9))) && ((((((int)threadIdx.x) * 4) + 448) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 1120) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 512)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4481)] = ((((((int)threadIdx.x) < 32) && (1 <= (((((int)threadIdx.x) >> 4) + 7) % 9))) && ((((((int)threadIdx.x) * 4) + 449) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 1120) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 511)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4482)] = ((((((int)threadIdx.x) < 32) && (1 <= (((((int)threadIdx.x) >> 4) + 7) % 9))) && ((((((int)threadIdx.x) * 4) + 450) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 1120) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 510)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4483)] = ((((((int)threadIdx.x) < 32) && (1 <= (((((int)threadIdx.x) >> 4) + 7) % 9))) && ((((((int)threadIdx.x) * 4) + 451) % 576) < 512)) ? inputs[(((((((((int)threadIdx.x) + 1120) / 144) * 3584) + ((((int)threadIdx.x) >> 4) * 512)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) - 509)] : 0.000000e+00f);
    PadInput_shared[((((int)threadIdx.x) * 4) + 4704)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 4705)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 4706)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 4707)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 4928)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 4929)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 4930)] = 0.000000e+00f;
    PadInput_shared[((((int)threadIdx.x) * 4) + 4931)] = 0.000000e+00f;
    if (((int)threadIdx.x) < 8) {
      PadInput_shared[((((int)threadIdx.x) * 4) + 5152)] = 0.000000e+00f;
    }
    if (((int)threadIdx.x) < 8) {
      PadInput_shared[((((int)threadIdx.x) * 4) + 5153)] = 0.000000e+00f;
    }
    if (((int)threadIdx.x) < 8) {
      PadInput_shared[((((int)threadIdx.x) * 4) + 5154)] = 0.000000e+00f;
    }
    if (((int)threadIdx.x) < 8) {
      PadInput_shared[((((int)threadIdx.x) * 4) + 5155)] = 0.000000e+00f;
    }
    weight_shared[(((int)threadIdx.x) * 2)] = weight[((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2))];
    weight_shared[((((int)threadIdx.x) * 2) + 1)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1)];
    weight_shared[((((int)threadIdx.x) * 2) + 112)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 7168)];
    weight_shared[((((int)threadIdx.x) * 2) + 113)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 7169)];
    weight_shared[((((int)threadIdx.x) * 2) + 224)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 14336)];
    weight_shared[((((int)threadIdx.x) * 2) + 225)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 14337)];
    weight_shared[((((int)threadIdx.x) * 2) + 336)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 21504)];
    weight_shared[((((int)threadIdx.x) * 2) + 337)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 21505)];
    weight_shared[((((int)threadIdx.x) * 2) + 448)] = weight[(((((((((int)threadIdx.x) + 224) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 56) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2))];
    weight_shared[((((int)threadIdx.x) * 2) + 449)] = weight[((((((((((int)threadIdx.x) + 224) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 56) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1)];
    weight_shared[((((int)threadIdx.x) * 2) + 560)] = weight[((((((((((int)threadIdx.x) + 280) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 3072)];
    weight_shared[((((int)threadIdx.x) * 2) + 561)] = weight[((((((((((int)threadIdx.x) + 280) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 3073)];
    weight_shared[((((int)threadIdx.x) * 2) + 672)] = weight[((((((((((int)threadIdx.x) + 336) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 10240)];
    weight_shared[((((int)threadIdx.x) * 2) + 673)] = weight[((((((((((int)threadIdx.x) + 336) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 10241)];
    weight_shared[((((int)threadIdx.x) * 2) + 784)] = weight[((((((((((int)threadIdx.x) + 392) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 17408)];
    weight_shared[((((int)threadIdx.x) * 2) + 785)] = weight[((((((((((int)threadIdx.x) + 392) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 17409)];
    weight_shared[((((int)threadIdx.x) * 2) + 896)] = weight[((((((((((int)threadIdx.x) + 448) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 24576)];
    weight_shared[((((int)threadIdx.x) * 2) + 897)] = weight[((((((((((int)threadIdx.x) + 448) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 24577)];
    weight_shared[((((int)threadIdx.x) * 2) + 1008)] = weight[(((((((((int)threadIdx.x) + 504) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 62) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2))];
    weight_shared[((((int)threadIdx.x) * 2) + 1009)] = weight[((((((((((int)threadIdx.x) + 504) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 62) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1)];
    weight_shared[((((int)threadIdx.x) * 2) + 1120)] = weight[((((((((((int)threadIdx.x) + 560) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 6144)];
    weight_shared[((((int)threadIdx.x) * 2) + 1121)] = weight[((((((((((int)threadIdx.x) + 560) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 6145)];
    weight_shared[((((int)threadIdx.x) * 2) + 1232)] = weight[((((((((((int)threadIdx.x) + 616) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 13312)];
    weight_shared[((((int)threadIdx.x) * 2) + 1233)] = weight[((((((((((int)threadIdx.x) + 616) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 13313)];
    weight_shared[((((int)threadIdx.x) * 2) + 1344)] = weight[((((((((((int)threadIdx.x) + 672) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 20480)];
    weight_shared[((((int)threadIdx.x) * 2) + 1345)] = weight[((((((((((int)threadIdx.x) + 672) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 20481)];
    weight_shared[((((int)threadIdx.x) * 2) + 1456)] = weight[(((((((((int)threadIdx.x) + 728) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 54) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2))];
    weight_shared[((((int)threadIdx.x) * 2) + 1457)] = weight[((((((((((int)threadIdx.x) + 728) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 54) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1)];
    weight_shared[((((int)threadIdx.x) * 2) + 1568)] = weight[((((((((((int)threadIdx.x) + 784) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 2048)];
    weight_shared[((((int)threadIdx.x) * 2) + 1569)] = weight[((((((((((int)threadIdx.x) + 784) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 2049)];
    weight_shared[((((int)threadIdx.x) * 2) + 1680)] = weight[((((((((((int)threadIdx.x) + 840) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 9216)];
    weight_shared[((((int)threadIdx.x) * 2) + 1681)] = weight[((((((((((int)threadIdx.x) + 840) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 9217)];
    weight_shared[((((int)threadIdx.x) * 2) + 1792)] = weight[((((((((((int)threadIdx.x) + 896) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 16384)];
    weight_shared[((((int)threadIdx.x) * 2) + 1793)] = weight[((((((((((int)threadIdx.x) + 896) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 16385)];
    weight_shared[((((int)threadIdx.x) * 2) + 1904)] = weight[((((((((((int)threadIdx.x) + 952) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 23552)];
    weight_shared[((((int)threadIdx.x) * 2) + 1905)] = weight[((((((((((int)threadIdx.x) + 952) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 23553)];
    weight_shared[((((int)threadIdx.x) * 2) + 2016)] = weight[(((((((((int)threadIdx.x) + 1008) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 60) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2))];
    weight_shared[((((int)threadIdx.x) * 2) + 2017)] = weight[((((((((((int)threadIdx.x) + 1008) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 60) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1)];
    weight_shared[((((int)threadIdx.x) * 2) + 2128)] = weight[((((((((((int)threadIdx.x) + 1064) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 5120)];
    weight_shared[((((int)threadIdx.x) * 2) + 2129)] = weight[((((((((((int)threadIdx.x) + 1064) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 5121)];
    weight_shared[((((int)threadIdx.x) * 2) + 2240)] = weight[((((((((((int)threadIdx.x) + 1120) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 12288)];
    weight_shared[((((int)threadIdx.x) * 2) + 2241)] = weight[((((((((((int)threadIdx.x) + 1120) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 12289)];
    weight_shared[((((int)threadIdx.x) * 2) + 2352)] = weight[((((((((((int)threadIdx.x) + 1176) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 19456)];
    weight_shared[((((int)threadIdx.x) * 2) + 2353)] = weight[((((((((((int)threadIdx.x) + 1176) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 19457)];
    weight_shared[((((int)threadIdx.x) * 2) + 2464)] = weight[(((((((((int)threadIdx.x) + 1232) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 52) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2))];
    weight_shared[((((int)threadIdx.x) * 2) + 2465)] = weight[((((((((((int)threadIdx.x) + 1232) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 52) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1)];
    weight_shared[((((int)threadIdx.x) * 2) + 2576)] = weight[((((((((((int)threadIdx.x) + 1288) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1024)];
    weight_shared[((((int)threadIdx.x) * 2) + 2577)] = weight[((((((((((int)threadIdx.x) + 1288) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1025)];
    weight_shared[((((int)threadIdx.x) * 2) + 2688)] = weight[((((((((((int)threadIdx.x) + 1344) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 8192)];
    weight_shared[((((int)threadIdx.x) * 2) + 2689)] = weight[((((((((((int)threadIdx.x) + 1344) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 8193)];
    weight_shared[((((int)threadIdx.x) * 2) + 2800)] = weight[((((((((((int)threadIdx.x) + 1400) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 15360)];
    weight_shared[((((int)threadIdx.x) * 2) + 2801)] = weight[((((((((((int)threadIdx.x) + 1400) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 15361)];
    weight_shared[((((int)threadIdx.x) * 2) + 2912)] = weight[((((((((((int)threadIdx.x) + 1456) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 22528)];
    weight_shared[((((int)threadIdx.x) * 2) + 2913)] = weight[((((((((((int)threadIdx.x) + 1456) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 22529)];
    weight_shared[((((int)threadIdx.x) * 2) + 3024)] = weight[(((((((((int)threadIdx.x) + 1512) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 58) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2))];
    weight_shared[((((int)threadIdx.x) * 2) + 3025)] = weight[((((((((((int)threadIdx.x) + 1512) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 58) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1)];
    weight_shared[((((int)threadIdx.x) * 2) + 3136)] = weight[((((((((((int)threadIdx.x) + 1568) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 4096)];
    weight_shared[((((int)threadIdx.x) * 2) + 3137)] = weight[((((((((((int)threadIdx.x) + 1568) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 4097)];
    weight_shared[((((int)threadIdx.x) * 2) + 3248)] = weight[((((((((((int)threadIdx.x) + 1624) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 11264)];
    weight_shared[((((int)threadIdx.x) * 2) + 3249)] = weight[((((((((((int)threadIdx.x) + 1624) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 11265)];
    weight_shared[((((int)threadIdx.x) * 2) + 3360)] = weight[((((((((((int)threadIdx.x) + 1680) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 18432)];
    weight_shared[((((int)threadIdx.x) * 2) + 3361)] = weight[((((((((((int)threadIdx.x) + 1680) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 18433)];
    weight_shared[((((int)threadIdx.x) * 2) + 3472)] = weight[((((((((((int)threadIdx.x) + 1736) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 25600)];
    weight_shared[((((int)threadIdx.x) * 2) + 3473)] = weight[((((((((((int)threadIdx.x) + 1736) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 25601)];
    weight_shared[((((int)threadIdx.x) * 2) + 3584)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1835008)];
    weight_shared[((((int)threadIdx.x) * 2) + 3585)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1835009)];
    weight_shared[((((int)threadIdx.x) * 2) + 3696)] = weight[((((((((((int)threadIdx.x) + 1848) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 7168)];
    weight_shared[((((int)threadIdx.x) * 2) + 3697)] = weight[((((((((((int)threadIdx.x) + 1848) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 7169)];
    weight_shared[((((int)threadIdx.x) * 2) + 3808)] = weight[((((((((((int)threadIdx.x) + 1904) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 14336)];
    weight_shared[((((int)threadIdx.x) * 2) + 3809)] = weight[((((((((((int)threadIdx.x) + 1904) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 14337)];
    weight_shared[((((int)threadIdx.x) * 2) + 3920)] = weight[((((((((((int)threadIdx.x) + 1960) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 21504)];
    weight_shared[((((int)threadIdx.x) * 2) + 3921)] = weight[((((((((((int)threadIdx.x) + 1960) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 21505)];
    weight_shared[((((int)threadIdx.x) * 2) + 4032)] = weight[(((((((((int)threadIdx.x) + 2016) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 56) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2))];
    weight_shared[((((int)threadIdx.x) * 2) + 4033)] = weight[((((((((((int)threadIdx.x) + 2016) >> 8) * 262144) + (rc_0 * 32768)) + ((((((int)threadIdx.x) >> 2) + 56) & 63) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1)];
    weight_shared[((((int)threadIdx.x) * 2) + 4144)] = weight[((((((((((int)threadIdx.x) + 2072) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 3072)];
    weight_shared[((((int)threadIdx.x) * 2) + 4145)] = weight[((((((((((int)threadIdx.x) + 2072) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 3073)];
    weight_shared[((((int)threadIdx.x) * 2) + 4256)] = weight[((((((((((int)threadIdx.x) + 2128) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 10240)];
    weight_shared[((((int)threadIdx.x) * 2) + 4257)] = weight[((((((((((int)threadIdx.x) + 2128) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 10241)];
    weight_shared[((((int)threadIdx.x) * 2) + 4368)] = weight[((((((((((int)threadIdx.x) + 2184) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 17408)];
    weight_shared[((((int)threadIdx.x) * 2) + 4369)] = weight[((((((((((int)threadIdx.x) + 2184) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 17409)];
    weight_shared[((((int)threadIdx.x) * 2) + 4480)] = weight[((((((((((int)threadIdx.x) + 2240) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 24576)];
    weight_shared[((((int)threadIdx.x) * 2) + 4481)] = weight[((((((((((int)threadIdx.x) + 2240) >> 8) * 262144) + (rc_0 * 32768)) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 24577)];
    if (((int)threadIdx.x) < 8) {
      weight_shared[((((int)threadIdx.x) * 2) + 4592)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 2128896)];
    }
    if (((int)threadIdx.x) < 8) {
      weight_shared[((((int)threadIdx.x) * 2) + 4593)] = weight[(((((rc_0 * 32768) + ((((int)threadIdx.x) >> 2) * 512)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 2128897)];
    }
    __syncthreads();
    for (int rw_1 = 0; rw_1 < 3; ++rw_1) {
      for (int rc_1 = 0; rc_1 < 32; ++rc_1) {
        conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2))] * weight_shared[(((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7))]));
        conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 576)] * weight_shared[(((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7))]));
        conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1152)] * weight_shared[(((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7))]));
        conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1728)] * weight_shared[(((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7))]));
        conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2304)] * weight_shared[(((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7))]));
        conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2880)] * weight_shared[(((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7))]));
        conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 3456)] * weight_shared[(((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7))]));
        conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 8)]));
        conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 577)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 8)]));
        conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1153)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 8)]));
        conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1729)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 8)]));
        conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2305)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 8)]));
        conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2881)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 8)]));
        conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 3457)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 8)]));
        conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 576)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1536)]));
        conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1152)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1536)]));
        conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1728)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1536)]));
        conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2304)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1536)]));
        conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2880)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1536)]));
        conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 3456)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1536)]));
        conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 4032)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1536)]));
        conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 577)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1544)]));
        conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1153)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1544)]));
        conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1729)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1544)]));
        conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2305)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1544)]));
        conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2881)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1544)]));
        conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 3457)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1544)]));
        conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 4033)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 1544)]));
        conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1152)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3072)]));
        conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1728)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3072)]));
        conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2304)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3072)]));
        conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2880)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3072)]));
        conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 3456)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3072)]));
        conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 4032)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3072)]));
        conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 4608)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3072)]));
        conv2d_nhwc_local[0] = (conv2d_nhwc_local[0] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1153)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3080)]));
        conv2d_nhwc_local[1] = (conv2d_nhwc_local[1] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 1729)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3080)]));
        conv2d_nhwc_local[2] = (conv2d_nhwc_local[2] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2305)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3080)]));
        conv2d_nhwc_local[3] = (conv2d_nhwc_local[3] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 2881)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3080)]));
        conv2d_nhwc_local[4] = (conv2d_nhwc_local[4] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 3457)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3080)]));
        conv2d_nhwc_local[5] = (conv2d_nhwc_local[5] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 4033)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3080)]));
        conv2d_nhwc_local[6] = (conv2d_nhwc_local[6] + (PadInput_shared[(((((((int)threadIdx.x) >> 3) * 64) + (rw_1 * 64)) + (rc_1 * 2)) + 4609)] * weight_shared[((((rw_1 * 512) + (rc_1 * 16)) + (((int)threadIdx.x) & 7)) + 3080)]));
      }
    }
  }
  conv2d_nhwc[((((((int)threadIdx.x) >> 3) * 512) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 3) * 512) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7)) + 3584)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 3) * 512) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7)) + 7168)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 3) * 512) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7)) + 10752)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 3) * 512) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7)) + 14336)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 3) * 512) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7)) + 17920)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((int)threadIdx.x) >> 3) * 512) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 7)) + 21504)] = conv2d_nhwc_local[6];
}


