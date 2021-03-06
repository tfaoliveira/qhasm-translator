#include <limits.h>
#include "constants.h"

/*
#define READ_CHAR_AS_INT(PTR, OFFSET) (PTR[OFFSET]+((unsigned int)PTR[OFFSET+1]<<8)+((unsigned int)PTR[OFFSET+2]<<16)+((unsigned int)PTR[OFFSET+3]<<24))
#define READ_CHAR_AS_SHORT(PTR, OFFSET) (PTR[OFFSET]+((unsigned int)PTR[OFFSET+1]<<8))
#define READ_INT_AS_CHAR(PTR, OFFSET) ((PTR[OFFSET>>2]>>((OFFSET&0x3)<<3))&0xff)
#define SAVE_CHAR_AS_INT(PTR,OFFSET,VALUE) PTR[OFFSET]=VALUE&0xff;PTR[OFFSET+1]=(VALUE&0xff00)>>8; \
														 PTR[OFFSET+2]=(VALUE&0xff0000)>>16;PTR[OFFSET+3]=(VALUE&0xff000000)>>24;
*/

//@ requires offset <= (UINT_MAX-3) && \valid_range(ptr,offset, offset+3);
unsigned int READ_CHAR_AS_INT(unsigned char* ptr, unsigned int offset){
	return (ptr[offset] + ((unsigned int)ptr[offset+1]<<8) + ((unsigned int)ptr[offset+2]<<16) + ((unsigned int)ptr[offset+3]<<24));
}

//@ requires offset <= (UINT_MAX-1) && \valid_range(ptr,offset, offset+1);
unsigned int READ_CHAR_AS_SHORT(unsigned char* ptr, unsigned int offset){
	return (ptr[offset]+((unsigned int)ptr[offset+1]<<8));
}

//@ requires \valid(ptr+(offset>>2));
unsigned char READ_INT_AS_CHAR(unsigned int* ptr, unsigned int offset){
	return ((ptr[offset>>2]>>(((offset&0x3)<<3)))&0xff);
}

//@ requires offset <= (UINT_MAX-3) && \valid_range(ptr,offset, offset+3);
void SAVE_CHAR_AS_INT(unsigned char* ptr, unsigned int offset, unsigned int value){
	ptr[offset]   =  value&0xff;
	ptr[offset+1] = (value&0xff00)>>8;
	ptr[offset+2] = (value&0xff0000)>>16;
	ptr[offset+3] = (value&0xff000000)>>24;
}


//@ lemma m1: \forall integer x, y; (x >= 0) && (y >= 0) && (x <= 255) && (y <= 255) ==> (x^y) > 0;
//@ lemma m2: \forall integer x, y; (x >= 0) && (y >= 0) && (x <= 255) && (y <= 255) ==> (x^y) <= 255;

//@ lemma m3: \forall integer x, y; (x >= 0) && (y >= 0) && (x <= UINT_MAX) && (y <= UINT_MAX) ==> (x^y) > 0;
//@ lemma m4: \forall integer x, y; (x >= 0) && (y >= 0) && (x <= UINT_MAX) && (y <= UINT_MAX) ==> (x^y) <= UINT_MAX;

//@ lemma m5: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0x3) <= 3;
//@ lemma m6: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0x3) >= 0;

//@ lemma m7: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0x0f) <= 15;
//@ lemma m8: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0x0f) >= 0;

//@ lemma m9: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0xff) >= 0;
//@ lemma m10: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0xff) <= 255;

//@ lemma m11: \forall unsigned int x, n; (x >= 0) && (x <= UINT_MAX) ==> (x >> 2) >= 0;
//@ lemma m12: \forall unsigned int x, n; (x >= 0) && (x <= UINT_MAX) ==> (x >> 2) <= UINT_MAX;

//@ lemma m13: \forall unsigned int x, n; (x >= 0) && (x <= UINT_MAX) ==> (x >> 8) >= 0;
//@ lemma m14: \forall unsigned int x, n; (x >= 0) && (x <= UINT_MAX) ==> (x >> 8) <= UINT_MAX;

