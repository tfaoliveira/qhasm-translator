#include "qhasm-translator.h"

uint64_t
crypto_sign_ed25519_amd64_64_sc25519_lt(uint64_t * xp, uint64_t * yp)
{
    uint64_t        carry;
    uint64_t        doof;
    uint64_t        ret;
    uint64_t        t0;
    uint64_t        t1;
    uint64_t        t2;
    uint64_t        t3;

    t0 = xp[0];                 // t0 = *(uint64 *) (xp + 0)
    t1 = xp[1];                 // t1 = *(uint64 *) (xp + 8)
    t2 = xp[2];                 // t2 = *(uint64 *) (xp + 16)
    t3 = xp[3];                 // t3 = *(uint64 *) (xp + 24)
    sub64_and_set_carry(t0, t0, yp[0]); // cf? t0 -= *(uint64 *) (yp + 0)
    sub64_with_carry_and_set_carry(t1, t1, yp[1]); // cf? t1 -= *(uint64 *) (yp + 8) - cf; 
    sub64_with_carry_and_set_carry(t2, t2, yp[2]); // cf? t2 -= *(uint64 *) (yp + 16) - cf; 
    sub64_with_carry_and_set_carry(t3, t3, yp[3]); // cf? t3 -= *(uint64 *) (yp + 24) - cf; 
    ret = 0;                    // ret = 0
    doof = 1;                   // doof = 1
    if (carry) {
        ret = doof;
    }                           // ret = doof if carry; 
    return ret;
}
