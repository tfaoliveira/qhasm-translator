#include "qhasm-translator.h"

void
crypto_sign_ed25519_amd64_64_fe25519_add(uint64_t * rp, uint64_t * xp, uint64_t * yp)
{
    uint64_t        addt0;
    uint64_t        addt1;
    uint64_t        carry;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r3;

    r0 = xp[0];                 // r0 = *(uint64 *) (xp + 0)
    r1 = xp[1];                 // r1 = *(uint64 *) (xp + 8)
    r2 = xp[2];                 // r2 = *(uint64 *) (xp + 16)
    r3 = xp[3];                 // r3 = *(uint64 *) (xp + 24)
    add64_and_set_carry(r0, r0, yp[0]); // cf? r0 += *(uint64 *) (yp + 0)
    add64_with_carry_and_set_carry(r1, r1, yp[1]); // cf? r1 += *(uint64 *) (yp + 8) + cf;
    add64_with_carry_and_set_carry(r2, r2, yp[2]); // cf? r2 += *(uint64 *) (yp + 16) + cf;
    add64_with_carry_and_set_carry(r3, r3, yp[3]); // cf? r3 += *(uint64 *) (yp + 24) + cf;
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(r0, r0, addt1); // cf? r0 += addt1
    add64_with_carry_and_set_carry(r1, r1, addt0); // cf? r1 += addt0 + cf; 
    add64_with_carry_and_set_carry(r2, r2, addt0); // cf? r2 += addt0 + cf; 
    add64_with_carry_and_set_carry(r3, r3, addt0); // cf? r3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    r0 += addt0;                // r0 += addt0
    rp[0] = r0;                 // *(uint64 *) (rp + 0) = r0
    rp[1] = r1;                 // *(uint64 *) (rp + 8) = r1
    rp[2] = r2;                 // *(uint64 *) (rp + 16) = r2
    rp[3] = r3;                 // *(uint64 *) (rp + 24) = r3
    return;
}
