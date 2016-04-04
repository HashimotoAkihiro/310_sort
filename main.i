# 1 "./main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "./main.c"
# 24 "./main.c"
# 1 "././lib.c" 1
# 34 "././lib.c"
static char output_buffer[1024];
static int output_buffer_size = 0;

static void output_buffer_flush()
{
    int retcode;


    asm volatile(
        "li\t$4,1\n\t"
        "move\t$5,%1\n\t"
        "move\t$6,%2\n\t"
        "li\t$2,4004\n\t"
        "syscall\n\t"
        "move\t%0,$2\n\t"
        : "=r"(retcode) : "r"(output_buffer), "r"(output_buffer_size) : "$2", "$4", "$5", "$6" );

    output_buffer_size = 0;
}

static void output_buffer_put(int c)
{
    output_buffer[output_buffer_size++] = c & 0xff;
    if (output_buffer_size >= 1024)
        output_buffer_flush();
}



void mylib_wait()
{
  volatile int sum = 0;
  int i;
  for(i = 0; i < 40; i++) sum += i;
}

void mylib_display_dec(int val)
{




  int i;
  int c[(256)];
  int cnt = 0;
  int minus_flag = 0;

  if (val < 0) {

    minus_flag = 1;

    val *= -1;
  }

  if (val == 0) {
    c[0] = '0';
    cnt = 1;
  } else {
    while (val) {
      c[cnt] = (val%10 == 0) ? '0' :
               (val%10 == 1) ? '1' :
           (val%10 == 2) ? '2' :
           (val%10 == 3) ? '3' :
           (val%10 == 4) ? '4' :
           (val%10 == 5) ? '5' :
           (val%10 == 6) ? '6' :
           (val%10 == 7) ? '7' :
           (val%10 == 8) ? '8' : '9';
      cnt++;
      val /= 10;
      if ((val == 0) && (minus_flag)) {
        c[cnt] = '-';
        cnt++;
      }
    }
  }

  for (i = cnt - 1; i >= 0; i--) {

    output_buffer_put(c[i]);



  }
}

void mylib_display_hex(int val)
{




  int i;
  int c[(8)];
  int cnt = 0;

  while (cnt < (8)) {
    c[cnt] = ((val & 0x0000000f) == 0) ? '0' :
             ((val & 0x0000000f) == 1) ? '1' :
             ((val & 0x0000000f) == 2) ? '2' :
             ((val & 0x0000000f) == 3) ? '3' :
             ((val & 0x0000000f) == 4) ? '4' :
             ((val & 0x0000000f) == 5) ? '5' :
             ((val & 0x0000000f) == 6) ? '6' :
             ((val & 0x0000000f) == 7) ? '7' :
             ((val & 0x0000000f) == 8) ? '8' :
             ((val & 0x0000000f) == 9) ? '9' :
             ((val & 0x0000000f) == 10) ? 'a' :
             ((val & 0x0000000f) == 11) ? 'b' :
             ((val & 0x0000000f) == 12) ? 'c' :
             ((val & 0x0000000f) == 13) ? 'd' :
             ((val & 0x0000000f) == 14) ? 'e' : 'f';
    cnt++;
    val = val >> 4;
  }

  for (i = cnt - 1; i >= 0; i--) {

    output_buffer_put(c[i]);



  }
}


void mylib_display_char(int val)
{




  output_buffer_put(val);

}

void mylib_display_newline()
{
  mylib_display_char('\n');
  mylib_display_char('\r');
}

void mylib_flush()
{

  output_buffer_flush();







}

void mylib_finalize()
{
  mylib_display_newline();
  mylib_display_char('E');
  mylib_display_char('N');
  mylib_display_char('D');
  mylib_display_newline();

  mylib_flush();



  asm volatile(
      "li\t$4,0\n\t"
      "li\t$2,4001\n\t"
      "syscall\n\t"
      : : : "$2", "$4" );



}




int dummy_mem[0x160000] __attribute__ ((section(".dummy_space"))) __attribute((aligned(16)));
# 25 "./main.c" 2
# 36 "./main.c"
int *init_data __attribute((aligned(16)));;
int *init_n;







