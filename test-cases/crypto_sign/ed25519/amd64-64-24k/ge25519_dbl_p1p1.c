#include "qhasm-translator.h"

extern uint64_t crypto_sign_ed25519_amd64_64_38;
void
crypto_sign_ed25519_amd64_64_ge25519_dbl_p1p1(uint64_t * rp, uint64_t * pp)
{
    uint64_t        a0;
    uint64_t        a0_stack;
    uint64_t        a1;
    uint64_t        a1_stack;
    uint64_t        a2;
    uint64_t        a2_stack;
    uint64_t        a3;
    uint64_t        a3_stack;
    uint64_t        addt0;
    uint64_t        addt1;
    uint64_t        b0;
    uint64_t        b0_stack;
    uint64_t        b1;
    uint64_t        b1_stack;
    uint64_t        b2;
    uint64_t        b2_stack;
    uint64_t        b3;
    uint64_t        b3_stack;
    uint64_t        c0;
    uint64_t        c0_stack;
    uint64_t        c1;
    uint64_t        c1_stack;
    uint64_t        c2;
    uint64_t        c2_stack;
    uint64_t        c3;
    uint64_t        c3_stack;
    uint64_t        carry;
    uint64_t        d0;
    uint64_t        d0_stack;
    uint64_t        d1;
    uint64_t        d1_stack;
    uint64_t        d2;
    uint64_t        d2_stack;
    uint64_t        d3;
    uint64_t        d3_stack;
    uint64_t        e0;
    uint64_t        e0_stack;
    uint64_t        e1;
    uint64_t        e1_stack;
    uint64_t        e2;
    uint64_t        e2_stack;
    uint64_t        e3;
    uint64_t        e3_stack;
    uint64_t        rx0;
    uint64_t        rx0_stack;
    uint64_t        rx1;
    uint64_t        rx1_stack;
    uint64_t        rx2;
    uint64_t        rx2_stack;
    uint64_t        rx3;
    uint64_t        rx3_stack;
    uint64_t        rz0;
    uint64_t        rz1;
    uint64_t        rz2;
    uint64_t        rz3;
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

    squarer7 = 0;               // squarer7 = 0
    squarerax = pp[1];          // squarerax = *(uint64 *) (pp + 8)
    multiply128(squarerdx, squarerax, squarerax, pp[0]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 0);
    a1 = squarerax;             // a1 = squarerax
    a2 = squarerdx;             // a2 = squarerdx
    squarerax = pp[2];          // squarerax = *(uint64 *) (pp + 16)
    multiply128(squarerdx, squarerax, squarerax, pp[1]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 8);
    a3 = squarerax;             // a3 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = pp[3];          // squarerax = *(uint64 *) (pp + 24)
    multiply128(squarerdx, squarerax, squarerax, pp[2]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 16);
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = pp[2];          // squarerax = *(uint64 *) (pp + 16)
    multiply128(squarerdx, squarerax, squarerax, pp[0]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 0);
    add64_and_set_carry(a2, a2, squarerax); // cf? a2 += squarerax
    add64_with_carry_and_set_carry(a3, a3, squarerdx); // cf? a3 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = pp[3];          // squarerax = *(uint64 *) (pp + 24)
    multiply128(squarerdx, squarerax, squarerax, pp[1]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 8);
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = pp[3];          // squarerax = *(uint64 *) (pp + 24)
    multiply128(squarerdx, squarerax, squarerax, pp[0]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 0);
    add64_and_set_carry(a3, a3, squarerax); // cf? a3 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(a1, a1, a1); // cf? a1 += a1
    add64_with_carry_and_set_carry(a2, a2, a2); // cf? a2 += a2 + cf; 
    add64_with_carry_and_set_carry(a3, a3, a3); // cf? a3 += a3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = pp[0];          // squarerax = *(uint64 *) (pp + 0)
    multiply128(squarerdx, squarerax, squarerax, pp[0]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 0);
    a0 = squarerax;             // a0 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = pp[1];          // squarerax = *(uint64 *) (pp + 8)
    multiply128(squarerdx, squarerax, squarerax, pp[1]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 8);
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = pp[2];          // squarerax = *(uint64 *) (pp + 16)
    multiply128(squarerdx, squarerax, squarerax, pp[2]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 16);
    add64_and_set_carry(a1, a1, squaret1); // cf? a1 += squaret1
    add64_with_carry_and_set_carry(a2, a2, squaret2); // cf? a2 += squaret2 + cf; 
    add64_with_carry_and_set_carry(a3, a3, squaret3); // cf? a3 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = pp[3];          // squarerax = *(uint64 *) (pp + 24)
    multiply128(squarerdx, squarerax, squarerax, pp[3]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 24);
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    squarerax = squarer4;       // squarerax = squarer4
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    squarer4 = squarerax;       // squarer4 = squarerax
    squarerax = squarer5;       // squarerax = squarer5
    squarer5 = squarerdx;       // squarer5 = squarerdx
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer5, squarer5, squarerax); // cf? squarer5 += squarerax
    squarerax = squarer6;       // squarerax = squarer6
    squarer6 = 0;               // squarer6 = 0
    add64_with_carry(squarer6, squarer6, squarerdx); // squarer6 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    squarerax = squarer7;       // squarerax = squarer7
    squarer7 = 0;               // squarer7 = 0
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer7, squarer7, squarerax); // cf? squarer7 += squarerax
    squarer8 = 0;               // squarer8 = 0
    add64_with_carry(squarer8, squarer8, squarerdx); // squarer8 += squarerdx + cf; 
    add64_and_set_carry(a0, a0, squarer4); // cf? a0 += squarer4
    add64_with_carry_and_set_carry(a1, a1, squarer5); // cf? a1 += squarer5 + cf; 
    add64_with_carry_and_set_carry(a2, a2, squarer6); // cf? a2 += squarer6 + cf; 
    add64_with_carry_and_set_carry(a3, a3, squarer7); // cf? a3 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(a0, a0, squarer8); // cf? a0 += squarer8
    add64_with_carry_and_set_carry(a1, a1, squarezero); // cf? a1 += squarezero + cf; 
    add64_with_carry_and_set_carry(a2, a2, squarezero); // cf? a2 += squarezero + cf; 
    add64_with_carry_and_set_carry(a3, a3, squarezero); // cf? a3 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    a0 += squarezero;           // a0 += squarezero
    a0_stack = a0;              // a0_stack = a0
    a1_stack = a1;              // a1_stack = a1
    a2_stack = a2;              // a2_stack = a2
    a3_stack = a3;              // a3_stack = a3
    squarer7 = 0;               // squarer7 = 0
    squarerax = pp[5];          // squarerax = *(uint64 *) (pp + 40)
    multiply128(squarerdx, squarerax, squarerax, pp[4]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 32);
    b1 = squarerax;             // b1 = squarerax
    b2 = squarerdx;             // b2 = squarerdx
    squarerax = pp[6];          // squarerax = *(uint64 *) (pp + 48)
    multiply128(squarerdx, squarerax, squarerax, pp[5]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 40);
    b3 = squarerax;             // b3 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = pp[7];          // squarerax = *(uint64 *) (pp + 56)
    multiply128(squarerdx, squarerax, squarerax, pp[6]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 48);
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = pp[6];          // squarerax = *(uint64 *) (pp + 48)
    multiply128(squarerdx, squarerax, squarerax, pp[4]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 32);
    add64_and_set_carry(b2, b2, squarerax); // cf? b2 += squarerax
    add64_with_carry_and_set_carry(b3, b3, squarerdx); // cf? b3 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = pp[7];          // squarerax = *(uint64 *) (pp + 56)
    multiply128(squarerdx, squarerax, squarerax, pp[5]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 40);
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = pp[7];          // squarerax = *(uint64 *) (pp + 56)
    multiply128(squarerdx, squarerax, squarerax, pp[4]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 32);
    add64_and_set_carry(b3, b3, squarerax); // cf? b3 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(b1, b1, b1); // cf? b1 += b1
    add64_with_carry_and_set_carry(b2, b2, b2); // cf? b2 += b2 + cf; 
    add64_with_carry_and_set_carry(b3, b3, b3); // cf? b3 += b3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = pp[4];          // squarerax = *(uint64 *) (pp + 32)
    multiply128(squarerdx, squarerax, squarerax, pp[4]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 32);
    b0 = squarerax;             // b0 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = pp[5];          // squarerax = *(uint64 *) (pp + 40)
    multiply128(squarerdx, squarerax, squarerax, pp[5]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 40);
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = pp[6];          // squarerax = *(uint64 *) (pp + 48)
    multiply128(squarerdx, squarerax, squarerax, pp[6]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 48);
    add64_and_set_carry(b1, b1, squaret1); // cf? b1 += squaret1
    add64_with_carry_and_set_carry(b2, b2, squaret2); // cf? b2 += squaret2 + cf; 
    add64_with_carry_and_set_carry(b3, b3, squaret3); // cf? b3 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = pp[7];          // squarerax = *(uint64 *) (pp + 56)
    multiply128(squarerdx, squarerax, squarerax, pp[7]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 56);
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    squarerax = squarer4;       // squarerax = squarer4
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    squarer4 = squarerax;       // squarer4 = squarerax
    squarerax = squarer5;       // squarerax = squarer5
    squarer5 = squarerdx;       // squarer5 = squarerdx
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer5, squarer5, squarerax); // cf? squarer5 += squarerax
    squarerax = squarer6;       // squarerax = squarer6
    squarer6 = 0;               // squarer6 = 0
    add64_with_carry(squarer6, squarer6, squarerdx); // squarer6 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    squarerax = squarer7;       // squarerax = squarer7
    squarer7 = 0;               // squarer7 = 0
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer7, squarer7, squarerax); // cf? squarer7 += squarerax
    squarer8 = 0;               // squarer8 = 0
    add64_with_carry(squarer8, squarer8, squarerdx); // squarer8 += squarerdx + cf; 
    add64_and_set_carry(b0, b0, squarer4); // cf? b0 += squarer4
    add64_with_carry_and_set_carry(b1, b1, squarer5); // cf? b1 += squarer5 + cf; 
    add64_with_carry_and_set_carry(b2, b2, squarer6); // cf? b2 += squarer6 + cf; 
    add64_with_carry_and_set_carry(b3, b3, squarer7); // cf? b3 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(b0, b0, squarer8); // cf? b0 += squarer8
    add64_with_carry_and_set_carry(b1, b1, squarezero); // cf? b1 += squarezero + cf; 
    add64_with_carry_and_set_carry(b2, b2, squarezero); // cf? b2 += squarezero + cf; 
    add64_with_carry_and_set_carry(b3, b3, squarezero); // cf? b3 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    b0 += squarezero;           // b0 += squarezero
    b0_stack = b0;              // b0_stack = b0
    b1_stack = b1;              // b1_stack = b1
    b2_stack = b2;              // b2_stack = b2
    b3_stack = b3;              // b3_stack = b3
    squarer7 = 0;               // squarer7 = 0
    squarerax = pp[9];          // squarerax = *(uint64 *) (pp + 72)
    multiply128(squarerdx, squarerax, squarerax, pp[8]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 64);
    c1 = squarerax;             // c1 = squarerax
    c2 = squarerdx;             // c2 = squarerdx
    squarerax = pp[10];         // squarerax = *(uint64 *) (pp + 80)
    multiply128(squarerdx, squarerax, squarerax, pp[9]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 72);
    c3 = squarerax;             // c3 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = pp[11];         // squarerax = *(uint64 *) (pp + 88)
    multiply128(squarerdx, squarerax, squarerax, pp[10]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 80);
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = pp[10];         // squarerax = *(uint64 *) (pp + 80)
    multiply128(squarerdx, squarerax, squarerax, pp[8]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 64);
    add64_and_set_carry(c2, c2, squarerax); // cf? c2 += squarerax
    add64_with_carry_and_set_carry(c3, c3, squarerdx); // cf? c3 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = pp[11];         // squarerax = *(uint64 *) (pp + 88)
    multiply128(squarerdx, squarerax, squarerax, pp[9]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 72);
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = pp[11];         // squarerax = *(uint64 *) (pp + 88)
    multiply128(squarerdx, squarerax, squarerax, pp[8]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 64);
    add64_and_set_carry(c3, c3, squarerax); // cf? c3 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(c1, c1, c1); // cf? c1 += c1
    add64_with_carry_and_set_carry(c2, c2, c2); // cf? c2 += c2 + cf; 
    add64_with_carry_and_set_carry(c3, c3, c3); // cf? c3 += c3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = pp[8];          // squarerax = *(uint64 *) (pp + 64)
    multiply128(squarerdx, squarerax, squarerax, pp[8]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 64);
    c0 = squarerax;             // c0 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = pp[9];          // squarerax = *(uint64 *) (pp + 72)
    multiply128(squarerdx, squarerax, squarerax, pp[9]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 72);
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = pp[10];         // squarerax = *(uint64 *) (pp + 80)
    multiply128(squarerdx, squarerax, squarerax, pp[10]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 80);
    add64_and_set_carry(c1, c1, squaret1); // cf? c1 += squaret1
    add64_with_carry_and_set_carry(c2, c2, squaret2); // cf? c2 += squaret2 + cf; 
    add64_with_carry_and_set_carry(c3, c3, squaret3); // cf? c3 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = pp[11];         // squarerax = *(uint64 *) (pp + 88)
    multiply128(squarerdx, squarerax, squarerax, pp[11]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (pp + 88);
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    squarerax = squarer4;       // squarerax = squarer4
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    squarer4 = squarerax;       // squarer4 = squarerax
    squarerax = squarer5;       // squarerax = squarer5
    squarer5 = squarerdx;       // squarer5 = squarerdx
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer5, squarer5, squarerax); // cf? squarer5 += squarerax
    squarerax = squarer6;       // squarerax = squarer6
    squarer6 = 0;               // squarer6 = 0
    add64_with_carry(squarer6, squarer6, squarerdx); // squarer6 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    squarerax = squarer7;       // squarerax = squarer7
    squarer7 = 0;               // squarer7 = 0
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer7, squarer7, squarerax); // cf? squarer7 += squarerax
    squarer8 = 0;               // squarer8 = 0
    add64_with_carry(squarer8, squarer8, squarerdx); // squarer8 += squarerdx + cf; 
    add64_and_set_carry(c0, c0, squarer4); // cf? c0 += squarer4
    add64_with_carry_and_set_carry(c1, c1, squarer5); // cf? c1 += squarer5 + cf; 
    add64_with_carry_and_set_carry(c2, c2, squarer6); // cf? c2 += squarer6 + cf; 
    add64_with_carry_and_set_carry(c3, c3, squarer7); // cf? c3 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(c0, c0, squarer8); // cf? c0 += squarer8
    add64_with_carry_and_set_carry(c1, c1, squarezero); // cf? c1 += squarezero + cf; 
    add64_with_carry_and_set_carry(c2, c2, squarezero); // cf? c2 += squarezero + cf; 
    add64_with_carry_and_set_carry(c3, c3, squarezero); // cf? c3 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    c0 += squarezero;           // c0 += squarezero
    add64_and_set_carry(c0, c0, c0); // cf? c0 += c0
    add64_with_carry_and_set_carry(c1, c1, c1); // cf? c1 += c1 + cf; 
    add64_with_carry_and_set_carry(c2, c2, c2); // cf? c2 += c2 + cf; 
    add64_with_carry_and_set_carry(c3, c3, c3); // cf? c3 += c3 + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(c0, c0, addt1); // cf? c0 += addt1
    add64_with_carry_and_set_carry(c1, c1, addt0); // cf? c1 += addt0 + cf; 
    add64_with_carry_and_set_carry(c2, c2, addt0); // cf? c2 += addt0 + cf; 
    add64_with_carry_and_set_carry(c3, c3, addt0); // cf? c3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    c0 += addt0;                // c0 += addt0
    c0_stack = c0;              // c0_stack = c0
    c1_stack = c1;              // c1_stack = c1
    c2_stack = c2;              // c2_stack = c2
    c3_stack = c3;              // c3_stack = c3
    d0 = 0;                     // d0 = 0
    d1 = 0;                     // d1 = 0
    d2 = 0;                     // d2 = 0
    d3 = 0;                     // d3 = 0
    sub64_and_set_carry(d0, d0, a0_stack); // cf? d0 -= a0_stack
    sub64_with_carry_and_set_carry(d1, d1, a1_stack); // cf? d1 -= a1_stack - cf; 
    sub64_with_carry_and_set_carry(d2, d2, a2_stack); // cf? d2 -= a2_stack - cf; 
    sub64_with_carry_and_set_carry(d3, d3, a3_stack); // cf? d3 -= a3_stack - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(d0, d0, subt1); // cf? d0 -= subt1
    sub64_with_carry_and_set_carry(d1, d1, subt0); // cf? d1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(d2, d2, subt0); // cf? d2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(d3, d3, subt0); // cf? d3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    d0 -= subt0;                // d0 -= subt0
    d0_stack = d0;              // d0_stack = d0
    d1_stack = d1;              // d1_stack = d1
    d2_stack = d2;              // d2_stack = d2
    d3_stack = d3;              // d3_stack = d3
    e0 = 0;                     // e0 = 0
    e1 = 0;                     // e1 = 0
    e2 = 0;                     // e2 = 0
    e3 = 0;                     // e3 = 0
    sub64_and_set_carry(e0, e0, b0_stack); // cf? e0 -= b0_stack
    sub64_with_carry_and_set_carry(e1, e1, b1_stack); // cf? e1 -= b1_stack - cf; 
    sub64_with_carry_and_set_carry(e2, e2, b2_stack); // cf? e2 -= b2_stack - cf; 
    sub64_with_carry_and_set_carry(e3, e3, b3_stack); // cf? e3 -= b3_stack - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(e0, e0, subt1); // cf? e0 -= subt1
    sub64_with_carry_and_set_carry(e1, e1, subt0); // cf? e1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(e2, e2, subt0); // cf? e2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(e3, e3, subt0); // cf? e3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    e0 -= subt0;                // e0 -= subt0
    e0_stack = e0;              // e0_stack = e0
    e1_stack = e1;              // e1_stack = e1
    e2_stack = e2;              // e2_stack = e2
    e3_stack = e3;              // e3_stack = e3
    rz0 = d0;                   // rz0 = d0
    rz1 = d1;                   // rz1 = d1
    rz2 = d2;                   // rz2 = d2
    rz3 = d3;                   // rz3 = d3
    add64_and_set_carry(rz0, rz0, b0_stack); // cf? rz0 += b0_stack
    add64_with_carry_and_set_carry(rz1, rz1, b1_stack); // cf? rz1 += b1_stack + cf; 
    add64_with_carry_and_set_carry(rz2, rz2, b2_stack); // cf? rz2 += b2_stack + cf; 
    add64_with_carry_and_set_carry(rz3, rz3, b3_stack); // cf? rz3 += b3_stack + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(rz0, rz0, addt1); // cf? rz0 += addt1
    add64_with_carry_and_set_carry(rz1, rz1, addt0); // cf? rz1 += addt0 + cf; 
    add64_with_carry_and_set_carry(rz2, rz2, addt0); // cf? rz2 += addt0 + cf; 
    add64_with_carry_and_set_carry(rz3, rz3, addt0); // cf? rz3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    rz0 += addt0;               // rz0 += addt0
    rp[4] = rz0;                // *(uint64 *) (rp + 32) = rz0
    rp[5] = rz1;                // *(uint64 *) (rp + 40) = rz1
    rp[6] = rz2;                // *(uint64 *) (rp + 48) = rz2
    rp[7] = rz3;                // *(uint64 *) (rp + 56) = rz3
    sub64_and_set_carry(d0, d0, b0_stack); // cf? d0 -= b0_stack
    sub64_with_carry_and_set_carry(d1, d1, b1_stack); // cf? d1 -= b1_stack - cf; 
    sub64_with_carry_and_set_carry(d2, d2, b2_stack); // cf? d2 -= b2_stack - cf; 
    sub64_with_carry_and_set_carry(d3, d3, b3_stack); // cf? d3 -= b3_stack - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(d0, d0, subt1); // cf? d0 -= subt1
    sub64_with_carry_and_set_carry(d1, d1, subt0); // cf? d1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(d2, d2, subt0); // cf? d2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(d3, d3, subt0); // cf? d3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    d0 -= subt0;                // d0 -= subt0
    rp[8] = d0;                 // *(uint64 *) (rp + 64) = d0
    rp[9] = d1;                 // *(uint64 *) (rp + 72) = d1
    rp[10] = d2;                // *(uint64 *) (rp + 80) = d2
    rp[11] = d3;                // *(uint64 *) (rp + 88) = d3
    sub64_and_set_carry(rz0, rz0, c0_stack); // cf? rz0 -= c0_stack
    sub64_with_carry_and_set_carry(rz1, rz1, c1_stack); // cf? rz1 -= c1_stack - cf; 
    sub64_with_carry_and_set_carry(rz2, rz2, c2_stack); // cf? rz2 -= c2_stack - cf; 
    sub64_with_carry_and_set_carry(rz3, rz3, c3_stack); // cf? rz3 -= c3_stack - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(rz0, rz0, subt1); // cf? rz0 -= subt1
    sub64_with_carry_and_set_carry(rz1, rz1, subt0); // cf? rz1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(rz2, rz2, subt0); // cf? rz2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(rz3, rz3, subt0); // cf? rz3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    rz0 -= subt0;               // rz0 -= subt0
    rp[12] = rz0;               // *(uint64 *) (rp + 96) = rz0
    rp[13] = rz1;               // *(uint64 *) (rp + 104) = rz1
    rp[14] = rz2;               // *(uint64 *) (rp + 112) = rz2
    rp[15] = rz3;               // *(uint64 *) (rp + 120) = rz3
    rx0 = pp[0];                // rx0 = *(uint64 *) (pp + 0)
    rx1 = pp[1];                // rx1 = *(uint64 *) (pp + 8)
    rx2 = pp[2];                // rx2 = *(uint64 *) (pp + 16)
    rx3 = pp[3];                // rx3 = *(uint64 *) (pp + 24)
    add64_and_set_carry(rx0, rx0, pp[4]); // cf? rx0 += *(uint64 *) (pp + 32)
    add64_with_carry_and_set_carry(rx1, rx1, pp[5]); // cf? rx1 += *(uint64 *) (pp + 40) + cf;
    add64_with_carry_and_set_carry(rx2, rx2, pp[6]); // cf? rx2 += *(uint64 *) (pp + 48) + cf;
    add64_with_carry_and_set_carry(rx3, rx3, pp[7]); // cf? rx3 += *(uint64 *) (pp + 56) + cf;
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(rx0, rx0, addt1); // cf? rx0 += addt1
    add64_with_carry_and_set_carry(rx1, rx1, addt0); // cf? rx1 += addt0 + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, addt0); // cf? rx2 += addt0 + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, addt0); // cf? rx3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    rx0 += addt0;               // rx0 += addt0
    rx0_stack = rx0;            // rx0_stack = rx0
    rx1_stack = rx1;            // rx1_stack = rx1
    rx2_stack = rx2;            // rx2_stack = rx2
    rx3_stack = rx3;            // rx3_stack = rx3
    squarer7 = 0;               // squarer7 = 0
    squarerax = rx1_stack;      // squarerax = rx1_stack
    multiply128(squarerdx, squarerax, squarerax, rx0_stack); // (uint128) squarerdx squarerax = squarerax * rx0_stack
    rx1 = squarerax;            // rx1 = squarerax
    rx2 = squarerdx;            // rx2 = squarerdx
    squarerax = rx2_stack;      // squarerax = rx2_stack
    multiply128(squarerdx, squarerax, squarerax, rx1_stack); // (uint128) squarerdx squarerax = squarerax * rx1_stack
    rx3 = squarerax;            // rx3 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = rx3_stack;      // squarerax = rx3_stack
    multiply128(squarerdx, squarerax, squarerax, rx2_stack); // (uint128) squarerdx squarerax = squarerax * rx2_stack
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = rx2_stack;      // squarerax = rx2_stack
    multiply128(squarerdx, squarerax, squarerax, rx0_stack); // (uint128) squarerdx squarerax = squarerax * rx0_stack
    add64_and_set_carry(rx2, rx2, squarerax); // cf? rx2 += squarerax
    add64_with_carry_and_set_carry(rx3, rx3, squarerdx); // cf? rx3 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = rx3_stack;      // squarerax = rx3_stack
    multiply128(squarerdx, squarerax, squarerax, rx1_stack); // (uint128) squarerdx squarerax = squarerax * rx1_stack
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = rx3_stack;      // squarerax = rx3_stack
    multiply128(squarerdx, squarerax, squarerax, rx0_stack); // (uint128) squarerdx squarerax = squarerax * rx0_stack
    add64_and_set_carry(rx3, rx3, squarerax); // cf? rx3 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(rx1, rx1, rx1); // cf? rx1 += rx1
    add64_with_carry_and_set_carry(rx2, rx2, rx2); // cf? rx2 += rx2 + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, rx3); // cf? rx3 += rx3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = rx0_stack;      // squarerax = rx0_stack
    multiply128(squarerdx, squarerax, squarerax, rx0_stack); // (uint128) squarerdx squarerax = squarerax * rx0_stack
    rx0 = squarerax;            // rx0 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = rx1_stack;      // squarerax = rx1_stack
    multiply128(squarerdx, squarerax, squarerax, rx1_stack); // (uint128) squarerdx squarerax = squarerax * rx1_stack
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = rx2_stack;      // squarerax = rx2_stack
    multiply128(squarerdx, squarerax, squarerax, rx2_stack); // (uint128) squarerdx squarerax = squarerax * rx2_stack
    add64_and_set_carry(rx1, rx1, squaret1); // cf? rx1 += squaret1
    add64_with_carry_and_set_carry(rx2, rx2, squaret2); // cf? rx2 += squaret2 + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, squaret3); // cf? rx3 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = rx3_stack;      // squarerax = rx3_stack
    multiply128(squarerdx, squarerax, squarerax, rx3_stack); // (uint128) squarerdx squarerax = squarerax * rx3_stack
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    squarerax = squarer4;       // squarerax = squarer4
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    squarer4 = squarerax;       // squarer4 = squarerax
    squarerax = squarer5;       // squarerax = squarer5
    squarer5 = squarerdx;       // squarer5 = squarerdx
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer5, squarer5, squarerax); // cf? squarer5 += squarerax
    squarerax = squarer6;       // squarerax = squarer6
    squarer6 = 0;               // squarer6 = 0
    add64_with_carry(squarer6, squarer6, squarerdx); // squarer6 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer6, squarer6, squarerax); // cf? squarer6 += squarerax
    squarerax = squarer7;       // squarerax = squarer7
    squarer7 = 0;               // squarer7 = 0
    add64_with_carry(squarer7, squarer7, squarerdx); // squarer7 += squarerdx + cf; 
    multiply128(squarerdx, squarerax, squarerax, crypto_sign_ed25519_amd64_64_38); // (uint128) squarerdx squarerax = squarerax * *(uint64 *)
                                                                                   // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(squarer7, squarer7, squarerax); // cf? squarer7 += squarerax
    squarer8 = 0;               // squarer8 = 0
    add64_with_carry(squarer8, squarer8, squarerdx); // squarer8 += squarerdx + cf; 
    add64_and_set_carry(rx0, rx0, squarer4); // cf? rx0 += squarer4
    add64_with_carry_and_set_carry(rx1, rx1, squarer5); // cf? rx1 += squarer5 + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, squarer6); // cf? rx2 += squarer6 + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, squarer7); // cf? rx3 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(rx0, rx0, squarer8); // cf? rx0 += squarer8
    add64_with_carry_and_set_carry(rx1, rx1, squarezero); // cf? rx1 += squarezero + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, squarezero); // cf? rx2 += squarezero + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, squarezero); // cf? rx3 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    rx0 += squarezero;          // rx0 += squarezero
    add64_and_set_carry(rx0, rx0, d0_stack); // cf? rx0 += d0_stack
    add64_with_carry_and_set_carry(rx1, rx1, d1_stack); // cf? rx1 += d1_stack + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, d2_stack); // cf? rx2 += d2_stack + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, d3_stack); // cf? rx3 += d3_stack + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(rx0, rx0, addt1); // cf? rx0 += addt1
    add64_with_carry_and_set_carry(rx1, rx1, addt0); // cf? rx1 += addt0 + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, addt0); // cf? rx2 += addt0 + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, addt0); // cf? rx3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    rx0 += addt0;               // rx0 += addt0
    add64_and_set_carry(rx0, rx0, e0_stack); // cf? rx0 += e0_stack
    add64_with_carry_and_set_carry(rx1, rx1, e1_stack); // cf? rx1 += e1_stack + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, e2_stack); // cf? rx2 += e2_stack + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, e3_stack); // cf? rx3 += e3_stack + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(rx0, rx0, addt1); // cf? rx0 += addt1
    add64_with_carry_and_set_carry(rx1, rx1, addt0); // cf? rx1 += addt0 + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, addt0); // cf? rx2 += addt0 + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, addt0); // cf? rx3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    rx0 += addt0;               // rx0 += addt0
    rp[0] = rx0;                // *(uint64 *) (rp + 0) = rx0
    rp[1] = rx1;                // *(uint64 *) (rp + 8) = rx1
    rp[2] = rx2;                // *(uint64 *) (rp + 16) = rx2
    rp[3] = rx3;                // *(uint64 *) (rp + 24) = rx3
    return;
}
