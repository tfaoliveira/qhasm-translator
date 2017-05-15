#include "qhasm-translator.h"

void
ECRYPT_keysetup(void *arg1, uint64_t * arg2, uint64_t arg3, void *arg4)
{
    uint64_t        in0;
    uint64_t        in10;
    uint64_t        in12;
    uint64_t        in14;
    uint64_t        in2;
    uint64_t        in4;
    uint64_t       *k;
    uint64_t        kbits;
    void           *x;

    k = arg2;                   // k = arg2
    kbits = arg3;               // kbits = arg3
    x = arg1;                   // x = arg1
    in0 = k[0];                 // in0 = *(uint64 *) (k + 0)
    in2 = k[1];                 // in2 = *(uint64 *) (k + 8)
    *(uint64_t *) (x + 4) = in0; // *(uint64 *) (x + 4) = in0
    *(uint64_t *) (x + 12) = in2; // *(uint64 *) (x + 12) = in2
    if (kbits >= 256) {
      kbits256:
        in10 = k[2];            // in10 = *(uint64 *) (k + 16)
        in12 = k[3];            // in12 = *(uint64 *) (k + 24)
        *(uint64_t *) (x + 44) = in10; // *(uint64 *) (x + 44) = in10
        *(uint64_t *) (x + 52) = in12; // *(uint64 *) (x + 52) = in12
        in0 = 1634760805;       // in0 = 1634760805
        in4 = 857760878;        // in4 = 857760878
        in10 = 2036477234;      // in10 = 2036477234
        in14 = 1797285236;      // in14 = 1797285236
        *(uint32_t *) (x + 0) = in0; // *(uint32 *) (x + 0) = in0
        *(uint32_t *) (x + 20) = in4; // *(uint32 *) (x + 20) = in4
        *(uint32_t *) (x + 40) = in10; // *(uint32 *) (x + 40) = in10
        *(uint32_t *) (x + 60) = in14; // *(uint32 *) (x + 60) = in14
    } else {
        in10 = k[0];            // in10 = *(uint64 *) (k + 0)
        in12 = k[1];            // in12 = *(uint64 *) (k + 8)
        *(uint64_t *) (x + 44) = in10; // *(uint64 *) (x + 44) = in10
        *(uint64_t *) (x + 52) = in12; // *(uint64 *) (x + 52) = in12
        in0 = 1634760805;       // in0 = 1634760805
        in4 = 824206446;        // in4 = 824206446
        in10 = 2036477238;      // in10 = 2036477238
        in14 = 1797285236;      // in14 = 1797285236
        *(uint32_t *) (x + 0) = in0; // *(uint32 *) (x + 0) = in0
        *(uint32_t *) (x + 20) = in4; // *(uint32 *) (x + 20) = in4
        *(uint32_t *) (x + 40) = in10; // *(uint32 *) (x + 40) = in10
        *(uint32_t *) (x + 60) = in14; // *(uint32 *) (x + 60) = in14
    }

    return;
}
