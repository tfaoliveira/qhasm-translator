#include "qhasm-translator.h"

void
crypto_sign_ed25519_amd64_64_fe25519_freeze(uint64_t * rp)
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
    uint64_t        two63;

    r0 = rp[0];                 // r0 = *(uint64 *) (rp + 0)
    r1 = rp[1];                 // r1 = *(uint64 *) (rp + 8)
    r2 = rp[2];                 // r2 = *(uint64 *) (rp + 16)
    r3 = rp[3];                 // r3 = *(uint64 *) (rp + 24)
    t0 = r0;                    // t0 = r0
    t1 = r1;                    // t1 = r1
    t2 = r2;                    // t2 = r2
    t3 = r3;                    // t3 = r3
    two63 = 1;                  // two63 = 1
    two63 <<= 63;               // two63 <<= 63
    add64_and_set_carry(t0, t0, 19); // cf? t0 += 19
    add64_with_carry_and_set_carry(t1, t1, 0); // cf? t1 += 0 + cf; 
    add64_with_carry_and_set_carry(t2, t2, 0); // cf? t2 += 0 + cf; 
    add64_with_carry_and_set_carry(t3, t3, two63); // cf? t3 += two63 + cf; 
    if (carry) {
        r0 = t0;
    }                           // r0 = t0 if carry; 
    if (carry) {
        r1 = t1;
    }                           // r1 = t1 if carry; 
    if (carry) {
        r2 = t2;
    }                           // r2 = t2 if carry; 
    if (carry) {
        r3 = t3;
    }                           // r3 = t3 if carry; 
    t0 = r0;                    // t0 = r0
    t1 = r1;                    // t1 = r1
    t2 = r2;                    // t2 = r2
    t3 = r3;                    // t3 = r3
    add64_and_set_carry(t0, t0, 19); // cf? t0 += 19
    add64_with_carry_and_set_carry(t1, t1, 0); // cf? t1 += 0 + cf; 
    add64_with_carry_and_set_carry(t2, t2, 0); // cf? t2 += 0 + cf; 
    add64_with_carry_and_set_carry(t3, t3, two63); // cf? t3 += two63 + cf; 
    if (carry) {
        r0 = t0;
    }                           // r0 = t0 if carry; 
    if (carry) {
        r1 = t1;
    }                           // r1 = t1 if carry; 
    if (carry) {
        r2 = t2;
    }                           // r2 = t2 if carry; 
    if (carry) {
        r3 = t3;
    }                           // r3 = t3 if carry; 
    rp[0] = r0;                 // *(uint64 *) (rp + 0) = r0
    rp[1] = r1;                 // *(uint64 *) (rp + 8) = r1
    rp[2] = r2;                 // *(uint64 *) (rp + 16) = r2
    rp[3] = r3;                 // *(uint64 *) (rp + 24) = r3
    return;
}
