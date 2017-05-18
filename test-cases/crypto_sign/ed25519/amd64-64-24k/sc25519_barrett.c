#include "qhasm-translator.h"

extern uint64_t crypto_sign_ed25519_amd64_64_MU0;
extern uint64_t crypto_sign_ed25519_amd64_64_MU1;
extern uint64_t crypto_sign_ed25519_amd64_64_MU2;
extern uint64_t crypto_sign_ed25519_amd64_64_MU3;
extern uint64_t crypto_sign_ed25519_amd64_64_MU4;
extern uint64_t crypto_sign_ed25519_amd64_64_ORDER0;
extern uint64_t crypto_sign_ed25519_amd64_64_ORDER1;
extern uint64_t crypto_sign_ed25519_amd64_64_ORDER2;
extern uint64_t crypto_sign_ed25519_amd64_64_ORDER3;
void
crypto_sign_ed25519_amd64_64_sc25519_barrett(uint64_t * rp, uint64_t * xp)
{
    uint64_t        c;
    uint64_t        carry;
    uint64_t        q23;
    uint64_t        q24;
    uint64_t        q30;
    uint64_t        q30_stack;
    uint64_t        q31;
    uint64_t        q31_stack;
    uint64_t        q32;
    uint64_t        q32_stack;
    uint64_t        q33;
    uint64_t        q33_stack;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r20;
    uint64_t        r21;
    uint64_t        r22;
    uint64_t        r23;
    uint64_t        r3;
    uint64_t        rax;
    uint64_t        rdx;
    uint64_t        t0;
    uint64_t        t1;
    uint64_t        t2;
    uint64_t        t3;
    uint64_t        zero;

    zero ^= zero;               // zero ^= zero
    q30 ^= q30;                 // q30 ^= q30
    q31 ^= q31;                 // q31 ^= q31
    q32 ^= q32;                 // q32 ^= q32
    q33 ^= q33;                 // q33 ^= q33
    rax = xp[3];                // rax = *(uint64 *) (xp + 24)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU3); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
    q23 = rax;                  // q23 = rax
    c = rdx;                    // c = rdx
    rax = xp[3];                // rax = *(uint64 *) (xp + 24)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU4); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
    q24 = rax;                  // q24 = rax
    add64_and_set_carry(q24, q24, c); // cf? q24 += c
    add64_with_carry(q30, q30, rdx); // q30 += rdx + cf; 
    rax = xp[4];                // rax = *(uint64 *) (xp + 32)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU2); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU2
    add64_and_set_carry(q23, q23, rax); // cf? q23 += rax
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[4];                // rax = *(uint64 *) (xp + 32)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU3); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
    add64_and_set_carry(q24, q24, rax); // cf? q24 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q24, q24, c); // cf? q24 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[4];                // rax = *(uint64 *) (xp + 32)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU4); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
    add64_and_set_carry(q30, q30, rax); // cf? q30 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q30, q30, c); // cf? q30 += c
    add64_with_carry(q31, q31, rdx); // q31 += rdx + cf; 
    rax = xp[5];                // rax = *(uint64 *) (xp + 40)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU1); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU1
    add64_and_set_carry(q23, q23, rax); // cf? q23 += rax
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[5];                // rax = *(uint64 *) (xp + 40)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU2); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU2
    add64_and_set_carry(q24, q24, rax); // cf? q24 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q24, q24, c); // cf? q24 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[5];                // rax = *(uint64 *) (xp + 40)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU3); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
    add64_and_set_carry(q30, q30, rax); // cf? q30 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q30, q30, c); // cf? q30 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[5];                // rax = *(uint64 *) (xp + 40)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU4); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
    add64_and_set_carry(q31, q31, rax); // cf? q31 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q31, q31, c); // cf? q31 += c
    add64_with_carry(q32, q32, rdx); // q32 += rdx + cf; 
    rax = xp[6];                // rax = *(uint64 *) (xp + 48)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU0); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU0
    add64_and_set_carry(q23, q23, rax); // cf? q23 += rax
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[6];                // rax = *(uint64 *) (xp + 48)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU1); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU1
    add64_and_set_carry(q24, q24, rax); // cf? q24 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q24, q24, c); // cf? q24 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[6];                // rax = *(uint64 *) (xp + 48)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU2); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU2
    add64_and_set_carry(q30, q30, rax); // cf? q30 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q30, q30, c); // cf? q30 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[6];                // rax = *(uint64 *) (xp + 48)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU3); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
    add64_and_set_carry(q31, q31, rax); // cf? q31 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q31, q31, c); // cf? q31 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[6];                // rax = *(uint64 *) (xp + 48)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU4); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
    add64_and_set_carry(q32, q32, rax); // cf? q32 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q32, q32, c); // cf? q32 += c
    add64_with_carry(q33, q33, rdx); // q33 += rdx + cf; 
    rax = xp[7];                // rax = *(uint64 *) (xp + 56)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU0); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU0
    add64_and_set_carry(q24, q24, rax); // cf? q24 += rax
    // free q24
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[7];                // rax = *(uint64 *) (xp + 56)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU1); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU1
    add64_and_set_carry(q30, q30, rax); // cf? q30 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q30, q30, c); // cf? q30 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    q30_stack = q30;            // q30_stack = q30
    rax = xp[7];                // rax = *(uint64 *) (xp + 56)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU2); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU2
    add64_and_set_carry(q31, q31, rax); // cf? q31 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q31, q31, c); // cf? q31 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    q31_stack = q31;            // q31_stack = q31
    rax = xp[7];                // rax = *(uint64 *) (xp + 56)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU3); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
    add64_and_set_carry(q32, q32, rax); // cf? q32 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(q32, q32, c); // cf? q32 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    q32_stack = q32;            // q32_stack = q32
    rax = xp[7];                // rax = *(uint64 *) (xp + 56)
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_MU4); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
    add64_and_set_carry(q33, q33, rax); // cf? q33 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    q33 += c;                   // q33 += c
    q33_stack = q33;            // q33_stack = q33
    rax = q30_stack;            // rax = q30_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER0); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
    r20 = rax;                  // r20 = rax
    c = rdx;                    // c = rdx
    rax = q30_stack;            // rax = q30_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER1); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1
    r21 = rax;                  // r21 = rax
    add64_and_set_carry(r21, r21, c); // cf? r21 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = q30_stack;            // rax = q30_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER2); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER2
    r22 = rax;                  // r22 = rax
    add64_and_set_carry(r22, r22, c); // cf? r22 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = q30_stack;            // rax = q30_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER3); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3
    // free rdx
    r23 = rax;                  // r23 = rax
    r23 += c;                   // r23 += c
    rax = q31_stack;            // rax = q31_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER0); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
    add64_and_set_carry(r21, r21, rax); // cf? r21 += rax
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = q31_stack;            // rax = q31_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER1); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1
    add64_and_set_carry(r22, r22, rax); // cf? r22 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r22, r22, c); // cf? r22 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = q31_stack;            // rax = q31_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER2); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER2
    // free rdx
    r23 += rax;                 // r23 += rax
    r23 += c;                   // r23 += c
    rax = q32_stack;            // rax = q32_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER0); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
    add64_and_set_carry(r22, r22, rax); // cf? r22 += rax
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = q32_stack;            // rax = q32_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER1); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1
    // free rdx
    r23 += rax;                 // r23 += rax
    r23 += c;                   // r23 += c
    rax = q33_stack;            // rax = q33_stack
    multiply128(rdx, rax, rax, crypto_sign_ed25519_amd64_64_ORDER0); // (uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
    // free rdx
    r23 += rax;                 // r23 += rax
    r0 = xp[0];                 // r0 = *(uint64 *) (xp + 0)
    sub64_and_set_carry(r0, r0, r20); // cf? r0 -= r20
    t0 = r0;                    // t0 = r0
    r1 = xp[1];                 // r1 = *(uint64 *) (xp + 8)
    sub64_with_carry_and_set_carry(r1, r1, r21); // cf? r1 -= r21 - cf; 
    t1 = r1;                    // t1 = r1
    r2 = xp[2];                 // r2 = *(uint64 *) (xp + 16)
    sub64_with_carry_and_set_carry(r2, r2, r22); // cf? r2 -= r22 - cf; 
    t2 = r2;                    // t2 = r2
    r3 = xp[3];                 // r3 = *(uint64 *) (xp + 24)
    sub64_with_carry(r3, r3, r23); // r3 -= r23 - cf; 
    t3 = r3;                    // t3 = r3
    sub64_and_set_carry(t0, t0, crypto_sign_ed25519_amd64_64_ORDER0); // cf? t0 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
    sub64_with_carry_and_set_carry(t1, t1, crypto_sign_ed25519_amd64_64_ORDER1); // cf? t1 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1 - cf; 
    sub64_with_carry_and_set_carry(t2, t2, crypto_sign_ed25519_amd64_64_ORDER2); // cf? t2 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER2 - cf; 
    sub64_with_carry_and_set_carry(t3, t3, crypto_sign_ed25519_amd64_64_ORDER3); // cf? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3 - cf; 
    if (!carry) {
        r0 = t0;
    }                           // r0 = t0 if !carry; 
    t0 = r0;                    // t0 = r0
    if (!carry) {
        r1 = t1;
    }                           // r1 = t1 if !carry; 
    t1 = r1;                    // t1 = r1
    if (!carry) {
        r2 = t2;
    }                           // r2 = t2 if !carry; 
    t2 = r2;                    // t2 = r2
    if (!carry) {
        r3 = t3;
    }                           // r3 = t3 if !carry; 
    // unsigned<? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3 - carry
    // r0 = t0 if !unsigned<
    // t0 = r0
    // r1 = t1 if !unsigned<
    // t1 = r1
    // r2 = t2 if !unsigned<
    // t2 = r2
    // r3 = t3 if !unsigned<
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
