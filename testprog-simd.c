/***************************************************************************/
/* The 2nd ARC/CPSY/RECONF High-Performance Computer System Design Contest */
/* 310_sort Version 2014-06-06                                             */
/***************************************************************************/

//#define USE_QSORT
#define USE_RADIXSORT

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "../lib/simd-emu.c"

#define SIZE (64*1024)

volatile int init_data[SIZE];
volatile int *init_n = init_data + SIZE-1;

#define DATA_START 0x90000

int data[0x1000000];    /* max data size 16MB (4M words) */

/* temporary storages */
int BUF1[0x1000000];
int BUF2[0x1000000];

int *BUFtbl[] = { BUF1, BUF2, BUF1, BUF2 };
int curBUFptr = 0;

#ifdef USE_QSORT
/**********************************************************************/
void my_qsort(int data[], int left, int right)
{
    int temp = 0;
    int i = left + 1;
    int k = right;
    while (i < k) {
        while (data[i] < data[left] && i < right) i++;
        while (data[k] >= data[left] && k > left) k--;
        if (i < k) {
            temp = data[i];
            data[i] = data[k];
            data[k] = temp;
        }
    }
    if (right-left != 1 || data[left] > data[k]) {
        temp = data[left];
        data[left] = data[k];
        data[k] = temp;
    }
    if (left < k-1)  my_qsort(data, left, k-1);
    if (k+1 < right) my_qsort(data, k+1, right);
}
#endif

#ifdef  USE_RADIXSORT
/**********************************************************************/
//#define BUCKETBIT       8    /* outer-loop is iteration of 4 */
#define BUCKETBIT       12   /* outer-loop is iteration of 3 */
//#define BUCKETBIT       16   /* outer-loop is iteration of 2 */
#define NBUCKETS        (1 << BUCKETBIT)
#define BUCKETMASK      (NBUCKETS - 1)

#if BUCKETBIT < 8
# error "BUCKETBIT should be greater than 8"
#endif

static int count[NBUCKETS];  /* counter table */

