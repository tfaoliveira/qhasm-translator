#include "qhasm-translator.h"

extern uint64_t crypto_sign_ed25519_amd64_64_38;
extern uint64_t crypto_sign_ed25519_amd64_64_EC2D0;
extern uint64_t crypto_sign_ed25519_amd64_64_EC2D1;
extern uint64_t crypto_sign_ed25519_amd64_64_EC2D2;
extern uint64_t crypto_sign_ed25519_amd64_64_EC2D3;
void
crypto_sign_ed25519_amd64_64_ge25519_add_p1p1(uint64_t * rp, uint64_t * pp, uint64_t * qp)
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
    t10 = qp[4];                // t10 = *(uint64 *) (qp + 32)
    t11 = qp[5];                // t11 = *(uint64 *) (qp + 40)
    t12 = qp[6];                // t12 = *(uint64 *) (qp + 48)
    t13 = qp[7];                // t13 = *(uint64 *) (qp + 56)
    t20 = t10;                  // t20 = t10
    t21 = t11;                  // t21 = t11
    t22 = t12;                  // t22 = t12
    t23 = t13;                  // t23 = t13
    sub64_and_set_carry(t10, t10, qp[0]); // cf? t10 -= *(uint64 *) (qp + 0)
    sub64_with_carry_and_set_carry(t11, t11, qp[1]); // cf? t11 -= *(uint64 *) (qp + 8) - cf; 
    sub64_with_carry_and_set_carry(t12, t12, qp[2]); // cf? t12 -= *(uint64 *) (qp + 16) - cf; 
    sub64_with_carry_and_set_carry(t13, t13, qp[3]); // cf? t13 -= *(uint64 *) (qp + 24) - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(t10, t10, subt1); // cf? t10 -= subt1
    sub64_with_carry_and_set_carry(t11, t11, subt0); // cf? t11 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(t12, t12, subt0); // cf? t12 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(t13, t13, subt0); // cf? t13 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    t10 -= subt0;               // t10 -= subt0
    add64_and_set_carry(t20, t20, qp[0]); // cf? t20 += *(uint64 *) (qp + 0)
    add64_with_carry_and_set_carry(t21, t21, qp[1]); // cf? t21 += *(uint64 *) (qp + 8) + cf;
    add64_with_carry_and_set_carry(t22, t22, qp[2]); // cf? t22 += *(uint64 *) (qp + 16) + cf;
    add64_with_carry_and_set_carry(t23, t23, qp[3]); // cf? t23 += *(uint64 *) (qp + 24) + cf;
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(t20, t20, addt1); // cf? t20 += addt1
    add64_with_carry_and_set_carry(t21, t21, addt0); // cf? t21 += addt0 + cf; 
    add64_with_carry_and_set_carry(t22, t22, addt0); // cf? t22 += addt0 + cf; 
    add64_with_carry_and_set_carry(t23, t23, addt0); // cf? t23 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    t20 += addt0;               // t20 += addt0
    t10_stack = t10;            // t10_stack = t10
    t11_stack = t11;            // t11_stack = t11
    t12_stack = t12;            // t12_stack = t12
    t13_stack = t13;            // t13_stack = t13
    t20_stack = t20;            // t20_stack = t20
    t21_stack = t21;            // t21_stack = t21
    t22_stack = t22;            // t22_stack = t22
    t23_stack = t23;            // t23_stack = t23
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = a0_stack;           // mulx0 = a0_stack
    mulrax = t10_stack;         // mulrax = t10_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    a0 = mulrax;                // a0 = mulrax
    a1 = mulrdx;                // a1 = mulrdx
    mulrax = t11_stack;         // mulrax = t11_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(a1, a1, mulrax); // cf? a1 += mulrax
    a2 = 0;                     // a2 = 0
    add64_with_carry(a2, a2, mulrdx); // a2 += mulrdx + cf; 
    mulrax = t12_stack;         // mulrax = t12_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(a2, a2, mulrax); // cf? a2 += mulrax
    a3 = 0;                     // a3 = 0
    add64_with_carry(a3, a3, mulrdx); // a3 += mulrdx + cf; 
    mulrax = t13_stack;         // mulrax = t13_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(a3, a3, mulrax); // cf? a3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = a1_stack;           // mulx1 = a1_stack
    mulrax = t10_stack;         // mulrax = t10_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(a1, a1, mulrax); // cf? a1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t11_stack;         // mulrax = t11_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(a2, a2, mulrax); // cf? a2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(a2, a2, mulc); // cf? a2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t12_stack;         // mulrax = t12_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(a3, a3, mulrax); // cf? a3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(a3, a3, mulc); // cf? a3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t13_stack;         // mulrax = t13_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = a2_stack;           // mulx2 = a2_stack
    mulrax = t10_stack;         // mulrax = t10_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(a2, a2, mulrax); // cf? a2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t11_stack;         // mulrax = t11_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(a3, a3, mulrax); // cf? a3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(a3, a3, mulc); // cf? a3 += mulc
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
    mulx3 = a3_stack;           // mulx3 = a3_stack
    mulrax = t10_stack;         // mulrax = t10_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(a3, a3, mulrax); // cf? a3 += mulrax
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
    mulrax = t20_stack;         // mulrax = t20_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    rx0 = mulrax;               // rx0 = mulrax
    rx1 = mulrdx;               // rx1 = mulrdx
    mulrax = t21_stack;         // mulrax = t21_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rx1, rx1, mulrax); // cf? rx1 += mulrax
    rx2 = 0;                    // rx2 = 0
    add64_with_carry(rx2, rx2, mulrdx); // rx2 += mulrdx + cf; 
    mulrax = t22_stack;         // mulrax = t22_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rx2, rx2, mulrax); // cf? rx2 += mulrax
    rx3 = 0;                    // rx3 = 0
    add64_with_carry(rx3, rx3, mulrdx); // rx3 += mulrdx + cf; 
    mulrax = t23_stack;         // mulrax = t23_stack
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rx3, rx3, mulrax); // cf? rx3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = b1_stack;           // mulx1 = b1_stack
    mulrax = t20_stack;         // mulrax = t20_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rx1, rx1, mulrax); // cf? rx1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t21_stack;         // mulrax = t21_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rx2, rx2, mulrax); // cf? rx2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rx2, rx2, mulc); // cf? rx2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t22_stack;         // mulrax = t22_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rx3, rx3, mulrax); // cf? rx3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rx3, rx3, mulc); // cf? rx3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t23_stack;         // mulrax = t23_stack
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = b2_stack;           // mulx2 = b2_stack
    mulrax = t20_stack;         // mulrax = t20_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rx2, rx2, mulrax); // cf? rx2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = t21_stack;         // mulrax = t21_stack
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rx3, rx3, mulrax); // cf? rx3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rx3, rx3, mulc); // cf? rx3 += mulc
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
    mulx3 = b3_stack;           // mulx3 = b3_stack
    mulrax = t20_stack;         // mulrax = t20_stack
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(rx3, rx3, mulrax); // cf? rx3 += mulrax
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
    ry0 = rx0;                  // ry0 = rx0
    ry1 = rx1;                  // ry1 = rx1
    ry2 = rx2;                  // ry2 = rx2
    ry3 = rx3;                  // ry3 = rx3
    add64_and_set_carry(ry0, ry0, a0_stack); // cf? ry0 += a0_stack
    add64_with_carry_and_set_carry(ry1, ry1, a1_stack); // cf? ry1 += a1_stack + cf; 
    add64_with_carry_and_set_carry(ry2, ry2, a2_stack); // cf? ry2 += a2_stack + cf; 
    add64_with_carry_and_set_carry(ry3, ry3, a3_stack); // cf? ry3 += a3_stack + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(ry0, ry0, addt1); // cf? ry0 += addt1
    add64_with_carry_and_set_carry(ry1, ry1, addt0); // cf? ry1 += addt0 + cf; 
    add64_with_carry_and_set_carry(ry2, ry2, addt0); // cf? ry2 += addt0 + cf; 
    add64_with_carry_and_set_carry(ry3, ry3, addt0); // cf? ry3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    ry0 += addt0;               // ry0 += addt0
    sub64_and_set_carry(rx0, rx0, a0_stack); // cf? rx0 -= a0_stack
    sub64_with_carry_and_set_carry(rx1, rx1, a1_stack); // cf? rx1 -= a1_stack - cf; 
    sub64_with_carry_and_set_carry(rx2, rx2, a2_stack); // cf? rx2 -= a2_stack - cf; 
    sub64_with_carry_and_set_carry(rx3, rx3, a3_stack); // cf? rx3 -= a3_stack - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(rx0, rx0, subt1); // cf? rx0 -= subt1
    sub64_with_carry_and_set_carry(rx1, rx1, subt0); // cf? rx1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(rx2, rx2, subt0); // cf? rx2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(rx3, rx3, subt0); // cf? rx3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    rx0 -= subt0;               // rx0 -= subt0
    rp[0] = rx0;                // *(uint64 *) (rp + 0) = rx0
    rp[1] = rx1;                // *(uint64 *) (rp + 8) = rx1
    rp[2] = rx2;                // *(uint64 *) (rp + 16) = rx2
    rp[3] = rx3;                // *(uint64 *) (rp + 24) = rx3
    rp[8] = ry0;                // *(uint64 *) (rp + 64) = ry0
    rp[9] = ry1;                // *(uint64 *) (rp + 72) = ry1
    rp[10] = ry2;               // *(uint64 *) (rp + 80) = ry2
    rp[11] = ry3;               // *(uint64 *) (rp + 88) = ry3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = pp[12];             // mulx0 = *(uint64 *) (pp + 96)
    mulrax = qp[12];            // mulrax = *(uint64 *) (qp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    c0 = mulrax;                // c0 = mulrax
    c1 = mulrdx;                // c1 = mulrdx
    mulrax = qp[13];            // mulrax = *(uint64 *) (qp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c1, c1, mulrax); // cf? c1 += mulrax
    c2 = 0;                     // c2 = 0
    add64_with_carry(c2, c2, mulrdx); // c2 += mulrdx + cf; 
    mulrax = qp[14];            // mulrax = *(uint64 *) (qp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    c3 = 0;                     // c3 = 0
    add64_with_carry(c3, c3, mulrdx); // c3 += mulrdx + cf; 
    mulrax = qp[15];            // mulrax = *(uint64 *) (qp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = pp[13];             // mulx1 = *(uint64 *) (pp + 104)
    mulrax = qp[12];            // mulrax = *(uint64 *) (qp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c1, c1, mulrax); // cf? c1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[13];            // mulrax = *(uint64 *) (qp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c2, c2, mulc); // cf? c2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[14];            // mulrax = *(uint64 *) (qp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c3, c3, mulc); // cf? c3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[15];            // mulrax = *(uint64 *) (qp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = pp[14];             // mulx2 = *(uint64 *) (pp + 112)
    mulrax = qp[12];            // mulrax = *(uint64 *) (qp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[13];            // mulrax = *(uint64 *) (qp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c3, c3, mulc); // cf? c3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[14];            // mulrax = *(uint64 *) (qp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[15];            // mulrax = *(uint64 *) (qp + 120)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = pp[15];             // mulx3 = *(uint64 *) (pp + 120)
    mulrax = qp[12];            // mulrax = *(uint64 *) (qp + 96)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[13];            // mulrax = *(uint64 *) (qp + 104)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[14];            // mulrax = *(uint64 *) (qp + 112)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[15];            // mulrax = *(uint64 *) (qp + 120)
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
    c0_stack = c0;              // c0_stack = c0
    c1_stack = c1;              // c1_stack = c1
    c2_stack = c2;              // c2_stack = c2
    c3_stack = c3;              // c3_stack = c3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = c0_stack;           // mulx0 = c0_stack
    mulrax = crypto_sign_ed25519_amd64_64_EC2D0; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D0
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    c0 = mulrax;                // c0 = mulrax
    c1 = mulrdx;                // c1 = mulrdx
    mulrax = crypto_sign_ed25519_amd64_64_EC2D1; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D1
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c1, c1, mulrax); // cf? c1 += mulrax
    c2 = 0;                     // c2 = 0
    add64_with_carry(c2, c2, mulrdx); // c2 += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D2; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D2
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    c3 = 0;                     // c3 = 0
    add64_with_carry(c3, c3, mulrdx); // c3 += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D3; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D3
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = c1_stack;           // mulx1 = c1_stack
    mulrax = crypto_sign_ed25519_amd64_64_EC2D0; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D0
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c1, c1, mulrax); // cf? c1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D1; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D1
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c2, c2, mulc); // cf? c2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D2; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D2
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c3, c3, mulc); // cf? c3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D3; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D3
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = c2_stack;           // mulx2 = c2_stack
    mulrax = crypto_sign_ed25519_amd64_64_EC2D0; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D0
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(c2, c2, mulrax); // cf? c2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D1; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D1
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(c3, c3, mulc); // cf? c3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D2; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D2
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D3; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D3
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    add64_with_carry(mulr6, mulr6, mulrdx); // mulr6 += mulrdx + cf; 
    mulx3 = c3_stack;           // mulx3 = c3_stack
    mulrax = crypto_sign_ed25519_amd64_64_EC2D0; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D0
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(c3, c3, mulrax); // cf? c3 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D1; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D1
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D2; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D2
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(mulr5, mulr5, mulrax); // cf? mulr5 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr5, mulr5, mulc); // cf? mulr5 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = crypto_sign_ed25519_amd64_64_EC2D3; // mulrax = *(uint64 *) &crypto_sign_ed25519_amd64_64_EC2D3
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
    c0_stack = c0;              // c0_stack = c0
    c1_stack = c1;              // c1_stack = c1
    c2_stack = c2;              // c2_stack = c2
    c3_stack = c3;              // c3_stack = c3
    mulr4 = 0;                  // mulr4 = 0
    mulr5 = 0;                  // mulr5 = 0
    mulr6 = 0;                  // mulr6 = 0
    mulr7 = 0;                  // mulr7 = 0
    mulx0 = pp[8];              // mulx0 = *(uint64 *) (pp + 64)
    mulrax = qp[8];             // mulrax = *(uint64 *) (qp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    rt0 = mulrax;               // rt0 = mulrax
    rt1 = mulrdx;               // rt1 = mulrdx
    mulrax = qp[9];             // mulrax = *(uint64 *) (qp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rt1, rt1, mulrax); // cf? rt1 += mulrax
    rt2 = 0;                    // rt2 = 0
    add64_with_carry(rt2, rt2, mulrdx); // rt2 += mulrdx + cf; 
    mulrax = qp[10];            // mulrax = *(uint64 *) (qp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rt2, rt2, mulrax); // cf? rt2 += mulrax
    rt3 = 0;                    // rt3 = 0
    add64_with_carry(rt3, rt3, mulrdx); // rt3 += mulrdx + cf; 
    mulrax = qp[11];            // mulrax = *(uint64 *) (qp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx0); // (uint128) mulrdx mulrax = mulrax * mulx0
    add64_and_set_carry(rt3, rt3, mulrax); // cf? rt3 += mulrax
    add64_with_carry(mulr4, mulr4, mulrdx); // mulr4 += mulrdx + cf; 
    mulx1 = pp[9];              // mulx1 = *(uint64 *) (pp + 72)
    mulrax = qp[8];             // mulrax = *(uint64 *) (qp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rt1, rt1, mulrax); // cf? rt1 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[9];             // mulrax = *(uint64 *) (qp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rt2, rt2, mulrax); // cf? rt2 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rt2, rt2, mulc); // cf? rt2 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[10];            // mulrax = *(uint64 *) (qp + 80)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(rt3, rt3, mulrax); // cf? rt3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rt3, rt3, mulc); // cf? rt3 += mulc
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[11];            // mulrax = *(uint64 *) (qp + 88)
    multiply128(mulrdx, mulrax, mulrax, mulx1); // (uint128) mulrdx mulrax = mulrax * mulx1
    add64_and_set_carry(mulr4, mulr4, mulrax); // cf? mulr4 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(mulr4, mulr4, mulc); // cf? mulr4 += mulc
    add64_with_carry(mulr5, mulr5, mulrdx); // mulr5 += mulrdx + cf; 
    mulx2 = pp[10];             // mulx2 = *(uint64 *) (pp + 80)
    mulrax = qp[8];             // mulrax = *(uint64 *) (qp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rt2, rt2, mulrax); // cf? rt2 += mulrax
    mulc = 0;                   // mulc = 0
    add64_with_carry(mulc, mulc, mulrdx); // mulc += mulrdx + cf; 
    mulrax = qp[9];             // mulrax = *(uint64 *) (qp + 72)
    multiply128(mulrdx, mulrax, mulrax, mulx2); // (uint128) mulrdx mulrax = mulrax * mulx2
    add64_and_set_carry(rt3, rt3, mulrax); // cf? rt3 += mulrax
    add64_with_carry(mulrdx, mulrdx, 0); // mulrdx += 0 + cf; 
    add64_and_set_carry(rt3, rt3, mulc); // cf? rt3 += mulc
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
    mulx3 = pp[11];             // mulx3 = *(uint64 *) (pp + 88)
    mulrax = qp[8];             // mulrax = *(uint64 *) (qp + 64)
    multiply128(mulrdx, mulrax, mulrax, mulx3); // (uint128) mulrdx mulrax = mulrax * mulx3
    add64_and_set_carry(rt3, rt3, mulrax); // cf? rt3 += mulrax
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
    add64_and_set_carry(rt0, rt0, rt0); // cf? rt0 += rt0
    add64_with_carry_and_set_carry(rt1, rt1, rt1); // cf? rt1 += rt1 + cf; 
    add64_with_carry_and_set_carry(rt2, rt2, rt2); // cf? rt2 += rt2 + cf; 
    add64_with_carry_and_set_carry(rt3, rt3, rt3); // cf? rt3 += rt3 + cf; 
    addt0 = 0;                  // addt0 = 0
    addt1 = 38;                 // addt1 = 38
    if (!carry) {
        addt1 = addt0;
    }                           // addt1 = addt0 if !carry; 
    add64_and_set_carry(rt0, rt0, addt1); // cf? rt0 += addt1
    add64_with_carry_and_set_carry(rt1, rt1, addt0); // cf? rt1 += addt0 + cf; 
    add64_with_carry_and_set_carry(rt2, rt2, addt0); // cf? rt2 += addt0 + cf; 
    add64_with_carry_and_set_carry(rt3, rt3, addt0); // cf? rt3 += addt0 + cf; 
    if (carry) {
        addt0 = addt1;
    }                           // addt0 = addt1 if carry; 
    rt0 += addt0;               // rt0 += addt0
    rz0 = rt0;                  // rz0 = rt0
    rz1 = rt1;                  // rz1 = rt1
    rz2 = rt2;                  // rz2 = rt2
    rz3 = rt3;                  // rz3 = rt3
    add64_and_set_carry(rz0, rz0, c0_stack); // cf? rz0 += c0_stack
    add64_with_carry_and_set_carry(rz1, rz1, c1_stack); // cf? rz1 += c1_stack + cf; 
    add64_with_carry_and_set_carry(rz2, rz2, c2_stack); // cf? rz2 += c2_stack + cf; 
    add64_with_carry_and_set_carry(rz3, rz3, c3_stack); // cf? rz3 += c3_stack + cf; 
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
    sub64_and_set_carry(rt0, rt0, c0_stack); // cf? rt0 -= c0_stack
    sub64_with_carry_and_set_carry(rt1, rt1, c1_stack); // cf? rt1 -= c1_stack - cf; 
    sub64_with_carry_and_set_carry(rt2, rt2, c2_stack); // cf? rt2 -= c2_stack - cf; 
    sub64_with_carry_and_set_carry(rt3, rt3, c3_stack); // cf? rt3 -= c3_stack - cf; 
    subt0 = 0;                  // subt0 = 0
    subt1 = 38;                 // subt1 = 38
    if (!carry) {
        subt1 = subt0;
    }                           // subt1 = subt0 if !carry; 
    sub64_and_set_carry(rt0, rt0, subt1); // cf? rt0 -= subt1
    sub64_with_carry_and_set_carry(rt1, rt1, subt0); // cf? rt1 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(rt2, rt2, subt0); // cf? rt2 -= subt0 - cf; 
    sub64_with_carry_and_set_carry(rt3, rt3, subt0); // cf? rt3 -= subt0 - cf; 
    if (carry) {
        subt0 = subt1;
    }                           // subt0 = subt1 if carry; 
    rt0 -= subt0;               // rt0 -= subt0
    rp[4] = rz0;                // *(uint64 *) (rp + 32) = rz0
    rp[5] = rz1;                // *(uint64 *) (rp + 40) = rz1
    rp[6] = rz2;                // *(uint64 *) (rp + 48) = rz2
    rp[7] = rz3;                // *(uint64 *) (rp + 56) = rz3
    rp[12] = rt0;               // *(uint64 *) (rp + 96) = rt0
    rp[13] = rt1;               // *(uint64 *) (rp + 104) = rt1
    rp[14] = rt2;               // *(uint64 *) (rp + 112) = rt2
    rp[15] = rt3;               // *(uint64 *) (rp + 120) = rt3
    return;
}
