#include "qhasm-translator.h"

void
crypto_sign_ed25519_amd64_64_fe25519_sub(uint64_t * rp, uint64_t * xp, uint64_t * yp)
{
    uint64_t        carry;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r3;
    uint64_t        subt0;
    uint64_t        subt1;

    r0 = xp[0];                 // r0 = *(uint64 *) (xp + 0)
    r1 = xp[1];                 // r1 = *(uint64 *) (xp + 8)
    r2 = xp[2];                 // r2 = *(uint64 *) (xp + 16)
    r3 = xp[3];                 // r3 = *(uint64 *) (xp + 24)
    sub64_and_set_carry(r0, r0, yp[0]); // cf? r0 -= *(uint64 *) (yp + 0)
    sub64_with_carry_and_set_carry(r1, r1, yp[1]); // cf? r1 -= *(uint64 *) (yp + 8) - cf; 
    sub64_with_carry_and_set_carry(r2, r2, yp[2]); // cf? r2 -= *(uint64 *) (yp + 16) - cf; 
    sub64_with_carry_and_set_carry(r3, r3, yp[3]); // cf? r3 -= *(uint64 *) (yp + 24) - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(r0, r0, subt1); // cf? r0 -= subt1
    sub64_with_carry_and_set_carry(r1, r1, subt0); // cf? r1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(r2, r2, subt0); // cf? r2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(r3, r3, subt0); // cf? r3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    r0 -= subt0;                // r0 -= subt0
    rp[0] = r0;                 // *(uint64 *) (rp + 0) = r0
    rp[1] = r1;                 // *(uint64 *) (rp + 8) = r1
    rp[2] = r2;                 // *(uint64 *) (rp + 16) = r2
    rp[3] = r3;                 // *(uint64 *) (rp + 24) = r3
    return;
}