//@ lemma m15: \forall unsigned int x, n; (x >= 0) && (x <= UINT_MAX) ==> (x >> 16) >= 0;
//@ lemma m16: \forall unsigned int x, n; (x >= 0) && (x <= UINT_MAX) ==> (x >> 16) <= UINT_MAX;

//@ lemma m17: \forall unsigned int x, n; (x >= 0) && (x <= UINT_MAX) ==> (x >> 24) >= 0;
//@ lemma m18: \forall unsigned int x, n; (x >= 0) && (x <= UINT_MAX) ==> (x >> 24) <= UINT_MAX;

//@ lemma m19: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0xff00) >= 0;
//@ lemma m20: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0xff00) <= 65280;

//@ lemma m21: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0xff0000) >= 0;
//@ lemma m22: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0xff0000) <= 16711680;

//@ lemma m23: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0xff000000) >= 0;
//@ lemma m24: \forall integer x; (x >= 0) && (x <= UINT_MAX) ==> (x & 0xff000000) <= 4278190080;

/*@ requires arg5 >= 0 && 
				 \valid_range(arg2,0,17) && 
				 \valid_range(arg3,0,arg5) && 
				 \valid_range(arg4,0,arg5) && 
				 \valid_range(aes_tablex,0,4095) && 
				 \valid_range(aes_table2,0,4094) && 
				 \valid_range(aes_table1,0,4093) && 
				 \valid_range(aes_table0,0,4092) && 
				 \valid_range(aes_table3,0,1022);
  @*/
