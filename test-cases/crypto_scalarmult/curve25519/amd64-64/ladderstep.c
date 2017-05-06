#include "qhasm-translator.h"

extern uint64_t crypto_scalarmult_curve25519_amd64_64_121666;
extern uint64_t crypto_scalarmult_curve25519_amd64_64_38;
void
crypto_scalarmult_curve25519_amd64_64_ladderstep(uint64_t * workp)
{
    uint64_t        addt0;
    uint64_t        addt1;
    uint64_t        carry;
    uint64_t        mul121666r4;
    uint64_t        mul121666rax;
    uint64_t        mul121666rdx;
    uint64_t        mul121666t1;
    uint64_t        mul121666t2;
    uint64_t        mul121666t3;
    uint64_t        mulc;
    uint64_t        mulr4;
    uint64_t        mulr5;
    uint64_t        mulr6;
    uint64_t        mulr7;
    uint64_t        mulr8;
    uint64_t        mulrax;
    uint64_t        mulrdx;
    uint64_t        mulx0;
    uint64_t        mulx1;
    uint64_t        mulx2;
    uint64_t        mulx3;
    uint64_t        mulzero;
    uint64_t        squarer4;
    uint64_t        squarer5;
    uint64_t        squarer6;
    uint64_t        squarer7;
    uint64_t        squarer8;
    uint64_t        squarerax;
    uint64_t        squarerdx;
    uint64_t        squaret1;
    uint64_t        squaret2;
    uint64_t        squaret3;
    uint64_t        squarezero;
    uint64_t        subt0;
    uint64_t        subt1;
    uint64_t        t10;
    uint64_t        t10_stack;
    uint64_t        t11;
    uint64_t        t11_stack;
    uint64_t        t12;
    uint64_t        t12_stack;
    uint64_t        t13;
    uint64_t        t13_stack;
    uint64_t        t20;
    uint64_t        t20_stack;
    uint64_t        t21;
    uint64_t        t21_stack;
    uint64_t        t22;
    uint64_t        t22_stack;
    uint64_t        t23;
    uint64_t        t23_stack;
    uint64_t        t30;
    uint64_t        t30_stack;
    uint64_t        t31;
    uint64_t        t31_stack;
    uint64_t        t32;
    uint64_t        t32_stack;
    uint64_t        t33;
    uint64_t        t33_stack;
    uint64_t        t40;
    uint64_t        t40_stack;
    uint64_t        t41;
    uint64_t        t41_stack;
    uint64_t        t42;
    uint64_t        t42_stack;
    uint64_t        t43;
    uint64_t        t43_stack;
    uint64_t        t50;
    uint64_t        t50_stack;
    uint64_t        t51;
    uint64_t        t51_stack;
    uint64_t        t52;
    uint64_t        t52_stack;
    uint64_t        t53;
    uint64_t        t53_stack;
    uint64_t        t60;
    uint64_t        t60_stack;
    uint64_t        t61;
    uint64_t        t61_stack;
    uint64_t        t62;
    uint64_t        t62_stack;
    uint64_t        t63;
    uint64_t        t63_stack;
    uint64_t        t70;
    uint64_t        t70_stack;
    uint64_t        t71;
    uint64_t        t71_stack;
    uint64_t        t72;
    uint64_t        t72_stack;
    uint64_t        t73;
    uint64_t        t73_stack;
    uint64_t        t80;
    uint64_t        t81;
    uint64_t        t82;
    uint64_t        t83;
    uint64_t        t90;
    uint64_t        t90_stack;
    uint64_t        t91;
    uint64_t        t91_stack;
    uint64_t        t92;
    uint64_t        t92_stack;
    uint64_t        t93;
    uint64_t        t93_stack;
    uint64_t        xp0;
    uint64_t        xp1;
    uint64_t        xp2;
    uint64_t        xp3;
    uint64_t        xq0;
    uint64_t        xq1;
    uint64_t        xq2;
    uint64_t        xq3;
    uint64_t        zp0;
    uint64_t        zp1;
    uint64_t        zp2;
    uint64_t        zp3;
    uint64_t        zq0;
    uint64_t        zq1;
    uint64_t        zq2;
    uint64_t        zq3;

    t10 = workp[4];             // t10 = *(uint64 *) (workp + 32)
    t11 = workp[5];             // t11 = *(uint64 *) (workp + 40)
    t12 = workp[6];             // t12 = *(uint64 *) (workp + 48)
    t13 = workp[7];             // t13 = *(uint64 *) (workp + 56)
    t20 = t10;                  // t20 = t10
    t21 = t11;                  // t21 = t11
    t22 = t12;                  // t22 = t12
    t23 = t13;                  // t23 = t13
    add64_and_set_carry(t10, t10, workp[8]); // cf? t10 += *(uint64 *) (workp + 64)
    add64_with_carry_and_set_carry(t11, t11, workp[9]); // cf? t11 += *(uint64 *) (workp + 72) + cf;
    add64_with_carry_and_set_carry(t12, t12, workp[10]); // cf? t12 += *(uint64 *) (workp + 80) + cf;
    add64_with_carry_and_set_carry(t13, t13, workp[11]); // cf? t13 += *(uint64 *) (workp + 88) + cf;
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(t10, t10, addt1); // cf? t10 += addt1
    add64_with_carry_and_set_carry(t11, t11, addt0); // cf? t11 += addt0 + cf; 
    add64_with_carry_and_set_carry(t12, t12, addt0); // cf? t12 += addt0 + cf; 
    add64_with_carry_and_set_carry(t13, t13, addt0); // cf? t13 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    t10 += addt0;               // t10 += addt0
    sub64_and_set_carry(t20, t20, workp[8]); // cf? t20 -= *(uint64 *) (workp + 64)
    sub64_with_carry_and_set_carry(t21, t21, workp[9]); // cf? t21 -= *(uint64 *) (workp + 72) - cf; 
    sub64_with_carry_and_set_carry(t22, t22, workp[10]); // cf? t22 -= *(uint64 *) (workp + 80) - cf; 
    sub64_with_carry_and_set_carry(t23, t23, workp[11]); // cf? t23 -= *(uint64 *) (workp + 88) - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(t20, t20, subt1); // cf? t20 -= subt1
    sub64_with_carry_and_set_carry(t21, t21, subt0); // cf? t21 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(t22, t22, subt0); // cf? t22 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(t23, t23, subt0); // cf? t23 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    t20 -= subt0;               // t20 -= subt0
    t10_stack = t10;            // t10_stack = t10
    t11_stack = t11;            // t11_stack = t11
    t12_stack = t12;            // t12_stack = t12
    t13_stack = t13;            // t13_stack = t13
    t20_stack = t20;            // t20_stack = t20
    t21_stack = t21;            // t21_stack = t21
    t22_stack = t22;            // t22_stack = t22
    t23_stack = t23;            // t23_stack = t23
    squarer7 = 0;               // squarer7 = 0
    squarerax = t21_stack;      // squarerax = t21_stack
    multiply128(squarerdx, squarerax, squarerax, t20_stack); // (uint128) squarerdx squarerax = squarerax * t20_stack
    t71 = squarerax;            // t71 = squarerax
    t72 = squarerdx;            // t72 = squarerdx
    squarerax = t22_stack;      // squarerax = t22_stack
    multiply128(squarerdx, squarerax, squarerax, t21_stack); // (uint128) squarerdx squarerax = squarerax * t21_stack
    t73 = squarerax;            // t73 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = t23_stack;      // squarerax = t23_stack
    multiply128(squarerdx, squarerax, squarerax, t22_stack); // (uint128) squarerdx squarerax = squarerax * t22_stack
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = t22_stack;      // squarerax = t22_stack
    multiply128(squarerdx, squarerax, squarerax, t20_stack); // (uint128) squarerdx squarerax = squarerax * t20_stack
    add64_and_set_carry(t72, t72, squarerax); // cf? t72 += squarerax
    add64_with_carry_and_set_carry(t73, t73, squarerdx); // cf? t73 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = t23_stack;      // squarerax = t23_stack
    multiply128(squarerdx, squarerax, squarerax, t21_stack); // (uint128) squarerdx squarerax = squarerax * t21_stack
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = t23_stack;      // squarerax = t23_stack
    multiply128(squarerdx, squarerax, squarerax, t20_stack); // (uint128) squarerdx squarerax = squarerax * t20_stack
    add64_and_set_carry(t73, t73, squarerax); // cf? t73 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(t71, t71, t71); // cf? t71 += t71
    add64_with_carry_and_set_carry(t72, t72, t72); // cf? t72 += t72 + cf; 
    add64_with_carry_and_set_carry(t73, t73, t73); // cf? t73 += t73 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = t20_stack;      // squarerax = t20_stack
    multiply128(squarerdx, squarerax, squarerax, t20_stack); // (uint128) squarerdx squarerax = squarerax * t20_stack
    t70 = squarerax;            // t70 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = t21_stack;      // squarerax = t21_stack
    multiply128(squarerdx, squarerax, squarerax, t21_stack); // (uint128) squarerdx squarerax = squarerax * t21_stack
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = t22_stack;      // squarerax = t22_stack
    multiply128(squarerdx, squarerax, squarerax, t22_stack); // (uint128) squarerdx squarerax = squarerax * t22_stack
    add64_and_set_carry(t71, t71, squaret1); // cf? t71 += squaret1
    add64_with_carry_and_set_carry(t72, t72, squaret2); // cf? t72 += squaret2 + cf; 
    add64_with_carry_and_set_carry(t73, t73, squaret3); // cf? t73 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = t23_stack;      // squarerax = t23_stack
    multiply128(squarerdx, squarerax, squarerax, t23_stack); // (uint128) squarerdx squarerax = squarerax * t23_stack
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    squarerax = squarer4;       // squarerax = squarer4
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    squarer4 = squarerax;       // squarer4 = squarerax
    squarerax = squarer5;       // squarerax = squarer5
    squarer5 = squarerdx;       // squarer5 = squarerdx
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer5, squarer5, squarerax); // cf? squarer5 += squarerax
    squarerax = squarer6;       // squarerax = squarer6
    squarer6 = 0;               // squarer6 = 0
    add64_with_carry(squarer6, squarer6, squarerdx); // squarer6 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    squarerax = squarer7;       // squarerax = squarer7
    squarer7 = 0;               // squarer7 = 0
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer7, squarer7, squarerax); // cf? squarer7 += squarerax
    squarer8 = 0;               // squarer8 = 0
    add64_with_carry(squarer8, squarer8, squarerdx); // squarer8 += squarerdx + cf; 
    add64_and_set_carry(t70, t70, squarer4); // cf? t70 += squarer4
    add64_with_carry_and_set_carry(t71, t71, squarer5); // cf? t71 += squarer5 + cf; 
    add64_with_carry_and_set_carry(t72, t72, squarer6); // cf? t72 += squarer6 + cf; 
    add64_with_carry_and_set_carry(t73, t73, squarer7); // cf? t73 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(t70, t70, squarer8); // cf? t70 += squarer8
    add64_with_carry_and_set_carry(t71, t71, squarezero); // cf? t71 += squarezero + cf; 
    add64_with_carry_and_set_carry(t72, t72, squarezero); // cf? t72 += squarezero + cf; 
    add64_with_carry_and_set_carry(t73, t73, squarezero); // cf? t73 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    t70 += squarezero;          // t70 += squarezero
    t70_stack = t70;            // t70_stack = t70
    t71_stack = t71;            // t71_stack = t71
    t72_stack = t72;            // t72_stack = t72
    t73_stack = t73;            // t73_stack = t73
    squarer7 = 0;               // squarer7 = 0
    squarerax = t11_stack;      // squarerax = t11_stack
    multiply128(squarerdx, squarerax, squarerax, t10_stack); // (uint128) squarerdx squarerax = squarerax * t10_stack
    t61 = squarerax;            // t61 = squarerax
    t62 = squarerdx;            // t62 = squarerdx
    squarerax = t12_stack;      // squarerax = t12_stack
    multiply128(squarerdx, squarerax, squarerax, t11_stack); // (uint128) squarerdx squarerax = squarerax * t11_stack
    t63 = squarerax;            // t63 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = t13_stack;      // squarerax = t13_stack
    multiply128(squarerdx, squarerax, squarerax, t12_stack); // (uint128) squarerdx squarerax = squarerax * t12_stack
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = t12_stack;      // squarerax = t12_stack
    multiply128(squarerdx, squarerax, squarerax, t10_stack); // (uint128) squarerdx squarerax = squarerax * t10_stack
    add64_and_set_carry(t62, t62, squarerax); // cf? t62 += squarerax
    add64_with_carry_and_set_carry(t63, t63, squarerdx); // cf? t63 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = t13_stack;      // squarerax = t13_stack
    multiply128(squarerdx, squarerax, squarerax, t11_stack); // (uint128) squarerdx squarerax = squarerax * t11_stack
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = t13_stack;      // squarerax = t13_stack
    multiply128(squarerdx, squarerax, squarerax, t10_stack); // (uint128) squarerdx squarerax = squarerax * t10_stack
    add64_and_set_carry(t63, t63, squarerax); // cf? t63 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(t61, t61, t61); // cf? t61 += t61
    add64_with_carry_and_set_carry(t62, t62, t62); // cf? t62 += t62 + cf; 
    add64_with_carry_and_set_carry(t63, t63, t63); // cf? t63 += t63 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = t10_stack;      // squarerax = t10_stack
    multiply128(squarerdx, squarerax, squarerax, t10_stack); // (uint128) squarerdx squarerax = squarerax * t10_stack
    t60 = squarerax;            // t60 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = t11_stack;      // squarerax = t11_stack
    multiply128(squarerdx, squarerax, squarerax, t11_stack); // (uint128) squarerdx squarerax = squarerax * t11_stack
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = t12_stack;      // squarerax = t12_stack
    multiply128(squarerdx, squarerax, squarerax, t12_stack); // (uint128) squarerdx squarerax = squarerax * t12_stack
    add64_and_set_carry(t61, t61, squaret1); // cf? t61 += squaret1
    add64_with_carry_and_set_carry(t62, t62, squaret2); // cf? t62 += squaret2 + cf; 
    add64_with_carry_and_set_carry(t63, t63, squaret3); // cf? t63 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = t13_stack;      // squarerax = t13_stack
    multiply128(squarerdx, squarerax, squarerax, t13_stack); // (uint128) squarerdx squarerax = squarerax * t13_stack
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    squarerax = squarer4;       // squarerax = squarer4
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    squarer4 = squarerax;       // squarer4 = squarerax
    squarerax = squarer5;       // squarerax = squarer5
    squarer5 = squarerdx;       // squarer5 = squarerdx
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer5, squarer5, squarerax); // cf? squarer5 += squarerax
    squarerax = squarer6;       // squarerax = squarer6
    squarer6 = 0;               // squarer6 = 0
    add64_with_carry(squarer6, squarer6, squarerdx); // squarer6 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    squarerax = squarer7;       // squarerax = squarer7
    squarer7 = 0;               // squarer7 = 0
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer7, squarer7, squarerax); // cf? squarer7 += squarerax
    squarer8 = 0;               // squarer8 = 0
    add64_with_carry(squarer8, squarer8, squarerdx); // squarer8 += squarerdx + cf; 
    add64_and_set_carry(t60, t60, squarer4); // cf? t60 += squarer4
    add64_with_carry_and_set_carry(t61, t61, squarer5); // cf? t61 += squarer5 + cf; 
    add64_with_carry_and_set_carry(t62, t62, squarer6); // cf? t62 += squarer6 + cf; 
    add64_with_carry_and_set_carry(t63, t63, squarer7); // cf? t63 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(t60, t60, squarer8); // cf? t60 += squarer8
    add64_with_carry_and_set_carry(t61, t61, squarezero); // cf? t61 += squarezero + cf; 
    add64_with_carry_and_set_carry(t62, t62, squarezero); // cf? t62 += squarezero + cf; 
    add64_with_carry_and_set_carry(t63, t63, squarezero); // cf? t63 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    t60 += squarezero;          // t60 += squarezero
    t60_stack = t60;            // t60_stack = t60
    t61_stack = t61;            // t61_stack = t61
    t62_stack = t62;            // t62_stack = t62
    t63_stack = t63;            // t63_stack = t63
    t50 = t60;                  // t50 = t60
    t51 = t61;                  // t51 = t61
    t52 = t62;                  // t52 = t62
    t53 = t63;                  // t53 = t63
    sub64_and_set_carry(t50, t50, t70_stack); // cf? t50 -= t70_stack
    sub64_with_carry_and_set_carry(t51, t51, t71_stack); // cf? t51 -= t71_stack - cf; 
    sub64_with_carry_and_set_carry(t52, t52, t72_stack); // cf? t52 -= t72_stack - cf; 
    sub64_with_carry_and_set_carry(t53, t53, t73_stack); // cf? t53 -= t73_stack - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(t50, t50, subt1); // cf? t50 -= subt1
    sub64_with_carry_and_set_carry(t51, t51, subt0); // cf? t51 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(t52, t52, subt0); // cf? t52 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(t53, t53, subt0); // cf? t53 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    t50 -= subt0;               // t50 -= subt0
    t50_stack = t50;            // t50_stack = t50
    t51_stack = t51;            // t51_stack = t51
    t52_stack = t52;            // t52_stack = t52
    t53_stack = t53;            // t53_stack = t53
    t30 = workp[12];            // t30 = *(uint64 *) (workp + 96)
    t31 = workp[13];            // t31 = *(uint64 *) (workp + 104)
    t32 = workp[14];            // t32 = *(uint64 *) (workp + 112)
    t33 = workp[15];            // t33 = *(uint64 *) (workp + 120)
    t40 = t30;                  // t40 = t30
    t41 = t31;                  // t41 = t31
    t42 = t32;                  // t42 = t32
    t43 = t33;                  // t43 = t33
    add64_and_set_carry(t30, t30, workp[16]); // cf? t30 += *(uint64 *) (workp + 128)
    add64_with_carry_and_set_carry(t31, t31, workp[17]); // cf? t31 += *(uint64 *) (workp + 136) + cf;
    add64_with_carry_and_set_carry(t32, t32, workp[18]); // cf? t32 += *(uint64 *) (workp + 144) + cf;
    add64_with_carry_and_set_carry(t33, t33, workp[19]); // cf? t33 += *(uint64 *) (workp + 152) + cf;
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(t30, t30, addt1); // cf? t30 += addt1
    add64_with_carry_and_set_carry(t31, t31, addt0); // cf? t31 += addt0 + cf; 
    add64_with_carry_and_set_carry(t32, t32, addt0); // cf? t32 += addt0 + cf; 
    add64_with_carry_and_set_carry(t33, t33, addt0); // cf? t33 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    t30 += addt0;               // t30 += addt0
    sub64_and_set_carry(t40, t40, workp[16]); // cf? t40 -= *(uint64 *) (workp + 128)
    sub64_with_carry_and_set_carry(t41, t41, workp[17]); // cf? t41 -= *(uint64 *) (workp + 136) - cf; 
    sub64_with_carry_and_set_carry(t42, t42, workp[18]); // cf? t42 -= *(uint64 *) (workp + 144) - cf; 
    sub64_with_carry_and_set_carry(t43, t43, workp[19]); // cf? t43 -= *(uint64 *) (workp + 152) - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(t40, t40, subt1); // cf? t40 -= subt1
    sub64_with_carry_and_set_carry(t41, t41, subt0); // cf? t41 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(t42, t42, subt0); // cf? t42 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(t43, t43, subt0); // cf? t43 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    t40 -= subt0;               // t40 -= subt0
    t30_stack = t30;            // t30_stack = t30
    t31_stack = t31;            // t31_stack = t31
    t32_stack = t32;            // t32_stack = t32
    t33_stack = t33;            // t33_stack = t33
    t40_stack = t40;            // t40_stack = t40
    t41_stack = t41;            // t41_stack = t41
    t42_stack = t42;            // t42_stack = t42
    t43_stack = t43;            // t43_stack = t43
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = t30_stack;          // mulx0 = t30_stack
    mulrax = t20_stack;         // mulrax = t20_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    t90 = mulrax;               // t90 = mulrax
    t91 = mulrdx;               // t91 = mulrdx
    mulrax = t21_stack;         // mulrax = t21_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(t91, t91, mulrax); // cf? t91 += mulrax
    t92 = 0;                    // t92 = 0
    add64_with_carry(t92, t92, mulrdx); // t92 += mulrdx + cf; 
    mulrax = t22_stack;         // mulrax = t22_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(t92, t92, mulrax); // cf? t92 += mulrax
    t93 = 0;                    // t93 = 0
    add64_with_carry(t93, t93, mulrdx); // t93 += mulrdx + cf; 
    mulrax = t23_stack;         // mulrax = t23_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(t93, t93, mulrax); // cf? t93 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = t31_stack;          // mulx1 = t31_stack
    mulrax = t20_stack;         // mulrax = t20_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(t91, t91, mulrax); // cf? t91 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t21_stack;         // mulrax = t21_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(t92, t92, mulrax); // cf? t92 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(t92, t92, mulc); // cf? t92 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t22_stack;         // mulrax = t22_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(t93, t93, mulrax); // cf? t93 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(t93, t93, mulc); // cf? t93 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t23_stack;         // mulrax = t23_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = t32_stack;          // mulx2 = t32_stack
    mulrax = t20_stack;         // mulrax = t20_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(t92, t92, mulrax); // cf? t92 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t21_stack;         // mulrax = t21_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(t93, t93, mulrax); // cf? t93 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(t93, t93, mulc); // cf? t93 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t22_stack;         // mulrax = t22_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t23_stack;         // mulrax = t23_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = t33_stack;          // mulx3 = t33_stack
    mulrax = t20_stack;         // mulrax = t20_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(t93, t93, mulrax); // cf? t93 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t21_stack;         // mulrax = t21_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t22_stack;         // mulrax = t22_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t23_stack;         // mulrax = t23_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(t90, t90, mulr4); // cf? t90 += mulr4
    add64_with_carry_and_set_carry(t91, t91, mulr5); // cf? t91 += mulr5 + cf; 
    add64_with_carry_and_set_carry(t92, t92, mulr6); // cf? t92 += mulr6 + cf; 
    add64_with_carry_and_set_carry(t93, t93, mulr7); // cf? t93 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(t90, t90, mulr8); // cf? t90 += mulr8
    add64_with_carry_and_set_carry(t91, t91, mulzero); // cf? t91 += mulzero + cf; 
    add64_with_carry_and_set_carry(t92, t92, mulzero); // cf? t92 += mulzero + cf; 
    add64_with_carry_and_set_carry(t93, t93, mulzero); // cf? t93 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    t90 += mulzero;             // t90 += mulzero
    t90_stack = t90;            // t90_stack = t90
    t91_stack = t91;            // t91_stack = t91
    t92_stack = t92;            // t92_stack = t92
    t93_stack = t93;            // t93_stack = t93
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = t40_stack;          // mulx0 = t40_stack
    mulrax = t10_stack;         // mulrax = t10_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    t80 = mulrax;               // t80 = mulrax
    t81 = mulrdx;               // t81 = mulrdx
    mulrax = t11_stack;         // mulrax = t11_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(t81, t81, mulrax); // cf? t81 += mulrax
    t82 = 0;                    // t82 = 0
    add64_with_carry(t82, t82, mulrdx); // t82 += mulrdx + cf; 
    mulrax = t12_stack;         // mulrax = t12_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(t82, t82, mulrax); // cf? t82 += mulrax
    t83 = 0;                    // t83 = 0
    add64_with_carry(t83, t83, mulrdx); // t83 += mulrdx + cf; 
    mulrax = t13_stack;         // mulrax = t13_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(t83, t83, mulrax); // cf? t83 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = t41_stack;          // mulx1 = t41_stack
    mulrax = t10_stack;         // mulrax = t10_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(t81, t81, mulrax); // cf? t81 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t11_stack;         // mulrax = t11_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(t82, t82, mulrax); // cf? t82 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(t82, t82, mulc); // cf? t82 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t12_stack;         // mulrax = t12_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(t83, t83, mulrax); // cf? t83 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(t83, t83, mulc); // cf? t83 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t13_stack;         // mulrax = t13_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = t42_stack;          // mulx2 = t42_stack
    mulrax = t10_stack;         // mulrax = t10_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(t82, t82, mulrax); // cf? t82 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t11_stack;         // mulrax = t11_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(t83, t83, mulrax); // cf? t83 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(t83, t83, mulc); // cf? t83 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t12_stack;         // mulrax = t12_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t13_stack;         // mulrax = t13_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = t43_stack;          // mulx3 = t43_stack
    mulrax = t10_stack;         // mulrax = t10_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(t83, t83, mulrax); // cf? t83 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t11_stack;         // mulrax = t11_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t12_stack;         // mulrax = t12_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t13_stack;         // mulrax = t13_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(t80, t80, mulr4); // cf? t80 += mulr4
    add64_with_carry_and_set_carry(t81, t81, mulr5); // cf? t81 += mulr5 + cf; 
    add64_with_carry_and_set_carry(t82, t82, mulr6); // cf? t82 += mulr6 + cf; 
    add64_with_carry_and_set_carry(t83, t83, mulr7); // cf? t83 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(t80, t80, mulr8); // cf? t80 += mulr8
    add64_with_carry_and_set_carry(t81, t81, mulzero); // cf? t81 += mulzero + cf; 
    add64_with_carry_and_set_carry(t82, t82, mulzero); // cf? t82 += mulzero + cf; 
    add64_with_carry_and_set_carry(t83, t83, mulzero); // cf? t83 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    t80 += mulzero;             // t80 += mulzero
    zq0 = t80;                  // zq0 = t80
    zq1 = t81;                  // zq1 = t81
    zq2 = t82;                  // zq2 = t82
    zq3 = t83;                  // zq3 = t83
    sub64_and_set_carry(zq0, zq0, t90_stack); // cf? zq0 -= t90_stack
    sub64_with_carry_and_set_carry(zq1, zq1, t91_stack); // cf? zq1 -= t91_stack - cf; 
    sub64_with_carry_and_set_carry(zq2, zq2, t92_stack); // cf? zq2 -= t92_stack - cf; 
    sub64_with_carry_and_set_carry(zq3, zq3, t93_stack); // cf? zq3 -= t93_stack - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(zq0, zq0, subt1); // cf? zq0 -= subt1
    sub64_with_carry_and_set_carry(zq1, zq1, subt0); // cf? zq1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(zq2, zq2, subt0); // cf? zq2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(zq3, zq3, subt0); // cf? zq3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    zq0 -= subt0;               // zq0 -= subt0
    add64_and_set_carry(t80, t80, t90_stack); // cf? t80 += t90_stack
    add64_with_carry_and_set_carry(t81, t81, t91_stack); // cf? t81 += t91_stack + cf; 
    add64_with_carry_and_set_carry(t82, t82, t92_stack); // cf? t82 += t92_stack + cf; 
    add64_with_carry_and_set_carry(t83, t83, t93_stack); // cf? t83 += t93_stack + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(t80, t80, addt1); // cf? t80 += addt1
    add64_with_carry_and_set_carry(t81, t81, addt0); // cf? t81 += addt0 + cf; 
    add64_with_carry_and_set_carry(t82, t82, addt0); // cf? t82 += addt0 + cf; 
    add64_with_carry_and_set_carry(t83, t83, addt0); // cf? t83 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    t80 += addt0;               // t80 += addt0
    workp[12] = t80;            // *(uint64 *) (workp + 96) = t80
    workp[13] = t81;            // *(uint64 *) (workp + 104) = t81
    workp[14] = t82;            // *(uint64 *) (workp + 112) = t82
    workp[15] = t83;            // *(uint64 *) (workp + 120) = t83
    workp[16] = zq0;            // *(uint64 *) (workp + 128) = zq0
    workp[17] = zq1;            // *(uint64 *) (workp + 136) = zq1
    workp[18] = zq2;            // *(uint64 *) (workp + 144) = zq2
    workp[19] = zq3;            // *(uint64 *) (workp + 152) = zq3
    squarer7 = 0;               // squarer7 = 0
    squarerax = workp[13];      // squarerax = *(uint64 *) (workp + 104)
    multiply128(squarerdx, squarerax, squarerax, workp[12]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 96);
    xq1 = squarerax;            // xq1 = squarerax
    xq2 = squarerdx;            // xq2 = squarerdx
    squarerax = workp[14];      // squarerax = *(uint64 *) (workp + 112)
    multiply128(squarerdx, squarerax, squarerax, workp[13]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 104);
    xq3 = squarerax;            // xq3 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    multiply128(squarerdx, squarerax, squarerax, workp[14]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 112);
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = workp[14];      // squarerax = *(uint64 *) (workp + 112)
    multiply128(squarerdx, squarerax, squarerax, workp[12]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 96);
    add64_and_set_carry(xq2, xq2, squarerax); // cf? xq2 += squarerax
    add64_with_carry_and_set_carry(xq3, xq3, squarerdx); // cf? xq3 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    multiply128(squarerdx, squarerax, squarerax, workp[13]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 104);
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    multiply128(squarerdx, squarerax, squarerax, workp[12]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 96);
    add64_and_set_carry(xq3, xq3, squarerax); // cf? xq3 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(xq1, xq1, xq1); // cf? xq1 += xq1
    add64_with_carry_and_set_carry(xq2, xq2, xq2); // cf? xq2 += xq2 + cf; 
    add64_with_carry_and_set_carry(xq3, xq3, xq3); // cf? xq3 += xq3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = workp[12];      // squarerax = *(uint64 *) (workp + 96)
    multiply128(squarerdx, squarerax, squarerax, workp[12]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 96);
    xq0 = squarerax;            // xq0 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = workp[13];      // squarerax = *(uint64 *) (workp + 104)
    multiply128(squarerdx, squarerax, squarerax, workp[13]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 104);
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = workp[14];      // squarerax = *(uint64 *) (workp + 112)
    multiply128(squarerdx, squarerax, squarerax, workp[14]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 112);
    add64_and_set_carry(xq1, xq1, squaret1); // cf? xq1 += squaret1
    add64_with_carry_and_set_carry(xq2, xq2, squaret2); // cf? xq2 += squaret2 + cf; 
    add64_with_carry_and_set_carry(xq3, xq3, squaret3); // cf? xq3 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = workp[15];      // squarerax = *(uint64 *) (workp + 120)
    multiply128(squarerdx, squarerax, squarerax, workp[15]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 120);
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    squarerax = squarer4;       // squarerax = squarer4
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    squarer4 = squarerax;       // squarer4 = squarerax
    squarerax = squarer5;       // squarerax = squarer5
    squarer5 = squarerdx;       // squarer5 = squarerdx
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer5, squarer5, squarerax); // cf? squarer5 += squarerax
    squarerax = squarer6;       // squarerax = squarer6
    squarer6 = 0;               // squarer6 = 0
    add64_with_carry(squarer6, squarer6, squarerdx); // squarer6 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    squarerax = squarer7;       // squarerax = squarer7
    squarer7 = 0;               // squarer7 = 0
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer7, squarer7, squarerax); // cf? squarer7 += squarerax
    squarer8 = 0;               // squarer8 = 0
    add64_with_carry(squarer8, squarer8, squarerdx); // squarer8 += squarerdx + cf; 
    add64_and_set_carry(xq0, xq0, squarer4); // cf? xq0 += squarer4
    add64_with_carry_and_set_carry(xq1, xq1, squarer5); // cf? xq1 += squarer5 + cf; 
    add64_with_carry_and_set_carry(xq2, xq2, squarer6); // cf? xq2 += squarer6 + cf; 
    add64_with_carry_and_set_carry(xq3, xq3, squarer7); // cf? xq3 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(xq0, xq0, squarer8); // cf? xq0 += squarer8
    add64_with_carry_and_set_carry(xq1, xq1, squarezero); // cf? xq1 += squarezero + cf; 
    add64_with_carry_and_set_carry(xq2, xq2, squarezero); // cf? xq2 += squarezero + cf; 
    add64_with_carry_and_set_carry(xq3, xq3, squarezero); // cf? xq3 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    xq0 += squarezero;          // xq0 += squarezero
    workp[12] = xq0;            // *(uint64 *) (workp + 96) = xq0
    workp[13] = xq1;            // *(uint64 *) (workp + 104) = xq1
    workp[14] = xq2;            // *(uint64 *) (workp + 112) = xq2
    workp[15] = xq3;            // *(uint64 *) (workp + 120) = xq3
    squarer7 = 0;               // squarer7 = 0
    squarerax = workp[17];      // squarerax = *(uint64 *) (workp + 136)
    multiply128(squarerdx, squarerax, squarerax, workp[16]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 128);
    zq1 = squarerax;            // zq1 = squarerax
    zq2 = squarerdx;            // zq2 = squarerdx
    squarerax = workp[18];      // squarerax = *(uint64 *) (workp + 144)
    multiply128(squarerdx, squarerax, squarerax, workp[17]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 136);
    zq3 = squarerax;            // zq3 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = workp[19];      // squarerax = *(uint64 *) (workp + 152)
    multiply128(squarerdx, squarerax, squarerax, workp[18]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 144);
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = workp[18];      // squarerax = *(uint64 *) (workp + 144)
    multiply128(squarerdx, squarerax, squarerax, workp[16]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 128);
    add64_and_set_carry(zq2, zq2, squarerax); // cf? zq2 += squarerax
    add64_with_carry_and_set_carry(zq3, zq3, squarerdx); // cf? zq3 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = workp[19];      // squarerax = *(uint64 *) (workp + 152)
    multiply128(squarerdx, squarerax, squarerax, workp[17]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 136);
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = workp[19];      // squarerax = *(uint64 *) (workp + 152)
    multiply128(squarerdx, squarerax, squarerax, workp[16]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 128);
    add64_and_set_carry(zq3, zq3, squarerax); // cf? zq3 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(zq1, zq1, zq1); // cf? zq1 += zq1
    add64_with_carry_and_set_carry(zq2, zq2, zq2); // cf? zq2 += zq2 + cf; 
    add64_with_carry_and_set_carry(zq3, zq3, zq3); // cf? zq3 += zq3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = workp[16];      // squarerax = *(uint64 *) (workp + 128)
    multiply128(squarerdx, squarerax, squarerax, workp[16]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 128);
    zq0 = squarerax;            // zq0 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = workp[17];      // squarerax = *(uint64 *) (workp + 136)
    multiply128(squarerdx, squarerax, squarerax, workp[17]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 136);
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = workp[18];      // squarerax = *(uint64 *) (workp + 144)
    multiply128(squarerdx, squarerax, squarerax, workp[18]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 144);
    add64_and_set_carry(zq1, zq1, squaret1); // cf? zq1 += squaret1
    add64_with_carry_and_set_carry(zq2, zq2, squaret2); // cf? zq2 += squaret2 + cf; 
    add64_with_carry_and_set_carry(zq3, zq3, squaret3); // cf? zq3 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = workp[19];      // squarerax = *(uint64 *) (workp + 152)
    multiply128(squarerdx, squarerax, squarerax, workp[19]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (workp + 152);
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    squarerax = squarer4;       // squarerax = squarer4
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    squarer4 = squarerax;       // squarer4 = squarerax
    squarerax = squarer5;       // squarerax = squarer5
    squarer5 = squarerdx;       // squarer5 = squarerdx
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer5, squarer5, squarerax); // cf? squarer5 += squarerax
    squarerax = squarer6;       // squarerax = squarer6
    squarer6 = 0;               // squarer6 = 0
    add64_with_carry(squarer6, squarer6, squarerdx); // squarer6 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    squarerax = squarer7;       // squarerax = squarer7
    squarer7 = 0;               // squarer7 = 0
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64
                                                                                            // *) &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(squarer7, squarer7, squarerax); // cf? squarer7 += squarerax
    squarer8 = 0;               // squarer8 = 0
    add64_with_carry(squarer8, squarer8, squarerdx); // squarer8 += squarerdx + cf; 
    add64_and_set_carry(zq0, zq0, squarer4); // cf? zq0 += squarer4
    add64_with_carry_and_set_carry(zq1, zq1, squarer5); // cf? zq1 += squarer5 + cf; 
    add64_with_carry_and_set_carry(zq2, zq2, squarer6); // cf? zq2 += squarer6 + cf; 
    add64_with_carry_and_set_carry(zq3, zq3, squarer7); // cf? zq3 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(zq0, zq0, squarer8); // cf? zq0 += squarer8
    add64_with_carry_and_set_carry(zq1, zq1, squarezero); // cf? zq1 += squarezero + cf; 
    add64_with_carry_and_set_carry(zq2, zq2, squarezero); // cf? zq2 += squarezero + cf; 
    add64_with_carry_and_set_carry(zq3, zq3, squarezero); // cf? zq3 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    zq0 += squarezero;          // zq0 += squarezero
    workp[16] = zq0;            // *(uint64 *) (workp + 128) = zq0
    workp[17] = zq1;            // *(uint64 *) (workp + 136) = zq1
    workp[18] = zq2;            // *(uint64 *) (workp + 144) = zq2
    workp[19] = zq3;            // *(uint64 *) (workp + 152) = zq3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = workp[16];          // mulx0 = *(uint64 *) (workp + 128)
    mulrax = workp[0];          // mulrax = *(uint64 *) (workp + 0)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    zq0 = mulrax;               // zq0 = mulrax
    zq1 = mulrdx;               // zq1 = mulrdx
    mulrax = workp[1];          // mulrax = *(uint64 *) (workp + 8)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(zq1, zq1, mulrax); // cf? zq1 += mulrax
    zq2 = 0;                    // zq2 = 0
    add64_with_carry(zq2, zq2, mulrdx); // zq2 += mulrdx + cf; 
    mulrax = workp[2];          // mulrax = *(uint64 *) (workp + 16)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(zq2, zq2, mulrax); // cf? zq2 += mulrax
    zq3 = 0;                    // zq3 = 0
    add64_with_carry(zq3, zq3, mulrdx); // zq3 += mulrdx + cf; 
    mulrax = workp[3];          // mulrax = *(uint64 *) (workp + 24)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(zq3, zq3, mulrax); // cf? zq3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = workp[17];          // mulx1 = *(uint64 *) (workp + 136)
    mulrax = workp[0];          // mulrax = *(uint64 *) (workp + 0)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(zq1, zq1, mulrax); // cf? zq1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[1];          // mulrax = *(uint64 *) (workp + 8)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(zq2, zq2, mulrax); // cf? zq2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(zq2, zq2, mulc); // cf? zq2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[2];          // mulrax = *(uint64 *) (workp + 16)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(zq3, zq3, mulrax); // cf? zq3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(zq3, zq3, mulc); // cf? zq3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[3];          // mulrax = *(uint64 *) (workp + 24)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = workp[18];          // mulx2 = *(uint64 *) (workp + 144)
    mulrax = workp[0];          // mulrax = *(uint64 *) (workp + 0)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(zq2, zq2, mulrax); // cf? zq2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[1];          // mulrax = *(uint64 *) (workp + 8)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(zq3, zq3, mulrax); // cf? zq3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(zq3, zq3, mulc); // cf? zq3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[2];          // mulrax = *(uint64 *) (workp + 16)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[3];          // mulrax = *(uint64 *) (workp + 24)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = workp[19];          // mulx3 = *(uint64 *) (workp + 152)
    mulrax = workp[0];          // mulrax = *(uint64 *) (workp + 0)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(zq3, zq3, mulrax); // cf? zq3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[1];          // mulrax = *(uint64 *) (workp + 8)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[2];          // mulrax = *(uint64 *) (workp + 16)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = workp[3];          // mulrax = *(uint64 *) (workp + 24)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(zq0, zq0, mulr4); // cf? zq0 += mulr4
    add64_with_carry_and_set_carry(zq1, zq1, mulr5); // cf? zq1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(zq2, zq2, mulr6); // cf? zq2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(zq3, zq3, mulr7); // cf? zq3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(zq0, zq0, mulr8); // cf? zq0 += mulr8
    add64_with_carry_and_set_carry(zq1, zq1, mulzero); // cf? zq1 += mulzero + cf; 
    add64_with_carry_and_set_carry(zq2, zq2, mulzero); // cf? zq2 += mulzero + cf; 
    add64_with_carry_and_set_carry(zq3, zq3, mulzero); // cf? zq3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    zq0 += mulzero;             // zq0 += mulzero
    workp[16] = zq0;            // *(uint64 *) (workp + 128) = zq0
    workp[17] = zq1;            // *(uint64 *) (workp + 136) = zq1
    workp[18] = zq2;            // *(uint64 *) (workp + 144) = zq2
    workp[19] = zq3;            // *(uint64 *) (workp + 152) = zq3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = t60_stack;          // mulx0 = t60_stack
    mulrax = t70_stack;         // mulrax = t70_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    xp0 = mulrax;               // xp0 = mulrax
    xp1 = mulrdx;               // xp1 = mulrdx
    mulrax = t71_stack;         // mulrax = t71_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(xp1, xp1, mulrax); // cf? xp1 += mulrax
    xp2 = 0;                    // xp2 = 0
    add64_with_carry(xp2, xp2, mulrdx); // xp2 += mulrdx + cf; 
    mulrax = t72_stack;         // mulrax = t72_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(xp2, xp2, mulrax); // cf? xp2 += mulrax
    xp3 = 0;                    // xp3 = 0
    add64_with_carry(xp3, xp3, mulrdx); // xp3 += mulrdx + cf; 
    mulrax = t73_stack;         // mulrax = t73_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(xp3, xp3, mulrax); // cf? xp3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = t61_stack;          // mulx1 = t61_stack
    mulrax = t70_stack;         // mulrax = t70_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(xp1, xp1, mulrax); // cf? xp1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t71_stack;         // mulrax = t71_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(xp2, xp2, mulrax); // cf? xp2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(xp2, xp2, mulc); // cf? xp2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t72_stack;         // mulrax = t72_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(xp3, xp3, mulrax); // cf? xp3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(xp3, xp3, mulc); // cf? xp3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t73_stack;         // mulrax = t73_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = t62_stack;          // mulx2 = t62_stack
    mulrax = t70_stack;         // mulrax = t70_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(xp2, xp2, mulrax); // cf? xp2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t71_stack;         // mulrax = t71_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(xp3, xp3, mulrax); // cf? xp3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(xp3, xp3, mulc); // cf? xp3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t72_stack;         // mulrax = t72_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t73_stack;         // mulrax = t73_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = t63_stack;          // mulx3 = t63_stack
    mulrax = t70_stack;         // mulrax = t70_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(xp3, xp3, mulrax); // cf? xp3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t71_stack;         // mulrax = t71_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t72_stack;         // mulrax = t72_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t73_stack;         // mulrax = t73_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(xp0, xp0, mulr4); // cf? xp0 += mulr4
    add64_with_carry_and_set_carry(xp1, xp1, mulr5); // cf? xp1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(xp2, xp2, mulr6); // cf? xp2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(xp3, xp3, mulr7); // cf? xp3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(xp0, xp0, mulr8); // cf? xp0 += mulr8
    add64_with_carry_and_set_carry(xp1, xp1, mulzero); // cf? xp1 += mulzero + cf; 
    add64_with_carry_and_set_carry(xp2, xp2, mulzero); // cf? xp2 += mulzero + cf; 
    add64_with_carry_and_set_carry(xp3, xp3, mulzero); // cf? xp3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    xp0 += mulzero;             // xp0 += mulzero
    workp[4] = xp0;             // *(uint64 *) (workp + 32) = xp0
    workp[5] = xp1;             // *(uint64 *) (workp + 40) = xp1
    workp[6] = xp2;             // *(uint64 *) (workp + 48) = xp2
    workp[7] = xp3;             // *(uint64 *) (workp + 56) = xp3
    mul121666rax = t50_stack;   // mul121666rax = t50_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_64_121666); // (uint128) mul121666rdx mul121666rax =
                                                                                                         // mul121666rax * *(uint64 *)
                                                                                                         // &crypto_scalarmult_curve25519_amd64_64_121666
    zp0 = mul121666rax;         // zp0 = mul121666rax
    zp1 = mul121666rdx;         // zp1 = mul121666rdx
    mul121666rax = t52_stack;   // mul121666rax = t52_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_64_121666); // (uint128) mul121666rdx mul121666rax =
                                                                                                         // mul121666rax * *(uint64 *)
                                                                                                         // &crypto_scalarmult_curve25519_amd64_64_121666
    zp2 = mul121666rax;         // zp2 = mul121666rax
    zp3 = mul121666rdx;         // zp3 = mul121666rdx
    mul121666rax = t51_stack;   // mul121666rax = t51_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_64_121666); // (uint128) mul121666rdx mul121666rax =
                                                                                                         // mul121666rax * *(uint64 *)
                                                                                                         // &crypto_scalarmult_curve25519_amd64_64_121666
    mul121666t1 = mul121666rax; // mul121666t1 = mul121666rax
    mul121666t2 = mul121666rdx; // mul121666t2 = mul121666rdx
    mul121666rax = t53_stack;   // mul121666rax = t53_stack
    multiply128(mul121666rdx, mul121666rax, mul121666rax, crypto_scalarmult_curve25519_amd64_64_121666); // (uint128) mul121666rdx mul121666rax =
                                                                                                         // mul121666rax * *(uint64 *)
                                                                                                         // &crypto_scalarmult_curve25519_amd64_64_121666
    mul121666t3 = mul121666rax; // mul121666t3 = mul121666rax
    mul121666r4 = mul121666rdx; // mul121666r4 = mul121666rdx
    add64_and_set_carry(zp1, zp1, mul121666t1); // cf? zp1 += mul121666t1
    add64_with_carry_and_set_carry(zp2, zp2, mul121666t2); // cf? zp2 += mul121666t2 + cf; 
    add64_with_carry_and_set_carry(zp3, zp3, mul121666t3); // cf? zp3 += mul121666t3 + cf; 
    add64_with_carry(mul121666r4, mul121666r4, 0); // mul121666r4 += 0 + cf; 
    mul121666r4 *= 38;          // mul121666r4 *= 38
    add64_and_set_carry(zp0, zp0, mul121666r4); // cf? zp0 += mul121666r4
    add64_with_carry_and_set_carry(zp1, zp1, 0); // cf? zp1 += 0 + cf; 
    add64_with_carry_and_set_carry(zp2, zp2, 0); // cf? zp2 += 0 + cf; 
    add64_with_carry_and_set_carry(zp3, zp3, 0); // cf? zp3 += 0 + cf; 
    mul121666t1 = 38;           // mul121666t1 = 38
    mul121666t2 = 0;            // mul121666t2 = 0
    if (!carry) {
        mul121666t1 = mul121666t2;
    }                           // mul121666t1 = mul121666t2 if !carry; 
    zp0 += mul121666t1;         // zp0 += mul121666t1
    add64_and_set_carry(zp0, zp0, t70_stack); // cf? zp0 += t70_stack
    add64_with_carry_and_set_carry(zp1, zp1, t71_stack); // cf? zp1 += t71_stack + cf; 
    add64_with_carry_and_set_carry(zp2, zp2, t72_stack); // cf? zp2 += t72_stack + cf; 
    add64_with_carry_and_set_carry(zp3, zp3, t73_stack); // cf? zp3 += t73_stack + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(zp0, zp0, addt1); // cf? zp0 += addt1
    add64_with_carry_and_set_carry(zp1, zp1, addt0); // cf? zp1 += addt0 + cf; 
    add64_with_carry_and_set_carry(zp2, zp2, addt0); // cf? zp2 += addt0 + cf; 
    add64_with_carry_and_set_carry(zp3, zp3, addt0); // cf? zp3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    zp0 += addt0;               // zp0 += addt0
    workp[8] = zp0;             // *(uint64 *) (workp + 64) = zp0
    workp[9] = zp1;             // *(uint64 *) (workp + 72) = zp1
    workp[10] = zp2;            // *(uint64 *) (workp + 80) = zp2
    workp[11] = zp3;            // *(uint64 *) (workp + 88) = zp3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = workp[8];           // mulx0 = *(uint64 *) (workp + 64)
    mulrax = t50_stack;         // mulrax = t50_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    zp0 = mulrax;               // zp0 = mulrax
    zp1 = mulrdx;               // zp1 = mulrdx
    mulrax = t51_stack;         // mulrax = t51_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(zp1, zp1, mulrax); // cf? zp1 += mulrax
    zp2 = 0;                    // zp2 = 0
    add64_with_carry(zp2, zp2, mulrdx); // zp2 += mulrdx + cf; 
    mulrax = t52_stack;         // mulrax = t52_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(zp2, zp2, mulrax); // cf? zp2 += mulrax
    zp3 = 0;                    // zp3 = 0
    add64_with_carry(zp3, zp3, mulrdx); // zp3 += mulrdx + cf; 
    mulrax = t53_stack;         // mulrax = t53_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(zp3, zp3, mulrax); // cf? zp3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = workp[9];           // mulx1 = *(uint64 *) (workp + 72)
    mulrax = t50_stack;         // mulrax = t50_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(zp1, zp1, mulrax); // cf? zp1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t51_stack;         // mulrax = t51_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(zp2, zp2, mulrax); // cf? zp2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(zp2, zp2, mulc); // cf? zp2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t52_stack;         // mulrax = t52_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(zp3, zp3, mulrax); // cf? zp3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(zp3, zp3, mulc); // cf? zp3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t53_stack;         // mulrax = t53_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = workp[10];          // mulx2 = *(uint64 *) (workp + 80)
    mulrax = t50_stack;         // mulrax = t50_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(zp2, zp2, mulrax); // cf? zp2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t51_stack;         // mulrax = t51_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(zp3, zp3, mulrax); // cf? zp3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(zp3, zp3, mulc); // cf? zp3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t52_stack;         // mulrax = t52_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t53_stack;         // mulrax = t53_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = workp[11];          // mulx3 = *(uint64 *) (workp + 88)
    mulrax = t50_stack;         // mulrax = t50_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(zp3, zp3, mulrax); // cf? zp3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t51_stack;         // mulrax = t51_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t52_stack;         // mulrax = t52_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t53_stack;         // mulrax = t53_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_scalarmult_curve25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                                   // &crypto_scalarmult_curve25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(zp0, zp0, mulr4); // cf? zp0 += mulr4
    add64_with_carry_and_set_carry(zp1, zp1, mulr5); // cf? zp1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(zp2, zp2, mulr6); // cf? zp2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(zp3, zp3, mulr7); // cf? zp3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(zp0, zp0, mulr8); // cf? zp0 += mulr8
    add64_with_carry_and_set_carry(zp1, zp1, mulzero); // cf? zp1 += mulzero + cf; 
    add64_with_carry_and_set_carry(zp2, zp2, mulzero); // cf? zp2 += mulzero + cf; 
    add64_with_carry_and_set_carry(zp3, zp3, mulzero); // cf? zp3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    zp0 += mulzero;             // zp0 += mulzero
    workp[8] = zp0;             // *(uint64 *) (workp + 64) = zp0
    workp[9] = zp1;             // *(uint64 *) (workp + 72) = zp1
    workp[10] = zp2;            // *(uint64 *) (workp + 80) = zp2
    workp[11] = zp3;            // *(uint64 *) (workp + 88) = zp3
    return;
}
