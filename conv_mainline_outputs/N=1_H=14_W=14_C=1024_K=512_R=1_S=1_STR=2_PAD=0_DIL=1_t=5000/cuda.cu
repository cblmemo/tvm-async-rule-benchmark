
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
  __shared__ float PadInput_shared[832];
  __shared__ float weight_shared[4096];
  conv2d_nhwc_local[0] = 0.000000e+00f;
  conv2d_nhwc_local[1] = 0.000000e+00f;
  conv2d_nhwc_local[2] = 0.000000e+00f;
  conv2d_nhwc_local[3] = 0.000000e+00f;
  conv2d_nhwc_local[4] = 0.000000e+00f;
  conv2d_nhwc_local[5] = 0.000000e+00f;
  conv2d_nhwc_local[6] = 0.000000e+00f;
  for (int rc_0 = 0; rc_0 < 16; ++rc_0) {
    __syncthreads();
    PadInput_shared[(((int)threadIdx.x) * 4)] = inputs[(((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4))];
    PadInput_shared[((((int)threadIdx.x) * 4) + 1)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 1)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 2)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 2)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 3)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 3)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 256)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4096)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 257)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4097)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 258)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4098)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 259)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4099)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 512)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 8192)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 513)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 8193)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 514)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 8194)];
    PadInput_shared[((((int)threadIdx.x) * 4) + 515)] = inputs[((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 4) * 1024)) + (rc_0 * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 8195)];
    if (((int)threadIdx.x) < 16) {
      PadInput_shared[((((int)threadIdx.x) * 4) + 768)] = inputs[(((((((int)blockIdx.x) >> 3) * 28672) + (rc_0 * 64)) + (((int)threadIdx.x) * 4)) + 12288)];
    }
    if (((int)threadIdx.x) < 16) {
      PadInput_shared[((((int)threadIdx.x) * 4) + 769)] = inputs[(((((((int)blockIdx.x) >> 3) * 28672) + (rc_0 * 64)) + (((int)threadIdx.x) * 4)) + 12289)];
    }
    if (((int)threadIdx.x) < 16) {
      PadInput_shared[((((int)threadIdx.x) * 4) + 770)] = inputs[(((((((int)blockIdx.x) >> 3) * 28672) + (rc_0 * 64)) + (((int)threadIdx.x) * 4)) + 12290)];
    }
    if (((int)threadIdx.x) < 16) {
      PadInput_shared[((((int)threadIdx.x) * 4) + 771)] = inputs[(((((((int)blockIdx.x) >> 3) * 28672) + (rc_0 * 64)) + (((int)threadIdx.x) * 4)) + 12291)];
    }
    *(float4*)(weight_shared + (((int)threadIdx.x) * 4)) = *(float4*)(weight + ((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 256)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 2048));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 512)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 4096));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 768)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 6144));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 1024)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 8192));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 1280)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 10240));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 1536)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 12288));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 1792)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 14336));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 2048)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 16384));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 2304)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 18432));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 2560)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 20480));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 2816)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 22528));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 3072)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 24576));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 3328)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 26624));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 3584)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 28672));
    *(float4*)(weight_shared + ((((int)threadIdx.x) * 4) + 3840)) = *(float4*)(weight + (((((rc_0 * 32768) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + 30720));
    __syncthreads();
    for (int w_3 = 0; w_3 < 7; ++w_3) {
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[(w_3 * 128)] * weight_shared[((int)threadIdx.x)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 1)] * weight_shared[(((int)threadIdx.x) + 64)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 2)] * weight_shared[(((int)threadIdx.x) + 128)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 3)] * weight_shared[(((int)threadIdx.x) + 192)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 4)] * weight_shared[(((int)threadIdx.x) + 256)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 5)] * weight_shared[(((int)threadIdx.x) + 320)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 6)] * weight_shared[(((int)threadIdx.x) + 384)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 7)] * weight_shared[(((int)threadIdx.x) + 448)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 8)] * weight_shared[(((int)threadIdx.x) + 512)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 9)] * weight_shared[(((int)threadIdx.x) + 576)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 10)] * weight_shared[(((int)threadIdx.x) + 640)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 11)] * weight_shared[(((int)threadIdx.x) + 704)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 12)] * weight_shared[(((int)threadIdx.x) + 768)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 13)] * weight_shared[(((int)threadIdx.x) + 832)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 14)] * weight_shared[(((int)threadIdx.x) + 896)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 15)] * weight_shared[(((int)threadIdx.x) + 960)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 16)] * weight_shared[(((int)threadIdx.x) + 1024)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 17)] * weight_shared[(((int)threadIdx.x) + 1088)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 18)] * weight_shared[(((int)threadIdx.x) + 1152)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 19)] * weight_shared[(((int)threadIdx.x) + 1216)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 20)] * weight_shared[(((int)threadIdx.x) + 1280)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 21)] * weight_shared[(((int)threadIdx.x) + 1344)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 22)] * weight_shared[(((int)threadIdx.x) + 1408)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 23)] * weight_shared[(((int)threadIdx.x) + 1472)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 24)] * weight_shared[(((int)threadIdx.x) + 1536)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 25)] * weight_shared[(((int)threadIdx.x) + 1600)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 26)] * weight_shared[(((int)threadIdx.x) + 1664)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 27)] * weight_shared[(((int)threadIdx.x) + 1728)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 28)] * weight_shared[(((int)threadIdx.x) + 1792)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 29)] * weight_shared[(((int)threadIdx.x) + 1856)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 30)] * weight_shared[(((int)threadIdx.x) + 1920)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 31)] * weight_shared[(((int)threadIdx.x) + 1984)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 32)] * weight_shared[(((int)threadIdx.x) + 2048)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 33)] * weight_shared[(((int)threadIdx.x) + 2112)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 34)] * weight_shared[(((int)threadIdx.x) + 2176)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 35)] * weight_shared[(((int)threadIdx.x) + 2240)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 36)] * weight_shared[(((int)threadIdx.x) + 2304)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 37)] * weight_shared[(((int)threadIdx.x) + 2368)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 38)] * weight_shared[(((int)threadIdx.x) + 2432)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 39)] * weight_shared[(((int)threadIdx.x) + 2496)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 40)] * weight_shared[(((int)threadIdx.x) + 2560)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 41)] * weight_shared[(((int)threadIdx.x) + 2624)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 42)] * weight_shared[(((int)threadIdx.x) + 2688)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 43)] * weight_shared[(((int)threadIdx.x) + 2752)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 44)] * weight_shared[(((int)threadIdx.x) + 2816)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 45)] * weight_shared[(((int)threadIdx.x) + 2880)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 46)] * weight_shared[(((int)threadIdx.x) + 2944)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 47)] * weight_shared[(((int)threadIdx.x) + 3008)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 48)] * weight_shared[(((int)threadIdx.x) + 3072)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 49)] * weight_shared[(((int)threadIdx.x) + 3136)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 50)] * weight_shared[(((int)threadIdx.x) + 3200)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 51)] * weight_shared[(((int)threadIdx.x) + 3264)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 52)] * weight_shared[(((int)threadIdx.x) + 3328)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 53)] * weight_shared[(((int)threadIdx.x) + 3392)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 54)] * weight_shared[(((int)threadIdx.x) + 3456)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 55)] * weight_shared[(((int)threadIdx.x) + 3520)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 56)] * weight_shared[(((int)threadIdx.x) + 3584)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 57)] * weight_shared[(((int)threadIdx.x) + 3648)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 58)] * weight_shared[(((int)threadIdx.x) + 3712)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 59)] * weight_shared[(((int)threadIdx.x) + 3776)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 60)] * weight_shared[(((int)threadIdx.x) + 3840)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 61)] * weight_shared[(((int)threadIdx.x) + 3904)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 62)] * weight_shared[(((int)threadIdx.x) + 3968)]));
      conv2d_nhwc_local[w_3] = (conv2d_nhwc_local[w_3] + (PadInput_shared[((w_3 * 128) + 63)] * weight_shared[(((int)threadIdx.x) + 4032)]));
    }
  }
  conv2d_nhwc[((((((int)blockIdx.x) >> 3) * 3584) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x))] = conv2d_nhwc_local[0];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 3) * 3584) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 512)] = conv2d_nhwc_local[1];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 3) * 3584) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 1024)] = conv2d_nhwc_local[2];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 3) * 3584) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 1536)] = conv2d_nhwc_local[3];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 3) * 3584) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 2048)] = conv2d_nhwc_local[4];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 3) * 3584) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 2560)] = conv2d_nhwc_local[5];
  conv2d_nhwc[(((((((int)blockIdx.x) >> 3) * 3584) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 3072)] = conv2d_nhwc_local[6];
}


