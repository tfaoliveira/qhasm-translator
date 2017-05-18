#include "qhasm-translator.h"

void
crypto_sign_ed25519_amd64_64_ull4_mul(uint64_t * rp, uint64_t * xp, uint64_t * yp)
{
    uint64_t        c;
    uint64_t        carry;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r3;
    uint64_t        r4;
    uint64_t        r5;
    uint64_t        r6;
    uint64_t        r7;
    uint64_t        rax;
    uint64_t        rdx;
    uint64_t        zero;

    yp = yp;                    // yp = yp
    r4 = 0;                     // r4 = 0
    r5 = 0;                     // r5 = 0
    r6 = 0;                     // r6 = 0
    r7 = 0;                     // r7 = 0
    zero = 0;                   // zero = 0
    rax = xp[0];                // rax = *(uint64 *) (xp + 0)
    multiply128(rdx, rax, rax, yp[0]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 0);
    r0 = rax;                   // r0 = rax
    c = rdx;                    // c = rdx
    rax = xp[0];                // rax = *(uint64 *) (xp + 0)
    multiply128(rdx, rax, rax, yp[1]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 8);
    r1 = rax;                   // r1 = rax
    add64_and_set_carry(r1, r1, c); // cf? r1 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[0];                // rax = *(uint64 *) (xp + 0)
    multiply128(rdx, rax, rax, yp[2]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 16);
    r2 = rax;                   // r2 = rax
    add64_and_set_carry(r2, r2, c); // cf? r2 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[0];                // rax = *(uint64 *) (xp + 0)
    multiply128(rdx, rax, rax, yp[3]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 24);
    r3 = rax;                   // r3 = rax
    add64_and_set_carry(r3, r3, c); // cf? r3 += c
    add64_with_carry(r4, r4, rdx); // r4 += rdx + cf; 
    rax = xp[1];                // rax = *(uint64 *) (xp + 8)
    multiply128(rdx, rax, rax, yp[0]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 0);
    add64_and_set_carry(r1, r1, rax); // cf? r1 += rax
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[1];                // rax = *(uint64 *) (xp + 8)
    multiply128(rdx, rax, rax, yp[1]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 8);
    add64_and_set_carry(r2, r2, rax); // cf? r2 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r2, r2, c); // cf? r2 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[1];                // rax = *(uint64 *) (xp + 8)
    multiply128(rdx, rax, rax, yp[2]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 16);
    add64_and_set_carry(r3, r3, rax); // cf? r3 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r3, r3, c); // cf? r3 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[1];                // rax = *(uint64 *) (xp + 8)
    multiply128(rdx, rax, rax, yp[3]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 24);
    add64_and_set_carry(r4, r4, rax); // cf? r4 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r4, r4, c); // cf? r4 += c
    add64_with_carry(r5, r5, rdx); // r5 += rdx + cf; 
    rax = xp[2];                // rax = *(uint64 *) (xp + 16)
    multiply128(rdx, rax, rax, yp[0]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 0);
    add64_and_set_carry(r2, r2, rax); // cf? r2 += rax
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[2];                // rax = *(uint64 *) (xp + 16)
    multiply128(rdx, rax, rax, yp[1]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 8);
    add64_and_set_carry(r3, r3, rax); // cf? r3 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r3, r3, c); // cf? r3 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[2];                // rax = *(uint64 *) (xp + 16)
    multiply128(rdx, rax, rax, yp[2]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 16);
    add64_and_set_carry(r4, r4, rax); // cf? r4 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r4, r4, c); // cf? r4 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[2];                // rax = *(uint64 *) (xp + 16)
    multiply128(rdx, rax, rax, yp[3]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 24);
    add64_and_set_carry(r5, r5, rax); // cf? r5 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r5, r5, c); // cf? r5 += c
    add64_with_carry(r6, r6, rdx); // r6 += rdx + cf; 
    rax = xp[3];                // rax = *(uint64 *) (xp + 24)
    multiply128(rdx, rax, rax, yp[0]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 0);
    add64_and_set_carry(r3, r3, rax); // cf? r3 += rax
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[3];                // rax = *(uint64 *) (xp + 24)
    multiply128(rdx, rax, rax, yp[1]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 8);
    add64_and_set_carry(r4, r4, rax); // cf? r4 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r4, r4, c); // cf? r4 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[3];                // rax = *(uint64 *) (xp + 24)
    multiply128(rdx, rax, rax, yp[2]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 16);
    add64_and_set_carry(r5, r5, rax); // cf? r5 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r5, r5, c); // cf? r5 += c
    c = 0;                      // c = 0
    add64_with_carry(c, c, rdx); // c += rdx + cf; 
    rax = xp[3];                // rax = *(uint64 *) (xp + 24)
    multiply128(rdx, rax, rax, yp[3]); // (uint128) rdx rax = rax * *(uint64 *) (yp + 24);
    add64_and_set_carry(r6, r6, rax); // cf? r6 += rax
    add64_with_carry(rdx, rdx, zero); // rdx += zero + cf; 
    add64_and_set_carry(r6, r6, c); // cf? r6 += c
    add64_with_carry(r7, r7, rdx); // r7 += rdx + cf; 
    rp[0] = r0;                 // *(uint64 *) (rp + 0) = r0
    rp[1] = r1;                 // *(uint64 *) (rp + 8) = r1
    rp[2] = r2;                 // *(uint64 *) (rp + 16) = r2
    rp[3] = r3;                 // *(uint64 *) (rp + 24) = r3
    rp[4] = r4;                 // *(uint64 *) (rp + 32) = r4
    rp[5] = r5;                 // *(uint64 *) (rp + 40) = r5
    rp[6] = r6;                 // *(uint64 *) (rp + 48) = r6
    rp[7] = r7;                 // *(uint64 *) (rp + 56) = r7
    return;
}
