#include "qhasm-translator.h"

extern uint64_t crypto_sign_ed25519_amd64_64_38;
void
crypto_sign_ed25519_amd64_64_ge25519_p1p1_to_p3(uint64_t * rp, uint64_t * pp)
{
    uint64_t        carry;
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
    uint64_t        rt0;
    uint64_t        rt1;
    uint64_t        rt2;
    uint64_t        rt3;
    uint64_t        rx0;
    uint64_t        rx1;
    uint64_t        rx2;
    uint64_t        rx3;
    uint64_t        ry0;
    uint64_t        ry1;
    uint64_t        ry2;
    uint64_t        ry3;
    uint64_t        rz0;
    uint64_t        rz1;
    uint64_t        rz2;
    uint64_t        rz3;

    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = pp[0];              // mulx0 = *(uint64 *) (pp + 0)
    mulrax = pp[12];            // mulrax = *(uint64 *) (pp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    rx0 = mulrax;               // rx0 = mulrax
    rx1 = mulrdx;               // rx1 = mulrdx
    mulrax = pp[13];            // mulrax = *(uint64 *) (pp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rx1, rx1, mulrax); // cf? rx1 += mulrax
    rx2 = 0;                    // rx2 = 0
    add64_with_carry(rx2, rx2, mulrdx); // rx2 += mulrdx + cf; 
    mulrax = pp[14];            // mulrax = *(uint64 *) (pp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rx2, rx2, mulrax); // cf? rx2 += mulrax
    rx3 = 0;                    // rx3 = 0
    add64_with_carry(rx3, rx3, mulrdx); // rx3 += mulrdx + cf; 
    mulrax = pp[15];            // mulrax = *(uint64 *) (pp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rx3, rx3, mulrax); // cf? rx3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = pp[1];              // mulx1 = *(uint64 *) (pp + 8)
    mulrax = pp[12];            // mulrax = *(uint64 *) (pp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rx1, rx1, mulrax); // cf? rx1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[13];            // mulrax = *(uint64 *) (pp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rx2, rx2, mulrax); // cf? rx2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rx2, rx2, mulc); // cf? rx2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[14];            // mulrax = *(uint64 *) (pp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rx3, rx3, mulrax); // cf? rx3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rx3, rx3, mulc); // cf? rx3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[15];            // mulrax = *(uint64 *) (pp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = pp[2];              // mulx2 = *(uint64 *) (pp + 16)
    mulrax = pp[12];            // mulrax = *(uint64 *) (pp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rx2, rx2, mulrax); // cf? rx2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[13];            // mulrax = *(uint64 *) (pp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rx3, rx3, mulrax); // cf? rx3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rx3, rx3, mulc); // cf? rx3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[14];            // mulrax = *(uint64 *) (pp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[15];            // mulrax = *(uint64 *) (pp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = pp[3];              // mulx3 = *(uint64 *) (pp + 24)
    mulrax = pp[12];            // mulrax = *(uint64 *) (pp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(rx3, rx3, mulrax); // cf? rx3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[13];            // mulrax = *(uint64 *) (pp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[14];            // mulrax = *(uint64 *) (pp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[15];            // mulrax = *(uint64 *) (pp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(rx0, rx0, mulr4); // cf? rx0 += mulr4
    add64_with_carry_and_set_carry(rx1, rx1, mulr5); // cf? rx1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, mulr6); // cf? rx2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, mulr7); // cf? rx3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(rx0, rx0, mulr8); // cf? rx0 += mulr8
    add64_with_carry_and_set_carry(rx1, rx1, mulzero); // cf? rx1 += mulzero + cf; 
    add64_with_carry_and_set_carry(rx2, rx2, mulzero); // cf? rx2 += mulzero + cf; 
    add64_with_carry_and_set_carry(rx3, rx3, mulzero); // cf? rx3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    rx0 += mulzero;             // rx0 += mulzero
    rp[0] = rx0;                // *(uint64 *) (rp + 0) = rx0
    rp[1] = rx1;                // *(uint64 *) (rp + 8) = rx1
    rp[2] = rx2;                // *(uint64 *) (rp + 16) = rx2
    rp[3] = rx3;                // *(uint64 *) (rp + 24) = rx3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = pp[8];              // mulx0 = *(uint64 *) (pp + 64)
    mulrax = pp[4];             // mulrax = *(uint64 *) (pp + 32)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    ry0 = mulrax;               // ry0 = mulrax
    ry1 = mulrdx;               // ry1 = mulrdx
    mulrax = pp[5];             // mulrax = *(uint64 *) (pp + 40)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(ry1, ry1, mulrax); // cf? ry1 += mulrax
    ry2 = 0;                    // ry2 = 0
    add64_with_carry(ry2, ry2, mulrdx); // ry2 += mulrdx + cf; 
    mulrax = pp[6];             // mulrax = *(uint64 *) (pp + 48)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(ry2, ry2, mulrax); // cf? ry2 += mulrax
    ry3 = 0;                    // ry3 = 0
    add64_with_carry(ry3, ry3, mulrdx); // ry3 += mulrdx + cf; 
    mulrax = pp[7];             // mulrax = *(uint64 *) (pp + 56)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(ry3, ry3, mulrax); // cf? ry3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = pp[9];              // mulx1 = *(uint64 *) (pp + 72)
    mulrax = pp[4];             // mulrax = *(uint64 *) (pp + 32)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(ry1, ry1, mulrax); // cf? ry1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[5];             // mulrax = *(uint64 *) (pp + 40)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(ry2, ry2, mulrax); // cf? ry2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(ry2, ry2, mulc); // cf? ry2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[6];             // mulrax = *(uint64 *) (pp + 48)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(ry3, ry3, mulrax); // cf? ry3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(ry3, ry3, mulc); // cf? ry3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[7];             // mulrax = *(uint64 *) (pp + 56)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = pp[10];             // mulx2 = *(uint64 *) (pp + 80)
    mulrax = pp[4];             // mulrax = *(uint64 *) (pp + 32)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(ry2, ry2, mulrax); // cf? ry2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[5];             // mulrax = *(uint64 *) (pp + 40)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(ry3, ry3, mulrax); // cf? ry3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(ry3, ry3, mulc); // cf? ry3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[6];             // mulrax = *(uint64 *) (pp + 48)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[7];             // mulrax = *(uint64 *) (pp + 56)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = pp[11];             // mulx3 = *(uint64 *) (pp + 88)
    mulrax = pp[4];             // mulrax = *(uint64 *) (pp + 32)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(ry3, ry3, mulrax); // cf? ry3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[5];             // mulrax = *(uint64 *) (pp + 40)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[6];             // mulrax = *(uint64 *) (pp + 48)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[7];             // mulrax = *(uint64 *) (pp + 56)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(ry0, ry0, mulr4); // cf? ry0 += mulr4
    add64_with_carry_and_set_carry(ry1, ry1, mulr5); // cf? ry1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(ry2, ry2, mulr6); // cf? ry2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(ry3, ry3, mulr7); // cf? ry3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(ry0, ry0, mulr8); // cf? ry0 += mulr8
    add64_with_carry_and_set_carry(ry1, ry1, mulzero); // cf? ry1 += mulzero + cf; 
    add64_with_carry_and_set_carry(ry2, ry2, mulzero); // cf? ry2 += mulzero + cf; 
    add64_with_carry_and_set_carry(ry3, ry3, mulzero); // cf? ry3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    ry0 += mulzero;             // ry0 += mulzero
    rp[4] = ry0;                // *(uint64 *) (rp + 32) = ry0
    rp[5] = ry1;                // *(uint64 *) (rp + 40) = ry1
    rp[6] = ry2;                // *(uint64 *) (rp + 48) = ry2
    rp[7] = ry3;                // *(uint64 *) (rp + 56) = ry3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = pp[4];              // mulx0 = *(uint64 *) (pp + 32)
    mulrax = pp[12];            // mulrax = *(uint64 *) (pp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    rz0 = mulrax;               // rz0 = mulrax
    rz1 = mulrdx;               // rz1 = mulrdx
    mulrax = pp[13];            // mulrax = *(uint64 *) (pp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rz1, rz1, mulrax); // cf? rz1 += mulrax
    rz2 = 0;                    // rz2 = 0
    add64_with_carry(rz2, rz2, mulrdx); // rz2 += mulrdx + cf; 
    mulrax = pp[14];            // mulrax = *(uint64 *) (pp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rz2, rz2, mulrax); // cf? rz2 += mulrax
    rz3 = 0;                    // rz3 = 0
    add64_with_carry(rz3, rz3, mulrdx); // rz3 += mulrdx + cf; 
    mulrax = pp[15];            // mulrax = *(uint64 *) (pp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rz3, rz3, mulrax); // cf? rz3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = pp[5];              // mulx1 = *(uint64 *) (pp + 40)
    mulrax = pp[12];            // mulrax = *(uint64 *) (pp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rz1, rz1, mulrax); // cf? rz1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[13];            // mulrax = *(uint64 *) (pp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rz2, rz2, mulrax); // cf? rz2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rz2, rz2, mulc); // cf? rz2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[14];            // mulrax = *(uint64 *) (pp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rz3, rz3, mulrax); // cf? rz3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rz3, rz3, mulc); // cf? rz3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[15];            // mulrax = *(uint64 *) (pp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = pp[6];              // mulx2 = *(uint64 *) (pp + 48)
    mulrax = pp[12];            // mulrax = *(uint64 *) (pp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rz2, rz2, mulrax); // cf? rz2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[13];            // mulrax = *(uint64 *) (pp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rz3, rz3, mulrax); // cf? rz3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rz3, rz3, mulc); // cf? rz3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[14];            // mulrax = *(uint64 *) (pp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[15];            // mulrax = *(uint64 *) (pp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = pp[7];              // mulx3 = *(uint64 *) (pp + 56)
    mulrax = pp[12];            // mulrax = *(uint64 *) (pp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(rz3, rz3, mulrax); // cf? rz3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[13];            // mulrax = *(uint64 *) (pp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[14];            // mulrax = *(uint64 *) (pp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[15];            // mulrax = *(uint64 *) (pp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(rz0, rz0, mulr4); // cf? rz0 += mulr4
    add64_with_carry_and_set_carry(rz1, rz1, mulr5); // cf? rz1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(rz2, rz2, mulr6); // cf? rz2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(rz3, rz3, mulr7); // cf? rz3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(rz0, rz0, mulr8); // cf? rz0 += mulr8
    add64_with_carry_and_set_carry(rz1, rz1, mulzero); // cf? rz1 += mulzero + cf; 
    add64_with_carry_and_set_carry(rz2, rz2, mulzero); // cf? rz2 += mulzero + cf; 
    add64_with_carry_and_set_carry(rz3, rz3, mulzero); // cf? rz3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    rz0 += mulzero;             // rz0 += mulzero
    rp[8] = rz0;                // *(uint64 *) (rp + 64) = rz0
    rp[9] = rz1;                // *(uint64 *) (rp + 72) = rz1
    rp[10] = rz2;               // *(uint64 *) (rp + 80) = rz2
    rp[11] = rz3;               // *(uint64 *) (rp + 88) = rz3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = pp[0];              // mulx0 = *(uint64 *) (pp + 0)
    mulrax = pp[8];             // mulrax = *(uint64 *) (pp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    rt0 = mulrax;               // rt0 = mulrax
    rt1 = mulrdx;               // rt1 = mulrdx
    mulrax = pp[9];             // mulrax = *(uint64 *) (pp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rt1, rt1, mulrax); // cf? rt1 += mulrax
    rt2 = 0;                    // rt2 = 0
    add64_with_carry(rt2, rt2, mulrdx); // rt2 += mulrdx + cf; 
    mulrax = pp[10];            // mulrax = *(uint64 *) (pp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rt2, rt2, mulrax); // cf? rt2 += mulrax
    rt3 = 0;                    // rt3 = 0
    add64_with_carry(rt3, rt3, mulrdx); // rt3 += mulrdx + cf; 
    mulrax = pp[11];            // mulrax = *(uint64 *) (pp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rt3, rt3, mulrax); // cf? rt3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = pp[1];              // mulx1 = *(uint64 *) (pp + 8)
    mulrax = pp[8];             // mulrax = *(uint64 *) (pp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rt1, rt1, mulrax); // cf? rt1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[9];             // mulrax = *(uint64 *) (pp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rt2, rt2, mulrax); // cf? rt2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rt2, rt2, mulc); // cf? rt2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[10];            // mulrax = *(uint64 *) (pp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rt3, rt3, mulrax); // cf? rt3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rt3, rt3, mulc); // cf? rt3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[11];            // mulrax = *(uint64 *) (pp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = pp[2];              // mulx2 = *(uint64 *) (pp + 16)
    mulrax = pp[8];             // mulrax = *(uint64 *) (pp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rt2, rt2, mulrax); // cf? rt2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[9];             // mulrax = *(uint64 *) (pp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rt3, rt3, mulrax); // cf? rt3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rt3, rt3, mulc); // cf? rt3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[10];            // mulrax = *(uint64 *) (pp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[11];            // mulrax = *(uint64 *) (pp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = pp[3];              // mulx3 = *(uint64 *) (pp + 24)
    mulrax = pp[8];             // mulrax = *(uint64 *) (pp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(rt3, rt3, mulrax); // cf? rt3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[9];             // mulrax = *(uint64 *) (pp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[10];            // mulrax = *(uint64 *) (pp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = pp[11];            // mulrax = *(uint64 *) (pp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr6, mulr6, mulc); // cf? mulr6 += mulc
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    mulrax = mulr4;             // mulrax = mulr4
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    mulr4 = mulrax;             // mulr4 = mulrax
    mulrax = mulr5;             // mulrax = mulr5
    mulr5 = mulrdx;             // mulr5 = mulrdx
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    mulrax = mulr6;             // mulrax = mulr6
    mulr6 = 0;                  // mulr6 = 0
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr6, mulr6, mulrax); // cf? mulr6 += mulrax
    mulrax = mulr7;             // mulrax = mulr7
    mulr7 = 0;                  // mulr7 = 0
    add64_with_carry(mulr7, mulr7, mulrdx); // mulr7 += mulrdx + cf; 
    multiply128(mulrdx, mulrax, mulrax, crypto_sign_ed25519_amd64_64_38); // (uint128) mulrdx mulrax = mulrax * *(uint64 *)
                                                                          // &crypto_sign_ed25519_amd64_64_38
    add64_and_set_carry(mulr7, mulr7, mulrax); // cf? mulr7 += mulrax
    mulr8 = 0;                  // mulr8 = 0
    add64_with_carry(mulr8, mulr8, mulrdx); // mulr8 += mulrdx + cf; 
    add64_and_set_carry(rt0, rt0, mulr4); // cf? rt0 += mulr4
    add64_with_carry_and_set_carry(rt1, rt1, mulr5); // cf? rt1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(rt2, rt2, mulr6); // cf? rt2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(rt3, rt3, mulr7); // cf? rt3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(rt0, rt0, mulr8); // cf? rt0 += mulr8
    add64_with_carry_and_set_carry(rt1, rt1, mulzero); // cf? rt1 += mulzero + cf; 
    add64_with_carry_and_set_carry(rt2, rt2, mulzero); // cf? rt2 += mulzero + cf; 
    add64_with_carry_and_set_carry(rt3, rt3, mulzero); // cf? rt3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    rt0 += mulzero;             // rt0 += mulzero
    rp[12] = rt0;               // *(uint64 *) (rp + 96) = rt0
    rp[13] = rt1;               // *(uint64 *) (rp + 104) = rt1
    rp[14] = rt2;               // *(uint64 *) (rp + 112) = rt2
    rp[15] = rt3;               // *(uint64 *) (rp + 120) = rt3
    return;
}
