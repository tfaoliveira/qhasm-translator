#include "qhasm-translator.h"

void
crypto_scalarmult_curve25519_amd64_51_work_cswap(uint64_t * workp, uint64_t swap)
{
    uint64_t        t0;
    uint64_t        t1;
    uint64_t        t2;
    uint64_t        t3;
    uint64_t        t4;
    uint64_t        t5;
    uint64_t        t6;
    uint64_t        t7;
    uint64_t        t8;
    uint64_t        t9;
    uint64_t        w0;
    uint64_t        w1;
    uint64_t        w10;
    uint64_t        w11;
    uint64_t        w12;
    uint64_t        w13;
    uint64_t        w14;
    uint64_t        w15;
    uint64_t        w16;
    uint64_t        w17;
    uint64_t        w18;
    uint64_t        w19;
    uint64_t        w2;
    uint64_t        w3;
    uint64_t        w4;
    uint64_t        w5;
    uint64_t        w6;
    uint64_t        w7;
    uint64_t        w8;
    uint64_t        w9;

    // =? swap-1
    w0 = workp[0];              // w0 = *(uint64 *) (workp + 0)
    w10 = workp[10];            // w10 = *(uint64 *) (workp + 80)
    w1 = workp[1];              // w1 = *(uint64 *) (workp + 8)
    w11 = workp[11];            // w11 = *(uint64 *) (workp + 88)
    t0 = w0;                    // t0 = w0
    /*
     * w0 = w10 if =
     */ if (swap == 1) {
        w0 = w10;
    }
    /*
     * w10 = t0 if =
     */
    if (swap == 1) {
        w10 = t0;
    }
    t1 = w1;                    // t1 = w1
    /*
     * w1 = w11 if =
     */ if (swap == 1) {
        w1 = w11;
    }
    /*
     * w11 = t1 if =
     */
    if (swap == 1) {
        w11 = t1;
    }
    workp[0] = w0;              // *(uint64 *) (workp + 0) = w0
    workp[10] = w10;            // *(uint64 *) (workp + 80) = w10
    workp[1] = w1;              // *(uint64 *) (workp + 8) = w1
    workp[11] = w11;            // *(uint64 *) (workp + 88) = w11
    w2 = workp[2];              // w2 = *(uint64 *) (workp + 16)
    w12 = workp[12];            // w12 = *(uint64 *) (workp + 96)
    w3 = workp[3];              // w3 = *(uint64 *) (workp + 24)
    w13 = workp[13];            // w13 = *(uint64 *) (workp + 104)
    t2 = w2;                    // t2 = w2
    /*
     * w2 = w12 if =
     */ if (swap == 1) {
        w2 = w12;
    }
    /*
     * w12 = t2 if =
     */
    if (swap == 1) {
        w12 = t2;
    }
    t3 = w3;                    // t3 = w3
    /*
     * w3 = w13 if =
     */ if (swap == 1) {
        w3 = w13;
    }
    /*
     * w13 = t3 if =
     */
    if (swap == 1) {
        w13 = t3;
    }
    workp[2] = w2;              // *(uint64 *) (workp + 16) = w2
    workp[12] = w12;            // *(uint64 *) (workp + 96) = w12
    workp[3] = w3;              // *(uint64 *) (workp + 24) = w3
    workp[13] = w13;            // *(uint64 *) (workp + 104) = w13
    w4 = workp[4];              // w4 = *(uint64 *) (workp + 32)
    w14 = workp[14];            // w14 = *(uint64 *) (workp + 112)
    w5 = workp[5];              // w5 = *(uint64 *) (workp + 40)
    w15 = workp[15];            // w15 = *(uint64 *) (workp + 120)
    t4 = w4;                    // t4 = w4
    /*
     * w4 = w14 if =
     */ if (swap == 1) {
        w4 = w14;
    }
    /*
     * w14 = t4 if =
     */
    if (swap == 1) {
        w14 = t4;
    }
    t5 = w5;                    // t5 = w5
    /*
     * w5 = w15 if =
     */ if (swap == 1) {
        w5 = w15;
    }
    /*
     * w15 = t5 if =
     */
    if (swap == 1) {
        w15 = t5;
    }
    workp[4] = w4;              // *(uint64 *) (workp + 32) = w4
    workp[14] = w14;            // *(uint64 *) (workp + 112) = w14
    workp[5] = w5;              // *(uint64 *) (workp + 40) = w5
    workp[15] = w15;            // *(uint64 *) (workp + 120) = w15
    w6 = workp[6];              // w6 = *(uint64 *) (workp + 48)
    w16 = workp[16];            // w16 = *(uint64 *) (workp + 128)
    w7 = workp[7];              // w7 = *(uint64 *) (workp + 56)
    w17 = workp[17];            // w17 = *(uint64 *) (workp + 136)
    t6 = w6;                    // t6 = w6
    /*
     * w6 = w16 if =
     */ if (swap == 1) {
        w6 = w16;
    }
    /*
     * w16 = t6 if =
     */
    if (swap == 1) {
        w16 = t6;
    }
    t7 = w7;                    // t7 = w7
    /*
     * w7 = w17 if =
     */ if (swap == 1) {
        w7 = w17;
    }
    /*
     * w17 = t7 if =
     */
    if (swap == 1) {
        w17 = t7;
    }
    workp[6] = w6;              // *(uint64 *) (workp + 48) = w6
    workp[16] = w16;            // *(uint64 *) (workp + 128) = w16
    workp[7] = w7;              // *(uint64 *) (workp + 56) = w7
    workp[17] = w17;            // *(uint64 *) (workp + 136) = w17
    w8 = workp[8];              // w8 = *(uint64 *) (workp + 64)
    w18 = workp[18];            // w18 = *(uint64 *) (workp + 144)
    w9 = workp[9];              // w9 = *(uint64 *) (workp + 72)
    w19 = workp[19];            // w19 = *(uint64 *) (workp + 152)
    t8 = w8;                    // t8 = w8
    /*
     * w8 = w18 if =
     */ if (swap == 1) {
        w8 = w18;
    }
    /*
     * w18 = t8 if =
     */
    if (swap == 1) {
        w18 = t8;
    }
    t9 = w9;                    // t9 = w9
    /*
     * w9 = w19 if =
     */ if (swap == 1) {
        w9 = w19;
    }
    /*
     * w19 = t9 if =
     */
    if (swap == 1) {
        w19 = t9;
    }
    workp[8] = w8;              // *(uint64 *) (workp + 64) = w8
    workp[18] = w18;            // *(uint64 *) (workp + 144) = w18
    workp[9] = w9;              // *(uint64 *) (workp + 72) = w9
    workp[19] = w19;            // *(uint64 *) (workp + 152) = w19
    return;
}
