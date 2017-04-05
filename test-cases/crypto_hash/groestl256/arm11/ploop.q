int32 input_0
int32 input_1
int32 input_2
int32 input_3
stack32 input_4
stack32 input_5
stack32 input_6
stack32 input_7
int32 caller_r4
int32 caller_r5
int32 caller_r6
int32 caller_r7
int32 caller_r8
int32 caller_r9
int32 caller_r10
int32 caller_r11
int32 caller_r14
reg128 caller_q4
reg128 caller_q5
reg128 caller_q6
reg128 caller_q7
startcode
int32 b0
int32 b1
int32 b2
int32 b3
int32 b4
int32 b5
int32 b6
int32 b7
int32 t00
int32 t01
int32 t10
int32 t11
int32 t20
int32 t21
int32 t30
int32 t31
int32 t40
int32 t41
int32 t50
int32 t51
int32 t60
int32 t61
int32 t70
int32 t71
int32 x0
int32 x1
int32 x2
int32 x3
int32 x4
int32 x5
int32 x6
int32 x7
int32 x8
int32 x9
int32 x10
int32 x11
int32 x12
int32 x13
int32 x14
int32 x15
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
int32 t
int32 c
stack512 y
int32 yp
stack32 caller_r4_stack
stack32 caller_r5_stack
stack32 caller_r6_stack
stack32 caller_r7_stack
stack32 caller_r8_stack
stack32 caller_r9_stack
stack32 caller_r10_stack
stack32 caller_r11_stack
stack32 caller_r14_stack
enter ploop
caller_r4_stack = caller_r4
caller_r5_stack = caller_r5
caller_r6_stack = caller_r6
caller_r7_stack = caller_r7
caller_r8_stack = caller_r8
caller_r9_stack = caller_r9
caller_r10_stack = caller_r10
caller_r11_stack = caller_r11
caller_r14_stack = caller_r14
c = 0
yp = &y
ploop:
  b0 = mem8[input_0 +0]
  b4 = mem8[input_0 +36]
  b1 = mem8[input_0 +9]
  b5 = mem8[input_0 +45]
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y0 y1 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y0 ^= t41
  y1 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[input_0 +18]
  b6 = mem8[input_0 +54]
  y0 ^= t10
  y1 ^= t11
  y0 ^= t51
  y1 ^= t50
  b3 = mem8[input_0 +27]
  b7 = mem8[input_0 +63]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y0 ^= t20
  y1 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y0 ^= t61
  y1 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y0 ^= t30
  y1 ^= t31
  y0 ^= t71
  y1 ^= t70
  assign r8 r9 to y0 y1;mem64[yp + 0] = y0 y1
  b0 = mem8[input_0 +8]
  b4 = mem8[input_0 +44]
  b1 = mem8[input_0 +17]
  b5 = mem8[input_0 +53]
  b0 ^= 0x10
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y2 y3 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y2 ^= t41
  y3 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[input_0 +26]
  b6 = mem8[input_0 +62]
  y2 ^= t10
  y3 ^= t11
  y2 ^= t51
  y3 ^= t50
  b3 = mem8[input_0 +35]
  b7 = mem8[input_0 +7]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y2 ^= t20
  y3 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y2 ^= t61
  y3 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y2 ^= t30
  y3 ^= t31
  y2 ^= t71
  y3 ^= t70
  assign r8 r9 to y2 y3;mem64[yp + 8] = y2 y3
  b0 = mem8[input_0 +16]
  b4 = mem8[input_0 +52]
  b1 = mem8[input_0 +25]
  b5 = mem8[input_0 +61]
  b0 ^= 0x20
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y4 y5 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y4 ^= t41
  y5 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[input_0 +34]
  b6 = mem8[input_0 +6]
  y4 ^= t10
  y5 ^= t11
  y4 ^= t51
  y5 ^= t50
  b3 = mem8[input_0 +43]
  b7 = mem8[input_0 +15]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y4 ^= t20
  y5 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y4 ^= t61
  y5 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y4 ^= t30
  y5 ^= t31
  y4 ^= t71
  y5 ^= t70
  assign r8 r9 to y4 y5;mem64[yp + 16] = y4 y5
  b0 = mem8[input_0 +24]
  b4 = mem8[input_0 +60]
  b1 = mem8[input_0 +33]
  b5 = mem8[input_0 +5]
  b0 ^= 0x30
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y6 y7 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y6 ^= t41
  y7 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[input_0 +42]
  b6 = mem8[input_0 +14]
  y6 ^= t10
  y7 ^= t11
  y6 ^= t51
  y7 ^= t50
  b3 = mem8[input_0 +51]
  b7 = mem8[input_0 +23]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y6 ^= t20
  y7 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y6 ^= t61
  y7 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y6 ^= t30
  y7 ^= t31
  y6 ^= t71
  y7 ^= t70
  assign r8 r9 to y6 y7;mem64[yp + 24] = y6 y7
  b0 = mem8[input_0 +32]
  b4 = mem8[input_0 +4]
  b1 = mem8[input_0 +41]
  b5 = mem8[input_0 +13]
  b0 ^= 0x40
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y8 y9 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y8 ^= t41
  y9 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[input_0 +50]
  b6 = mem8[input_0 +22]
  y8 ^= t10
  y9 ^= t11
  y8 ^= t51
  y9 ^= t50
  b3 = mem8[input_0 +59]
  b7 = mem8[input_0 +31]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y8 ^= t20
  y9 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y8 ^= t61
  y9 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y8 ^= t30
  y9 ^= t31
  y8 ^= t71
  y9 ^= t70
  assign r8 r9 to y8 y9;mem64[yp + 32] = y8 y9
  b0 = mem8[input_0 +40]
  b4 = mem8[input_0 +12]
  b1 = mem8[input_0 +49]
  b5 = mem8[input_0 +21]
  b0 ^= 0x50
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y10 y11 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y10 ^= t41
  y11 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[input_0 +58]
  b6 = mem8[input_0 +30]
  y10 ^= t10
  y11 ^= t11
  y10 ^= t51
  y11 ^= t50
  b3 = mem8[input_0 +3]
  b7 = mem8[input_0 +39]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y10 ^= t20
  y11 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y10 ^= t61
  y11 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y10 ^= t30
  y11 ^= t31
  y10 ^= t71
  y11 ^= t70
  assign r8 r9 to y10 y11;mem64[yp + 40] = y10 y11
  b0 = mem8[input_0 +48]
  b4 = mem8[input_0 +20]
  b1 = mem8[input_0 +57]
  b5 = mem8[input_0 +29]
  b0 ^= 0x60
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y12 y13 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y12 ^= t41
  y13 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[input_0 +2]
  b6 = mem8[input_0 +38]
  y12 ^= t10
  y13 ^= t11
  y12 ^= t51
  y13 ^= t50
  b3 = mem8[input_0 +11]
  b7 = mem8[input_0 +47]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y12 ^= t20
  y13 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y12 ^= t61
  y13 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y12 ^= t30
  y13 ^= t31
  y12 ^= t71
  y13 ^= t70
  assign r8 r9 to y12 y13;mem64[yp + 48] = y12 y13
  b0 = mem8[input_0 +56]
  b4 = mem8[input_0 +28]
  b1 = mem8[input_0 +1]
  b5 = mem8[input_0 +37]
  b0 ^= 0x70
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y14 y15 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y14 ^= t41
  y15 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[input_0 +10]
  b6 = mem8[input_0 +46]
  y14 ^= t10
  y15 ^= t11
  y14 ^= t51
  y15 ^= t50
  b3 = mem8[input_0 +19]
  b7 = mem8[input_0 +55]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y14 ^= t20
  y15 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y14 ^= t61
  y15 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y14 ^= t30
  y15 ^= t31
  y14 ^= t71
  y15 ^= t70
  assign r8 r9 to y14 y15;mem64[yp + 56] = y14 y15
