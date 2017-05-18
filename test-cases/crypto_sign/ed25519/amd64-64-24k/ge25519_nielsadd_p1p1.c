#include "qhasm-translator.h"

extern uint64_t crypto_sign_ed25519_amd64_64_38;
void
crypto_sign_ed25519_amd64_64_ge25519_nielsadd_p1p1(uint64_t * rp, uint64_t * pp, uint64_t * qp)
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
    uint64_t        c1;
    uint64_t        c2;
    uint64_t        c3;
    uint64_t        carry;
    uint64_t        e0;
    uint64_t        e1;
    uint64_t        e2;
    uint64_t        e3;
    uint64_t        f0;
    uint64_t        f1;
    uint64_t        f2;
    uint64_t        f3;
    uint64_t        g0;
    uint64_t        g1;
    uint64_t        g2;
    uint64_t        g3;
    uint64_t        h0;
    uint64_t        h1;
    uint64_t        h2;
    uint64_t        h3;
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
    uint64_t        subt0;
    uint64_t        subt1;

    qp = qp;                    // qp = qp
    a0 = pp[4];                 // a0 = *(uint64 *) (pp + 32)
    a1 = pp[5];                 // a1 = *(uint64 *) (pp + 40)
    a2 = pp[6];                 // a2 = *(uint64 *) (pp + 48)
    a3 = pp[7];                 // a3 = *(uint64 *) (pp + 56)
    b0 = a0;                    // b0 = a0
    b1 = a1;                    // b1 = a1
    b2 = a2;                    // b2 = a2
    b3 = a3;                    // b3 = a3
    sub64_and_set_carry(a0, a0, pp[0]); // cf? a0 -= *(uint64 *) (pp + 0)
    sub64_with_carry_and_set_carry(a1, a1, pp[1]); // cf? a1 -= *(uint64 *) (pp + 8) - cf; 
    sub64_with_carry_and_set_carry(a2, a2, pp[2]); // cf? a2 -= *(uint64 *) (pp + 16) - cf; 
    sub64_with_carry_and_set_carry(a3, a3, pp[3]); // cf? a3 -= *(uint64 *) (pp + 24) - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(a0, a0, subt1); // cf? a0 -= subt1
    sub64_with_carry_and_set_carry(a1, a1, subt0); // cf? a1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(a2, a2, subt0); // cf? a2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(a3, a3, subt0); // cf? a3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    a0 -= subt0;                // a0 -= subt0
    add64_and_set_carry(b0, b0, pp[0]); // cf? b0 += *(uint64 *) (pp + 0)
    add64_with_carry_and_set_carry(b1, b1, pp[1]); // cf? b1 += *(uint64 *) (pp + 8) + cf;
    add64_with_carry_and_set_carry(b2, b2, pp[2]); // cf? b2 += *(uint64 *) (pp + 16) + cf;
    add64_with_carry_and_set_carry(b3, b3, pp[3]); // cf? b3 += *(uint64 *) (pp + 24) + cf;
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(b0, b0, addt1); // cf? b0 += addt1
    add64_with_carry_and_set_carry(b1, b1, addt0); // cf? b1 += addt0 + cf; 
    add64_with_carry_and_set_carry(b2, b2, addt0); // cf? b2 += addt0 + cf; 
    add64_with_carry_and_set_carry(b3, b3, addt0); // cf? b3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    b0 += addt0;                // b0 += addt0
    a0_stack = a0;              // a0_stack = a0
    a1_stack = a1;              // a1_stack = a1
    a2_stack = a2;              // a2_stack = a2
    a3_stack = a3;              // a3_stack = a3
    b0_stack = b0;              // b0_stack = b0
    b1_stack = b1;              // b1_stack = b1
    b2_stack = b2;              // b2_stack = b2
    b3_stack = b3;              // b3_stack = b3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = a0_stack;           // mulx0 = a0_stack
    mulrax = qp[0];             // mulrax = *(uint64 *) (qp + 0)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    a0 = mulrax;                // a0 = mulrax
    a1 = mulrdx;                // a1 = mulrdx
    mulrax = qp[1];             // mulrax = *(uint64 *) (qp + 8)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(a1, a1, mulrax); // cf? a1 += mulrax
    a2 = 0;                     // a2 = 0
    add64_with_carry(a2, a2, mulrdx); // a2 += mulrdx + cf; 
    mulrax = qp[2];             // mulrax = *(uint64 *) (qp + 16)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(a2, a2, mulrax); // cf? a2 += mulrax
    a3 = 0;                     // a3 = 0
    add64_with_carry(a3, a3, mulrdx); // a3 += mulrdx + cf; 
    mulrax = qp[3];             // mulrax = *(uint64 *) (qp + 24)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(a3, a3, mulrax); // cf? a3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = a1_stack;           // mulx1 = a1_stack
    mulrax = qp[0];             // mulrax = *(uint64 *) (qp + 0)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(a1, a1, mulrax); // cf? a1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[1];             // mulrax = *(uint64 *) (qp + 8)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(a2, a2, mulrax); // cf? a2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(a2, a2, mulc); // cf? a2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[2];             // mulrax = *(uint64 *) (qp + 16)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(a3, a3, mulrax); // cf? a3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(a3, a3, mulc); // cf? a3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[3];             // mulrax = *(uint64 *) (qp + 24)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = a2_stack;           // mulx2 = a2_stack
    mulrax = qp[0];             // mulrax = *(uint64 *) (qp + 0)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(a2, a2, mulrax); // cf? a2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[1];             // mulrax = *(uint64 *) (qp + 8)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(a3, a3, mulrax); // cf? a3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(a3, a3, mulc); // cf? a3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[2];             // mulrax = *(uint64 *) (qp + 16)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[3];             // mulrax = *(uint64 *) (qp + 24)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = a3_stack;           // mulx3 = a3_stack
    mulrax = qp[0];             // mulrax = *(uint64 *) (qp + 0)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(a3, a3, mulrax); // cf? a3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[1];             // mulrax = *(uint64 *) (qp + 8)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[2];             // mulrax = *(uint64 *) (qp + 16)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[3];             // mulrax = *(uint64 *) (qp + 24)
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
    add64_and_set_carry(a0, a0, mulr4); // cf? a0 += mulr4
    add64_with_carry_and_set_carry(a1, a1, mulr5); // cf? a1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(a2, a2, mulr6); // cf? a2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(a3, a3, mulr7); // cf? a3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(a0, a0, mulr8); // cf? a0 += mulr8
    add64_with_carry_and_set_carry(a1, a1, mulzero); // cf? a1 += mulzero + cf; 
    add64_with_carry_and_set_carry(a2, a2, mulzero); // cf? a2 += mulzero + cf; 
    add64_with_carry_and_set_carry(a3, a3, mulzero); // cf? a3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    a0 += mulzero;              // a0 += mulzero
    a0_stack = a0;              // a0_stack = a0
    a1_stack = a1;              // a1_stack = a1
    a2_stack = a2;              // a2_stack = a2
    a3_stack = a3;              // a3_stack = a3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = b0_stack;           // mulx0 = b0_stack
    mulrax = qp[4];             // mulrax = *(uint64 *) (qp + 32)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    e0 = mulrax;                // e0 = mulrax
    e1 = mulrdx;                // e1 = mulrdx
    mulrax = qp[5];             // mulrax = *(uint64 *) (qp + 40)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(e1, e1, mulrax); // cf? e1 += mulrax
    e2 = 0;                     // e2 = 0
    add64_with_carry(e2, e2, mulrdx); // e2 += mulrdx + cf; 
    mulrax = qp[6];             // mulrax = *(uint64 *) (qp + 48)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(e2, e2, mulrax); // cf? e2 += mulrax
    e3 = 0;                     // e3 = 0
    add64_with_carry(e3, e3, mulrdx); // e3 += mulrdx + cf; 
    mulrax = qp[7];             // mulrax = *(uint64 *) (qp + 56)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(e3, e3, mulrax); // cf? e3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = b1_stack;           // mulx1 = b1_stack
    mulrax = qp[4];             // mulrax = *(uint64 *) (qp + 32)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(e1, e1, mulrax); // cf? e1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[5];             // mulrax = *(uint64 *) (qp + 40)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(e2, e2, mulrax); // cf? e2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(e2, e2, mulc); // cf? e2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[6];             // mulrax = *(uint64 *) (qp + 48)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(e3, e3, mulrax); // cf? e3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(e3, e3, mulc); // cf? e3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[7];             // mulrax = *(uint64 *) (qp + 56)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = b2_stack;           // mulx2 = b2_stack
    mulrax = qp[4];             // mulrax = *(uint64 *) (qp + 32)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(e2, e2, mulrax); // cf? e2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[5];             // mulrax = *(uint64 *) (qp + 40)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(e3, e3, mulrax); // cf? e3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(e3, e3, mulc); // cf? e3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[6];             // mulrax = *(uint64 *) (qp + 48)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[7];             // mulrax = *(uint64 *) (qp + 56)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = b3_stack;           // mulx3 = b3_stack
    mulrax = qp[4];             // mulrax = *(uint64 *) (qp + 32)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(e3, e3, mulrax); // cf? e3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[5];             // mulrax = *(uint64 *) (qp + 40)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[6];             // mulrax = *(uint64 *) (qp + 48)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[7];             // mulrax = *(uint64 *) (qp + 56)
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
    add64_and_set_carry(e0, e0, mulr4); // cf? e0 += mulr4
    add64_with_carry_and_set_carry(e1, e1, mulr5); // cf? e1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(e2, e2, mulr6); // cf? e2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(e3, e3, mulr7); // cf? e3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(e0, e0, mulr8); // cf? e0 += mulr8
    add64_with_carry_and_set_carry(e1, e1, mulzero); // cf? e1 += mulzero + cf; 
    add64_with_carry_and_set_carry(e2, e2, mulzero); // cf? e2 += mulzero + cf; 
    add64_with_carry_and_set_carry(e3, e3, mulzero); // cf? e3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    e0 += mulzero;              // e0 += mulzero
    h0 = e0;                    // h0 = e0
    h1 = e1;                    // h1 = e1
    h2 = e2;                    // h2 = e2
    h3 = e3;                    // h3 = e3
    sub64_and_set_carry(e0, e0, a0_stack); // cf? e0 -= a0_stack
    sub64_with_carry_and_set_carry(e1, e1, a1_stack); // cf? e1 -= a1_stack - cf; 
    sub64_with_carry_and_set_carry(e2, e2, a2_stack); // cf? e2 -= a2_stack - cf; 
    sub64_with_carry_and_set_carry(e3, e3, a3_stack); // cf? e3 -= a3_stack - cf; 
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
    add64_and_set_carry(h0, h0, a0_stack); // cf? h0 += a0_stack
    add64_with_carry_and_set_carry(h1, h1, a1_stack); // cf? h1 += a1_stack + cf; 
    add64_with_carry_and_set_carry(h2, h2, a2_stack); // cf? h2 += a2_stack + cf; 
    add64_with_carry_and_set_carry(h3, h3, a3_stack); // cf? h3 += a3_stack + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(h0, h0, addt1); // cf? h0 += addt1
    add64_with_carry_and_set_carry(h1, h1, addt0); // cf? h1 += addt0 + cf; 
    add64_with_carry_and_set_carry(h2, h2, addt0); // cf? h2 += addt0 + cf; 
    add64_with_carry_and_set_carry(h3, h3, addt0); // cf? h3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    h0 += addt0;                // h0 += addt0
    rp[8] = h0;                 // *(uint64 *) (rp + 64) = h0
    rp[9] = h1;                 // *(uint64 *) (rp + 72) = h1
    rp[10] = h2;                // *(uint64 *) (rp + 80) = h2
    rp[11] = h3;                // *(uint64 *) (rp + 88) = h3
    rp[0] = e0;                 // *(uint64 *) (rp + 0) = e0
    rp[1] = e1;                 // *(uint64 *) (rp + 8) = e1
    rp[2] = e2;                 // *(uint64 *) (rp + 16) = e2
    rp[3] = e3;                 // *(uint64 *) (rp + 24) = e3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = pp[12];             // mulx0 = *(uint64 *) (pp + 96)
    mulrax = qp[8];             // mulrax = *(uint64 *) (qp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    c0 = mulrax;                // c0 = mulrax
    c1 = mulrdx;                // c1 = mulrdx
    mulrax = qp[9];             // mulrax = *(uint64 *) (qp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c1, c1, mulrax); // cf? c1 += mulrax
    c2 = 0;                     // c2 = 0
    add64_with_carry(c2, c2, mulrdx); // c2 += mulrdx + cf; 
    mulrax = qp[10];            // mulrax = *(uint64 *) (qp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    c3 = 0;                     // c3 = 0
    add64_with_carry(c3, c3, mulrdx); // c3 += mulrdx + cf; 
    mulrax = qp[11];            // mulrax = *(uint64 *) (qp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = pp[13];             // mulx1 = *(uint64 *) (pp + 104)
    mulrax = qp[8];             // mulrax = *(uint64 *) (qp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c1, c1, mulrax); // cf? c1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[9];             // mulrax = *(uint64 *) (qp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c2, c2, mulc); // cf? c2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[10];            // mulrax = *(uint64 *) (qp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c3, c3, mulc); // cf? c3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[11];            // mulrax = *(uint64 *) (qp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = pp[14];             // mulx2 = *(uint64 *) (pp + 112)
    mulrax = qp[8];             // mulrax = *(uint64 *) (qp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[9];             // mulrax = *(uint64 *) (qp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c3, c3, mulc); // cf? c3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[10];            // mulrax = *(uint64 *) (qp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[11];            // mulrax = *(uint64 *) (qp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = pp[15];             // mulx3 = *(uint64 *) (pp + 120)
    mulrax = qp[8];             // mulrax = *(uint64 *) (qp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[9];             // mulrax = *(uint64 *) (qp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[10];            // mulrax = *(uint64 *) (qp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[11];            // mulrax = *(uint64 *) (qp + 88)
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
    add64_and_set_carry(c0, c0, mulr4); // cf? c0 += mulr4
    add64_with_carry_and_set_carry(c1, c1, mulr5); // cf? c1 += mulr5 + cf; 
    add64_with_carry_and_set_carry(c2, c2, mulr6); // cf? c2 += mulr6 + cf; 
    add64_with_carry_and_set_carry(c3, c3, mulr7); // cf? c3 += mulr7 + cf; 
    mulzero = 0;                // mulzero = 0
    add64_with_carry(mulr8, mulr8, mulzero); // mulr8 += mulzero + cf; 
    mulr8 *= 38;                // mulr8 *= 38
    add64_and_set_carry(c0, c0, mulr8); // cf? c0 += mulr8
    add64_with_carry_and_set_carry(c1, c1, mulzero); // cf? c1 += mulzero + cf; 
    add64_with_carry_and_set_carry(c2, c2, mulzero); // cf? c2 += mulzero + cf; 
    add64_with_carry_and_set_carry(c3, c3, mulzero); // cf? c3 += mulzero + cf; 
    add64_with_carry(mulzero, mulzero, mulzero); // mulzero += mulzero + cf; 
    mulzero *= 38;              // mulzero *= 38
    c0 += mulzero;              // c0 += mulzero
    f0 = pp[8];                 // f0 = *(uint64 *) (pp + 64)
    f1 = pp[9];                 // f1 = *(uint64 *) (pp + 72)
    f2 = pp[10];                // f2 = *(uint64 *) (pp + 80)
    f3 = pp[11];                // f3 = *(uint64 *) (pp + 88)
    add64_and_set_carry(f0, f0, f0); // cf? f0 += f0
    add64_with_carry_and_set_carry(f1, f1, f1); // cf? f1 += f1 + cf; 
    add64_with_carry_and_set_carry(f2, f2, f2); // cf? f2 += f2 + cf; 
    add64_with_carry_and_set_carry(f3, f3, f3); // cf? f3 += f3 + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(f0, f0, addt1); // cf? f0 += addt1
    add64_with_carry_and_set_carry(f1, f1, addt0); // cf? f1 += addt0 + cf; 
    add64_with_carry_and_set_carry(f2, f2, addt0); // cf? f2 += addt0 + cf; 
    add64_with_carry_and_set_carry(f3, f3, addt0); // cf? f3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    f0 += addt0;                // f0 += addt0
    g0 = f0;                    // g0 = f0
    g1 = f1;                    // g1 = f1
    g2 = f2;                    // g2 = f2
    g3 = f3;                    // g3 = f3
    sub64_and_set_carry(f0, f0, c0); // cf? f0 -= c0
    sub64_with_carry_and_set_carry(f1, f1, c1); // cf? f1 -= c1 - cf; 
    sub64_with_carry_and_set_carry(f2, f2, c2); // cf? f2 -= c2 - cf; 
    sub64_with_carry_and_set_carry(f3, f3, c3); // cf? f3 -= c3 - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(f0, f0, subt1); // cf? f0 -= subt1
    sub64_with_carry_and_set_carry(f1, f1, subt0); // cf? f1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(f2, f2, subt0); // cf? f2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(f3, f3, subt0); // cf? f3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    f0 -= subt0;                // f0 -= subt0
    add64_and_set_carry(g0, g0, c0); // cf? g0 += c0
    add64_with_carry_and_set_carry(g1, g1, c1); // cf? g1 += c1 + cf; 
    add64_with_carry_and_set_carry(g2, g2, c2); // cf? g2 += c2 + cf; 
    add64_with_carry_and_set_carry(g3, g3, c3); // cf? g3 += c3 + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(g0, g0, addt1); // cf? g0 += addt1
    add64_with_carry_and_set_carry(g1, g1, addt0); // cf? g1 += addt0 + cf; 
    add64_with_carry_and_set_carry(g2, g2, addt0); // cf? g2 += addt0 + cf; 
    add64_with_carry_and_set_carry(g3, g3, addt0); // cf? g3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    g0 += addt0;                // g0 += addt0
    rp[4] = g0;                 // *(uint64 *) (rp + 32) = g0
    rp[5] = g1;                 // *(uint64 *) (rp + 40) = g1
    rp[6] = g2;                 // *(uint64 *) (rp + 48) = g2
    rp[7] = g3;                 // *(uint64 *) (rp + 56) = g3
    rp[12] = f0;                // *(uint64 *) (rp + 96) = f0
    rp[13] = f1;                // *(uint64 *) (rp + 104) = f1
    rp[14] = f2;                // *(uint64 *) (rp + 112) = f2
    rp[15] = f3;                // *(uint64 *) (rp + 120) = f3
    return;
}