void ECRYPT_process_bytes(void *arg1, unsigned int *arg2, unsigned int *arg3, unsigned char *arg4, unsigned int arg5)
{

    register unsigned int b0;
    register unsigned int b1;
    register unsigned int b2;
    register unsigned int b3;
    register unsigned int *c;
    register unsigned int *c_stack;
    register unsigned int *in;
    register unsigned int *in_stack;
    register unsigned int len;
    register unsigned int len_stack;
    unsigned int    n0;
    unsigned int    n1;
    unsigned int    n2;
    unsigned int    n3;
    register unsigned char *out;
    register unsigned char *out_stack;
    register unsigned int p00;
    register unsigned int p01;
    register unsigned int p02;
    register unsigned int p03;
    register unsigned int p10;
    register unsigned int p11;
    register unsigned int p12;
    register unsigned int p13;
    register unsigned int p20;
    register unsigned int p21;
    register unsigned int p22;
    register unsigned int p23;
    register unsigned int p30;
    register unsigned int p31;
    register unsigned int p32;
    register unsigned int p33;
    unsigned int    r0;
    unsigned int    r1;
    unsigned int    r10;
    unsigned int    r11;
    unsigned int    r12;
    unsigned int    r13;
    unsigned int    r14;
    unsigned int    r15;
    unsigned int    r16;
    unsigned int    r17;
    unsigned int    r18;
    unsigned int    r19;
    unsigned int    r2;
    unsigned int    r20;
    unsigned int    r21;
    unsigned int    r22;
    unsigned int    r23;
    unsigned int    r24;
    unsigned int    r25;
    unsigned int    r26;
    unsigned int    r27;
    unsigned int    r28;
    unsigned int    r29;
    unsigned int    r3;
    unsigned int    r30;
    unsigned int    r31;
    unsigned int    r32;
    unsigned int    r33;
    unsigned int    r34;
    unsigned int    r35;
    unsigned int    r36;
    unsigned int    r37;
    unsigned int    r38;
    unsigned int    r39;
    unsigned int    r4;
    unsigned int    r40;
    unsigned int    r41;
    unsigned int    r42;
    unsigned int    r43;
    unsigned int    r5;
    unsigned int    r6;
    unsigned int    r7;
    unsigned int    r8;
    unsigned int    r9;
    register unsigned int x0;
    register unsigned int x1;
    register unsigned int x2;
    register unsigned int x3;
    register unsigned int y0;
    register unsigned int y1;
    register unsigned int y2;
    register unsigned int y3;
    register unsigned int y3_stack;
    register unsigned int z0;
    register unsigned int z1;
    register unsigned int z1_stack;
    register unsigned int z2;
    register unsigned int z2_stack;
    register unsigned int z3;
    register unsigned int z3_stack;

    c = arg2;
    in = arg3;
    out = arg4;
    len = arg5;
    c_stack = c;

    in_stack = in;
    out_stack = out;
    len_stack = len;

    if (len > 0) {
        x0 = c[0];
        x1 = c[1];
        x2 = c[2];
        x3 = c[3];

        r0 = x0;
        r1 = x1;
        r2 = x2;
        r3 = x3;

        x0 = c[4];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r4 = x0;
        r5 = x1;
        r6 = x2;
        r7 = x3;

        x0 = c[5];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r8 = x0;
        r9 = x1;
        r10 = x2;
        r11 = x3;

        x0 = c[6];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r12 = x0;
        r13 = x1;
        r14 = x2;
        r15 = x3;

        x0 = c[7];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r16 = x0;
        r17 = x1;
        r18 = x2;
        r19 = x3;

        x0 = c[8];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r20 = x0;
        r21 = x1;
        r22 = x2;
        r23 = x3;

        x0 = c[9];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r24 = x0;
        r25 = x1;
        r26 = x2;
        r27 = x3;

        x0 = c[10];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r28 = x0;
        r29 = x1;
        r30 = x2;
        r31 = x3;

        x0 = c[11];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r32 = x0;
        r33 = x1;
        r34 = x2;
        r35 = x3;

        x0 = c[12];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r36 = x0;
        r37 = x1;
        r38 = x2;
        r39 = x3;

        x0 = c[13];
        x1 ^= x0;
        x2 ^= x1;
        x3 ^= x2;

        r40 = x0;
        r41 = x1;
        r42 = x2;
        r43 = x3;

        y0 = c[14];
        y1 = c[15];
        y2 = c[16];
        y3 = c[17];

		  /*@ loop variant len - 0;
			 @ loop invariant len >= 0;
			 @*/
        do {

            n0 = y0;
            n1 = y1;
            n2 = y2;
            n3 = y3;

            y0 ^= r0;
            y1 ^= r1;
            y2 ^= r2;
            y3 ^= r3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];




            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];




            y0 = r4;
            y0 ^= z0;
            y1 = r5;
            y1 ^= z1;
            y2 = r6;
            y2 ^= z2;
            y3 = r7;
            y3 ^= z3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];




            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];





            y0 = r8;
            y0 ^= z0;
            y1 = r9;
            y1 ^= z1;
            y2 = r10;
            y2 ^= z2;
            y3 = r11;
            y3 ^= z3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];




            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];




            y0 = r12;
            y0 ^= z0;
            y1 = r13;
            y1 ^= z1;
            y2 = r14;
            y2 ^= z2;
            y3 = r15;
            y3 ^= z3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];




            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];




            y0 = r16;
            y0 ^= z0;
            y1 = r17;
            y1 ^= z1;
            y2 = r18;
            y2 ^= z2;
            y3 = r19;
            y3 ^= z3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];




            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];




            y0 = r20;
            y0 ^= z0;

            y1 = r21;
            y1 ^= z1;

            y2 = r22;
            y2 ^= z2;

            y3 = r23;
            y3 ^= z3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];




            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];




            y0 = r24;
            y0 ^= z0;

            y1 = r25;
            y1 ^= z1;

            y2 = r26;
            y2 ^= z2;

            y3 = r27;
            y3 ^= z3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];


            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];




            y0 = r28;
            y0 ^= z0;
            y1 = r29;
            y1 ^= z1;
            y2 = r30;
            y2 ^= z2;
            y3 = r31;
            y3 ^= z3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];




            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];




            y0 = r32;
            y0 ^= z0;
            y1 = r33;
            y1 ^= z1;
            y2 = r34;
            y2 ^= z2;
            y3 = r35;
            y3 ^= z3;




            y3_stack = y3;
            p00 = y0 & 255;
            z0 = READ_CHAR_AS_INT(aes_table0, p00 * 8);
            p03 = (y0 >> 8) & 255;
            y0 >>= 16;
            z3 = READ_CHAR_AS_INT(aes_table1, p03 * 8);
            p02 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table2, p02 * 8);
            p01 = (y0 >> 8) & 255;
            z1 = aes_table3[p01 * 2];
            p10 = y1 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table0, p10 * 8);
            p11 = (y1 >> 8) & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table1, p11 * 8);
            y1 >>= 16;
            p12 = y1 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table2, p12 * 8);
            p13 = (y1 >> 8) & 255;
            z2 ^= aes_table3[p13 * 2];




            y3 = y3_stack;
            p20 = y2 & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table0, p20 * 8);
            p21 = (y2 >> 8) & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table1, p21 * 8);
            y2 >>= 16;
            p22 = y2 & 255;
            z0 ^= READ_CHAR_AS_INT(aes_table2, p22 * 8);
            p23 = (y2 >> 8) & 255;
            z3 ^= aes_table3[p23 * 2];
            p30 = y3 & 255;
            z3 ^= READ_CHAR_AS_INT(aes_table0, p30 * 8);
            p31 = (y3 >> 8) & 255;
            z2 ^= READ_CHAR_AS_INT(aes_table1, p31 * 8);
            y3 >>= 16;
            p32 = y3 & 255;
            z1 ^= READ_CHAR_AS_INT(aes_table2, p32 * 8);
            p33 = (y3 >> 8) & 255;
            z0 ^= aes_table3[p33 * 2];




            y0 = r36;
            y0 ^= z0;
            y1 = r37;
            y1 ^= z1;
            y2 = r38;
            y2 ^= z2;
            y3 = r39;
            y3 ^= z3;




            y3_stack = y3;
            z0 = y0 & 255;
            z0 = aes_table2[z0 * 8];
            z3 = (y0 >> 8) & 255;
            z3 = READ_CHAR_AS_SHORT(aes_tablex, z3 * 8);
            y0 >>= 16;
            z2 = y0 & 255;
            z2 = READ_CHAR_AS_INT(aes_table0, z2 * 8);
            z2 &= 0x00ff0000;
            z1 = (y0 >> 8) & 255;
            z1 = READ_CHAR_AS_INT(aes_table1, z1 * 8);
            z1 &= 0xff000000;




            z0 ^= r40;
            z3 ^= r43;
            z1 ^= r41;
            z2 ^= r42;




            p10 = y1 & 255;
            p10 = aes_table2[p10 * 8];
            z1 ^= p10;
            p11 = (y1 >> 8) & 255;
            p11 = READ_CHAR_AS_SHORT(aes_tablex, p11 * 8);
            z0 ^= p11;
            y1 >>= 16;
            p12 = y1 & 255;
            p12 = READ_CHAR_AS_INT(aes_table0, p12 * 8);
            p12 &= 0x00ff0000;
            z3 ^= p12;
            p13 = (y1 >> 8) & 255;
            p13 = READ_CHAR_AS_INT(aes_table1, p13 * 8);
            p13 &= 0xff000000;
            z2 ^= p13;




            y3 = y3_stack;
            p20 = y2 & 255;
            p20 = aes_table2[p20 * 8];
            z2 ^= p20;
            p21 = (y2 >> 8) & 255;
            p21 = READ_CHAR_AS_SHORT(aes_tablex, p21 * 8);
            z1 ^= p21;
            y2 >>= 16;
            p22 = y2 & 255;
            p22 = READ_CHAR_AS_INT(aes_table0, p22 * 8);
            p22 &= 0x00ff0000;
            z0 ^= p22;
            p23 = (y2 >> 8) & 255;
            p23 = READ_CHAR_AS_INT(aes_table1, p23 * 8);
            p23 &= 0xff000000;
            z3 ^= p23;
            p30 = y3 & 255;
            p30 = aes_table2[p30 * 8];
            z3 ^= p30;
            p31 = (y3 >> 8) & 255;
            p31 = READ_CHAR_AS_SHORT(aes_tablex, p31 * 8);
            z2 ^= p31;
            y3 >>= 16;
            p32 = y3 & 255;
            p32 = READ_CHAR_AS_INT(aes_table0, p32 * 8);
            p32 &= 0x00ff0000;
            z1 ^= p32;
            p33 = (y3 >> 8) & 255;
            p33 = READ_CHAR_AS_INT(aes_table1, p33 * 8);
            p33 &= 0xff000000;
            z0 ^= p33;

            len = len_stack;

            if (len < 16) {
                z1_stack = z1;
                z2_stack = z2;
                z3_stack = z3;
                in = in_stack;
                out = out_stack;
                b0 = READ_INT_AS_CHAR(in, 0);
                b0 ^= z0;
                out[0] = b0;
                if (len > 1) {
                    z0 >>= 8;
                    b1 = READ_INT_AS_CHAR(in, 1);
                    b1 ^= z0;
                    out[1] = b1;
                    if (len > 2) {
                        z0 >>= 8;
                        b2 = READ_INT_AS_CHAR(in, 2);
                        b2 ^= z0;
                        out[2] = b2;
                        if (len > 3) {
                            z0 >>= 8;
                            b3 = READ_INT_AS_CHAR(in, 3);
                            b3 ^= z0;
                            out[3] = b3;
                            if (len > 4) {
                                z1 = z1_stack;
                                b0 = READ_INT_AS_CHAR(in, 4);
                                b0 ^= z1;
                                out[4] = b0;
                                if (len > 5) {
                                    z1 >>= 8;
                                    b1 = READ_INT_AS_CHAR(in, 5);
                                    b1 ^= z1;
                                    out[5] = b1;
                                    if (len > 6) {
                                        z1 >>= 8;
                                        b2 = READ_INT_AS_CHAR(in, 6);
                                        b2 ^= z1;
                                        out[6] = b2;
                                        if (len > 7) {
                                            z1 >>= 8;
                                            b3 = READ_INT_AS_CHAR(in, 7);
                                            b3 ^= z1;
                                            out[7] = b3;
                                            if (len > 8) {
                                                z2 = z2_stack;
                                                b0 = READ_INT_AS_CHAR(in, 8);
                                                b0 ^= z2;
                                                out[8] = b0;
                                                if (len > 9) {
                                                    z2 >>= 8;
                                                    b1 = READ_INT_AS_CHAR(in, 9);
                                                    b1 ^= z2;
                                                    out[9] = b1;
                                                    if (len > 10) {
                                                        z2 >>= 8;
                                                        b2 = READ_INT_AS_CHAR(in, 10);
                                                        b2 ^= z2;
                                                        out[10] = b2;
                                                        if (len > 11) {
                                                            z2 >>= 8;
                                                            b3 = READ_INT_AS_CHAR(in, 11);
                                                            b3 ^= z2;
                                                            out[11] = b3;
                                                            if (len > 12) {
                                                                z3 = z3_stack;
                                                                b0 = READ_INT_AS_CHAR(in, 12);
                                                                b0 ^= z3;
                                                                out[12] = b0;
                                                                if (len > 13) {
                                                                    z3 >>= 8;
                                                                    b1 = READ_INT_AS_CHAR(in, 13);
                                                                    b1 ^= z3;
                                                                    out[13] = b1;
                                                                    if (len > 14) {
                                                                        z3 >>= 8;
                                                                        b2 = READ_INT_AS_CHAR(in, 14);
                                                                        b2 ^= z3;
                                                                        out[14] = b2;
                                                                        if (len > 15) {
                                                                            b3 = READ_INT_AS_CHAR(in, 15);
                                                                            b3 ^= z3;
                                                                            out[15] = b3;
                                                                            out[15] = z3;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                y0 = n0;
                y1 = n1;
                y2 = n2;
                y3 = n3;

                y0 += 1;

                break;
            }

            len -= 16;
            len_stack = len;

            in = in_stack;
            z0 ^= in[0];
            z1 ^= in[1];
            z2 ^= in[2];
            z3 ^= in[3];
            in += 4;
            in_stack = in;


            out = out_stack;
            SAVE_CHAR_AS_INT(out, 0, z0);
            SAVE_CHAR_AS_INT(out, 4, z1);
            SAVE_CHAR_AS_INT(out, 8, z2);
            SAVE_CHAR_AS_INT(out, 12, z3);
            out += 16;
            out_stack = out;

            y0 = n0;
            y1 = n1;
            y2 = n2;
            y3 = n3;
            y0 += 1;

            len = len_stack;
        } while (len > 0);

        c = c_stack;
        c[14] = y0;
        c[15] = y1;
        c[16] = y2;
        c[17] = y3;
    }

    return;
}
