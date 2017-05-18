#include "qhasm-translator.h"

extern uint64_t crypto_sign_ed25519_amd64_64_38;
void
crypto_sign_ed25519_amd64_64_fe25519_square(uint64_t * rp, uint64_t * xp)
{
    uint64_t        carry;
    uint64_t        r0;
    uint64_t        r1;
    uint64_t        r2;
    uint64_t        r3;
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

    squarer7 = 0;               // squarer7 = 0
    squarerax = xp[1];          // squarerax = *(uint64 *) (xp + 8)
    multiply128(squarerdx, squarerax, squarerax, xp[0]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 0);
    r1 = squarerax;             // r1 = squarerax
    r2 = squarerdx;             // r2 = squarerdx
    squarerax = xp[2];          // squarerax = *(uint64 *) (xp + 16)
    multiply128(squarerdx, squarerax, squarerax, xp[1]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 8);
    r3 = squarerax;             // r3 = squarerax
    squarer4 = squarerdx;       // squarer4 = squarerdx
    squarerax = xp[3];          // squarerax = *(uint64 *) (xp + 24)
    multiply128(squarerdx, squarerax, squarerax, xp[2]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 16);
    squarer5 = squarerax;       // squarer5 = squarerax
    squarer6 = squarerdx;       // squarer6 = squarerdx
    squarerax = xp[2];          // squarerax = *(uint64 *) (xp + 16)
    multiply128(squarerdx, squarerax, squarerax, xp[0]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 0);
    add64_and_set_carry(r2, r2, squarerax); // cf? r2 += squarerax
    add64_with_carry_and_set_carry(r3, r3, squarerdx); // cf? r3 += squarerdx + cf; 
    add64_with_carry(squarer4, squarer4, 0); // squarer4 += 0 + cf; 
    squarerax = xp[3];          // squarerax = *(uint64 *) (xp + 24)
    multiply128(squarerdx, squarerax, squarerax, xp[1]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 8);
    add64_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry(squarer6, squarer6, 0); // squarer6 += 0 + cf; 
    squarerax = xp[3];          // squarerax = *(uint64 *) (xp + 24)
    multiply128(squarerdx, squarerax, squarerax, xp[0]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 0);
    add64_and_set_carry(r3, r3, squarerax); // cf? r3 += squarerax
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerdx); // cf? squarer4 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, 0); // cf? squarer5 += 0 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    add64_and_set_carry(r1, r1, r1); // cf? r1 += r1
    add64_with_carry_and_set_carry(r2, r2, r2); // cf? r2 += r2 + cf; 
    add64_with_carry_and_set_carry(r3, r3, r3); // cf? r3 += r3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarer4); // cf? squarer4 += squarer4 + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarer5); // cf? squarer5 += squarer5 + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, squarer6); // cf? squarer6 += squarer6 + cf; 
    add64_with_carry(squarer7, squarer7, squarer7); // squarer7 += squarer7 + cf; 
    squarerax = xp[0];          // squarerax = *(uint64 *) (xp + 0)
    multiply128(squarerdx, squarerax, squarerax, xp[0]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 0);
    r0 = squarerax;             // r0 = squarerax
    squaret1 = squarerdx;       // squaret1 = squarerdx
    squarerax = xp[1];          // squarerax = *(uint64 *) (xp + 8)
    multiply128(squarerdx, squarerax, squarerax, xp[1]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 8);
    squaret2 = squarerax;       // squaret2 = squarerax
    squaret3 = squarerdx;       // squaret3 = squarerdx
    squarerax = xp[2];          // squarerax = *(uint64 *) (xp + 16)
    multiply128(squarerdx, squarerax, squarerax, xp[2]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 16);
    add64_and_set_carry(r1, r1, squaret1); // cf? r1 += squaret1
    add64_with_carry_and_set_carry(r2, r2, squaret2); // cf? r2 += squaret2 + cf; 
    add64_with_carry_and_set_carry(r3, r3, squaret3); // cf? r3 += squaret3 + cf; 
    add64_with_carry_and_set_carry(squarer4, squarer4, squarerax); // cf? squarer4 += squarerax + cf; 
    add64_with_carry_and_set_carry(squarer5, squarer5, squarerdx); // cf? squarer5 += squarerdx + cf; 
    add64_with_carry_and_set_carry(squarer6, squarer6, 0); // cf? squarer6 += 0 + cf; 
    add64_with_carry(squarer7, squarer7, 0); // squarer7 += 0 + cf; 
    squarerax = xp[3];          // squarerax = *(uint64 *) (xp + 24)
    multiply128(squarerdx, squarerax, squarerax, xp[3]); // (uint128) squarerdx squarerax = squarerax * *(uint64 *) (xp + 24);
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
    add64_and_set_carry(r0, r0, squarer4); // cf? r0 += squarer4
    add64_with_carry_and_set_carry(r1, r1, squarer5); // cf? r1 += squarer5 + cf; 
    add64_with_carry_and_set_carry(r2, r2, squarer6); // cf? r2 += squarer6 + cf; 
    add64_with_carry_and_set_carry(r3, r3, squarer7); // cf? r3 += squarer7 + cf; 
    squarezero = 0;             // squarezero = 0
    add64_with_carry(squarer8, squarer8, squarezero); // squarer8 += squarezero + cf; 
    squarer8 *= 38;             // squarer8 *= 38
    add64_and_set_carry(r0, r0, squarer8); // cf? r0 += squarer8
    add64_with_carry_and_set_carry(r1, r1, squarezero); // cf? r1 += squarezero + cf; 
    add64_with_carry_and_set_carry(r2, r2, squarezero); // cf? r2 += squarezero + cf; 
    add64_with_carry_and_set_carry(r3, r3, squarezero); // cf? r3 += squarezero + cf; 
    add64_with_carry(squarezero, squarezero, squarezero); // squarezero += squarezero + cf; 
    squarezero *= 38;           // squarezero *= 38
    r0 += squarezero;           // r0 += squarezero
    rp[1] = r1;                 // *(uint64 *) (rp + 8) = r1
    rp[2] = r2;                 // *(uint64 *) (rp + 16) = r2
    rp[3] = r3;                 // *(uint64 *) (rp + 24) = r3
    rp[0] = r0;                 // *(uint64 *) (rp + 0) = r0
    return;
}
