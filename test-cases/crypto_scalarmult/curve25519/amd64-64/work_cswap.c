#include "qhasm-translator.h"

void
crypto_scalarmult_curve25519_amd64_64_work_cswap(uint64_t * workp, uint64_t swap)
{
    uint64_t        t;
    uint64_t        w0;
    uint64_t        w1;
    uint64_t        w10;
    uint64_t        w11;
    uint64_t        w12;
    uint64_t        w13;
    uint64_t        w14;
    uint64_t        w15;
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
    w8 = workp[8];              // w8 = *(uint64 *) (workp + 64)
    t = w0;                     // t = w0
    /*
     * w0 = w8 if =
     */ if (swap == 1) {
        w0 = w8;
    }
    /*
     * w8 = t if =
     */
    if (swap == 1) {
        w8 = t;
    }
    workp[0] = w0;              // *(uint64 *) (workp + 0) = w0
    workp[8] = w8;              // *(uint64 *) (workp + 64) = w8
    w1 = workp[1];              // w1 = *(uint64 *) (workp + 8)
    w9 = workp[9];              // w9 = *(uint64 *) (workp + 72)
    t = w1;                     // t = w1
    /*
     * w1 = w9 if =
     */ if (swap == 1) {
        w1 = w9;
    }
    /*
     * w9 = t if =
     */
    if (swap == 1) {
        w9 = t;
    }
    workp[1] = w1;              // *(uint64 *) (workp + 8) = w1
    workp[9] = w9;              // *(uint64 *) (workp + 72) = w9
    w2 = workp[2];              // w2 = *(uint64 *) (workp + 16)
    w10 = workp[10];            // w10 = *(uint64 *) (workp + 80)
    t = w2;                     // t = w2
    /*
     * w2 = w10 if =
     */ if (swap == 1) {
        w2 = w10;
    }
    /*
     * w10 = t if =
     */
    if (swap == 1) {
        w10 = t;
    }
    workp[2] = w2;              // *(uint64 *) (workp + 16) = w2
    workp[10] = w10;            // *(uint64 *) (workp + 80) = w10
    w3 = workp[3];              // w3 = *(uint64 *) (workp + 24)
    w11 = workp[11];            // w11 = *(uint64 *) (workp + 88)
    t = w3;                     // t = w3
    /*
     * w3 = w11 if =
     */ if (swap == 1) {
        w3 = w11;
    }
    /*
     * w11 = t if =
     */
    if (swap == 1) {
        w11 = t;
    }
    workp[3] = w3;              // *(uint64 *) (workp + 24) = w3
    workp[11] = w11;            // *(uint64 *) (workp + 88) = w11
    w4 = workp[4];              // w4 = *(uint64 *) (workp + 32)
    w12 = workp[12];            // w12 = *(uint64 *) (workp + 96)
    t = w4;                     // t = w4
    /*
     * w4 = w12 if =
     */ if (swap == 1) {
        w4 = w12;
    }
    /*
     * w12 = t if =
     */
    if (swap == 1) {
        w12 = t;
    }
    workp[4] = w4;              // *(uint64 *) (workp + 32) = w4
    workp[12] = w12;            // *(uint64 *) (workp + 96) = w12
    w5 = workp[5];              // w5 = *(uint64 *) (workp + 40)
    w13 = workp[13];            // w13 = *(uint64 *) (workp + 104)
    t = w5;                     // t = w5
    /*
     * w5 = w13 if =
     */ if (swap == 1) {
        w5 = w13;
    }
    /*
     * w13 = t if =
     */
    if (swap == 1) {
        w13 = t;
    }
    workp[5] = w5;              // *(uint64 *) (workp + 40) = w5
    workp[13] = w13;            // *(uint64 *) (workp + 104) = w13
    w6 = workp[6];              // w6 = *(uint64 *) (workp + 48)
    w14 = workp[14];            // w14 = *(uint64 *) (workp + 112)
    t = w6;                     // t = w6
    /*
     * w6 = w14 if =
     */ if (swap == 1) {
        w6 = w14;
    }
    /*
     * w14 = t if =
     */
    if (swap == 1) {
        w14 = t;
    }
    workp[6] = w6;              // *(uint64 *) (workp + 48) = w6
    workp[14] = w14;            // *(uint64 *) (workp + 112) = w14
    w7 = workp[7];              // w7 = *(uint64 *) (workp + 56)
    w15 = workp[15];            // w15 = *(uint64 *) (workp + 120)
    t = w7;                     // t = w7
    /*
     * w7 = w15 if =
     */ if (swap == 1) {
        w7 = w15;
    }
    /*
     * w15 = t if =
     */
    if (swap == 1) {
        w15 = t;
    }
    workp[7] = w7;              // *(uint64 *) (workp + 56) = w7
    workp[15] = w15;            // *(uint64 *) (workp + 120) = w15
    return;
}