int niterations;





int buf[0x80000] __attribute__ ((section(".dummy_space2"))) __attribute((aligned(16)));
int *data = buf;
# 66 "./main.c"
int *BUFtbl[] = { &dummy_mem[0x0], &dummy_mem[0x80000], &dummy_mem[0x0], &dummy_mem[0x80000] };

int curBUFptr = 0;
# 115 "./main.c"
static int count[(1 << 13)] __attribute((aligned(16)));

void radix_sort(int data[], int size)
{
  int *buff1 __attribute((aligned(16)));
  int *buff2 __attribute((aligned(16)));
  int i;
# 714 "./main.c"
  asm volatile (".set    noat");

  asm volatile ("cache   0x0d,(%0)" ::"r"(&BUFtbl[0]));
  asm volatile ("sw      %0,(%1)" : : "r" (&dummy_mem[0x0]), "r" (&BUFtbl[0]));
  asm volatile ("sw      %0,(%1)" : : "r" (&dummy_mem[0x80000]), "r" (&BUFtbl[1]));
  asm volatile ("sw      %0,(%1)" : : "r" (&dummy_mem[0x0]), "r" (&BUFtbl[2]));
  asm volatile ("sw      %0,(%1)" : : "r" (&dummy_mem[0x80000]), "r" (&BUFtbl[3]));
  asm volatile (".set    at");


  buff1 = data;
  buff2 = BUFtbl[curBUFptr];





  static int masktab[4] __attribute((aligned(16)));

  asm volatile (".set    noat");

  asm volatile ("cache   0x0d,(%0)" ::"r"(&masktab[0]));
  asm volatile ("sw      %0,(%1)" : : "r" (((1 << 13) - 1)), "r" (&masktab[0]));
  asm volatile ("sw      %0,(%1)" : : "r" (((1 << 13) - 1)), "r" (&masktab[1]));
  asm volatile ("sw      %0,(%1)" : : "r" (((1 << 13) - 1)), "r" (&masktab[2]));
  asm volatile ("sw      %0,(%1)" : : "r" (((1 << 13) - 1)), "r" (&masktab[3]));
  asm volatile (".set    at");


  asm volatile ("lq      $31,(%0)\n\t" :: "r" (&masktab[0]));



  for (i = 0; i < niterations; i++) {
    int shift = i*13;
    int x;

    for (x = 0; x < (1 << 13); x += 16) {




      asm volatile(".set     noat\n\t"
     "cache    0x0c,(%0)\n\t"
     "cache    0x0c,16(%0)\n\t"
     "cache    0x0c,32(%0)\n\t"
     "cache    0x0c,48(%0)\n\t"
     ".set     at\n\t"::"r"(&count[x]));

      asm volatile (".set    noat\n\t"
      "sq      $0,(%0)\n\t"
      "sq      $0,16(%0)\n\t"
      "sq      $0,32(%0)\n\t"
      "sq      $0,48(%0)\n\t"
      ".set    at\n\t"
      : : "r" (&count[x]) );
    }

    for (x = 0; x < size; x += 16) {
      int v0, v1, v2, v3;

      asm volatile (".set    noat\n\t");






      asm volatile ("lq      $1,(%0)\n\t"
      "lq      $2,16(%0)\n\t"
      "lq      $3,32(%0)\n\t"
      "lq      $4,48(%0)\n\t"
      : : "r" (&buff1[x]) );

      asm volatile ("psravw  $1,$1,%0\n\t"
      "psravw  $2,$2,%0\n\t"
      "psravw  $3,$3,%0\n\t"
      "psravw  $4,$4,%0\n\t"
      :: "r" (shift) );

      asm volatile ("pand    $1,$1,$31\n\t"
      "pand    $2,$2,$31\n\t"
      "pand    $3,$3,$31\n\t"
      "pand    $4,$4,$31\n\t");

      asm volatile ("pextw   %0,$1,0\n\t"
      "pextw   %1,$1,1\n\t"
      "pextw   %2,$1,2\n\t"
      "pextw   %3,$1,3\n\t"
      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);
      count[v0]++;
      count[v1]++;
      count[v2]++;
      count[v3]++;

      asm volatile ("pextw   %0,$2,0\n\t"
      "pextw   %1,$2,1\n\t"
      "pextw   %2,$2,2\n\t"
      "pextw   %3,$2,3\n\t"
      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);
      count[v0]++;
      count[v1]++;
      count[v2]++;
      count[v3]++;

      asm volatile ("pextw   %0,$3,0\n\t"
      "pextw   %1,$3,1\n\t"
      "pextw   %2,$3,2\n\t"
      "pextw   %3,$3,3\n\t"
      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);
      count[v0]++;
      count[v1]++;
      count[v2]++;
      count[v3]++;

      asm volatile ("pextw   %0,$4,0\n\t"
      "pextw   %1,$4,1\n\t"
      "pextw   %2,$4,2\n\t"
      "pextw   %3,$4,3\n\t"
      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);
      count[v0]++;
      count[v1]++;
      count[v2]++;
      count[v3]++;

      asm volatile (".set    at\n\t");
    }
# 854 "./main.c"
    int s = 0;
    for (x = 1; x < (1 << 13); x += 16) {
      int a1, a2, a3;
      asm volatile (".set    noat\n\t");






      asm volatile ("lq      $1,(%0)\n\t"
      "lq      $2,16(%0)\n\t"
      "lq      $3,32(%0)\n\t"
      "lq      $4,48(%0)\n\t"
      : : "r" (&count[x-1]) );

      asm volatile ("paddw   $5,$1,$0\n\t"
      "paddw   $6,$2,$0\n\t"
      "paddw   $7,$3,$0\n\t"
      "paddw   $8,$4,$0\n\t"

      "psllww  $1,$1,$0\n\t"
      "psllww  $2,$2,$0\n\t"
      "psllww  $3,$3,$0\n\t"
      "psllww  $4,$4,$0\n\t"
      "paddw   $5,$5,$1\n\t"
      "paddw   $6,$6,$2\n\t"
      "paddw   $7,$7,$3\n\t"
      "paddw   $8,$8,$4\n\t"

      "psllww  $1,$1,$0\n\t"
      "psllww  $2,$2,$0\n\t"
      "psllww  $3,$3,$0\n\t"
      "psllww  $4,$4,$0\n\t"
      "paddw   $5,$5,$1\n\t"
      "paddw   $6,$6,$2\n\t"
      "paddw   $7,$7,$3\n\t"
      "paddw   $8,$8,$4\n\t"

      "psllww  $1,$1,$0\n\t"
      "psllww  $2,$2,$0\n\t"
      "psllww  $3,$3,$0\n\t"
      "psllww  $4,$4,$0\n\t"
      "paddw   $5,$5,$1\n\t"
      "paddw   $6,$6,$2\n\t"
      "paddw   $7,$7,$3\n\t"
      "paddw   $8,$8,$4\n\t"

      "pextw   %0,$5,3\n\t"
      "nop\n\t"
      "nop\n\t"
      "paddsw  $6,$6,%0\n\t"
      "nop\n\t"
      "nop\n\t"
      "pextw   %1,$6,3\n\t"
      "nop\n\t"
      "nop\n\t"
      "paddsw  $7,$7,%1\n\t"
      "nop\n\t"
      "nop\n\t"
      "pextw   %2,$7,3\n\t"
      "nop\n\t"
      "nop\n\t"
      "paddsw  $8,$8,%2\n\t"
      : "=r" (a1), "=r" (a2), "=r" (a3) :);

      asm volatile ("paddsw  $5,$5,%0\n\t"
      "paddsw  $6,$6,%0\n\t"
      "paddsw  $7,$7,%0\n\t"
      "paddsw  $8,$8,%0\n\t"
      :: "r" (s));

      asm volatile ("sq      $5,(%0)\n\t"
      "sq      $6,16(%0)\n\t"
      "sq      $7,32(%0)\n\t"
      "sq      $8,48(%0)\n\t"
      : : "r" (&count[x-1]) );


      asm volatile ("pextw   %0,$8,3\n\t" : "=r" (s));

      asm volatile (".set    at\n\t");
    }



    for (x = size; x > 0; x -= 16) {
      int v0, v1, v2, v3;
      int u0, u1, u2, u3;

      asm volatile (".set    noat\n\t");







      asm volatile ("lq      $1,(%0)\n\t"
      "lq      $2,16(%0)\n\t"
      "lq      $3,32(%0)\n\t"
      "lq      $4,48(%0)\n\t"
      : : "r" (&buff1[x-16]) );

      asm volatile ("psravw  $5,$1,%0\n\t"
      "psravw  $6,$2,%0\n\t"
      "psravw  $7,$3,%0\n\t"
      "psravw  $8,$4,%0\n\t"
      :: "r" (shift) );

      asm volatile ("pand    $5,$5,$31\n\t"
      "pand    $6,$6,$31\n\t"
      "pand    $7,$7,$31\n\t"
      "pand    $8,$8,$31\n\t");


      asm volatile ("pextw   %0,$4,0\n\t"
      "pextw   %1,$4,1\n\t"
      "pextw   %2,$4,2\n\t"
      "pextw   %3,$4,3\n\t"
      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);


      asm volatile ("pextw   %0,$8,0\n\t"
      "pextw   %1,$8,1\n\t"
      "pextw   %2,$8,2\n\t"
      "pextw   %3,$8,3\n\t"
      : "=r" (u0), "=r" (u1), "=r" (u2), "=r" (u3) :);

      count[u3]--;
      buff2[count[u3]] = v3;
      count[u2]--;
      buff2[count[u2]] = v2;
      count[u1]--;
      buff2[count[u1]] = v1;
      count[u0]--;
      buff2[count[u0]] = v0;


      asm volatile ("pextw   %0,$3,0\n\t"
      "pextw   %1,$3,1\n\t"
      "pextw   %2,$3,2\n\t"
      "pextw   %3,$3,3\n\t"
      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);


      asm volatile ("pextw   %0,$7,0\n\t"
      "pextw   %1,$7,1\n\t"
      "pextw   %2,$7,2\n\t"
      "pextw   %3,$7,3\n\t"
      : "=r" (u0), "=r" (u1), "=r" (u2), "=r" (u3) :);

      count[u3]--;
      buff2[count[u3]] = v3;
      count[u2]--;
      buff2[count[u2]] = v2;
      count[u1]--;
      buff2[count[u1]] = v1;
      count[u0]--;
      buff2[count[u0]] = v0;


      asm volatile ("pextw   %0,$2,0\n\t"
      "pextw   %1,$2,1\n\t"
      "pextw   %2,$2,2\n\t"
      "pextw   %3,$2,3\n\t"
      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);


      asm volatile ("pextw   %0,$6,0\n\t"
      "pextw   %1,$6,1\n\t"
      "pextw   %2,$6,2\n\t"
      "pextw   %3,$6,3\n\t"
      : "=r" (u0), "=r" (u1), "=r" (u2), "=r" (u3) :);

      count[u3]--;
      buff2[count[u3]] = v3;
      count[u2]--;
      buff2[count[u2]] = v2;
      count[u1]--;
      buff2[count[u1]] = v1;
      count[u0]--;
      buff2[count[u0]] = v0;


      asm volatile ("pextw   %0,$1,0\n\t"
      "pextw   %1,$1,1\n\t"
      "pextw   %2,$1,2\n\t"
      "pextw   %3,$1,3\n\t"
      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);


      asm volatile ("pextw   %0,$5,0\n\t"
      "pextw   %1,$5,1\n\t"
      "pextw   %2,$5,2\n\t"
      "pextw   %3,$5,3\n\t"
      : "=r" (u0), "=r" (u1), "=r" (u2), "=r" (u3) :);

      count[u3]--;
      buff2[count[u3]] = v3;
      count[u2]--;
      buff2[count[u2]] = v2;
      count[u1]--;
      buff2[count[u1]] = v1;
      count[u0]--;
      buff2[count[u0]] = v0;

      asm volatile (".set    at\n\t");
    }



    if (i == niterations-2) {
      buff1 = buff2;
      buff2 = data;
    }
    else {
      buff1 = buff2;
      buff2 = BUFtbl[++curBUFptr];
    }

  }
# 1121 "./main.c"
}



