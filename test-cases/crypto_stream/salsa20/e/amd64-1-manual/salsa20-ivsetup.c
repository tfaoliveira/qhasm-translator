#include "qhasm-translator.h"

void
ECRYPT_ivsetup(uint64_t * arg1, uint64_t * arg2, void *arg3, void *arg4)
{
    uint64_t        in6;
    uint64_t        in8;
    uint64_t       *iv;
    uint64_t       *x;

    iv = arg2;                  // iv = arg2
    x = arg1;                   // x = arg1
    in6 = iv[0];                // in6 = *(uint64 *) (iv + 0)
    in8 = 0;                    // in8 = 0
    x[3] = in6;                 // *(uint64 *) (x + 24) = in6
    x[4] = in8;                 // *(uint64 *) (x + 32) = in8
    return;
}
