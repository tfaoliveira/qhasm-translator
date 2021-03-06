#include "qhasm-translator.h"

extern uint64_t crypto_scalarmult_curve25519_amd64_51_121666_213;
extern uint64_t crypto_scalarmult_curve25519_amd64_51_2P0;
extern uint64_t crypto_scalarmult_curve25519_amd64_51_2P1234;
extern uint64_t crypto_scalarmult_curve25519_amd64_51_REDMASK51;
void
crypto_scalarmult_curve25519_amd64_51_ladderstep(uint64_t * workp)
{
    uint64_t        carry;
    uint64_t        mul121666rax;
    uint64_t        mul121666rdx;
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
    uint64_t        squarer01;
    uint64_t        squarer11;
    uint64_t        squarer21;
    uint64_t        squarer31;
    uint64_t        squarer41;
    uint64_t        squarerax;
    uint64_t        squarerdx;
    uint64_t        squareredmask;
    uint64_t        squaret;
    uint64_t        t10;
    uint64_t        t10_stack;
    uint64_t        t11;
    uint64_t        t11_stack;
    uint64_t        t12;
    uint64_t        t12_stack;
    uint64_t        t13;
    uint64_t        t13_stack;
    uint64_t        t14;
    uint64_t        t14_stack;
    uint64_t        t20;
    uint64_t        t20_stack;
    uint64_t        t21;
    uint64_t        t21_stack;
    uint64_t        t22;
    uint64_t        t22_stack;
    uint64_t        t23;
    uint64_t        t23_stack;
    uint64_t        t24;
    uint64_t        t24_stack;
    uint64_t        t30;
    uint64_t        t30_stack;
    uint64_t        t31;
    uint64_t        t31_stack;
    uint64_t        t32;
    uint64_t        t32_stack;
    uint64_t        t33;
    uint64_t        t33_stack;
    uint64_t        t34;
    uint64_t        t34_stack;
    uint64_t        t40;
    uint64_t        t40_stack;
    uint64_t        t41;
    uint64_t        t41_stack;
    uint64_t        t42;
    uint64_t        t42_stack;
    uint64_t        t43;
    uint64_t        t43_stack;
    uint64_t        t44;
    uint64_t        t44_stack;
    uint64_t        t50;
    uint64_t        t50_stack;
    uint64_t        t51;
    uint64_t        t51_stack;
    uint64_t        t52;
    uint64_t        t52_stack;
    uint64_t        t53;
    uint64_t        t53_stack;
    uint64_t        t54;
    uint64_t        t54_stack;
    uint64_t        t60;
    uint64_t        t60_stack;
    uint64_t        t61;
    uint64_t        t61_stack;
    uint64_t        t62;
    uint64_t        t62_stack;
    uint64_t        t63;
    uint64_t        t63_stack;
    uint64_t        t64;
    uint64_t        t64_stack;
    uint64_t        t70;
    uint64_t        t70_stack;
    uint64_t        t71;
    uint64_t        t71_stack;
    uint64_t        t72;
    uint64_t        t72_stack;
    uint64_t        t73;
    uint64_t        t73_stack;
    uint64_t        t74;
    uint64_t        t74_stack;
    uint64_t        t80;
    uint64_t        t81;
    uint64_t        t82;
    uint64_t        t83;
    uint64_t        t84;
    uint64_t        t90;
    uint64_t        t90_stack;
    uint64_t        t91;
    uint64_t        t91_stack;
    uint64_t        t92;
    uint64_t        t92_stack;
    uint64_t        t93;
    uint64_t        t93_stack;
    uint64_t        t94;
    uint64_t        t94_stack;
    uint64_t        xp0;
    uint64_t        xp1;
    uint64_t        xp2;
    uint64_t        xp3;
    uint64_t        xp4;
    uint64_t        xq0;
    uint64_t        xq1;
    uint64_t        xq2;
    uint64_t        xq3;
    uint64_t        xq4;
    uint64_t        zp0;
    uint64_t        zp1;
    uint64_t        zp2;
    uint64_t        zp3;
    uint64_t        zp4;
    uint64_t        zq0;
    uint64_t        zq1;
    uint64_t        zq2;
    uint64_t        zq3;
    uint64_t        zq4;

    t10 = workp[5];             // t10 = *(uint64 *) (workp + 40)
    t11 = workp[6];             // t11 = *(uint64 *) (workp + 48)
    t12 = workp[7];             // t12 = *(uint64 *) (workp + 56)
    t13 = workp[8];             // t13 = *(uint64 *) (workp + 64)
    t14 = workp[9];             // t14 = *(uint64 *) (workp + 72)
    t20 = t10;                  // t20 = t10
    t21 = t11;                  // t21 = t11
    t22 = t12;                  // t22 = t12
    t23 = t13;                  // t23 = t13
    t24 = t14;                  // t24 = t14
    t20 += crypto_scalarmult_curve25519_amd64_51_2P0; // t20 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P0
    t21 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t21 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t22 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t22 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t23 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t23 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t24 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t24 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t10 += workp[10];           // t10 += *(uint64 *) (workp + 80)
    t11 += workp[11];           // t11 += *(uint64 *) (workp + 88)
    t12 += workp[12];           // t12 += *(uint64 *) (workp + 96)
    t13 += workp[13];           // t13 += *(uint64 *) (workp + 104)
    t14 += workp[14];           // t14 += *(uint64 *) (workp + 112)
    t20 -= workp[10];           // t20 -= *(uint64 *) (workp + 80)
    t21 -= workp[11];           // t21 -= *(uint64 *) (workp + 88)
    t22 -= workp[12];           // t22 -= *(uint64 *) (workp + 96)
    t23 -= workp[13];           // t23 -= *(uint64 *) (workp + 104)
    t24 -= workp[14];           // t24 -= *(uint64 *) (workp + 112)
    t10_stack = t10;            // t10_stack = t10
    t11_stack = t11;            // t11_stack = t11
    t12_stack = t12;            // t12_stack = t12
    t13_stack = t13;            // t13_stack = t13
    t14_stack = t14;            // t14_stack = t14
    t20_stack = t20;            // t20_stack = t20
    t21_stack = t21;            // t21_stack = t21
    t22_stack = t22;            // t22_stack = t22
    t23_stack = t23;            // t23_stack = t23
    t24_stack = t24;            // t24_stack = t24
    squarerax = t20_stack;      // squarerax = t20_stack
    multiply128(squarerdx, squarerax, squarerax, t20_stack); // (uint128) squarerdx squarerax = squarerax * t20_stack
    t70 = squarerax;            // t70 = squarerax
    squarer01 = squarerdx;      // squarer01 = squarerdx
    squarerax = t20_stack;      // squarerax = t20_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t21_stack); // (uint128) squarerdx squarerax = squarerax * t21_stack
    t71 = squarerax;            // t71 = squarerax
    squarer11 = squarerdx;      // squarer11 = squarerdx
    squarerax = t20_stack;      // squarerax = t20_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t22_stack); // (uint128) squarerdx squarerax = squarerax * t22_stack
    t72 = squarerax;            // t72 = squarerax
    squarer21 = squarerdx;      // squarer21 = squarerdx
    squarerax = t20_stack;      // squarerax = t20_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t23_stack); // (uint128) squarerdx squarerax = squarerax * t23_stack
    t73 = squarerax;            // t73 = squarerax
    squarer31 = squarerdx;      // squarer31 = squarerdx
    squarerax = t20_stack;      // squarerax = t20_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t24_stack); // (uint128) squarerdx squarerax = squarerax * t24_stack
    t74 = squarerax;            // t74 = squarerax
    squarer41 = squarerdx;      // squarer41 = squarerdx
    squarerax = t21_stack;      // squarerax = t21_stack
    multiply128(squarerdx, squarerax, squarerax, t21_stack); // (uint128) squarerdx squarerax = squarerax * t21_stack
    add64_and_set_carry(t72, t72, squarerax); // cf? t72 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = t21_stack;      // squarerax = t21_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t22_stack); // (uint128) squarerdx squarerax = squarerax * t22_stack
    add64_and_set_carry(t73, t73, squarerax); // cf? t73 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squarerax = t21_stack;      // squarerax = t21_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t23_stack); // (uint128) squarerdx squarerax = squarerax * t23_stack
    add64_and_set_carry(t74, t74, squarerax); // cf? t74 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = t21_stack;      // squarerax = t21_stack
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, t24_stack); // (uint128) squarerdx squarerax = squarerax * t24_stack
    add64_and_set_carry(t70, t70, squarerax); // cf? t70 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = t22_stack;      // squarerax = t22_stack
    multiply128(squarerdx, squarerax, squarerax, t22_stack); // (uint128) squarerdx squarerax = squarerax * t22_stack
    add64_and_set_carry(t74, t74, squarerax); // cf? t74 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = t22_stack;      // squarerax = t22_stack
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, t23_stack); // (uint128) squarerdx squarerax = squarerax * t23_stack
    add64_and_set_carry(t70, t70, squarerax); // cf? t70 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = t22_stack;      // squarerax = t22_stack
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, t24_stack); // (uint128) squarerdx squarerax = squarerax * t24_stack
    add64_and_set_carry(t71, t71, squarerax); // cf? t71 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = t23_stack;      // squarerax = t23_stack
    squarerax *= 19;            // squarerax *= 19
    multiply128(squarerdx, squarerax, squarerax, t23_stack); // (uint128) squarerdx squarerax = squarerax * t23_stack
    add64_and_set_carry(t71, t71, squarerax); // cf? t71 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = t23_stack;      // squarerax = t23_stack
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, t24_stack); // (uint128) squarerdx squarerax = squarerax * t24_stack
    add64_and_set_carry(t72, t72, squarerax); // cf? t72 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = t24_stack;      // squarerax = t24_stack
    squarerax *= 19;            // squarerax *= 19
    multiply128(squarerdx, squarerax, squarerax, t24_stack); // (uint128) squarerdx squarerax = squarerax * t24_stack
    add64_and_set_carry(t73, t73, squarerax); // cf? t73 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squareredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // squareredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(squarer01, squarer01, t70, 13); // squarer01 = (squarer01.t70) << 13
    t70 &= squareredmask;       // t70 &= squareredmask
    shift_left128(squarer11, squarer11, t71, 13); // squarer11 = (squarer11.t71) << 13
    t71 &= squareredmask;       // t71 &= squareredmask
    t71 += squarer01;           // t71 += squarer01
    shift_left128(squarer21, squarer21, t72, 13); // squarer21 = (squarer21.t72) << 13
    t72 &= squareredmask;       // t72 &= squareredmask
    t72 += squarer11;           // t72 += squarer11
    shift_left128(squarer31, squarer31, t73, 13); // squarer31 = (squarer31.t73) << 13
    t73 &= squareredmask;       // t73 &= squareredmask
    t73 += squarer21;           // t73 += squarer21
    shift_left128(squarer41, squarer41, t74, 13); // squarer41 = (squarer41.t74) << 13
    t74 &= squareredmask;       // t74 &= squareredmask
    t74 += squarer31;           // t74 += squarer31
    squarer41 = squarer41 * 19; // squarer41 = squarer41 * 19
    t70 += squarer41;           // t70 += squarer41
    squaret = t70;              // squaret = t70
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += t71;             // squaret += t71
    t70 &= squareredmask;       // t70 &= squareredmask
    t71 = squaret;              // t71 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += t72;             // squaret += t72
    t71 &= squareredmask;       // t71 &= squareredmask
    t72 = squaret;              // t72 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += t73;             // squaret += t73
    t72 &= squareredmask;       // t72 &= squareredmask
    t73 = squaret;              // t73 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += t74;             // squaret += t74
    t73 &= squareredmask;       // t73 &= squareredmask
    t74 = squaret;              // t74 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret *= 19;              // squaret *= 19
    t70 += squaret;             // t70 += squaret
    t74 &= squareredmask;       // t74 &= squareredmask
    t70_stack = t70;            // t70_stack = t70
    t71_stack = t71;            // t71_stack = t71
    t72_stack = t72;            // t72_stack = t72
    t73_stack = t73;            // t73_stack = t73
    t74_stack = t74;            // t74_stack = t74
    squarerax = t10_stack;      // squarerax = t10_stack
    multiply128(squarerdx, squarerax, squarerax, t10_stack); // (uint128) squarerdx squarerax = squarerax * t10_stack
    t60 = squarerax;            // t60 = squarerax
    squarer01 = squarerdx;      // squarer01 = squarerdx
    squarerax = t10_stack;      // squarerax = t10_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t11_stack); // (uint128) squarerdx squarerax = squarerax * t11_stack
    t61 = squarerax;            // t61 = squarerax
    squarer11 = squarerdx;      // squarer11 = squarerdx
    squarerax = t10_stack;      // squarerax = t10_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t12_stack); // (uint128) squarerdx squarerax = squarerax * t12_stack
    t62 = squarerax;            // t62 = squarerax
    squarer21 = squarerdx;      // squarer21 = squarerdx
    squarerax = t10_stack;      // squarerax = t10_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t13_stack); // (uint128) squarerdx squarerax = squarerax * t13_stack
    t63 = squarerax;            // t63 = squarerax
    squarer31 = squarerdx;      // squarer31 = squarerdx
    squarerax = t10_stack;      // squarerax = t10_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t14_stack); // (uint128) squarerdx squarerax = squarerax * t14_stack
    t64 = squarerax;            // t64 = squarerax
    squarer41 = squarerdx;      // squarer41 = squarerdx
    squarerax = t11_stack;      // squarerax = t11_stack
    multiply128(squarerdx, squarerax, squarerax, t11_stack); // (uint128) squarerdx squarerax = squarerax * t11_stack
    add64_and_set_carry(t62, t62, squarerax); // cf? t62 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = t11_stack;      // squarerax = t11_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t12_stack); // (uint128) squarerdx squarerax = squarerax * t12_stack
    add64_and_set_carry(t63, t63, squarerax); // cf? t63 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squarerax = t11_stack;      // squarerax = t11_stack
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, t13_stack); // (uint128) squarerdx squarerax = squarerax * t13_stack
    add64_and_set_carry(t64, t64, squarerax); // cf? t64 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = t11_stack;      // squarerax = t11_stack
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, t14_stack); // (uint128) squarerdx squarerax = squarerax * t14_stack
    add64_and_set_carry(t60, t60, squarerax); // cf? t60 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = t12_stack;      // squarerax = t12_stack
    multiply128(squarerdx, squarerax, squarerax, t12_stack); // (uint128) squarerdx squarerax = squarerax * t12_stack
    add64_and_set_carry(t64, t64, squarerax); // cf? t64 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = t12_stack;      // squarerax = t12_stack
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, t13_stack); // (uint128) squarerdx squarerax = squarerax * t13_stack
    add64_and_set_carry(t60, t60, squarerax); // cf? t60 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = t12_stack;      // squarerax = t12_stack
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, t14_stack); // (uint128) squarerdx squarerax = squarerax * t14_stack
    add64_and_set_carry(t61, t61, squarerax); // cf? t61 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = t13_stack;      // squarerax = t13_stack
    squarerax *= 19;            // squarerax *= 19
    multiply128(squarerdx, squarerax, squarerax, t13_stack); // (uint128) squarerdx squarerax = squarerax * t13_stack
    add64_and_set_carry(t61, t61, squarerax); // cf? t61 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = t13_stack;      // squarerax = t13_stack
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, t14_stack); // (uint128) squarerdx squarerax = squarerax * t14_stack
    add64_and_set_carry(t62, t62, squarerax); // cf? t62 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = t14_stack;      // squarerax = t14_stack
    squarerax *= 19;            // squarerax *= 19
    multiply128(squarerdx, squarerax, squarerax, t14_stack); // (uint128) squarerdx squarerax = squarerax * t14_stack
    add64_and_set_carry(t63, t63, squarerax); // cf? t63 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squareredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // squareredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(squarer01, squarer01, t60, 13); // squarer01 = (squarer01.t60) << 13
    t60 &= squareredmask;       // t60 &= squareredmask
    shift_left128(squarer11, squarer11, t61, 13); // squarer11 = (squarer11.t61) << 13
    t61 &= squareredmask;       // t61 &= squareredmask
    t61 += squarer01;           // t61 += squarer01
    shift_left128(squarer21, squarer21, t62, 13); // squarer21 = (squarer21.t62) << 13
    t62 &= squareredmask;       // t62 &= squareredmask
    t62 += squarer11;           // t62 += squarer11
    shift_left128(squarer31, squarer31, t63, 13); // squarer31 = (squarer31.t63) << 13
    t63 &= squareredmask;       // t63 &= squareredmask
    t63 += squarer21;           // t63 += squarer21
    shift_left128(squarer41, squarer41, t64, 13); // squarer41 = (squarer41.t64) << 13
    t64 &= squareredmask;       // t64 &= squareredmask
    t64 += squarer31;           // t64 += squarer31
    squarer41 = squarer41 * 19; // squarer41 = squarer41 * 19
    t60 += squarer41;           // t60 += squarer41
    squaret = t60;              // squaret = t60
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += t61;             // squaret += t61
    t60 &= squareredmask;       // t60 &= squareredmask
    t61 = squaret;              // t61 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += t62;             // squaret += t62
    t61 &= squareredmask;       // t61 &= squareredmask
    t62 = squaret;              // t62 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += t63;             // squaret += t63
    t62 &= squareredmask;       // t62 &= squareredmask
    t63 = squaret;              // t63 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += t64;             // squaret += t64
    t63 &= squareredmask;       // t63 &= squareredmask
    t64 = squaret;              // t64 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret *= 19;              // squaret *= 19
    t60 += squaret;             // t60 += squaret
    t64 &= squareredmask;       // t64 &= squareredmask
    t60_stack = t60;            // t60_stack = t60
    t61_stack = t61;            // t61_stack = t61
    t62_stack = t62;            // t62_stack = t62
    t63_stack = t63;            // t63_stack = t63
    t64_stack = t64;            // t64_stack = t64
    t50 = t60;                  // t50 = t60
    t51 = t61;                  // t51 = t61
    t52 = t62;                  // t52 = t62
    t53 = t63;                  // t53 = t63
    t54 = t64;                  // t54 = t64
    t50 += crypto_scalarmult_curve25519_amd64_51_2P0; // t50 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P0
    t51 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t51 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t52 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t52 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t53 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t53 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t54 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t54 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t50 -= t70_stack;           // t50 -= t70_stack
    t51 -= t71_stack;           // t51 -= t71_stack
    t52 -= t72_stack;           // t52 -= t72_stack
    t53 -= t73_stack;           // t53 -= t73_stack
    t54 -= t74_stack;           // t54 -= t74_stack
    t50_stack = t50;            // t50_stack = t50
    t51_stack = t51;            // t51_stack = t51
    t52_stack = t52;            // t52_stack = t52
    t53_stack = t53;            // t53_stack = t53
    t54_stack = t54;            // t54_stack = t54
    t30 = workp[15];            // t30 = *(uint64 *) (workp + 120)
    t31 = workp[16];            // t31 = *(uint64 *) (workp + 128)
    t32 = workp[17];            // t32 = *(uint64 *) (workp + 136)
    t33 = workp[18];            // t33 = *(uint64 *) (workp + 144)
    t34 = workp[19];            // t34 = *(uint64 *) (workp + 152)
    t40 = t30;                  // t40 = t30
    t41 = t31;                  // t41 = t31
    t42 = t32;                  // t42 = t32
    t43 = t33;                  // t43 = t33
    t44 = t34;                  // t44 = t34
    t40 += crypto_scalarmult_curve25519_amd64_51_2P0; // t40 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P0
    t41 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t41 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t42 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t42 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t43 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t43 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t44 += crypto_scalarmult_curve25519_amd64_51_2P1234; // t44 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t30 += workp[20];           // t30 += *(uint64 *) (workp + 160)
    t31 += workp[21];           // t31 += *(uint64 *) (workp + 168)
    t32 += workp[22];           // t32 += *(uint64 *) (workp + 176)
    t33 += workp[23];           // t33 += *(uint64 *) (workp + 184)
    t34 += workp[24];           // t34 += *(uint64 *) (workp + 192)
    t40 -= workp[20];           // t40 -= *(uint64 *) (workp + 160)
    t41 -= workp[21];           // t41 -= *(uint64 *) (workp + 168)
    t42 -= workp[22];           // t42 -= *(uint64 *) (workp + 176)
    t43 -= workp[23];           // t43 -= *(uint64 *) (workp + 184)
    t44 -= workp[24];           // t44 -= *(uint64 *) (workp + 192)
    t30_stack = t30;            // t30_stack = t30
    t31_stack = t31;            // t31_stack = t31
    t32_stack = t32;            // t32_stack = t32
    t33_stack = t33;            // t33_stack = t33
    t34_stack = t34;            // t34_stack = t34
    t40_stack = t40;            // t40_stack = t40
    t41_stack = t41;            // t41_stack = t41
    t42_stack = t42;            // t42_stack = t42
    t43_stack = t43;            // t43_stack = t43
    t44_stack = t44;            // t44_stack = t44
    mulrax = t33_stack;         // mulrax = t33_stack
    mulrax *= 19;               // mulrax *= 19
    mulx319_stack = mulrax;     // mulx319_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, t22_stack); // (uint128) mulrdx mulrax = mulrax * t22_stack
    t90 = mulrax;               // t90 = mulrax
    mulr01 = mulrdx;            // mulr01 = mulrdx
    mulrax = t34_stack;         // mulrax = t34_stack
    mulrax *= 19;               // mulrax *= 19
    mulx419_stack = mulrax;     // mulx419_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, t21_stack); // (uint128) mulrdx mulrax = mulrax * t21_stack
    add64_and_set_carry(t90, t90, mulrax); // cf? t90 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t30_stack;         // mulrax = t30_stack
    multiply128(mulrdx, mulrax, mulrax, t20_stack); // (uint128) mulrdx mulrax = mulrax * t20_stack
    add64_and_set_carry(t90, t90, mulrax); // cf? t90 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t30_stack;         // mulrax = t30_stack
    multiply128(mulrdx, mulrax, mulrax, t21_stack); // (uint128) mulrdx mulrax = mulrax * t21_stack
    t91 = mulrax;               // t91 = mulrax
    mulr11 = mulrdx;            // mulr11 = mulrdx
    mulrax = t30_stack;         // mulrax = t30_stack
    multiply128(mulrdx, mulrax, mulrax, t22_stack); // (uint128) mulrdx mulrax = mulrax * t22_stack
    t92 = mulrax;               // t92 = mulrax
    mulr21 = mulrdx;            // mulr21 = mulrdx
    mulrax = t30_stack;         // mulrax = t30_stack
    multiply128(mulrdx, mulrax, mulrax, t23_stack); // (uint128) mulrdx mulrax = mulrax * t23_stack
    t93 = mulrax;               // t93 = mulrax
    mulr31 = mulrdx;            // mulr31 = mulrdx
    mulrax = t30_stack;         // mulrax = t30_stack
    multiply128(mulrdx, mulrax, mulrax, t24_stack); // (uint128) mulrdx mulrax = mulrax * t24_stack
    t94 = mulrax;               // t94 = mulrax
    mulr41 = mulrdx;            // mulr41 = mulrdx
    mulrax = t31_stack;         // mulrax = t31_stack
    multiply128(mulrdx, mulrax, mulrax, t20_stack); // (uint128) mulrdx mulrax = mulrax * t20_stack
    add64_and_set_carry(t91, t91, mulrax); // cf? t91 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = t31_stack;         // mulrax = t31_stack
    multiply128(mulrdx, mulrax, mulrax, t21_stack); // (uint128) mulrdx mulrax = mulrax * t21_stack
    add64_and_set_carry(t92, t92, mulrax); // cf? t92 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t31_stack;         // mulrax = t31_stack
    multiply128(mulrdx, mulrax, mulrax, t22_stack); // (uint128) mulrdx mulrax = mulrax * t22_stack
    add64_and_set_carry(t93, t93, mulrax); // cf? t93 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t31_stack;         // mulrax = t31_stack
    multiply128(mulrdx, mulrax, mulrax, t23_stack); // (uint128) mulrdx mulrax = mulrax * t23_stack
    add64_and_set_carry(t94, t94, mulrax); // cf? t94 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = t31_stack;         // mulrax = t31_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t24_stack); // (uint128) mulrdx mulrax = mulrax * t24_stack
    add64_and_set_carry(t90, t90, mulrax); // cf? t90 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t32_stack;         // mulrax = t32_stack
    multiply128(mulrdx, mulrax, mulrax, t20_stack); // (uint128) mulrdx mulrax = mulrax * t20_stack
    add64_and_set_carry(t92, t92, mulrax); // cf? t92 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t32_stack;         // mulrax = t32_stack
    multiply128(mulrdx, mulrax, mulrax, t21_stack); // (uint128) mulrdx mulrax = mulrax * t21_stack
    add64_and_set_carry(t93, t93, mulrax); // cf? t93 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t32_stack;         // mulrax = t32_stack
    multiply128(mulrdx, mulrax, mulrax, t22_stack); // (uint128) mulrdx mulrax = mulrax * t22_stack
    add64_and_set_carry(t94, t94, mulrax); // cf? t94 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = t32_stack;         // mulrax = t32_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t23_stack); // (uint128) mulrdx mulrax = mulrax * t23_stack
    add64_and_set_carry(t90, t90, mulrax); // cf? t90 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t32_stack;         // mulrax = t32_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t24_stack); // (uint128) mulrdx mulrax = mulrax * t24_stack
    add64_and_set_carry(t91, t91, mulrax); // cf? t91 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = t33_stack;         // mulrax = t33_stack
    multiply128(mulrdx, mulrax, mulrax, t20_stack); // (uint128) mulrdx mulrax = mulrax * t20_stack
    add64_and_set_carry(t93, t93, mulrax); // cf? t93 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t33_stack;         // mulrax = t33_stack
    multiply128(mulrdx, mulrax, mulrax, t21_stack); // (uint128) mulrdx mulrax = mulrax * t21_stack
    add64_and_set_carry(t94, t94, mulrax); // cf? t94 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, t23_stack); // (uint128) mulrdx mulrax = mulrax * t23_stack
    add64_and_set_carry(t91, t91, mulrax); // cf? t91 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, t24_stack); // (uint128) mulrdx mulrax = mulrax * t24_stack
    add64_and_set_carry(t92, t92, mulrax); // cf? t92 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t34_stack;         // mulrax = t34_stack
    multiply128(mulrdx, mulrax, mulrax, t20_stack); // (uint128) mulrdx mulrax = mulrax * t20_stack
    add64_and_set_carry(t94, t94, mulrax); // cf? t94 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t22_stack); // (uint128) mulrdx mulrax = mulrax * t22_stack
    add64_and_set_carry(t91, t91, mulrax); // cf? t91 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t23_stack); // (uint128) mulrdx mulrax = mulrax * t23_stack
    add64_and_set_carry(t92, t92, mulrax); // cf? t92 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t24_stack); // (uint128) mulrdx mulrax = mulrax * t24_stack
    add64_and_set_carry(t93, t93, mulrax); // cf? t93 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(mulr01, mulr01, t90, 13); // mulr01 = (mulr01.t90) << 13
    t90 &= mulredmask;          // t90 &= mulredmask
    shift_left128(mulr11, mulr11, t91, 13); // mulr11 = (mulr11.t91) << 13
    t91 &= mulredmask;          // t91 &= mulredmask
    t91 += mulr01;              // t91 += mulr01
    shift_left128(mulr21, mulr21, t92, 13); // mulr21 = (mulr21.t92) << 13
    t92 &= mulredmask;          // t92 &= mulredmask
    t92 += mulr11;              // t92 += mulr11
    shift_left128(mulr31, mulr31, t93, 13); // mulr31 = (mulr31.t93) << 13
    t93 &= mulredmask;          // t93 &= mulredmask
    t93 += mulr21;              // t93 += mulr21
    shift_left128(mulr41, mulr41, t94, 13); // mulr41 = (mulr41.t94) << 13
    t94 &= mulredmask;          // t94 &= mulredmask
    t94 += mulr31;              // t94 += mulr31
    mulr41 = mulr41 * 19;       // mulr41 = mulr41 * 19
    t90 += mulr41;              // t90 += mulr41
    mult = t90;                 // mult = t90
    mult >>= 51;                // (uint64) mult >>= 51
    mult += t91;                // mult += t91
    t91 = mult;                 // t91 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    t90 &= mulredmask;          // t90 &= mulredmask
    mult += t92;                // mult += t92
    t92 = mult;                 // t92 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    t91 &= mulredmask;          // t91 &= mulredmask
    mult += t93;                // mult += t93
    t93 = mult;                 // t93 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    t92 &= mulredmask;          // t92 &= mulredmask
    mult += t94;                // mult += t94
    t94 = mult;                 // t94 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    t93 &= mulredmask;          // t93 &= mulredmask
    mult *= 19;                 // mult *= 19
    t90 += mult;                // t90 += mult
    t94 &= mulredmask;          // t94 &= mulredmask
    t90_stack = t90;            // t90_stack = t90
    t91_stack = t91;            // t91_stack = t91
    t92_stack = t92;            // t92_stack = t92
    t93_stack = t93;            // t93_stack = t93
    t94_stack = t94;            // t94_stack = t94
    mulrax = t43_stack;         // mulrax = t43_stack
    mulrax *= 19;               // mulrax *= 19
    mulx319_stack = mulrax;     // mulx319_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, t12_stack); // (uint128) mulrdx mulrax = mulrax * t12_stack
    t80 = mulrax;               // t80 = mulrax
    mulr01 = mulrdx;            // mulr01 = mulrdx
    mulrax = t44_stack;         // mulrax = t44_stack
    mulrax *= 19;               // mulrax *= 19
    mulx419_stack = mulrax;     // mulx419_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, t11_stack); // (uint128) mulrdx mulrax = mulrax * t11_stack
    add64_and_set_carry(t80, t80, mulrax); // cf? t80 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t40_stack;         // mulrax = t40_stack
    multiply128(mulrdx, mulrax, mulrax, t10_stack); // (uint128) mulrdx mulrax = mulrax * t10_stack
    add64_and_set_carry(t80, t80, mulrax); // cf? t80 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t40_stack;         // mulrax = t40_stack
    multiply128(mulrdx, mulrax, mulrax, t11_stack); // (uint128) mulrdx mulrax = mulrax * t11_stack
    t81 = mulrax;               // t81 = mulrax
    mulr11 = mulrdx;            // mulr11 = mulrdx
    mulrax = t40_stack;         // mulrax = t40_stack
    multiply128(mulrdx, mulrax, mulrax, t12_stack); // (uint128) mulrdx mulrax = mulrax * t12_stack
    t82 = mulrax;               // t82 = mulrax
    mulr21 = mulrdx;            // mulr21 = mulrdx
    mulrax = t40_stack;         // mulrax = t40_stack
    multiply128(mulrdx, mulrax, mulrax, t13_stack); // (uint128) mulrdx mulrax = mulrax * t13_stack
    t83 = mulrax;               // t83 = mulrax
    mulr31 = mulrdx;            // mulr31 = mulrdx
    mulrax = t40_stack;         // mulrax = t40_stack
    multiply128(mulrdx, mulrax, mulrax, t14_stack); // (uint128) mulrdx mulrax = mulrax * t14_stack
    t84 = mulrax;               // t84 = mulrax
    mulr41 = mulrdx;            // mulr41 = mulrdx
    mulrax = t41_stack;         // mulrax = t41_stack
    multiply128(mulrdx, mulrax, mulrax, t10_stack); // (uint128) mulrdx mulrax = mulrax * t10_stack
    add64_and_set_carry(t81, t81, mulrax); // cf? t81 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = t41_stack;         // mulrax = t41_stack
    multiply128(mulrdx, mulrax, mulrax, t11_stack); // (uint128) mulrdx mulrax = mulrax * t11_stack
    add64_and_set_carry(t82, t82, mulrax); // cf? t82 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t41_stack;         // mulrax = t41_stack
    multiply128(mulrdx, mulrax, mulrax, t12_stack); // (uint128) mulrdx mulrax = mulrax * t12_stack
    add64_and_set_carry(t83, t83, mulrax); // cf? t83 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t41_stack;         // mulrax = t41_stack
    multiply128(mulrdx, mulrax, mulrax, t13_stack); // (uint128) mulrdx mulrax = mulrax * t13_stack
    add64_and_set_carry(t84, t84, mulrax); // cf? t84 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = t41_stack;         // mulrax = t41_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t14_stack); // (uint128) mulrdx mulrax = mulrax * t14_stack
    add64_and_set_carry(t80, t80, mulrax); // cf? t80 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t42_stack;         // mulrax = t42_stack
    multiply128(mulrdx, mulrax, mulrax, t10_stack); // (uint128) mulrdx mulrax = mulrax * t10_stack
    add64_and_set_carry(t82, t82, mulrax); // cf? t82 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t42_stack;         // mulrax = t42_stack
    multiply128(mulrdx, mulrax, mulrax, t11_stack); // (uint128) mulrdx mulrax = mulrax * t11_stack
    add64_and_set_carry(t83, t83, mulrax); // cf? t83 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t42_stack;         // mulrax = t42_stack
    multiply128(mulrdx, mulrax, mulrax, t12_stack); // (uint128) mulrdx mulrax = mulrax * t12_stack
    add64_and_set_carry(t84, t84, mulrax); // cf? t84 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = t42_stack;         // mulrax = t42_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t13_stack); // (uint128) mulrdx mulrax = mulrax * t13_stack
    add64_and_set_carry(t80, t80, mulrax); // cf? t80 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t42_stack;         // mulrax = t42_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t14_stack); // (uint128) mulrdx mulrax = mulrax * t14_stack
    add64_and_set_carry(t81, t81, mulrax); // cf? t81 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = t43_stack;         // mulrax = t43_stack
    multiply128(mulrdx, mulrax, mulrax, t10_stack); // (uint128) mulrdx mulrax = mulrax * t10_stack
    add64_and_set_carry(t83, t83, mulrax); // cf? t83 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t43_stack;         // mulrax = t43_stack
    multiply128(mulrdx, mulrax, mulrax, t11_stack); // (uint128) mulrdx mulrax = mulrax * t11_stack
    add64_and_set_carry(t84, t84, mulrax); // cf? t84 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, t13_stack); // (uint128) mulrdx mulrax = mulrax * t13_stack
    add64_and_set_carry(t81, t81, mulrax); // cf? t81 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, t14_stack); // (uint128) mulrdx mulrax = mulrax * t14_stack
    add64_and_set_carry(t82, t82, mulrax); // cf? t82 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t44_stack;         // mulrax = t44_stack
    multiply128(mulrdx, mulrax, mulrax, t10_stack); // (uint128) mulrdx mulrax = mulrax * t10_stack
    add64_and_set_carry(t84, t84, mulrax); // cf? t84 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t12_stack); // (uint128) mulrdx mulrax = mulrax * t12_stack
    add64_and_set_carry(t81, t81, mulrax); // cf? t81 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t13_stack); // (uint128) mulrdx mulrax = mulrax * t13_stack
    add64_and_set_carry(t82, t82, mulrax); // cf? t82 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t14_stack); // (uint128) mulrdx mulrax = mulrax * t14_stack
    add64_and_set_carry(t83, t83, mulrax); // cf? t83 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(mulr01, mulr01, t80, 13); // mulr01 = (mulr01.t80) << 13
    t80 &= mulredmask;          // t80 &= mulredmask
    shift_left128(mulr11, mulr11, t81, 13); // mulr11 = (mulr11.t81) << 13
    t81 &= mulredmask;          // t81 &= mulredmask
    t81 += mulr01;              // t81 += mulr01
    shift_left128(mulr21, mulr21, t82, 13); // mulr21 = (mulr21.t82) << 13
    t82 &= mulredmask;          // t82 &= mulredmask
    t82 += mulr11;              // t82 += mulr11
    shift_left128(mulr31, mulr31, t83, 13); // mulr31 = (mulr31.t83) << 13
    t83 &= mulredmask;          // t83 &= mulredmask
    t83 += mulr21;              // t83 += mulr21
    shift_left128(mulr41, mulr41, t84, 13); // mulr41 = (mulr41.t84) << 13
    t84 &= mulredmask;          // t84 &= mulredmask
    t84 += mulr31;              // t84 += mulr31
    mulr41 = mulr41 * 19;       // mulr41 = mulr41 * 19
    t80 += mulr41;              // t80 += mulr41
    mult = t80;                 // mult = t80
    mult >>= 51;                // (uint64) mult >>= 51
    mult += t81;                // mult += t81
    t81 = mult;                 // t81 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    t80 &= mulredmask;          // t80 &= mulredmask
    mult += t82;                // mult += t82
    t82 = mult;                 // t82 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    t81 &= mulredmask;          // t81 &= mulredmask
    mult += t83;                // mult += t83
    t83 = mult;                 // t83 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    t82 &= mulredmask;          // t82 &= mulredmask
    mult += t84;                // mult += t84
    t84 = mult;                 // t84 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    t83 &= mulredmask;          // t83 &= mulredmask
    mult *= 19;                 // mult *= 19
    t80 += mult;                // t80 += mult
    t84 &= mulredmask;          // t84 &= mulredmask
    zq0 = t80;                  // zq0 = t80
    zq1 = t81;                  // zq1 = t81
    zq2 = t82;                  // zq2 = t82
    zq3 = t83;                  // zq3 = t83
    zq4 = t84;                  // zq4 = t84
    zq0 += crypto_scalarmult_curve25519_amd64_51_2P0; // zq0 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P0
    zq1 += crypto_scalarmult_curve25519_amd64_51_2P1234; // zq1 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    zq2 += crypto_scalarmult_curve25519_amd64_51_2P1234; // zq2 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    zq3 += crypto_scalarmult_curve25519_amd64_51_2P1234; // zq3 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    zq4 += crypto_scalarmult_curve25519_amd64_51_2P1234; // zq4 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
    t80 += t90_stack;           // t80 += t90_stack
    t81 += t91_stack;           // t81 += t91_stack
    t82 += t92_stack;           // t82 += t92_stack
    t83 += t93_stack;           // t83 += t93_stack
    t84 += t94_stack;           // t84 += t94_stack
    zq0 -= t90_stack;           // zq0 -= t90_stack
    zq1 -= t91_stack;           // zq1 -= t91_stack
    zq2 -= t92_stack;           // zq2 -= t92_stack
    zq3 -= t93_stack;           // zq3 -= t93_stack
    zq4 -= t94_stack;           // zq4 -= t94_stack
    workp[15] = t80;            // *(uint64 *) (workp + 120) = t80
    workp[16] = t81;            // *(uint64 *) (workp + 128) = t81
    workp[17] = t82;            // *(uint64 *) (workp + 136) = t82
    workp[18] = t83;            // *(uint64 *) (workp + 144) = t83
    workp[19] = t84;            // *(uint64 *) (workp + 152) = t84
    workp[20] = zq0;            // *(uint64 *) (workp + 160) = zq0
    workp[21] = zq1;            // *(uint64 *) (workp + 168) = zq1
    workp[22] = zq2;            // *(uint64 *) (workp + 176) = zq2
    workp[23] = zq3;            // *(uint64 *) (workp + 184) = zq3
    workp[24] = zq4;            // *(uint64 *) (workp + 192) = zq4
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    multiply128(squarerdx, squarerax, squarerax, workp[15]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 120);
    xq0 = squarerax;            // xq0 = squarerax
    squarer01 = squarerdx;      // squarer01 = squarerdx
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[16]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 128);
    xq1 = squarerax;            // xq1 = squarerax
    squarer11 = squarerdx;      // squarer11 = squarerdx
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[17]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 136);
    xq2 = squarerax;            // xq2 = squarerax
    squarer21 = squarerdx;      // squarer21 = squarerdx
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[18]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 144);
    xq3 = squarerax;            // xq3 = squarerax
    squarer31 = squarerdx;      // squarer31 = squarerdx
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[19]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 152);
    xq4 = squarerax;            // xq4 = squarerax
    squarer41 = squarerdx;      // squarer41 = squarerdx
    squarerax = workp[16];      // squarerax = *(uint64 *) (workp + 128)
    multiply128(squarerdx, squarerax, squarerax, workp[16]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 128);
    add64_and_set_carry(xq2, xq2, squarerax); // cf? xq2 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = workp[16];      // squarerax = *(uint64 *) (workp + 128)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[17]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 136);
    add64_and_set_carry(xq3, xq3, squarerax); // cf? xq3 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squarerax = workp[16];      // squarerax = *(uint64 *) (workp + 128)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[18]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 144);
    add64_and_set_carry(xq4, xq4, squarerax); // cf? xq4 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = workp[16];      // squarerax = *(uint64 *) (workp + 128)
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, workp[19]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 152);
    add64_and_set_carry(xq0, xq0, squarerax); // cf? xq0 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = workp[17];      // squarerax = *(uint64 *) (workp + 136)
    multiply128(squarerdx, squarerax, squarerax, workp[17]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 136);
    add64_and_set_carry(xq4, xq4, squarerax); // cf? xq4 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = workp[17];      // squarerax = *(uint64 *) (workp + 136)
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, workp[18]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 144);
    add64_and_set_carry(xq0, xq0, squarerax); // cf? xq0 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = workp[17];      // squarerax = *(uint64 *) (workp + 136)
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, workp[19]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 152);
    add64_and_set_carry(xq1, xq1, squarerax); // cf? xq1 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = workp[18];      // squarerax = *(uint64 *) (workp + 144)
    squarerax *= 19;            // squarerax *= 19
    multiply128(squarerdx, squarerax, squarerax, workp[18]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 144);
    add64_and_set_carry(xq1, xq1, squarerax); // cf? xq1 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = workp[18];      // squarerax = *(uint64 *) (workp + 144)
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, workp[19]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 152);
    add64_and_set_carry(xq2, xq2, squarerax); // cf? xq2 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = workp[19];      // squarerax = *(uint64 *) (workp + 152)
    squarerax *= 19;            // squarerax *= 19
    multiply128(squarerdx, squarerax, squarerax, workp[19]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 152);
    add64_and_set_carry(xq3, xq3, squarerax); // cf? xq3 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squareredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // squareredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(squarer01, squarer01, xq0, 13); // squarer01 = (squarer01.xq0) << 13
    xq0 &= squareredmask;       // xq0 &= squareredmask
    shift_left128(squarer11, squarer11, xq1, 13); // squarer11 = (squarer11.xq1) << 13
    xq1 &= squareredmask;       // xq1 &= squareredmask
    xq1 += squarer01;           // xq1 += squarer01
    shift_left128(squarer21, squarer21, xq2, 13); // squarer21 = (squarer21.xq2) << 13
    xq2 &= squareredmask;       // xq2 &= squareredmask
    xq2 += squarer11;           // xq2 += squarer11
    shift_left128(squarer31, squarer31, xq3, 13); // squarer31 = (squarer31.xq3) << 13
    xq3 &= squareredmask;       // xq3 &= squareredmask
    xq3 += squarer21;           // xq3 += squarer21
    shift_left128(squarer41, squarer41, xq4, 13); // squarer41 = (squarer41.xq4) << 13
    xq4 &= squareredmask;       // xq4 &= squareredmask
    xq4 += squarer31;           // xq4 += squarer31
    squarer41 = squarer41 * 19; // squarer41 = squarer41 * 19
    xq0 += squarer41;           // xq0 += squarer41
    squaret = xq0;              // squaret = xq0
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += xq1;             // squaret += xq1
    xq0 &= squareredmask;       // xq0 &= squareredmask
    xq1 = squaret;              // xq1 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += xq2;             // squaret += xq2
    xq1 &= squareredmask;       // xq1 &= squareredmask
    xq2 = squaret;              // xq2 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += xq3;             // squaret += xq3
    xq2 &= squareredmask;       // xq2 &= squareredmask
    xq3 = squaret;              // xq3 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += xq4;             // squaret += xq4
    xq3 &= squareredmask;       // xq3 &= squareredmask
    xq4 = squaret;              // xq4 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret *= 19;              // squaret *= 19
    xq0 += squaret;             // xq0 += squaret
    xq4 &= squareredmask;       // xq4 &= squareredmask
    workp[15] = xq0;            // *(uint64 *) (workp + 120) = xq0
    workp[16] = xq1;            // *(uint64 *) (workp + 128) = xq1
    workp[17] = xq2;            // *(uint64 *) (workp + 136) = xq2
    workp[18] = xq3;            // *(uint64 *) (workp + 144) = xq3
    workp[19] = xq4;            // *(uint64 *) (workp + 152) = xq4
    squarerax = workp[20];      // squarerax = *(uint64 *) (workp + 160)
    multiply128(squarerdx, squarerax, squarerax, workp[20]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 160);
    zq0 = squarerax;            // zq0 = squarerax
    squarer01 = squarerdx;      // squarer01 = squarerdx
    squarerax = workp[20];      // squarerax = *(uint64 *) (workp + 160)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[21]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 168);
    zq1 = squarerax;            // zq1 = squarerax
    squarer11 = squarerdx;      // squarer11 = squarerdx
    squarerax = workp[20];      // squarerax = *(uint64 *) (workp + 160)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[22]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 176);
    zq2 = squarerax;            // zq2 = squarerax
    squarer21 = squarerdx;      // squarer21 = squarerdx
    squarerax = workp[20];      // squarerax = *(uint64 *) (workp + 160)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[23]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 184);
    zq3 = squarerax;            // zq3 = squarerax
    squarer31 = squarerdx;      // squarer31 = squarerdx
    squarerax = workp[20];      // squarerax = *(uint64 *) (workp + 160)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[24]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 192);
    zq4 = squarerax;            // zq4 = squarerax
    squarer41 = squarerdx;      // squarer41 = squarerdx
    squarerax = workp[21];      // squarerax = *(uint64 *) (workp + 168)
    multiply128(squarerdx, squarerax, squarerax, workp[21]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 168);
    add64_and_set_carry(zq2, zq2, squarerax); // cf? zq2 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = workp[21];      // squarerax = *(uint64 *) (workp + 168)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[22]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 176);
    add64_and_set_carry(zq3, zq3, squarerax); // cf? zq3 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squarerax = workp[21];      // squarerax = *(uint64 *) (workp + 168)
    squarerax <<= 1;            // squarerax <<= 1
    multiply128(squarerdx, squarerax, squarerax, workp[23]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 184);
    add64_and_set_carry(zq4, zq4, squarerax); // cf? zq4 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = workp[21];      // squarerax = *(uint64 *) (workp + 168)
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, workp[24]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 192);
    add64_and_set_carry(zq0, zq0, squarerax); // cf? zq0 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = workp[22];      // squarerax = *(uint64 *) (workp + 176)
    multiply128(squarerdx, squarerax, squarerax, workp[22]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 176);
    add64_and_set_carry(zq4, zq4, squarerax); // cf? zq4 += squarerax
    add64_with_carry(squarer41, squarer41, squarerdx); // squarer41 += squarerdx + cf; 
    squarerax = workp[22];      // squarerax = *(uint64 *) (workp + 176)
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, workp[23]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 184);
    add64_and_set_carry(zq0, zq0, squarerax); // cf? zq0 += squarerax
    add64_with_carry(squarer01, squarer01, squarerdx); // squarer01 += squarerdx + cf; 
    squarerax = workp[22];      // squarerax = *(uint64 *) (workp + 176)
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, workp[24]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 192);
    add64_and_set_carry(zq1, zq1, squarerax); // cf? zq1 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = workp[23];      // squarerax = *(uint64 *) (workp + 184)
    squarerax *= 19;            // squarerax *= 19
    multiply128(squarerdx, squarerax, squarerax, workp[23]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 184);
    add64_and_set_carry(zq1, zq1, squarerax); // cf? zq1 += squarerax
    add64_with_carry(squarer11, squarer11, squarerdx); // squarer11 += squarerdx + cf; 
    squarerax = workp[23];      // squarerax = *(uint64 *) (workp + 184)
    squarerax *= 38;            // squarerax *= 38
    multiply128(squarerdx, squarerax, squarerax, workp[24]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 192);
    add64_and_set_carry(zq2, zq2, squarerax); // cf? zq2 += squarerax
    add64_with_carry(squarer21, squarer21, squarerdx); // squarer21 += squarerdx + cf; 
    squarerax = workp[24];      // squarerax = *(uint64 *) (workp + 192)
    squarerax *= 19;            // squarerax *= 19
    multiply128(squarerdx, squarerax, squarerax, workp[24]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 192);
    add64_and_set_carry(zq3, zq3, squarerax); // cf? zq3 += squarerax
    add64_with_carry(squarer31, squarer31, squarerdx); // squarer31 += squarerdx + cf; 
    squareredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // squareredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(squarer01, squarer01, zq0, 13); // squarer01 = (squarer01.zq0) << 13
    zq0 &= squareredmask;       // zq0 &= squareredmask
    shift_left128(squarer11, squarer11, zq1, 13); // squarer11 = (squarer11.zq1) << 13
    zq1 &= squareredmask;       // zq1 &= squareredmask
    zq1 += squarer01;           // zq1 += squarer01
    shift_left128(squarer21, squarer21, zq2, 13); // squarer21 = (squarer21.zq2) << 13
    zq2 &= squareredmask;       // zq2 &= squareredmask
    zq2 += squarer11;           // zq2 += squarer11
    shift_left128(squarer31, squarer31, zq3, 13); // squarer31 = (squarer31.zq3) << 13
    zq3 &= squareredmask;       // zq3 &= squareredmask
    zq3 += squarer21;           // zq3 += squarer21
    shift_left128(squarer41, squarer41, zq4, 13); // squarer41 = (squarer41.zq4) << 13
    zq4 &= squareredmask;       // zq4 &= squareredmask
    zq4 += squarer31;           // zq4 += squarer31
    squarer41 = squarer41 * 19; // squarer41 = squarer41 * 19
    zq0 += squarer41;           // zq0 += squarer41
    squaret = zq0;              // squaret = zq0
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += zq1;             // squaret += zq1
    zq0 &= squareredmask;       // zq0 &= squareredmask
    zq1 = squaret;              // zq1 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += zq2;             // squaret += zq2
    zq1 &= squareredmask;       // zq1 &= squareredmask
    zq2 = squaret;              // zq2 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += zq3;             // squaret += zq3
    zq2 &= squareredmask;       // zq2 &= squareredmask
    zq3 = squaret;              // zq3 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret += zq4;             // squaret += zq4
    zq3 &= squareredmask;       // zq3 &= squareredmask
    zq4 = squaret;              // zq4 = squaret
    squaret >>= 51;             // (uint64) squaret >>= 51
    squaret *= 19;              // squaret *= 19
    zq0 += squaret;             // zq0 += squaret
    zq4 &= squareredmask;       // zq4 &= squareredmask
    workp[20] = zq0;            // *(uint64 *) (workp + 160) = zq0
    workp[21] = zq1;            // *(uint64 *) (workp + 168) = zq1
    workp[22] = zq2;            // *(uint64 *) (workp + 176) = zq2
    workp[23] = zq3;            // *(uint64 *) (workp + 184) = zq3
    workp[24] = zq4;            // *(uint64 *) (workp + 192) = zq4
    mulrax = workp[23];         // mulrax = *(uint64 *) (workp + 184)
    mulrax *= 19;               // mulrax *= 19
    mulx319_stack = mulrax;     // mulx319_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, workp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 16);
    zq0 = mulrax;               // zq0 = mulrax
    mulr01 = mulrdx;            // mulr01 = mulrdx
    mulrax = workp[24];         // mulrax = *(uint64 *) (workp + 192)
    mulrax *= 19;               // mulrax *= 19
    mulx419_stack = mulrax;     // mulx419_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, workp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 8);
    add64_and_set_carry(zq0, zq0, mulrax); // cf? zq0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = workp[20];         // mulrax = *(uint64 *) (workp + 160)
    multiply128(mulrdx, mulrax, mulrax, workp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 0);
    add64_and_set_carry(zq0, zq0, mulrax); // cf? zq0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = workp[20];         // mulrax = *(uint64 *) (workp + 160)
    multiply128(mulrdx, mulrax, mulrax, workp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 8);
    zq1 = mulrax;               // zq1 = mulrax
    mulr11 = mulrdx;            // mulr11 = mulrdx
    mulrax = workp[20];         // mulrax = *(uint64 *) (workp + 160)
    multiply128(mulrdx, mulrax, mulrax, workp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 16);
    zq2 = mulrax;               // zq2 = mulrax
    mulr21 = mulrdx;            // mulr21 = mulrdx
    mulrax = workp[20];         // mulrax = *(uint64 *) (workp + 160)
    multiply128(mulrdx, mulrax, mulrax, workp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 24);
    zq3 = mulrax;               // zq3 = mulrax
    mulr31 = mulrdx;            // mulr31 = mulrdx
    mulrax = workp[20];         // mulrax = *(uint64 *) (workp + 160)
    multiply128(mulrdx, mulrax, mulrax, workp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 32);
    zq4 = mulrax;               // zq4 = mulrax
    mulr41 = mulrdx;            // mulr41 = mulrdx
    mulrax = workp[21];         // mulrax = *(uint64 *) (workp + 168)
    multiply128(mulrdx, mulrax, mulrax, workp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 0);
    add64_and_set_carry(zq1, zq1, mulrax); // cf? zq1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = workp[21];         // mulrax = *(uint64 *) (workp + 168)
    multiply128(mulrdx, mulrax, mulrax, workp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 8);
    add64_and_set_carry(zq2, zq2, mulrax); // cf? zq2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = workp[21];         // mulrax = *(uint64 *) (workp + 168)
    multiply128(mulrdx, mulrax, mulrax, workp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 16);
    add64_and_set_carry(zq3, zq3, mulrax); // cf? zq3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = workp[21];         // mulrax = *(uint64 *) (workp + 168)
    multiply128(mulrdx, mulrax, mulrax, workp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 24);
    add64_and_set_carry(zq4, zq4, mulrax); // cf? zq4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = workp[21];         // mulrax = *(uint64 *) (workp + 168)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, workp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 32);
    add64_and_set_carry(zq0, zq0, mulrax); // cf? zq0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = workp[22];         // mulrax = *(uint64 *) (workp + 176)
    multiply128(mulrdx, mulrax, mulrax, workp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 0);
    add64_and_set_carry(zq2, zq2, mulrax); // cf? zq2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = workp[22];         // mulrax = *(uint64 *) (workp + 176)
    multiply128(mulrdx, mulrax, mulrax, workp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 8);
    add64_and_set_carry(zq3, zq3, mulrax); // cf? zq3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = workp[22];         // mulrax = *(uint64 *) (workp + 176)
    multiply128(mulrdx, mulrax, mulrax, workp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 16);
    add64_and_set_carry(zq4, zq4, mulrax); // cf? zq4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = workp[22];         // mulrax = *(uint64 *) (workp + 176)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, workp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 24);
    add64_and_set_carry(zq0, zq0, mulrax); // cf? zq0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = workp[22];         // mulrax = *(uint64 *) (workp + 176)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, workp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 32);
    add64_and_set_carry(zq1, zq1, mulrax); // cf? zq1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = workp[23];         // mulrax = *(uint64 *) (workp + 184)
    multiply128(mulrdx, mulrax, mulrax, workp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 0);
    add64_and_set_carry(zq3, zq3, mulrax); // cf? zq3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = workp[23];         // mulrax = *(uint64 *) (workp + 184)
    multiply128(mulrdx, mulrax, mulrax, workp[1]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 8);
    add64_and_set_carry(zq4, zq4, mulrax); // cf? zq4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, workp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 24);
    add64_and_set_carry(zq1, zq1, mulrax); // cf? zq1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, workp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 32);
    add64_and_set_carry(zq2, zq2, mulrax); // cf? zq2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = workp[24];         // mulrax = *(uint64 *) (workp + 192)
    multiply128(mulrdx, mulrax, mulrax, workp[0]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 0);
    add64_and_set_carry(zq4, zq4, mulrax); // cf? zq4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, workp[2]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 16);
    add64_and_set_carry(zq1, zq1, mulrax); // cf? zq1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, workp[3]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 24);
    add64_and_set_carry(zq2, zq2, mulrax); // cf? zq2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, workp[4]); // (uint128) mulrdx mulrax = mulrax * *(uint64 *) (workp + 32);
    add64_and_set_carry(zq3, zq3, mulrax); // cf? zq3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(mulr01, mulr01, zq0, 13); // mulr01 = (mulr01.zq0) << 13
    zq0 &= mulredmask;          // zq0 &= mulredmask
    shift_left128(mulr11, mulr11, zq1, 13); // mulr11 = (mulr11.zq1) << 13
    zq1 &= mulredmask;          // zq1 &= mulredmask
    zq1 += mulr01;              // zq1 += mulr01
    shift_left128(mulr21, mulr21, zq2, 13); // mulr21 = (mulr21.zq2) << 13
    zq2 &= mulredmask;          // zq2 &= mulredmask
    zq2 += mulr11;              // zq2 += mulr11
    shift_left128(mulr31, mulr31, zq3, 13); // mulr31 = (mulr31.zq3) << 13
    zq3 &= mulredmask;          // zq3 &= mulredmask
    zq3 += mulr21;              // zq3 += mulr21
    shift_left128(mulr41, mulr41, zq4, 13); // mulr41 = (mulr41.zq4) << 13
    zq4 &= mulredmask;          // zq4 &= mulredmask
    zq4 += mulr31;              // zq4 += mulr31
    mulr41 = mulr41 * 19;       // mulr41 = mulr41 * 19
    zq0 += mulr41;              // zq0 += mulr41
    mult = zq0;                 // mult = zq0
    mult >>= 51;                // (uint64) mult >>= 51
    mult += zq1;                // mult += zq1
    zq1 = mult;                 // zq1 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    zq0 &= mulredmask;          // zq0 &= mulredmask
    mult += zq2;                // mult += zq2
    zq2 = mult;                 // zq2 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    zq1 &= mulredmask;          // zq1 &= mulredmask
    mult += zq3;                // mult += zq3
    zq3 = mult;                 // zq3 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    zq2 &= mulredmask;          // zq2 &= mulredmask
    mult += zq4;                // mult += zq4
    zq4 = mult;                 // zq4 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    zq3 &= mulredmask;          // zq3 &= mulredmask
    mult *= 19;                 // mult *= 19
    zq0 += mult;                // zq0 += mult
    zq4 &= mulredmask;          // zq4 &= mulredmask
    workp[20] = zq0;            // *(uint64 *) (workp + 160) = zq0
    workp[21] = zq1;            // *(uint64 *) (workp + 168) = zq1
    workp[22] = zq2;            // *(uint64 *) (workp + 176) = zq2
    workp[23] = zq3;            // *(uint64 *) (workp + 184) = zq3
    workp[24] = zq4;            // *(uint64 *) (workp + 192) = zq4
    mulrax = t63_stack;         // mulrax = t63_stack
    mulrax *= 19;               // mulrax *= 19
    mulx319_stack = mulrax;     // mulx319_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, t72_stack); // (uint128) mulrdx mulrax = mulrax * t72_stack
    xp0 = mulrax;               // xp0 = mulrax
    mulr01 = mulrdx;            // mulr01 = mulrdx
    mulrax = t64_stack;         // mulrax = t64_stack
    mulrax *= 19;               // mulrax *= 19
    mulx419_stack = mulrax;     // mulx419_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, t71_stack); // (uint128) mulrdx mulrax = mulrax * t71_stack
    add64_and_set_carry(xp0, xp0, mulrax); // cf? xp0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t60_stack;         // mulrax = t60_stack
    multiply128(mulrdx, mulrax, mulrax, t70_stack); // (uint128) mulrdx mulrax = mulrax * t70_stack
    add64_and_set_carry(xp0, xp0, mulrax); // cf? xp0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t60_stack;         // mulrax = t60_stack
    multiply128(mulrdx, mulrax, mulrax, t71_stack); // (uint128) mulrdx mulrax = mulrax * t71_stack
    xp1 = mulrax;               // xp1 = mulrax
    mulr11 = mulrdx;            // mulr11 = mulrdx
    mulrax = t60_stack;         // mulrax = t60_stack
    multiply128(mulrdx, mulrax, mulrax, t72_stack); // (uint128) mulrdx mulrax = mulrax * t72_stack
    xp2 = mulrax;               // xp2 = mulrax
    mulr21 = mulrdx;            // mulr21 = mulrdx
    mulrax = t60_stack;         // mulrax = t60_stack
    multiply128(mulrdx, mulrax, mulrax, t73_stack); // (uint128) mulrdx mulrax = mulrax * t73_stack
    xp3 = mulrax;               // xp3 = mulrax
    mulr31 = mulrdx;            // mulr31 = mulrdx
    mulrax = t60_stack;         // mulrax = t60_stack
    multiply128(mulrdx, mulrax, mulrax, t74_stack); // (uint128) mulrdx mulrax = mulrax * t74_stack
    xp4 = mulrax;               // xp4 = mulrax
    mulr41 = mulrdx;            // mulr41 = mulrdx
    mulrax = t61_stack;         // mulrax = t61_stack
    multiply128(mulrdx, mulrax, mulrax, t70_stack); // (uint128) mulrdx mulrax = mulrax * t70_stack
    add64_and_set_carry(xp1, xp1, mulrax); // cf? xp1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = t61_stack;         // mulrax = t61_stack
    multiply128(mulrdx, mulrax, mulrax, t71_stack); // (uint128) mulrdx mulrax = mulrax * t71_stack
    add64_and_set_carry(xp2, xp2, mulrax); // cf? xp2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t61_stack;         // mulrax = t61_stack
    multiply128(mulrdx, mulrax, mulrax, t72_stack); // (uint128) mulrdx mulrax = mulrax * t72_stack
    add64_and_set_carry(xp3, xp3, mulrax); // cf? xp3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t61_stack;         // mulrax = t61_stack
    multiply128(mulrdx, mulrax, mulrax, t73_stack); // (uint128) mulrdx mulrax = mulrax * t73_stack
    add64_and_set_carry(xp4, xp4, mulrax); // cf? xp4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = t61_stack;         // mulrax = t61_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t74_stack); // (uint128) mulrdx mulrax = mulrax * t74_stack
    add64_and_set_carry(xp0, xp0, mulrax); // cf? xp0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t62_stack;         // mulrax = t62_stack
    multiply128(mulrdx, mulrax, mulrax, t70_stack); // (uint128) mulrdx mulrax = mulrax * t70_stack
    add64_and_set_carry(xp2, xp2, mulrax); // cf? xp2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t62_stack;         // mulrax = t62_stack
    multiply128(mulrdx, mulrax, mulrax, t71_stack); // (uint128) mulrdx mulrax = mulrax * t71_stack
    add64_and_set_carry(xp3, xp3, mulrax); // cf? xp3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t62_stack;         // mulrax = t62_stack
    multiply128(mulrdx, mulrax, mulrax, t72_stack); // (uint128) mulrdx mulrax = mulrax * t72_stack
    add64_and_set_carry(xp4, xp4, mulrax); // cf? xp4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = t62_stack;         // mulrax = t62_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t73_stack); // (uint128) mulrdx mulrax = mulrax * t73_stack
    add64_and_set_carry(xp0, xp0, mulrax); // cf? xp0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = t62_stack;         // mulrax = t62_stack
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t74_stack); // (uint128) mulrdx mulrax = mulrax * t74_stack
    add64_and_set_carry(xp1, xp1, mulrax); // cf? xp1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = t63_stack;         // mulrax = t63_stack
    multiply128(mulrdx, mulrax, mulrax, t70_stack); // (uint128) mulrdx mulrax = mulrax * t70_stack
    add64_and_set_carry(xp3, xp3, mulrax); // cf? xp3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = t63_stack;         // mulrax = t63_stack
    multiply128(mulrdx, mulrax, mulrax, t71_stack); // (uint128) mulrdx mulrax = mulrax * t71_stack
    add64_and_set_carry(xp4, xp4, mulrax); // cf? xp4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, t73_stack); // (uint128) mulrdx mulrax = mulrax * t73_stack
    add64_and_set_carry(xp1, xp1, mulrax); // cf? xp1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, t74_stack); // (uint128) mulrdx mulrax = mulrax * t74_stack
    add64_and_set_carry(xp2, xp2, mulrax); // cf? xp2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = t64_stack;         // mulrax = t64_stack
    multiply128(mulrdx, mulrax, mulrax, t70_stack); // (uint128) mulrdx mulrax = mulrax * t70_stack
    add64_and_set_carry(xp4, xp4, mulrax); // cf? xp4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t72_stack); // (uint128) mulrdx mulrax = mulrax * t72_stack
    add64_and_set_carry(xp1, xp1, mulrax); // cf? xp1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t73_stack); // (uint128) mulrdx mulrax = mulrax * t73_stack
    add64_and_set_carry(xp2, xp2, mulrax); // cf? xp2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t74_stack); // (uint128) mulrdx mulrax = mulrax * t74_stack
    add64_and_set_carry(xp3, xp3, mulrax); // cf? xp3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(mulr01, mulr01, xp0, 13); // mulr01 = (mulr01.xp0) << 13
    xp0 &= mulredmask;          // xp0 &= mulredmask
    shift_left128(mulr11, mulr11, xp1, 13); // mulr11 = (mulr11.xp1) << 13
    xp1 &= mulredmask;          // xp1 &= mulredmask
    xp1 += mulr01;              // xp1 += mulr01
    shift_left128(mulr21, mulr21, xp2, 13); // mulr21 = (mulr21.xp2) << 13
    xp2 &= mulredmask;          // xp2 &= mulredmask
    xp2 += mulr11;              // xp2 += mulr11
    shift_left128(mulr31, mulr31, xp3, 13); // mulr31 = (mulr31.xp3) << 13
    xp3 &= mulredmask;          // xp3 &= mulredmask
    xp3 += mulr21;              // xp3 += mulr21
    shift_left128(mulr41, mulr41, xp4, 13); // mulr41 = (mulr41.xp4) << 13
    xp4 &= mulredmask;          // xp4 &= mulredmask
    xp4 += mulr31;              // xp4 += mulr31
    mulr41 = mulr41 * 19;       // mulr41 = mulr41 * 19
    xp0 += mulr41;              // xp0 += mulr41
    mult = xp0;                 // mult = xp0
    mult >>= 51;                // (uint64) mult >>= 51
    mult += xp1;                // mult += xp1
    xp1 = mult;                 // xp1 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    xp0 &= mulredmask;          // xp0 &= mulredmask
    mult += xp2;                // mult += xp2
    xp2 = mult;                 // xp2 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    xp1 &= mulredmask;          // xp1 &= mulredmask
    mult += xp3;                // mult += xp3
    xp3 = mult;                 // xp3 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    xp2 &= mulredmask;          // xp2 &= mulredmask
    mult += xp4;                // mult += xp4
    xp4 = mult;                 // xp4 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    xp3 &= mulredmask;          // xp3 &= mulredmask
    mult *= 19;                 // mult *= 19
    xp0 += mult;                // xp0 += mult
    xp4 &= mulredmask;          // xp4 &= mulredmask
    workp[5] = xp0;             // *(uint64 *) (workp + 40) = xp0
    workp[6] = xp1;             // *(uint64 *) (workp + 48) = xp1
    workp[7] = xp2;             // *(uint64 *) (workp + 56) = xp2
    workp[8] = xp3;             // *(uint64 *) (workp + 64) = xp3
    workp[9] = xp4;             // *(uint64 *) (workp + 72) = xp4
    mul121666rax = t50_stack;   // mul121666rax = t50_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_51_121666_213); // (uint128) mul121666rdx mul121666rax = 
                                                                                                             // mul121666rax * *(uint64 *)
                                                                                                             // &crypto_scalarmult_curve25519_amd64_51_121666_213
    mul121666rax >>= 13;        // (uint64) mul121666rax >>= 13
    zp0 = mul121666rax;         // zp0 = mul121666rax
    zp1 = mul121666rdx;         // zp1 = mul121666rdx
    mul121666rax = t51_stack;   // mul121666rax = t51_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_51_121666_213); // (uint128) mul121666rdx mul121666rax = 
                                                                                                             // mul121666rax * *(uint64 *)
                                                                                                             // &crypto_scalarmult_curve25519_amd64_51_121666_213
    mul121666rax >>= 13;        // (uint64) mul121666rax >>= 13
    zp1 += mul121666rax;        // zp1 += mul121666rax
    zp2 = mul121666rdx;         // zp2 = mul121666rdx
    mul121666rax = t52_stack;   // mul121666rax = t52_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_51_121666_213); // (uint128) mul121666rdx mul121666rax = 
                                                                                                             // mul121666rax * *(uint64 *)
                                                                                                             // &crypto_scalarmult_curve25519_amd64_51_121666_213
    mul121666rax >>= 13;        // (uint64) mul121666rax >>= 13
    zp2 += mul121666rax;        // zp2 += mul121666rax
    zp3 = mul121666rdx;         // zp3 = mul121666rdx
    mul121666rax = t53_stack;   // mul121666rax = t53_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_51_121666_213); // (uint128) mul121666rdx mul121666rax = 
                                                                                                             // mul121666rax * *(uint64 *)
                                                                                                             // &crypto_scalarmult_curve25519_amd64_51_121666_213
    mul121666rax >>= 13;        // (uint64) mul121666rax >>= 13
    zp3 += mul121666rax;        // zp3 += mul121666rax
    zp4 = mul121666rdx;         // zp4 = mul121666rdx
    mul121666rax = t54_stack;   // mul121666rax = t54_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_51_121666_213); // (uint128) mul121666rdx mul121666rax = 
                                                                                                             // mul121666rax * *(uint64 *)
                                                                                                             // &crypto_scalarmult_curve25519_amd64_51_121666_213
    mul121666rax >>= 13;        // (uint64) mul121666rax >>= 13
    zp4 += mul121666rax;        // zp4 += mul121666rax
    mul121666rdx *= 19;         // mul121666rdx *= 19
    zp0 += mul121666rdx;        // zp0 += mul121666rdx
    zp0 += t70_stack;           // zp0 += t70_stack
    zp1 += t71_stack;           // zp1 += t71_stack
    zp2 += t72_stack;           // zp2 += t72_stack
    zp3 += t73_stack;           // zp3 += t73_stack
    zp4 += t74_stack;           // zp4 += t74_stack
    workp[10] = zp0;            // *(uint64 *) (workp + 80) = zp0
    workp[11] = zp1;            // *(uint64 *) (workp + 88) = zp1
    workp[12] = zp2;            // *(uint64 *) (workp + 96) = zp2
    workp[13] = zp3;            // *(uint64 *) (workp + 104) = zp3
    workp[14] = zp4;            // *(uint64 *) (workp + 112) = zp4
    mulrax = workp[13];         // mulrax = *(uint64 *) (workp + 104)
    mulrax *= 19;               // mulrax *= 19
    mulx319_stack = mulrax;     // mulx319_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, t52_stack); // (uint128) mulrdx mulrax = mulrax * t52_stack
    zp0 = mulrax;               // zp0 = mulrax
    mulr01 = mulrdx;            // mulr01 = mulrdx
    mulrax = workp[14];         // mulrax = *(uint64 *) (workp + 112)
    mulrax *= 19;               // mulrax *= 19
    mulx419_stack = mulrax;     // mulx419_stack = mulrax
    multiply128(mulrdx, mulrax, mulrax, t51_stack); // (uint128) mulrdx mulrax = mulrax * t51_stack
    add64_and_set_carry(zp0, zp0, mulrax); // cf? zp0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = workp[10];         // mulrax = *(uint64 *) (workp + 80)
    multiply128(mulrdx, mulrax, mulrax, t50_stack); // (uint128) mulrdx mulrax = mulrax * t50_stack
    add64_and_set_carry(zp0, zp0, mulrax); // cf? zp0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = workp[10];         // mulrax = *(uint64 *) (workp + 80)
    multiply128(mulrdx, mulrax, mulrax, t51_stack); // (uint128) mulrdx mulrax = mulrax * t51_stack
    zp1 = mulrax;               // zp1 = mulrax
    mulr11 = mulrdx;            // mulr11 = mulrdx
    mulrax = workp[10];         // mulrax = *(uint64 *) (workp + 80)
    multiply128(mulrdx, mulrax, mulrax, t52_stack); // (uint128) mulrdx mulrax = mulrax * t52_stack
    zp2 = mulrax;               // zp2 = mulrax
    mulr21 = mulrdx;            // mulr21 = mulrdx
    mulrax = workp[10];         // mulrax = *(uint64 *) (workp + 80)
    multiply128(mulrdx, mulrax, mulrax, t53_stack); // (uint128) mulrdx mulrax = mulrax * t53_stack
    zp3 = mulrax;               // zp3 = mulrax
    mulr31 = mulrdx;            // mulr31 = mulrdx
    mulrax = workp[10];         // mulrax = *(uint64 *) (workp + 80)
    multiply128(mulrdx, mulrax, mulrax, t54_stack); // (uint128) mulrdx mulrax = mulrax * t54_stack
    zp4 = mulrax;               // zp4 = mulrax
    mulr41 = mulrdx;            // mulr41 = mulrdx
    mulrax = workp[11];         // mulrax = *(uint64 *) (workp + 88)
    multiply128(mulrdx, mulrax, mulrax, t50_stack); // (uint128) mulrdx mulrax = mulrax * t50_stack
    add64_and_set_carry(zp1, zp1, mulrax); // cf? zp1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = workp[11];         // mulrax = *(uint64 *) (workp + 88)
    multiply128(mulrdx, mulrax, mulrax, t51_stack); // (uint128) mulrdx mulrax = mulrax * t51_stack
    add64_and_set_carry(zp2, zp2, mulrax); // cf? zp2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = workp[11];         // mulrax = *(uint64 *) (workp + 88)
    multiply128(mulrdx, mulrax, mulrax, t52_stack); // (uint128) mulrdx mulrax = mulrax * t52_stack
    add64_and_set_carry(zp3, zp3, mulrax); // cf? zp3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = workp[11];         // mulrax = *(uint64 *) (workp + 88)
    multiply128(mulrdx, mulrax, mulrax, t53_stack); // (uint128) mulrdx mulrax = mulrax * t53_stack
    add64_and_set_carry(zp4, zp4, mulrax); // cf? zp4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = workp[11];         // mulrax = *(uint64 *) (workp + 88)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t54_stack); // (uint128) mulrdx mulrax = mulrax * t54_stack
    add64_and_set_carry(zp0, zp0, mulrax); // cf? zp0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = workp[12];         // mulrax = *(uint64 *) (workp + 96)
    multiply128(mulrdx, mulrax, mulrax, t50_stack); // (uint128) mulrdx mulrax = mulrax * t50_stack
    add64_and_set_carry(zp2, zp2, mulrax); // cf? zp2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = workp[12];         // mulrax = *(uint64 *) (workp + 96)
    multiply128(mulrdx, mulrax, mulrax, t51_stack); // (uint128) mulrdx mulrax = mulrax * t51_stack
    add64_and_set_carry(zp3, zp3, mulrax); // cf? zp3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = workp[12];         // mulrax = *(uint64 *) (workp + 96)
    multiply128(mulrdx, mulrax, mulrax, t52_stack); // (uint128) mulrdx mulrax = mulrax * t52_stack
    add64_and_set_carry(zp4, zp4, mulrax); // cf? zp4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = workp[12];         // mulrax = *(uint64 *) (workp + 96)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t53_stack); // (uint128) mulrdx mulrax = mulrax * t53_stack
    add64_and_set_carry(zp0, zp0, mulrax); // cf? zp0 += mulrax
    add64_with_carry(mulr01, mulr01, mulrdx); // mulr01 += mulrdx + cf; 
    mulrax = workp[12];         // mulrax = *(uint64 *) (workp + 96)
    mulrax *= 19;               // mulrax *= 19
    multiply128(mulrdx, mulrax, mulrax, t54_stack); // (uint128) mulrdx mulrax = mulrax * t54_stack
    add64_and_set_carry(zp1, zp1, mulrax); // cf? zp1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = workp[13];         // mulrax = *(uint64 *) (workp + 104)
    multiply128(mulrdx, mulrax, mulrax, t50_stack); // (uint128) mulrdx mulrax = mulrax * t50_stack
    add64_and_set_carry(zp3, zp3, mulrax); // cf? zp3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulrax = workp[13];         // mulrax = *(uint64 *) (workp + 104)
    multiply128(mulrdx, mulrax, mulrax, t51_stack); // (uint128) mulrdx mulrax = mulrax * t51_stack
    add64_and_set_carry(zp4, zp4, mulrax); // cf? zp4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, t53_stack); // (uint128) mulrdx mulrax = mulrax * t53_stack
    add64_and_set_carry(zp1, zp1, mulrax); // cf? zp1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx319_stack;     // mulrax = mulx319_stack
    multiply128(mulrdx, mulrax, mulrax, t54_stack); // (uint128) mulrdx mulrax = mulrax * t54_stack
    add64_and_set_carry(zp2, zp2, mulrax); // cf? zp2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = workp[14];         // mulrax = *(uint64 *) (workp + 112)
    multiply128(mulrdx, mulrax, mulrax, t50_stack); // (uint128) mulrdx mulrax = mulrax * t50_stack
    add64_and_set_carry(zp4, zp4, mulrax); // cf? zp4 += mulrax
    add64_with_carry(mulr41, mulr41, mulrdx); // mulr41 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t52_stack); // (uint128) mulrdx mulrax = mulrax * t52_stack
    add64_and_set_carry(zp1, zp1, mulrax); // cf? zp1 += mulrax
    add64_with_carry(mulr11, mulr11, mulrdx); // mulr11 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t53_stack); // (uint128) mulrdx mulrax = mulrax * t53_stack
    add64_and_set_carry(zp2, zp2, mulrax); // cf? zp2 += mulrax
    add64_with_carry(mulr21, mulr21, mulrdx); // mulr21 += mulrdx + cf; 
    mulrax = mulx419_stack;     // mulrax = mulx419_stack
    multiply128(mulrdx, mulrax, mulrax, t54_stack); // (uint128) mulrdx mulrax = mulrax * t54_stack
    add64_and_set_carry(zp3, zp3, mulrax); // cf? zp3 += mulrax
    add64_with_carry(mulr31, mulr31, mulrdx); // mulr31 += mulrdx + cf; 
    mulredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; // mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
    shift_left128(mulr01, mulr01, zp0, 13); // mulr01 = (mulr01.zp0) << 13
    zp0 &= mulredmask;          // zp0 &= mulredmask
    shift_left128(mulr11, mulr11, zp1, 13); // mulr11 = (mulr11.zp1) << 13
    zp1 &= mulredmask;          // zp1 &= mulredmask
    zp1 += mulr01;              // zp1 += mulr01
    shift_left128(mulr21, mulr21, zp2, 13); // mulr21 = (mulr21.zp2) << 13
    zp2 &= mulredmask;          // zp2 &= mulredmask
    zp2 += mulr11;              // zp2 += mulr11
    shift_left128(mulr31, mulr31, zp3, 13); // mulr31 = (mulr31.zp3) << 13
    zp3 &= mulredmask;          // zp3 &= mulredmask
    zp3 += mulr21;              // zp3 += mulr21
    shift_left128(mulr41, mulr41, zp4, 13); // mulr41 = (mulr41.zp4) << 13
    zp4 &= mulredmask;          // zp4 &= mulredmask
    zp4 += mulr31;              // zp4 += mulr31
    mulr41 = mulr41 * 19;       // mulr41 = mulr41 * 19
    zp0 += mulr41;              // zp0 += mulr41
    mult = zp0;                 // mult = zp0
    mult >>= 51;                // (uint64) mult >>= 51
    mult += zp1;                // mult += zp1
    zp1 = mult;                 // zp1 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    zp0 &= mulredmask;          // zp0 &= mulredmask
    mult += zp2;                // mult += zp2
    zp2 = mult;                 // zp2 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    zp1 &= mulredmask;          // zp1 &= mulredmask
    mult += zp3;                // mult += zp3
    zp3 = mult;                 // zp3 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    zp2 &= mulredmask;          // zp2 &= mulredmask
    mult += zp4;                // mult += zp4
    zp4 = mult;                 // zp4 = mult
    mult >>= 51;                // (uint64) mult >>= 51
    zp3 &= mulredmask;          // zp3 &= mulredmask
    mult *= 19;                 // mult *= 19
    zp0 += mult;                // zp0 += mult
    zp4 &= mulredmask;          // zp4 &= mulredmask
    workp[10] = zp0;            // *(uint64 *) (workp + 80) = zp0
    workp[11] = zp1;            // *(uint64 *) (workp + 88) = zp1
    workp[12] = zp2;            // *(uint64 *) (workp + 96) = zp2
    workp[13] = zp3;            // *(uint64 *) (workp + 104) = zp3
    workp[14] = zp4;            // *(uint64 *) (workp + 112) = zp4
    return;
}