int main(void) {




    int i;

    int n;
    int chkbits = 0;




    extern int _binary_310sort_dat_start[] __attribute((aligned(16)));
    extern int _binary_310sort_dat_end[];
    extern int _binary_310sort_dat_size;
    init_data = _binary_310sort_dat_start;
    init_n = &init_data[0xffff];
    n = *init_n;

    mylib_display_char('s');
    mylib_display_char('o');
    mylib_display_char('r');
    mylib_display_char('t');
    mylib_display_char(' ');
    mylib_display_char('n');
    mylib_display_char('=');
    mylib_display_dec(n);
    mylib_display_newline();
    mylib_display_newline();

    mylib_display_hex((int)BUFtbl[0]);
    mylib_display_newline();
    mylib_display_newline();
    mylib_display_hex((int)BUFtbl[1]);
    mylib_display_newline();
    mylib_display_newline();
    mylib_display_hex((int)BUFtbl[2]);
    mylib_display_newline();
    mylib_display_newline();
    mylib_display_hex((int)BUFtbl[3]);
    mylib_display_newline();
    mylib_display_newline();
# 1241 "./main.c"
    asm volatile (".set   noat\n\t"
                  "pinsw  $0,$0,$0,0\n\t"
                  "nop\n\t"
                  "nop\n\t"
                  "pinsw  $0,$0,$0,1\n\t"
                  "nop\n\t"
                  "nop\n\t"
                  "pinsw  $0,$0,$0,2\n\t"
                  "nop\n\t"
                  "nop\n\t"
                  "pinsw  $0,$0,$0,3\n\t"
                  ".set   at");


    asm volatile (".set   noat\n\t"
                  "li     $1,1\n\t"
                  "pinsw  $5,$5,$0,0\n\t"
                  "nop\n\t"
                  "addiu  $1,$1,1\n\t"
                  "pinsw  $5,$5,$1,1\n\t"
                  "nop\n\t"
                  "addiu  $1,$1,1\n\t"
                  "pinsw  $5,$5,$1,2\n\t"
                  "nop\n\t"
                  "nop\n\t"
                  "pinsw  $5,$5,$1,3\n\t"
                  ".set   at");





    asm volatile (".set   noat\n\t"
                  "paddw  $10,$0,$0\n\t"
                  "paddw  $11,$0,$0\n\t"
                  "paddw  $12,$0,$0\n\t"
                  "paddw  $13,$0,$0\n\t"
                  ".set   at");

    for (i = 0; i < n; i += 16) {
        int d = i % (64*1024);

        asm volatile (".set    noat\n\t");






        asm volatile ("lq      $1,(%0)\n\t"
                      "lq      $2,16(%0)\n\t"
                      "lq      $3,32(%0)\n\t"
                      "lq      $4,48(%0)\n\t"
                      : : "r" (&init_data[d]) );

        asm volatile ("paddsw  $1,$1,%0\n\t"
                      "paddsw  $2,$2,%1\n\t"
                      "paddsw  $3,$3,%2\n\t"
                      "paddsw  $4,$4,%3\n\t"
                      : : "r" (i), "r" (i+4), "r" (i+8), "r" (i+12) );

        asm volatile ("paddw   $1,$1,$5\n\t"
                      "paddw   $2,$2,$5\n\t"
                      "paddw   $3,$3,$5\n\t"
                      "paddw   $4,$4,$5\n\t");

        asm volatile ("sq      $1,(%0)\n\t"
                      "sq      $2,16(%0)\n\t"
                      "sq      $3,32(%0)\n\t"
                      "sq      $4,48(%0)\n\t"
                      : : "r" (&data[i]) );


        asm volatile ("por     $10,$10,$1\n\t"
                      "por     $11,$11,$2\n\t"
                      "por     $12,$12,$3\n\t"
                      "por     $13,$13,$4\n\t");

        asm volatile (".set    at\n\t");
    }

    asm volatile ("por     $10,$10,$11\n\t"
                  "por     $12,$12,$13\n\t"
                  "nop\n\t"
                  "nop\n\t"
                  "por     $10,$10,$12\n\t");



    {
        int a0, a1, a2, a3;
        asm volatile ("pextw   %0,$5,0\n\t"
                      "pextw   %1,$5,1\n\t"
                      "pextw   %2,$5,2\n\t"
                      "pextw   %3,$5,3\n\t"
                      : "=r" (a0), "=r" (a1), "=r" (a2), "=r" (a3) :);
        chkbits = a0 | a1 | a2 | a3;
    }


    if ((chkbits & ~((((1 << 13) - 1) << 13)|((1 << 13) - 1))) == 0)
        niterations = 2;
    else if ((chkbits & ~((((((1 << 13) - 1) << 13)|((1 << 13) - 1)) << 13)|((1 << 13) - 1))) == 0)
        niterations = 3;
    else
        niterations = 4;
# 1401 "./main.c"
    for (i = 0; i < 100-8; i += 8) {
        int v0, v1, v2, v3, v4, v5, v6, v7;

        asm volatile (".set    noat\n\t");





        asm volatile ("lq      $1,(%0)\n\t"
                      "lq      $2,16(%0)\n\t"
                      : : "r" (&data[i]) );

        asm volatile ("nop\n\t"

                      "pextw   %0,$1,0\n\t"
                      "pextw   %1,$1,1\n\t"
                      "pextw   %2,$1,2\n\t"
                      "pextw   %3,$1,3\n\t"

                      "pextw   %4,$2,0\n\t"
                      "pextw   %5,$2,1\n\t"
                      "pextw   %6,$2,2\n\t"
                      "pextw   %7,$2,3\n\t"
                      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3),
                        "=r" (v4), "=r" (v5), "=r" (v6), "=r" (v7) :);

        asm volatile (".set    at\n\t");

        mylib_display_dec(v0); mylib_display_char(' ');
        mylib_display_dec(v1); mylib_display_char(' ');
        mylib_display_dec(v2); mylib_display_char(' ');
        mylib_display_dec(v3); mylib_display_char(' ');

        mylib_display_dec(v4); mylib_display_char(' ');
        mylib_display_dec(v5); mylib_display_char(' ');
        mylib_display_dec(v6); mylib_display_char(' ');
        mylib_display_dec(v7); mylib_display_char(' ');
    }

    {
        int v0, v1, v2, v3;

        asm volatile (".set    noat\n\t");

        asm volatile ("lq      $1,(%0)\n\t"
                      : : "r" (&data[i]) );

        asm volatile ("nop\n\t"
                      "nop\n\t"
                      "pextw   %0,$1,0\n\t"
                      "pextw   %1,$1,1\n\t"
                      "pextw   %2,$1,2\n\t"
                      "pextw   %3,$1,3\n\t"
                      : "=r" (v0), "=r" (v1), "=r" (v2), "=r" (v3) :);

        asm volatile (".set    at\n\t");

        mylib_display_dec(v0); mylib_display_char(' ');
        mylib_display_dec(v1); mylib_display_char(' ');
        mylib_display_dec(v2); mylib_display_char(' ');
        mylib_display_dec(v3); mylib_display_char(' ');

        mylib_display_newline();
    }
# 1485 "./main.c"
    radix_sort(data, n);



    mylib_display_newline();
    for (i = 0; i < n; i=i+n/100) {
        mylib_display_dec(data[i]);
        mylib_display_char(' ');
    }
    mylib_display_newline();





    mylib_finalize();
    return 0;
}