c += 1
  b0 = mem8[yp +0]
  b4 = mem8[yp +36]
  b1 = mem8[yp +9]
  b5 = mem8[yp +45]
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y0 y1 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y0 ^= t41
  y1 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[yp +18]
  b6 = mem8[yp +54]
  y0 ^= t10
  y1 ^= t11
  y0 ^= t51
  y1 ^= t50
  b3 = mem8[yp +27]
  b7 = mem8[yp +63]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y0 ^= t20
  y1 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y0 ^= t61
  y1 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y0 ^= t30
  y1 ^= t31
  y0 ^= t71
  y1 ^= t70
  assign r8 r9 to y0 y1;mem64[input_0 + 0] = y0 y1
  b0 = mem8[yp +8]
  b4 = mem8[yp +44]
  b1 = mem8[yp +17]
  b5 = mem8[yp +53]
  b0 ^= 0x10
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y2 y3 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y2 ^= t41
  y3 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[yp +26]
  b6 = mem8[yp +62]
  y2 ^= t10
  y3 ^= t11
  y2 ^= t51
  y3 ^= t50
  b3 = mem8[yp +35]
  b7 = mem8[yp +7]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y2 ^= t20
  y3 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y2 ^= t61
  y3 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y2 ^= t30
  y3 ^= t31
  y2 ^= t71
  y3 ^= t70
  assign r8 r9 to y2 y3;mem64[input_0 + 8] = y2 y3
  b0 = mem8[yp +16]
  b4 = mem8[yp +52]
  b1 = mem8[yp +25]
  b5 = mem8[yp +61]
  b0 ^= 0x20
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y4 y5 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y4 ^= t41
  y5 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[yp +34]
  b6 = mem8[yp +6]
  y4 ^= t10
  y5 ^= t11
  y4 ^= t51
  y5 ^= t50
  b3 = mem8[yp +43]
  b7 = mem8[yp +15]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y4 ^= t20
  y5 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y4 ^= t61
  y5 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y4 ^= t30
  y5 ^= t31
  y4 ^= t71
  y5 ^= t70
  assign r8 r9 to y4 y5;mem64[input_0 + 16] = y4 y5
  b0 = mem8[yp +24]
  b4 = mem8[yp +60]
  b1 = mem8[yp +33]
  b5 = mem8[yp +5]
  b0 ^= 0x30
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y6 y7 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y6 ^= t41
  y7 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[yp +42]
  b6 = mem8[yp +14]
  y6 ^= t10
  y7 ^= t11
  y6 ^= t51
  y7 ^= t50
  b3 = mem8[yp +51]
  b7 = mem8[yp +23]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y6 ^= t20
  y7 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y6 ^= t61
  y7 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y6 ^= t30
  y7 ^= t31
  y6 ^= t71
  y7 ^= t70
  assign r8 r9 to y6 y7;mem64[input_0 + 24] = y6 y7
  b0 = mem8[yp +32]
  b4 = mem8[yp +4]
  b1 = mem8[yp +41]
  b5 = mem8[yp +13]
  b0 ^= 0x40
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y8 y9 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y8 ^= t41
  y9 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[yp +50]
  b6 = mem8[yp +22]
  y8 ^= t10
  y9 ^= t11
  y8 ^= t51
  y9 ^= t50
  b3 = mem8[yp +59]
  b7 = mem8[yp +31]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y8 ^= t20
  y9 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y8 ^= t61
  y9 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y8 ^= t30
  y9 ^= t31
  y8 ^= t71
  y9 ^= t70
  assign r8 r9 to y8 y9;mem64[input_0 + 32] = y8 y9
  b0 = mem8[yp +40]
  b4 = mem8[yp +12]
  b1 = mem8[yp +49]
  b5 = mem8[yp +21]
  b0 ^= 0x50
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y10 y11 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y10 ^= t41
  y11 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[yp +58]
  b6 = mem8[yp +30]
  y10 ^= t10
  y11 ^= t11
  y10 ^= t51
  y11 ^= t50
  b3 = mem8[yp +3]
  b7 = mem8[yp +39]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y10 ^= t20
  y11 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y10 ^= t61
  y11 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y10 ^= t30
  y11 ^= t31
  y10 ^= t71
  y11 ^= t70
  assign r8 r9 to y10 y11;mem64[input_0 + 40] = y10 y11
  b0 = mem8[yp +48]
  b4 = mem8[yp +20]
  b1 = mem8[yp +57]
  b5 = mem8[yp +29]
  b0 ^= 0x60
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y12 y13 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y12 ^= t41
  y13 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[yp +2]
  b6 = mem8[yp +38]
  y12 ^= t10
  y13 ^= t11
  y12 ^= t51
  y13 ^= t50
  b3 = mem8[yp +11]
  b7 = mem8[yp +47]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y12 ^= t20
  y13 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y12 ^= t61
  y13 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y12 ^= t30
  y13 ^= t31
  y12 ^= t71
  y13 ^= t70
  assign r8 r9 to y12 y13;mem64[input_0 + 48] = y12 y13
  b0 = mem8[yp +56]
  b4 = mem8[yp +28]
  b1 = mem8[yp +1]
  b5 = mem8[yp +37]
  b0 ^= 0x70
  b0 ^= c
  b0 = input_1 + (b0 << 5)
  b4 = input_1 + (b4 << 5)
  assign r8 r9 to y14 y15 = mem64[b0 + 0]
  assign r6 r7 to t40 t41 = mem64[b4 + 0]
  b1 = input_1 + (b1 << 5)
  b5 = input_1 + (b5 << 5)
  y14 ^= t41
  y15 ^= t40
  assign r4 r5 to t10 t11 = mem64[b1 + 8]
  assign r6 r7 to t50 t51 = mem64[b5 + 8]
  b2 = mem8[yp +10]
  b6 = mem8[yp +46]
  y14 ^= t10
  y15 ^= t11
  y14 ^= t51
  y15 ^= t50
  b3 = mem8[yp +19]
  b7 = mem8[yp +55]
  b2 = input_1 + (b2 << 5)
  b6 = input_1 + (b6 << 5)
  assign r4 r5 to t20 t21 = mem64[b2 + 16]
  assign r6 r7 to t60 t61 = mem64[b6 + 16]
  b3 = input_1 + (b3 << 5)
  b7 = input_1 + (b7 << 5)
  y14 ^= t20
  y15 ^= t21
  assign r4 r5 to t30 t31 = mem64[b3 + 24]
  y14 ^= t61
  y15 ^= t60
  assign r6 r7 to t70 t71 = mem64[b7 + 24]
  y14 ^= t30
  y15 ^= t31
  y14 ^= t71
  y15 ^= t70
  assign r8 r9 to y14 y15;mem64[input_0 + 56] = y14 y15
c += 1
=? c - 10
goto ploop if !=
caller_r4 = caller_r4_stack
caller_r5 = caller_r5_stack
caller_r6 = caller_r6_stack
caller_r7 = caller_r7_stack
caller_r8 = caller_r8_stack
caller_r9 = caller_r9_stack
caller_r10 = caller_r10_stack
caller_r11 = caller_r11_stack
caller_r14 = caller_r14_stack
return
