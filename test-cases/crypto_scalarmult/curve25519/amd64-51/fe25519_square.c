#include "qhasm-translator.h"

extern uint64_t crypto_scalarmult_curve25519_amd64_51_REDMASK51;

void
crypto_scalarmult_curve25519_amd64_51_fe25519_square(uint64_t * rp, uint64_t * xp)
{

    uint64_t        carry;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r3;
    uint64_t        r4;
    uint64_t        squarer01;
    uint64_t        squarer11;
    uint64_t        squarer21;
    uint64_t        squarer31;
    uint64_t        squarer41;
    uint64_t        squarerax;
    uint64_t        squarerdx;
    uint64_t        squareredmask;
    uint64_t        squaret;

    squarerax = xp[0];
    multiply128(squarerdx, squarerax, squarerax, xp[0]); // squarerdx, squarerax = squarerax * xp[$p0];
    r0 = squarerax;
    squarer01 = squarerdx;
    squarerax = xp[0];
    squarerax <<= 1;
    multiply128(squarerdx, squarerax, squarerax, xp[1]); // squarerdx, squarerax = squarerax * xp[$p0];
    r1 = squarerax;
    squarer11 = squarerdx;
    squarerax = xp[0];
    squarerax <<= 1;
    multiply128(squarerdx, squarerax, squarerax, xp[2]); // squarerdx, squarerax = squarerax * xp[$p0];
    r2 = squarerax;
    squarer21 = squarerdx;
    squarerax = xp[0];
    squarerax <<= 1;
    multiply128(squarerdx, squarerax, squarerax, xp[3]); // squarerdx, squarerax = squarerax * xp[$p0];
    r3 = squarerax;
    squarer31 = squarerdx;
    squarerax = xp[0];
    squarerax <<= 1;
    multiply128(squarerdx, squarerax, squarerax, xp[4]); // squarerdx, squarerax = squarerax * xp[$p0];
    r4 = squarerax;
    squarer41 = squarerdx;
    squarerax = xp[1];
    multiply128(squarerdx, squarerax, squarerax, xp[1]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r2, r2, squarerax); // cf? r2 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = xp[1];
    squarerax <<= 1;
    multiply128(squarerdx, squarerax, squarerax, xp[2]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r3, r3, squarerax); // cf? r3 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squarerax = xp[1];
    squarerax <<= 1;
    multiply128(squarerdx, squarerax, squarerax, xp[3]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r4, r4, squarerax); // cf? r4 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = xp[1];
    squarerax *= 38;
    multiply128(squarerdx, squarerax, squarerax, xp[4]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r0, r0, squarerax); // cf? r0 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = xp[2];
    multiply128(squarerdx, squarerax, squarerax, xp[2]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r4, r4, squarerax); // cf? r4 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = xp[2];
    squarerax *= 38;
    multiply128(squarerdx, squarerax, squarerax, xp[3]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r0, r0, squarerax); // cf? r0 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = xp[2];
    squarerax *= 38;
    multiply128(squarerdx, squarerax, squarerax, xp[4]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r1, r1, squarerax); // cf? r1 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = xp[3];
    squarerax *= 19;
    multiply128(squarerdx, squarerax, squarerax, xp[3]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r1, r1, squarerax); // cf? r1 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = xp[3];
    squarerax *= 38;
    multiply128(squarerdx, squarerax, squarerax, xp[4]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r2, r2, squarerax); // cf? r2 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = xp[4];
    squarerax *= 19;
    multiply128(squarerdx, squarerax, squarerax, xp[4]); // squarerdx, squarerax = squarerax * xp[$p0];
    add64_and_set_carry(r3, r3, squarerax); // cf? r3 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squareredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51;
    shift_left128(squarer01, squarer01, r0, 13);
    r0 &= squareredmask;
    shift_left128(squarer11, squarer11, r1, 13);
    r1 &= squareredmask;
    r1 += squarer01;
    shift_left128(squarer21, squarer21, r2, 13);
    r2 &= squareredmask;
    r2 += squarer11;
    shift_left128(squarer31, squarer31, r3, 13);
    r3 &= squareredmask;
    r3 += squarer21;
    shift_left128(squarer41, squarer41, r4, 13);
    r4 &= squareredmask;
    r4 += squarer31;
    squarer41 = squarer41 * 19;
    r0 += squarer41;
    squaret = r0;
    squaret >>= 51;
    squaret += r1;
    r0 &= squareredmask;
    r1 = squaret;
    squaret >>= 51;
    squaret += r2;
    r1 &= squareredmask;
    r2 = squaret;
    squaret >>= 51;
    squaret += r3;
    r2 &= squareredmask;
    r3 = squaret;
    squaret >>= 51;
    squaret += r4;
    r3 &= squareredmask;
    r4 = squaret;
    squaret >>= 51;
    squaret *= 19;
    r0 += squaret;
    r4 &= squareredmask;
    rp[0] = r0;
    rp[1] = r1;
    rp[2] = r2;
    rp[3] = r3;
    rp[4] = r4;
    return;
}
