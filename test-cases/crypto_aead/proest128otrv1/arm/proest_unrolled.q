int32 input_0
int32 input_1
int32 input_2
int32 input_3
int32 caller_r4
int32 caller_r5
int32 caller_r6
int32 caller_r7
int32 caller_r8
int32 caller_r9
int32 caller_r10
int32 caller_r11
int32 caller_r12
int32 caller_r14
reg128 caller_q4
reg128 caller_q5
reg128 caller_q6
reg128 caller_q7
startcode
int32 x_0_1
int32 x_2_3
int32 x_4_5
int32 x_6_7
int32 x_8_9
int32 x_10_11
int32 x_11
int32 x_12_13
int32 x_14_15
int32 bits_0
int32 bits_1
int32 bits_2
int32 bits_3
int32 bits_4
int32 bits_5
int32 bits_6
int32 bits_7
int32 bits_8
int32 bits_9
int32 bits_10
int32 bits_11
int32 bits_12
int32 bits_13
int32 bits_14
int32 bits_15
int32 t1
int32 t2
int32 t3
int32 t4
int32 t5shifted
int32 t6shifted
int32 t7
int32 t8
int32 t8shifted
int32 t9
int32 t10shifted
int32 t8_t11
int32 t11
int32 t12
int32 t13
int32 t14
int32 t15shifted
int32 t16
int32 t17shifted
int32 t18
int32 t19
int32 t20
int32 t21
int32 t22
int32 t23
int32 t24
int32 t25
int32 t26
int32 t27
int32 t28
int32 t28shifted
int32 t29
int32 t30
int32 t31shifted
int32 t32
int32 t33
int32 t34
int32 y0
int32 y1
int32 y2
int32 y3
int32 y4
int32 y5
int32 y6
int32 y7
int32 y8
int32 y9
int32 y10
int32 y11
int32 y12
int32 y13
int32 y14
int32 y15
int32 x_1_0
int32 x_1_1
int32 x_1_2
int32 x_1_3
int32 x_2_0
int32 x_2_1
int32 x_2_2
int32 mx_2_3
int32 x_3_0
int32 x_3_1
int32 x_3_2
int32 x_3_3
int32 x
int32 y
int32 z
int32 roundcounter
int32 c1
int32 c2
int32 offset
enter ARM_ASM_proest_unrolled
    offset = input_0 + 52
    storesp[input_0 + 88]
    mem288[offset] = caller_r4 caller_r5 caller_r6 caller_r7 caller_r8 caller_r9 caller_r10 caller_r11 caller_r14
    assign r13 to roundcounter
    roundcounter = 32  
    proest_beginning:
    assign r1 r2 r3 r12 to x_0_1 x_2_3 x_4_5 x_6_7 = mem128[input_0]
    mem16[input_0 + 92] = roundcounter
    bits_0 = x_0_1 & (x_0_1 unsigned>> 16)
    bits_0 ^= x_2_3
    mem16[input_0] = bits_0; input_0 += 2
    bits_1 = x_2_3 & (x_0_1 unsigned>> 16)
    bits_1 ^= (x_2_3 unsigned>> 16)
    mem16[input_0] = bits_1; input_0 += 2
    bits_2 = bits_0 & bits_1
    bits_2 ^= x_0_1
    mem16[input_0] = bits_2; input_0 += 2
    bits_3 = bits_1 & bits_2
    bits_3 ^= (x_0_1 unsigned>> 16)
    mem16[input_0] = bits_3; input_0 += 2
    bits_4 = x_4_5 & (x_4_5 unsigned>> 16)
    bits_4 ^= x_6_7
    mem16[input_0] = bits_4; input_0 += 8
    bits_5 = x_6_7 & (x_4_5 unsigned>> 16)
    bits_5 ^= (x_6_7 unsigned>> 16)
    bits_6 = bits_4 & bits_5
    bits_6 ^= x_4_5
    assign r4 r5 r6 r7 to x_8_9 x_10_11 x_12_13 x_14_15 = mem128[input_0]
    input_0 -= 16
    bits_7 = bits_5 & bits_6
    bits_7 ^= (x_4_5 unsigned>> 16)
    mem16[input_0 + 10] = bits_5
    mem16[input_0 + 12] = bits_6
    mem16[input_0 + 14] = bits_7
    bits_8 = x_8_9 & (x_8_9 unsigned>> 16)
    bits_8 ^= x_10_11
    mem16[input_0 + 16] = bits_8
    bits_9 = x_10_11 & (x_8_9 unsigned>> 16)
    bits_9 ^= (x_10_11 unsigned>> 16)
    mem16[input_0 + 18] = bits_9
    bits_10 = bits_8 & bits_9
    bits_10 ^= x_8_9
    mem16[input_0 + 20] = bits_10
    bits_11 = bits_9 & bits_10
    bits_11 ^= (x_8_9 unsigned>> 16)
    mem16[input_0 + 22] = bits_11
    bits_12 = x_12_13 & (x_12_13 unsigned>> 16)
    bits_12 ^= x_14_15
    mem16[input_0 + 24] = bits_12
    bits_13 = x_14_15 & (x_12_13 unsigned>> 16)
    bits_13 ^= (x_14_15 unsigned>> 16)
    mem16[input_0 + 26] = bits_13
    bits_14 = bits_12 & bits_13
    bits_14 ^= x_12_13
    mem16[input_0 + 28] = bits_14
    assign r1 r2 r3 to x_0_1 x_2_3 x_4_5 = mem96[input_0]
    bits_15 = bits_13 & bits_14
    bits_15 ^= (x_12_13 unsigned>> 16)
    mem16[input_0 + 30] = bits_15
    assign r6 r7 to x_8_9 x_10_11 = mem64[input_0 + 16]
    assign r4 r5 to x_12_13 x_14_15 = mem64[input_0 + 24]
    t1 = x_0_1 ^ x_4_5
    t3 = t1 ^ bits_14
    t5shifted = x_8_9 ^ x_4_5
    y14 = t3 ^ (t5shifted unsigned>> 16)
    mem16[input_0 + 34] = y14
    t12 = x_10_11 ^ t3
    t2 = x_12_13 ^ x_8_9
    mem16[input_0 + 32] = t2
    t4 = t2 ^ x_2_3
    x_6_7 = mem32[input_0 + 12]
    y2 = t4 ^ (t5shifted unsigned>> 16)
    mem16[input_0 + 4] = y2
    t10shifted = x_0_1 ^ x_10_11
    t14 = x_6_7 ^ t4
    t19 = x_4_5 ^ (t10shifted unsigned>> 16)
    t11 = x_12_13 ^ (x_14_15 unsigned>> 16)
    y1 = t19 ^ t11
    mem16[input_0 + 48] = t11
    mem16[input_0 + 2] = y1
    t21 = t12 ^ (x_2_3 unsigned>> 16)
    t13 = x_8_9 ^ (x_10_11 unsigned>> 16)
    y4 = t13 ^ t21
    mem16[input_0 + 36] = y4
    t6shifted = x_0_1 ^ x_12_13
    t22 = x_10_11 ^ (t6shifted unsigned>> 16)
    y10 = t1 ^ t22
    mem16[input_0 + 38] = y10
    x_6_7 = mem32[input_0 + 12]
    t9 = x_2_3 ^ x_14_15
    t23 = t9 ^ (x_8_9 unsigned>> 16)
    t8shifted = x_6_7 ^ x_12_13
    mem32[input_0 + 44] = t8shifted 
    y7 = t23 ^ (t8shifted unsigned>> 16)
    mem16[input_0 + 14] = y7
    t24 = t23 ^ (t10shifted unsigned>> 16)
    x_4_5 = mem32[input_0 + 8] 
    y11 = t24 ^ (t5shifted unsigned>> 16)
    t25 = x_0_1 ^ t13
    t15shifted = x_4_5 ^ x_14_15
    mem16[input_0 + 40] = y11
    y5 = t25 ^ (t15shifted unsigned>> 16)
    t17shifted = x_2_3 ^ x_8_9
    mem16[input_0 + 10] = y5
    t26 = x_12_13 ^ (t17shifted unsigned>> 16)
    t18 = x_4_5 ^ (x_6_7 unsigned>> 16)
    y9 = t18 ^ t26
    mem16[input_0 + 44] = t18
    mem16[input_0 + 18] = y9
    t2 = mem16[input_0 + 32]
    x_10_11 = mem32[input_0 + 20]
    t8_t11 = mem32[input_0 + 46]
    t27 = t2 ^ t22
    t16 = x_6_7 ^ x_10_11
    t28shifted = t8_t11 ^ x_6_7
    y6 = t16 ^ t27
    y0 = t12 ^ (t28shifted unsigned>> 16)
    mem16[input_0 + 0] = y0
    t30 = x_8_9 ^ t8_t11
    t7 = x_0_1 ^ (x_2_3 unsigned>> 16)
    y13 = t7 ^ t30
    t31shifted = t17shifted ^ x_12_13
    y3 = t16 ^ (t31shifted unsigned>> 16)
    mem16[input_0 + 6] = y3
    t32 = t16 ^ (x_0_1 unsigned>> 16)
    y15 = t32 ^ (t15shifted unsigned>> 16)
    t18 = mem16[input_0 + 44]
    t33 = t14 ^ (x_14_15 unsigned>> 16)
    y8 = t18 ^ t33
    t34 = t14 ^ (x_10_11 unsigned>> 16)
    y12 = t34 ^ t7
    x = 0xffff
    x_1_0 = mem16[input_0 + 36]
    x_1_1 = mem16[input_0 + 10]
    x_1_2 = y6 & x
    x_1_3 = mem16[input_0 + 14]
    x_1_0 |= (x_1_0 << 16)
    x_1_1 |= (x_1_1 << 16)
    x_1_2 |= (x_1_2 << 16)
    x_1_3 |= (x_1_3 << 16)
    x_1_0 >>>= 2
    x_1_1 >>>= 2
    x_1_2 >>>= 2
    x_1_3 >>>= 2
    x_2_0 = y8 & x
    x_2_1 = mem16[input_0 + 18]
    x_2_2 = mem16[input_0 + 38]
    mx_2_3 = mem16[input_0 + 40] 
    x_2_0 |= (x_2_0 << 16)
    x_2_1 |= (x_2_1 << 16)
    x_2_2 |= (x_2_2 << 16)
    mx_2_3 |= (mx_2_3 << 16)
    x_2_0 >>>= 4
    x_2_1 >>>= 4
    x_2_2 >>>= 4
    mx_2_3 >>>= 4
    x_3_0 = y12 & x
    x_3_1 = y13 & x
    x_3_2 = mem16[input_0 + 34]
    x_3_3 = y15 & x
    x_3_0 |= (x_3_0 << 16)
    x_3_1 |= (x_3_1 << 16)
    x_3_2 |= (x_3_2 << 16)
    x_3_3 |= (x_3_3 << 16)
    x_3_0 >>>= 6
    x_3_1 >>>= 6
    x_3_2 >>>= 6
    x_3_3 >>>= 6
    mem16[input_0 + 24] = x_3_0
    mem16[input_0 + 28] = x_3_2
    mem16[input_0 + 30] = x_3_3
    roundcounter = mem16[input_0 + 92]
    assign r2 r3 to x_0_1 x_2_3 = mem64[input_0 + 0]
    c1 = 0x75817581
    c2 = 0x658b658b 
    c1 >>>= roundcounter
    c2 >>>= roundcounter
    y = c2 ^ (x_0_1 unsigned>> 16)
    x_0_1 ^= c1
    c2 >>>= 30
    mem16[input_0 + 0] = x_0_1
    mem16[input_0 + 2] = y
    y = c2 ^ (x_2_3 unsigned>> 16)
    x_2_3 ^= (c1 >>> 30)
    mem16[input_0 + 4] = x_2_3
    mem16[input_0 + 6] = y
    y = x_1_1 ^ (c2 >>> 30)
    x_1_0 ^= (c1 >>> 28)
    mem16[input_0 + 8] = x_1_0
    mem16[input_0 + 10] = y
    y = x_1_3 ^ (c2 >>> 28)
    x = x_1_2 ^ (c1 >>> 26)
    mem16[input_0 + 12] = x
    mem16[input_0 + 14] = y
    x_12_13 = mem32[input_0 + 24]
    x_14_15 = mem32[input_0 + 28]
    y = x_2_1 ^ (c2 >>> 26)
    x = x_2_0 ^ (c1 >>> 24)
    mem16[input_0 + 16] = x
    mem16[input_0 + 18] = y
    y = mx_2_3 ^ (c2 >>> 24)
    x = x_2_2 ^ (c1 >>> 22)
    mem16[input_0 + 20] = x
    mem16[input_0 + 22] = y
    y = x_3_1 ^ (c2 >>> 22)
    x = x_12_13 ^ (c1 >>> 20)
    c2 >>>= 20
    mem16[input_0 + 24] = x
    mem16[input_0 + 26] = y
    assign r1 r2 r3 r12 to x_0_1 x_2_3 x_4_5 x_6_7 = mem128[input_0]
    y = c2 ^ (x_14_15 unsigned>> 16)
    x = x_14_15 ^ (c1 >>> 18)
    mem16[input_0 + 28] = x
    mem16[input_0 + 30] = y
    bits_0 = x_0_1 & (x_0_1 unsigned>> 16)
    bits_0 ^= x_2_3
    mem16[input_0] = bits_0; input_0 += 2
    bits_1 = x_2_3 & (x_0_1 unsigned>> 16)
    bits_1 ^= (x_2_3 unsigned>> 16)
    mem16[input_0] = bits_1; input_0 += 2
    bits_2 = bits_0 & bits_1
    bits_2 ^= x_0_1
    mem16[input_0] = bits_2; input_0 += 2
    bits_3 = bits_1 & bits_2
    bits_3 ^= (x_0_1 unsigned>> 16)
    mem16[input_0] = bits_3; input_0 += 2
    bits_4 = x_4_5 & (x_4_5 unsigned>> 16)
    bits_4 ^= x_6_7
    mem16[input_0] = bits_4; input_0 += 8
    bits_5 = x_6_7 & (x_4_5 unsigned>> 16)
    bits_5 ^= (x_6_7 unsigned>> 16)
    bits_6 = bits_4 & bits_5
    bits_6 ^= x_4_5
    assign r4 r5 r6 r7 to x_8_9 x_10_11 x_12_13 x_14_15 = mem128[input_0]
    input_0 -= 16
    bits_7 = bits_5 & bits_6
    bits_7 ^= (x_4_5 unsigned>> 16)
    mem16[input_0 + 10] = bits_5
    mem16[input_0 + 12] = bits_6
    mem16[input_0 + 14] = bits_7
    bits_8 = x_8_9 & (x_8_9 unsigned>> 16)
    bits_8 ^= x_10_11
    mem16[input_0 + 16] = bits_8
    bits_9 = x_10_11 & (x_8_9 unsigned>> 16)
    bits_9 ^= (x_10_11 unsigned>> 16)
    mem16[input_0 + 18] = bits_9
    bits_10 = bits_8 & bits_9
    bits_10 ^= x_8_9
    mem16[input_0 + 20] = bits_10
    bits_11 = bits_9 & bits_10
    bits_11 ^= (x_8_9 unsigned>> 16)
    mem16[input_0 + 22] = bits_11
    bits_12 = x_12_13 & (x_12_13 unsigned>> 16)
    bits_12 ^= x_14_15
    mem16[input_0 + 24] = bits_12
    bits_13 = x_14_15 & (x_12_13 unsigned>> 16)
    bits_13 ^= (x_14_15 unsigned>> 16)
    mem16[input_0 + 26] = bits_13
    bits_14 = bits_12 & bits_13
    bits_14 ^= x_12_13
    mem16[input_0 + 28] = bits_14
    assign r1 r2 r3 to x_0_1 x_2_3 x_4_5 = mem96[input_0]
    bits_15 = bits_13 & bits_14
    bits_15 ^= (x_12_13 unsigned>> 16)
    mem16[input_0 + 30] = bits_15
    assign r6 r7 to x_8_9 x_10_11 = mem64[input_0 + 16]
    assign r4 r5 to x_12_13 x_14_15 = mem64[input_0 + 24]
    t1 = x_0_1 ^ x_4_5
    t3 = t1 ^ bits_14
    t5shifted = x_8_9 ^ x_4_5
    y14 = t3 ^ (t5shifted unsigned>> 16)
    mem16[input_0 + 34] = y14
    t12 = x_10_11 ^ t3
    t2 = x_12_13 ^ x_8_9
    mem16[input_0 + 32] = t2
    t4 = t2 ^ x_2_3
    x_6_7 = mem32[input_0 + 12]
    y2 = t4 ^ (t5shifted unsigned>> 16)
    mem16[input_0 + 4] = y2
    t10shifted = x_0_1 ^ x_10_11
    t14 = x_6_7 ^ t4
    t19 = x_4_5 ^ (t10shifted unsigned>> 16)
    t11 = x_12_13 ^ (x_14_15 unsigned>> 16)
    y1 = t19 ^ t11
    mem16[input_0 + 48] = t11
    mem16[input_0 + 2] = y1
    t21 = t12 ^ (x_2_3 unsigned>> 16)
    t13 = x_8_9 ^ (x_10_11 unsigned>> 16)
    y4 = t13 ^ t21
    mem16[input_0 + 36] = y4
    t6shifted = x_0_1 ^ x_12_13
    t22 = x_10_11 ^ (t6shifted unsigned>> 16)
    y10 = t1 ^ t22
    mem16[input_0 + 38] = y10
    x_6_7 = mem32[input_0 + 12]
    t9 = x_2_3 ^ x_14_15
    t23 = t9 ^ (x_8_9 unsigned>> 16)
    t8shifted = x_6_7 ^ x_12_13
    mem32[input_0 + 44] = t8shifted 
    y7 = t23 ^ (t8shifted unsigned>> 16)
    mem16[input_0 + 14] = y7
    t24 = t23 ^ (t10shifted unsigned>> 16)
    x_4_5 = mem32[input_0 + 8] 
    y11 = t24 ^ (t5shifted unsigned>> 16)
    t25 = x_0_1 ^ t13
    t15shifted = x_4_5 ^ x_14_15
    mem16[input_0 + 40] = y11
    y5 = t25 ^ (t15shifted unsigned>> 16)
    t17shifted = x_2_3 ^ x_8_9
    mem16[input_0 + 10] = y5
    t26 = x_12_13 ^ (t17shifted unsigned>> 16)
    t18 = x_4_5 ^ (x_6_7 unsigned>> 16)
    y9 = t18 ^ t26
    mem16[input_0 + 44] = t18
    mem16[input_0 + 18] = y9
    t2 = mem16[input_0 + 32]
    x_10_11 = mem32[input_0 + 20]
    t8_t11 = mem32[input_0 + 46]
    t27 = t2 ^ t22
    t16 = x_6_7 ^ x_10_11
    t28shifted = t8_t11 ^ x_6_7
    y6 = t16 ^ t27
    y0 = t12 ^ (t28shifted unsigned>> 16)
    mem16[input_0 + 0] = y0
    t30 = x_8_9 ^ t8_t11
    t7 = x_0_1 ^ (x_2_3 unsigned>> 16)
    y13 = t7 ^ t30
    t31shifted = t17shifted ^ x_12_13
    y3 = t16 ^ (t31shifted unsigned>> 16)
    mem16[input_0 + 6] = y3
    t32 = t16 ^ (x_0_1 unsigned>> 16)
    y15 = t32 ^ (t15shifted unsigned>> 16)
    t18 = mem16[input_0 + 44]
    t33 = t14 ^ (x_14_15 unsigned>> 16)
    y8 = t18 ^ t33
    t34 = t14 ^ (x_10_11 unsigned>> 16)
    y12 = t34 ^ t7
    x = 0xffff
    x_1_0 = mem16[input_0 + 36] 
    x_1_1 = mem16[input_0 + 10]
    x_1_2 = y6 & x
    x_1_3 = mem16[input_0 + 14]
    x_1_0 |= (x_1_0 << 16)
    x_1_1 |= (x_1_1 << 16)
    x_1_2 |= (x_1_2 << 16)
    x_1_3 |= (x_1_3 << 16)
    x_1_0 >>>= 1
    x_1_1 >>>= 1
    x_1_2 >>>= 1
    x_1_3 >>>= 1
    x_2_0 = y8 & x
    x_2_1 = mem16[input_0 + 18]
    x_2_2 = mem16[input_0 + 38] 
    mx_2_3 = mem16[input_0 + 40] 
    x_2_0 |= (x_2_0 << 16)
    x_2_1 |= (x_2_1 << 16)
    x_2_2 |= (x_2_2 << 16)
    mx_2_3 |= (mx_2_3 << 16)
    x_2_0 >>>= 8
    x_2_1 >>>= 8
    x_2_2 >>>= 8
    mx_2_3 >>>= 8
    x_3_0 = y12 & x
    x_3_1 = y13 & x
    x_3_2 = mem16[input_0 + 34]
    x_3_3 = y15 & x
    x_3_0 |= (x_3_0 << 16)
    x_3_1 |= (x_3_1 << 16)
    x_3_2 |= (x_3_2 << 16)
    x_3_3 |= (x_3_3 << 16)
    x_3_0 >>>= 9
    x_3_1 >>>= 9
    x_3_2 >>>= 9
    x_3_3 >>>= 9
    mem16[input_0 + 24] = x_3_0
    mem16[input_0 + 28] = x_3_2
    mem16[input_0 + 30] = x_3_3
    roundcounter = mem16[input_0 + 92]
    assign r2 r3 to x_0_1 x_2_3 = mem64[input_0 + 0]
    c1 = 0xeb02eb02
    c2 = 0xcb16cb16 
    c1 >>>= roundcounter
    c2 >>>= roundcounter
    y = c2 ^ (x_0_1 unsigned>> 16)
    x_0_1 ^= c1
    c2 >>>= 30
    mem16[input_0 + 0] = x_0_1
    mem16[input_0 + 2] = y
    y = c2 ^ (x_2_3 unsigned>> 16)
    x_2_3 ^= (c1 >>> 30)
    mem16[input_0 + 4] = x_2_3
    mem16[input_0 + 6] = y
    y = x_1_1 ^ (c2 >>> 30)
    x_1_0 ^= (c1 >>> 28)
    mem16[input_0 + 8] = x_1_0
    mem16[input_0 + 10] = y
    y = x_1_3 ^ (c2 >>> 28)
    x = x_1_2 ^ (c1 >>> 26)
    mem16[input_0 + 12] = x
    mem16[input_0 + 14] = y
    x_12_13 = mem32[input_0 + 24]
    x_14_15 = mem32[input_0 + 28]
    y = x_2_1 ^ (c2 >>> 26)
    x = x_2_0 ^ (c1 >>> 24)
    mem16[input_0 + 16] = x
    mem16[input_0 + 18] = y
    y = mx_2_3 ^ (c2 >>> 24)
    x = x_2_2 ^ (c1 >>> 22)
    mem16[input_0 + 20] = x
    mem16[input_0 + 22] = y
    y = x_3_1 ^ (c2 >>> 22)
    x = x_12_13 ^ (c1 >>> 20)
    c2 >>>= 20
    mem16[input_0 + 24] = x
    mem16[input_0 + 26] = y
    roundcounter = mem16[input_0 + 92]
    y = c2 ^ (x_14_15 unsigned>> 16)
    x = x_14_15 ^ (c1 >>> 18)
    mem16[input_0 + 28] = x
    mem16[input_0 + 30] = y
    roundcounter -= 2
    =? roundcounter - 16
    goto proest_beginning if !=
    offset = input_0 + 52
    loadsp[input_0 + 88]
    caller_r4 caller_r5 caller_r6 caller_r7 caller_r8 caller_r9 caller_r10 caller_r11 caller_r14 = mem288[offset]
return
