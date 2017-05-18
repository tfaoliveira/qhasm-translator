#include "qhasm-translator.h"

extern uint64_t crypto_sign_ed25519_amd64_64_ORDER0;
extern uint64_t crypto_sign_ed25519_amd64_64_ORDER1;
extern uint64_t crypto_sign_ed25519_amd64_64_ORDER2;
extern uint64_t crypto_sign_ed25519_amd64_64_ORDER3;
void
crypto_sign_ed25519_amd64_64_sc25519_add(uint64_t * rp, uint64_t * xp, uint64_t * yp)
{
    uint64_t        carry;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r3;
    uint64_t        t0;
    uint64_t        t1;
    uint64_t        t2;
    uint64_t        t3;

    r0 = xp[0];                 // r0 = *(uint64 *) (xp + 0)
    r1 = xp[1];                 // r1 = *(uint64 *) (xp + 8)
    r2 = xp[2];                 // r2 = *(uint64 *) (xp + 16)
    r3 = xp[3];                 // r3 = *(uint64 *) (xp + 24)
    add64_and_set_carry(r0, r0, yp[0]); // cf? r0 += *(uint64 *) (yp + 0)
    add64_with_carry_and_set_carry(r1, r1, yp[1]); // cf? r1 += *(uint64 *) (yp + 8) + cf;
    add64_with_carry_and_set_carry(r2, r2, yp[2]); // cf? r2 += *(uint64 *) (yp + 16) + cf;
    add64_with_carry_and_set_carry(r3, r3, yp[3]); // r3 += *(uint64 *) (yp + 24) + cf;
    t0 = r0;                    // t0 = r0
    t1 = r1;                    // t1 = r1
    t2 = r2;                    // t2 = r2
    t3 = r3;                    // t3 = r3
    sub64_and_set_carry(t0, t0, crypto_sign_ed25519_amd64_64_ORDER0); // cf? t0 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
    sub64_with_carry_and_set_carry(t1, t1, crypto_sign_ed25519_amd64_64_ORDER1); // cf? t1 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1 - cf; 
    sub64_with_carry_and_set_carry(t2, t2, crypto_sign_ed25519_amd64_64_ORDER2); // cf? t2 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER2 - cf; 
    sub64_with_carry_and_set_carry(t3, t3, crypto_sign_ed25519_amd64_64_ORDER3); // cf? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3 - cf; 
    if (!carry) {
        r0 = t0;
    }                           // r0 = t0 if !carry; 
    if (!carry) {
        r1 = t1;
    }                           // r1 = t1 if !carry; 
    if (!carry) {
        r2 = t2;
    }                           // r2 = t2 if !carry; 
    if (!carry) {
        r3 = t3;
    }                           // r3 = t3 if !carry; 
    // unsigned<? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3 - carry
    // r0 = t0 if !unsigned<
    // r1 = t1 if !unsigned<
    // r2 = t2 if !unsigned<
    // r3 = t3 if !unsigned<
    rp[0] = r0;                 // *(uint64 *) (rp + 0) = r0
    rp[1] = r1;                 // *(uint64 *) (rp + 8) = r1
    rp[2] = r2;                 // *(uint64 *) (rp + 16) = r2
    rp[3] = r3;                 // *(uint64 *) (rp + 24) = r3
    return;
}