void radix_sort(int data[], int size)
{
    int *buff1;
    int *buff2;
    int i;
#if 0
    /* initialize (for debug) */
    for (i = 0; i < size; i++)
        BUF[i] = 0;
    for (i = 0; i < NBUCKETS; i++)
        count[i] = 0;
#endif

#if 1
    simd128 zero = {0, 0, 0, 0};

    buff1 = data;
    buff2 = BUFtbl[curBUFptr];

    for (i = 0; i < ((32+BUCKETBIT-1)/BUCKETBIT); i++) {
        int shift = i*BUCKETBIT;
        int x;

        for (x = 0; x < NBUCKETS; x += 16) {
            simd128_store(zero, &count[x]);
            simd128_store(zero, &count[x+4]);
            simd128_store(zero, &count[x+8]);
            simd128_store(zero, &count[x+12]);
        }

        for (x = 0; x < size; x += 16) {
            simd128 v1, v2, v3, v4;

            simd128_load(v1, &buff1[x]);
            simd128_load(v2, &buff1[x+4]);
            simd128_load(v3, &buff1[x+8]);
            simd128_load(v4, &buff1[x+12]);

            simd128_shift_right_arithmetic(v1, v1, shift);
            simd128_shift_right_arithmetic(v2, v2, shift);
            simd128_shift_right_arithmetic(v3, v3, shift);
            simd128_shift_right_arithmetic(v4, v4, shift);

            /* SIMD logical-AND */
            v1[3] &= BUCKETMASK;
            v1[2] &= BUCKETMASK;
            v1[1] &= BUCKETMASK;
            v1[0] &= BUCKETMASK;

            /* SIMD logical-AND */
            v2[3] &= BUCKETMASK;
            v2[2] &= BUCKETMASK;
            v2[1] &= BUCKETMASK;
            v2[0] &= BUCKETMASK;

            /* SIMD logical-AND */
            v3[3] &= BUCKETMASK;
            v3[2] &= BUCKETMASK;
            v3[1] &= BUCKETMASK;
            v3[0] &= BUCKETMASK;

            /* SIMD logical-AND */
            v4[3] &= BUCKETMASK;
            v4[2] &= BUCKETMASK;
            v4[1] &= BUCKETMASK;
            v4[0] &= BUCKETMASK;

            count[v1[0]]++;
            count[v1[1]]++;
            count[v1[2]]++;
            count[v1[3]]++;

            count[v2[0]]++;
            count[v2[1]]++;
            count[v2[2]]++;
            count[v2[3]]++;

            count[v3[0]]++;
            count[v3[1]]++;
            count[v3[2]]++;
            count[v3[3]]++;

            count[v4[0]]++;
            count[v4[1]]++;
            count[v4[2]]++;
            count[v4[3]]++;
        }

        /* this loop cannot be parallelized with SIMD */
        for (x = 1; x < NBUCKETS; x++)
            count[x] += count[x-1];

//        for (x = size-1; x >= 0; x--) {
        for (x = size; x > 0; x -= 16) {
            simd128 v1, v2, v3, v4;

            simd128_load(v1, &buff1[x-16]);
            simd128_load(v2, &buff1[x-16+4]);
            simd128_load(v3, &buff1[x-16+8]);
            simd128_load(v4, &buff1[x-16+12]);

            simd128_shift_right_arithmetic(v1, v1, shift);
            simd128_shift_right_arithmetic(v2, v2, shift);
            simd128_shift_right_arithmetic(v3, v3, shift);
            simd128_shift_right_arithmetic(v4, v4, shift);

            /* SIMD logical-AND */
            v1[3] &= BUCKETMASK;
            v1[2] &= BUCKETMASK;
            v1[1] &= BUCKETMASK;
            v1[0] &= BUCKETMASK;

            /* SIMD logical-AND */
            v2[3] &= BUCKETMASK;
            v2[2] &= BUCKETMASK;
            v2[1] &= BUCKETMASK;
            v2[0] &= BUCKETMASK;

            /* SIMD logical-AND */
            v3[3] &= BUCKETMASK;
            v3[2] &= BUCKETMASK;
            v3[1] &= BUCKETMASK;
            v3[0] &= BUCKETMASK;

            /* SIMD logical-AND */
            v4[3] &= BUCKETMASK;
            v4[2] &= BUCKETMASK;
            v4[1] &= BUCKETMASK;
            v4[0] &= BUCKETMASK;

            count[v4[3]]--;
            buff2[count[v4[3]]] = buff1[x-1];
            count[v4[2]]--;
            buff2[count[v4[2]]] = buff1[x-2];
            count[v4[1]]--;
            buff2[count[v4[1]]] = buff1[x-3];
            count[v4[0]]--;
            buff2[count[v4[0]]] = buff1[x-4];

            count[v3[3]]--;
            buff2[count[v3[3]]] = buff1[x-5];
            count[v3[2]]--;
            buff2[count[v3[2]]] = buff1[x-6];
            count[v3[1]]--;
            buff2[count[v3[1]]] = buff1[x-7];
            count[v3[0]]--;
            buff2[count[v3[0]]] = buff1[x-8];

            count[v2[3]]--;
            buff2[count[v2[3]]] = buff1[x-9];
            count[v2[2]]--;
            buff2[count[v2[2]]] = buff1[x-10];
            count[v2[1]]--;
            buff2[count[v2[1]]] = buff1[x-11];
            count[v2[0]]--;
            buff2[count[v2[0]]] = buff1[x-12];

            count[v1[3]]--;
            buff2[count[v1[3]]] = buff1[x-13];
            count[v1[2]]--;
            buff2[count[v1[2]]] = buff1[x-14];
            count[v1[1]]--;
            buff2[count[v1[1]]] = buff1[x-15];
            count[v1[0]]--;
            buff2[count[v1[0]]] = buff1[x-16];
        }

        /* switch buffer */
        if (i == 0) {
            buff1 = buff2;
            buff2 = BUFtbl[++curBUFptr];
        }
        else if (i == ((32+BUCKETBIT-1)/BUCKETBIT)-2) {
            buff1 = buff2;
            buff2 = data;
        }
        else {
            buff1 = buff2;
            buff2 = BUFtbl[++curBUFptr];
        }

    }
#else

    buff1 = data;
    buff2 = BUFtbl[curBUFptr];

    for (i = 0; i < ((32+BUCKETBIT-1)/BUCKETBIT); i++) {
        int shift = i*BUCKETBIT;
        int x;

        for (x = 0; x < NBUCKETS; x++)
            count[x] = 0;

        for (x = 0; x < size; x++)
            count[(buff1[x] >> shift) & BUCKETMASK]++;

        for (x = 1; x < NBUCKETS; x++)
            count[x] += count[x-1];

        for (x = size-1; x >= 0; x--) {
            int y;
            y = (buff1[x] >> shift) & BUCKETMASK;
            count[y]--;
            buff2[count[y]] = buff1[x];
        }

        /* switch buffer */
        if (i == 0) {
            buff1 = buff2;
            buff2 = BUFtbl[++curBUFptr];
        }
        else if (i == ((32+BUCKETBIT-1)/BUCKETBIT)-2) {
            buff1 = buff2;
            buff2 = data;
        }
        else {
            buff1 = buff2;
            buff2 = BUFtbl[++curBUFptr];
        }

    }
#endif

}
#endif

