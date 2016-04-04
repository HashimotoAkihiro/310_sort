/***************************************************************************/
/* The 2nd ARC/CPSY/RECONF High-Performance Computer System Design Contest */
/* 310_sort Version 2014-06-06                                             */
/***************************************************************************/

//#define USE_QSORT
#define USE_RADIXSORT

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

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
    for (i=0; i<n; i++) data[i] = init_data[i % (64*1024)] + i;

    for (i = 0; i < 100; i++) {
        printf("%d ", data[i]);
    }
    printf("\n");
    
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
