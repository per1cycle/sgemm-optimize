#ifndef SGEMM_GLOBAL_COALESCING_CUH
#define SGEMM_GLOBAL_COALESCING_CUH

template <const int BLK>
__global__ void sgemm_global_memory_coalescing(int N, int M, int K, float *a, float *b, float *c, float alpha, float beta)
{
    int x = blockIdx.x * BLK + (threadIdx.x / BLK);
    int y = blockIdx.y * BLK + (threadIdx.x % BLK);

    if(x < N && y < K)
    {
        float tmp = 0.0f;
        for(int m = 0; m < M; m ++)
        {
            tmp += a[x * M + m] * b[m * K + y];
        }

        c[x * K + y] = alpha * tmp + beta;
    }
}

#endif