void setup_data()
{
    FILE *fp;
    fp = fopen("310sort.dat", "rb");
    if (fp == NULL) {
        printf("fail to open file\n");
        exit(1);
    }
    
    fread((void *)init_data, sizeof(unsigned int), SIZE, fp);

    fclose(fp);
}


/**********************************************************************/
int main(void) {
    setup_data();

    int i;
    int n = *init_n;

    printf("sort n=%d\n\n", n);
    
//    int *data = (int*) DATA_START;

    /* ----- Initialize ----- */ 
#if 1
    for (i = 0; i < n; i += 16) {
        simd128 v0, v1, v2, v3;
        simd128 c = { 0, 1, 2, 3 };
        int d = i % (64*1024);

        simd128_load(v0, (int*)&init_data[d]);
        simd128_load(v1, (int*)&init_data[d+4]);
        simd128_load(v2, (int*)&init_data[d+8]);
        simd128_load(v3, (int*)&init_data[d+12]);

        simd128_add_scalar(v0, v0, i);
        simd128_add_scalar(v1, v1, i+4);
        simd128_add_scalar(v2, v2, i+8);
        simd128_add_scalar(v3, v3, i+12);

        simd128_add(v0, v0, c);
        simd128_add(v1, v1, c);
        simd128_add(v2, v2, c);
        simd128_add(v3, v3, c);

        simd128_store(v0, &data[i]);
        simd128_store(v1, &data[i+4]);
        simd128_store(v2, &data[i+8]);
        simd128_store(v3, &data[i+12]);
    }
#else
    for (i=0; i<n; i++) data[i] = init_data[i % (64*1024)] + i;
#endif

#if 1
    simd128 v0, v1;
    for (i = 0; i < 100-8; i += 8) {
        simd128_load(v0, &data[i]);
        simd128_load(v1, &data[i+4]);
        printf("%d ", v0[0]);
        printf("%d ", v0[1]);
        printf("%d ", v0[2]);
        printf("%d ", v0[3]);
        printf("%d ", v1[0]);
        printf("%d ", v1[1]);
        printf("%d ", v1[2]);
        printf("%d ", v1[3]);
    }
    simd128_load(v0, &data[i]);
    printf("%d ", v0[0]);
    printf("%d ", v0[1]);
    printf("%d ", v0[2]);
    printf("%d ", v0[3]);
    printf("\n");
#else
    for (i = 0; i < 100; i++) {
        printf("%d ", data[i]);
    }
    printf("\n");
#endif
    
    /* -----  main kernel ----- */ 
#ifdef  USE_QSORT
    my_qsort(data, 0, n-1);
#endif
#ifdef  USE_RADIXSORT
    radix_sort(data, n);
#endif
    
    /* -----  show result ----- */
    printf("\n");
    for (i = 0; i < n; i=i+n/100) {
        printf("%d ", data[i]);
    }
    printf("\n");
    
    return 0;
}
/**********************************************************************/
