#include "qhasm-translator.h"

extern uint64_t crypto_scalarmult_curve25519_amd64_51_REDMASK51;
void
crypto_scalarmult_curve25519_amd64_51_fe25519_mul(uint64_t * rp, uint64_t * xp, uint64_t * yp)
{
    uint64_t        carry;
    uint64_t        mulr01;
    uint64_t        mulr11;
    uint64_t        mulr21;
    uint64_t        mulr31;
    uint64_t        mulr41;
    uint64_t        mulrax;
    uint64_t        mulrdx;
    uint64_t        mulredmask;
    uint64_t        mult;
    uint64_t        mulx319_stack;
    uint64_t        mulx419_stack;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r3;
    uint64_t        r4;
    uint64_t       *rp_stack;

    rp_stack = rp;              // rp_stack = rp
    yp = yp;                    // yp = yp
    mulrax = xp[3];             // mulrax = *(uint64 *) (xp + 24)
    mulrax *= 19;               // mulrax *= 19
    mulx319_stack = mulrax;     // mulx319_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, yp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 16);
    r0 = mulrax;                // r0 = mulrax
    mulr01 = mulrdx;            // mulr01 = mulrdx
    mulrax = xp[4];             // mulrax = *(uint64 *) (xp + 32)
    mulrax *= 19;               // mulrax *= 19
    mulx419_stack = mulrax;     // mulx419_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, yp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 8);
    add64_and_set_carry(r0, r0, mulrax); // cf? r0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = xp[0];             // mulrax = *(uint64 *) (xp + 0)
    multiply128(mulrdx, mulrax, mulrax, yp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 0);
    add64_and_set_carry(r0, r0, mulrax); // cf? r0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = xp[0];             // mulrax = *(uint64 *) (xp + 0)
    multiply128(mulrdx, mulrax, mulrax, yp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 8);
    r1 = mulrax;                // r1 = mulrax
    mulr11 = mulrdx;            // mulr11 = mulrdx
    mulrax = xp[0];             // mulrax = *(uint64 *) (xp + 0)
    multiply128(mulrdx, mulrax, mulrax, yp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 16);
    r2 = mulrax;                // r2 = mulrax
    mulr21 = mulrdx;            // mulr21 = mulrdx
    mulrax = xp[0];             // mulrax = *(uint64 *) (xp + 0)
    multiply128(mulrdx, mulrax, mulrax, yp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 24);
    r3 = mulrax;                // r3 = mulrax
    mulr31 = mulrdx;            // mulr31 = mulrdx
    mulrax = xp[0];             // mulrax = *(uint64 *) (xp + 0)
    multiply128(mulrdx, mulrax, mulrax, yp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 32);
    r4 = mulrax;                // r4 = mulrax
    mulr41 = mulrdx;            // mulr41 = mulrdx
    mulrax = xp[1];             // mulrax = *(uint64 *) (xp + 8)
    multiply128(mulrdx, mulrax, mulrax, yp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 0);
    add64_and_set_carry(r1, r1, mulrax); // cf? r1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = xp[1];             // mulrax = *(uint64 *) (xp + 8)
    multiply128(mulrdx, mulrax, mulrax, yp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 8);
    add64_and_set_carry(r2, r2, mulrax); // cf? r2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = xp[1];             // mulrax = *(uint64 *) (xp + 8)
    multiply128(mulrdx, mulrax, mulrax, yp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 16);
    add64_and_set_carry(r3, r3, mulrax); // cf? r3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = xp[1];             // mulrax = *(uint64 *) (xp + 8)
    multiply128(mulrdx, mulrax, mulrax, yp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 24);
    add64_and_set_carry(r4, r4, mulrax); // cf? r4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = xp[1];             // mulrax = *(uint64 *) (xp + 8)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, yp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 32);
    add64_and_set_carry(r0, r0, mulrax); // cf? r0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = xp[2];             // mulrax = *(uint64 *) (xp + 16)
    multiply128(mulrdx, mulrax, mulrax, yp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 0);
    add64_and_set_carry(r2, r2, mulrax); // cf? r2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = xp[2];             // mulrax = *(uint64 *) (xp + 16)
    multiply128(mulrdx, mulrax, mulrax, yp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 8);
    add64_and_set_carry(r3, r3, mulrax); // cf? r3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = xp[2];             // mulrax = *(uint64 *) (xp + 16)
    multiply128(mulrdx, mulrax, mulrax, yp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 16);
    add64_and_set_carry(r4, r4, mulrax); // cf? r4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = xp[2];             // mulrax = *(uint64 *) (xp + 16)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, yp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 24);
    add64_and_set_carry(r0, r0, mulrax); // cf? r0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = xp[2];             // mulrax = *(uint64 *) (xp + 16)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, yp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 32);
    add64_and_set_carry(r1, r1, mulrax); // cf? r1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = xp[3];             // mulrax = *(uint64 *) (xp + 24)
    multiply128(mulrdx, mulrax, mulrax, yp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 0);
    add64_and_set_carry(r3, r3, mulrax); // cf? r3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = xp[3];             // mulrax = *(uint64 *) (xp + 24)
    multiply128(mulrdx, mulrax, mulrax, yp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 8);
    add64_and_set_carry(r4, r4, mulrax); // cf? r4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, yp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 24);
    add64_and_set_carry(r1, r1, mulrax); // cf? r1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, yp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 32);
    add64_and_set_carry(r2, r2, mulrax); // cf? r2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = xp[4];             // mulrax = *(uint64 *) (xp + 32)
    multiply128(mulrdx, mulrax, mulrax, yp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 0);
    add64_and_set_carry(r4, r4, mulrax); // cf? r4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, yp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 16);
    add64_and_set_carry(r1, r1, mulrax); // cf? r1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, yp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 24);
    add64_and_set_carry(r2, r2, mulrax); // cf? r2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, yp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (yp + 32);
    add64_and_set_carry(r3, r3, mulrax); // cf? r3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(mulr01, mulr01, r0, 13); // mulr01 = (mulr01.r0) << 13
    r0 &= mulredmask;           // r0 &= mulredmask
    shift_left128(mulr11, mulr11, r1, 13); // mulr11 = (mulr11.r1) << 13
    r1 &= mulredmask;           // r1 &= mulredmask
    r1 += mulr01;               // r1 += mulr01
    shift_left128(mulr21, mulr21, r2, 13); // mulr21 = (mulr21.r2) << 13
    r2 &= mulredmask;           // r2 &= mulredmask
    r2 += mulr11;               // r2 += mulr11
    shift_left128(mulr31, mulr31, r3, 13); // mulr31 = (mulr31.r3) << 13
    r3 &= mulredmask;           // r3 &= mulredmask
    r3 += mulr21;               // r3 += mulr21
    shift_left128(mulr41, mulr41, r4, 13); // mulr41 = (mulr41.r4) << 13
    r4 &= mulredmask;           // r4 &= mulredmask
    r4 += mulr31;               // r4 += mulr31
    mulr41 = mulr41 * 19;       // mulr41 = mulr41 * 19
    r0 += mulr41;               // r0 += mulr41
    mult = r0;                  // mult = r0
    mult >>= 51;                // (uint64) mult >>= 51
    mult += r1;                 // mult += r1
    r1 = mult;                  // r1 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    r0 &= mulredmask;           // r0 &= mulredmask
    mult += r2;                 // mult += r2
    r2 = mult;                  // r2 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    r1 &= mulredmask;           // r1 &= mulredmask
    mult += r3;                 // mult += r3
    r3 = mult;                  // r3 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    r2 &= mulredmask;           // r2 &= mulredmask
    mult += r4;                 // mult += r4
    r4 = mult;                  // r4 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    r3 &= mulredmask;           // r3 &= mulredmask
    mult *= 19;                 // mult *= 19
    r0 += mult;                 // r0 += mult
    r4 &= mulredmask;           // r4 &= mulredmask
    rp[0] = r0;                 // *(uint64 *) (rp + 0) = r0
    rp[1] = r1;                 // *(uint64 *) (rp + 8) = r1
    rp[2] = r2;                 // *(uint64 *) (rp + 16) = r2
    rp[3] = r3;                 // *(uint64 *) (rp + 24) = r3
    rp[4] = r4;                 // *(uint64 *) (rp + 32) = r4
    return;
}
