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
int32 B
int32 Xrep
int32 X
int32 nextseq
int32 a
int32 b
int32 c
int32 d
int32 u
int32 v
int32 w
int32 y
int32 z
int32 temp0
int32 temp1
int32 mask
int32 x0
int32 x1
int32 x2
int32 x3
int32 x4
int32 x5
int32 x6
int32 x7
int32 c0
int32 c1
stack32 caller_r4_stack
stack32 caller_r5_stack
stack32 caller_r6_stack
stack32 caller_r7_stack
stack32 caller_r8_stack
stack32 caller_r9_stack
stack32 caller_r10_stack
stack32 caller_r11_stack
stack32 caller_r14_stack
stack32 mask1
stack32 mask2
stack32 mask4
stack32 mask8
stack32 nextseq_stack
stack32 B_stack
stack32 Xrep_stack
stack64 T0
stack64 T1
stack64 T2
stack64 T3
stack64 T4
stack64 T5
stack64 T6
stack64 T7
enter loopcompress
caller_r4_stack = caller_r4
caller_r5_stack = caller_r5
caller_r6_stack = caller_r6
caller_r7_stack = caller_r7
caller_r8_stack = caller_r8
caller_r9_stack = caller_r9
caller_r10_stack = caller_r10
caller_r11_stack = caller_r11
caller_r14_stack = caller_r14
nextseq = input_3
B = input_0
Xrep = input_1
X = input_2
y = mem32[nextseq -16]
z = mem32[nextseq -12]
v = mem32[nextseq -8]
w = mem32[nextseq -4]
mask1 = y
mask2 = z
mask4 = v
mask8 = w
nextseq_stack = nextseq
_f8:
signed>? Xrep - 0
goto _end_f8 if !signed>
Xrep_stack = Xrep
nextseq = nextseq_stack
assign r0 r1 to x0 x1 = mem64[X+0]
assign r4 r5 to x4 x5 = mem64[B+0]
assign r6 r7 to x6 x7 = mem64[B+32]
assign r2 r3 to x2 x3 = mem64[X+32]
x0 ^= x4
x1 ^= x6
assign r0 r1 to x0 x1; mem64[X+0] = x0 x1
x2 ^= x5
x3 ^= x7
assign r2 r3 to x2 x3; mem64[X+32] = x2 x3
assign r0 r1 to x0 x1 = mem64[X+64]
assign r4 r5 to x4 x5 = mem64[B+8]
assign r6 r7 to x6 x7 = mem64[B+40]
assign r2 r3 to x2 x3 = mem64[X+96]
x0 ^= x4
x1 ^= x6
assign r0 r1 to x0 x1; mem64[X+64] = x0 x1
x2 ^= x5
x3 ^= x7
assign r2 r3 to x2 x3; mem64[X+96] = x2 x3
assign r0 r1 to x0 x1 = mem64[X+16]
assign r4 r5 to x4 x5 = mem64[B+16]
assign r6 r7 to x6 x7 = mem64[B+48]
assign r2 r3 to x2 x3 = mem64[X+48]
x0 ^= x4
x1 ^= x6
assign r0 r1 to x0 x1; mem64[X+16] = x0 x1
x2 ^= x5
x3 ^= x7
assign r2 r3 to x2 x3; mem64[X+48] = x2 x3
assign r0 r1 to x0 x1 = mem64[X+80]
assign r4 r5 to x4 x5 = mem64[B+24]
assign r6 r7 to x6 x7 = mem64[B+56]
assign r2 r3 to x2 x3 = mem64[X+112]
x0 ^= x4
x1 ^= x6
assign r0 r1 to x0 x1; mem64[X+80] = x0 x1
x2 ^= x5
x3 ^= x7
assign r2 r3 to x2 x3; mem64[X+112] = x2 x3
B_stack = B
assign r2 r3 to x4 x6 = mem64[X+8]
assign r0 r1 to x0 x2 = mem64[X+0]
_7rounds:
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
assign r6 r7 to x5 x7 = mem64[X+24]
assign r4 r5 to x1 x3 = mem64[X+16]
      =? c0 - c1
      goto _end_e8 if =
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      mask = mask1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 1)
      x1= mask & x1
      z = mask & (x3 << 1)
      x1= y | (x1 unsigned>> 1)
      x3= mask & x3
      y = mask & (x5 << 1)
      x3= z | (x3 unsigned>> 1)
      x5= mask & x5
      z = mask & ~(x7 << 1)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 1)
      x7= z | (x7 unsigned>> 1)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask2
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 2)
      x1= mask & x1
      z = mask & (x3 << 2)
      x1= y | (x1 unsigned>> 2)
      x3= mask & x3
      y = mask & (x5 << 2)
      x3= z | (x3 unsigned>> 2)
      x5= mask & x5
      z = mask & ~(x7 << 2)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 2)
      x7= z | (x7 unsigned>> 2)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask4
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 4)
      x1= mask & x1
      z = mask & (x3 << 4)
      x1= y | (x1 unsigned>> 4)
      x3= mask & x3
      y = mask & (x5 << 4)
      x3= z | (x3 unsigned>> 4)
      x5= mask & x5
      z = mask & ~(x7 << 4)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 4)
      x7= z | (x7 unsigned>> 4)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask8
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 8)
      x1= mask & x1
      z = mask & (x3 << 8)
      x1= y | (x1 unsigned>> 8)
      x3= mask & x3
      y = mask & (x5 << 8)
      x3= z | (x3 unsigned>> 8)
      x5= mask & x5
      z = mask & ~(x7 << 8)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 8)
      x7= z | (x7 unsigned>> 8)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = (x1 << 16)
      x1 = y | (x1 unsigned>> 16)
      y = (x3 << 16)
      x3 = y | (x3 unsigned>> 16)
      y = (x5 << 16)
      x5 = y | (x5 unsigned>> 16)
      y = (x7 << 16)
      x7 = y | (x7 unsigned>> 16)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
assign r2 r3 to x4 x6 ; mem64[X+8] = x4 x6
assign r0 r1 to x0 x2 ; mem64[X+0] = x0 x2
assign r6 r7 to x5 x7 ; T1 = x5 x7
assign r4 r5 to x1 x3 ; T0 = x1 x3
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
assign r2 r3 to x4 x6 = mem64[X+40]
assign r0 r1 to x0 x2 = mem64[X+32]
assign r6 r7 to x5 x7 = mem64[X+56]
assign r4 r5 to x1 x3 = mem64[X+48]
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      mask = mask1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 1)
      x1= mask & x1
      z = mask & (x3 << 1)
      x1= y | (x1 unsigned>> 1)
      x3= mask & x3
      y = mask & (x5 << 1)
      x3= z | (x3 unsigned>> 1)
      x5= mask & x5
      z = mask & ~(x7 << 1)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 1)
      x7= z | (x7 unsigned>> 1)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask2
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 2)
      x1= mask & x1
      z = mask & (x3 << 2)
      x1= y | (x1 unsigned>> 2)
      x3= mask & x3
      y = mask & (x5 << 2)
      x3= z | (x3 unsigned>> 2)
      x5= mask & x5
      z = mask & ~(x7 << 2)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 2)
      x7= z | (x7 unsigned>> 2)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask4
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 4)
      x1= mask & x1
      z = mask & (x3 << 4)
      x1= y | (x1 unsigned>> 4)
      x3= mask & x3
      y = mask & (x5 << 4)
      x3= z | (x3 unsigned>> 4)
      x5= mask & x5
      z = mask & ~(x7 << 4)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 4)
      x7= z | (x7 unsigned>> 4)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask8
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 8)
      x1= mask & x1
      z = mask & (x3 << 8)
      x1= y | (x1 unsigned>> 8)
      x3= mask & x3
      y = mask & (x5 << 8)
      x3= z | (x3 unsigned>> 8)
      x5= mask & x5
      z = mask & ~(x7 << 8)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 8)
      x7= z | (x7 unsigned>> 8)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = (x1 << 16)
      x1 = y | (x1 unsigned>> 16)
      y = (x3 << 16)
      x3 = y | (x3 unsigned>> 16)
      y = (x5 << 16)
      x5 = y | (x5 unsigned>> 16)
      y = (x7 << 16)
      x7 = y | (x7 unsigned>> 16)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
assign r2 r3 to x4 x6 ; mem64[X+40] = x4 x6
assign r0 r1 to x0 x2 ; mem64[X+32] = x0 x2
assign r6 r7 to x5 x7 ; T3 = x5 x7
assign r4 r5 to x1 x3 ; T2 = x1 x3
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
assign r2 r3 to x4 x6 = mem64[X+72]
assign r0 r1 to x0 x2 = mem64[X+64]
assign r6 r7 to x5 x7 = mem64[X+88]
assign r4 r5 to x1 x3 = mem64[X+80]
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      mask = mask1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 1)
      x1= mask & x1
      z = mask & (x3 << 1)
      x1= y | (x1 unsigned>> 1)
      x3= mask & x3
      y = mask & (x5 << 1)
      x3= z | (x3 unsigned>> 1)
      x5= mask & x5
      z = mask & ~(x7 << 1)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 1)
      x7= z | (x7 unsigned>> 1)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask2
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 2)
      x1= mask & x1
      z = mask & (x3 << 2)
      x1= y | (x1 unsigned>> 2)
      x3= mask & x3
      y = mask & (x5 << 2)
      x3= z | (x3 unsigned>> 2)
      x5= mask & x5
      z = mask & ~(x7 << 2)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 2)
      x7= z | (x7 unsigned>> 2)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask4
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 4)
      x1= mask & x1
      z = mask & (x3 << 4)
      x1= y | (x1 unsigned>> 4)
      x3= mask & x3
      y = mask & (x5 << 4)
      x3= z | (x3 unsigned>> 4)
      x5= mask & x5
      z = mask & ~(x7 << 4)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 4)
      x7= z | (x7 unsigned>> 4)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask8
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 8)
      x1= mask & x1
      z = mask & (x3 << 8)
      x1= y | (x1 unsigned>> 8)
      x3= mask & x3
      y = mask & (x5 << 8)
      x3= z | (x3 unsigned>> 8)
      x5= mask & x5
      z = mask & ~(x7 << 8)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 8)
      x7= z | (x7 unsigned>> 8)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = (x1 << 16)
      x1 = y | (x1 unsigned>> 16)
      y = (x3 << 16)
      x3 = y | (x3 unsigned>> 16)
      y = (x5 << 16)
      x5 = y | (x5 unsigned>> 16)
      y = (x7 << 16)
      x7 = y | (x7 unsigned>> 16)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
assign r2 r3 to x4 x6 ; mem64[X+72] = x4 x6
assign r0 r1 to x0 x2 ; mem64[X+64] = x0 x2
assign r6 r7 to x5 x7 ; T5 = x5 x7
assign r4 r5 to x1 x3 ; T4 = x1 x3
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
assign r2 r3 to x4 x6 = mem64[X+104]
assign r0 r1 to x0 x2 = mem64[X+96]
assign r6 r7 to x5 x7 = mem64[X+120]
assign r4 r5 to x1 x3 = mem64[X+112]
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      mask = mask1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 1)
      x1= mask & x1
      z = mask & (x3 << 1)
      x1= y | (x1 unsigned>> 1)
      x3= mask & x3
      y = mask & (x5 << 1)
      x3= z | (x3 unsigned>> 1)
      x5= mask & x5
      z = mask & ~(x7 << 1)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 1)
      x7= z | (x7 unsigned>> 1)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask2
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 2)
      x1= mask & x1
      z = mask & (x3 << 2)
      x1= y | (x1 unsigned>> 2)
      x3= mask & x3
      y = mask & (x5 << 2)
      x3= z | (x3 unsigned>> 2)
      x5= mask & x5
      z = mask & ~(x7 << 2)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 2)
      x7= z | (x7 unsigned>> 2)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask4
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 4)
      x1= mask & x1
      z = mask & (x3 << 4)
      x1= y | (x1 unsigned>> 4)
      x3= mask & x3
      y = mask & (x5 << 4)
      x3= z | (x3 unsigned>> 4)
      x5= mask & x5
      z = mask & ~(x7 << 4)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 4)
      x7= z | (x7 unsigned>> 4)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      mask = mask8
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = mask & (x1 << 8)
      x1= mask & x1
      z = mask & (x3 << 8)
      x1= y | (x1 unsigned>> 8)
      x3= mask & x3
      y = mask & (x5 << 8)
      x3= z | (x3 unsigned>> 8)
      x5= mask & x5
      z = mask & ~(x7 << 8)
      x7= mask & ~x7
      x5= y | (x5 unsigned>> 8)
      x7= z | (x7 unsigned>> 8)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      temp0 = c1 ^ z
      z = x5 & x7
      x1 ^= z
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= temp0
      temp0 &= x1
      x3 ^= temp0
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
      y = (x1 << 16)
      x1 = y | (x1 unsigned>> 16)
      y = (x3 << 16)
      x3 = y | (x3 unsigned>> 16)
      y = (x5 << 16)
      x5 = y | (x5 unsigned>> 16)
      y = (x7 << 16)
      x7 = y | (x7 unsigned>> 16)
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
assign r2 r3 to x4 x6 ; mem64[X+104] = x4 x6
assign r0 r1 to x0 x2 ; mem64[X+96] = x0 x2
assign r2 r3 to x4 x6 = mem64[X+72]
assign r0 r1 to x0 x2 = mem64[X+64]
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
assign r2 r3 to x4 x6 ; mem64[X+72] = x4 x6
assign r0 r1 to x0 x2 ; mem64[X+64] = x0 x2
assign r4 r5 to x1 x3 ; mem64[X+16] = x1 x3
assign r6 r7 to x5 x7 ; mem64[X+24] = x5 x7
assign r2 r3 to x4 x6 = mem64[X+104]
assign r0 r1 to x0 x2 = mem64[X+96]
assign r6 r7 to x5 x7 = T5
assign r4 r5 to x1 x3 = T4
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
assign r2 r3 to x4 x6 ; mem64[X+104] = x4 x6
assign r0 r1 to x0 x2 ; mem64[X+96] = x0 x2
assign r6 r7 to x5 x7 ; mem64[X+56] = x5 x7
assign r4 r5 to x1 x3 ; mem64[X+48] = x1 x3
assign r2 r3 to x4 x6 = mem64[X+40]
assign r0 r1 to x0 x2 = mem64[X+32]
assign r6 r7 to x5 x7 = T1
assign r4 r5 to x1 x3 = T0
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
assign r2 r3 to x4 x6 ; mem64[X+40] = x4 x6
assign r0 r1 to x0 x2 ; mem64[X+32] = x0 x2
assign r4 r5 to x1 x3 ; mem64[X+112] = x1 x3
assign r6 r7 to x5 x7 ; mem64[X+120] = x5 x7
assign r2 r3 to x4 x6 = mem64[X+8]
assign r0 r1 to x0 x2 = mem64[X+0]
assign r6 r7 to x5 x7 = T3
assign r4 r5 to x1 x3 = T2
assign r8 r9 to c0 c1 = mem64[nextseq];nextseq += 8
      x6 = ~x6
      y = x4 & x6
      z = c0 & ~x4
      x0 ^= z
      z = x0 & x2
      c0 ^= z
      x0 ^= y
      z = x4 & ~x2
      x6 ^= z
      z = x0 & x4
      x2 ^= z
      z = x0 & ~x6
      x4 ^= z
      z = x2 | x6
      x0 ^= z
      z = x2 & x4
      x6 ^= z
      x4 ^= c0
      c0 &= x0
      x2 ^= c0
      x7 = ~x7
      y = x5 & x7
      z = c1 & ~x5
      x1 ^= z
      z = x1 & x3
      c1 ^= z
      x1 ^= y
      z = x5 & ~x3
      x7 ^= z
      z = x1 & x5
      x3 ^= z
      z = x1 & ~x7
      x5 ^= z
      z = x3 | x7
      x1 ^= z
      z = x3 & x5
      x7 ^= z
      x5 ^= c1
      c1 &= x1
      x3 ^= c1
      x1 ^= x2
      x3 ^= x4
      y = x0 ^ x6
      x5 ^= y
      x7 ^= x0
      x0 ^= x3
      x2 ^= x5
      y = x1 ^ x7
      x4 ^= y
      x6 ^= x1
assign r6 r7 to x5 x7 ; mem64[X+88] = x5 x7
assign r4 r5 to x1 x3 ; mem64[X+80] = x1 x3
     goto _7rounds
      _end_e8:
assign r2 r3 to x4 x6 ; mem64[X+8] = x4 x6
assign r0 r1 to x0 x2 ; mem64[X+0] = x0 x2
B = B_stack
assign r0 r1 to x0 x1 = mem64[X+8]
assign r4 r5 to x4 x5 = mem64[B+0]
assign r6 r7 to x6 x7 = mem64[B+32]
assign r2 r3 to x2 x3 = mem64[X+40]
x0 ^= x4
x1 ^= x6
assign r0 r1 to x0 x1; mem64[X+8] = x0 x1
x2 ^= x5
x3 ^= x7
assign r2 r3 to x2 x3; mem64[X+40] = x2 x3
assign r0 r1 to x0 x1 = mem64[X+72]
assign r4 r5 to x4 x5 = mem64[B+8]
assign r6 r7 to x6 x7 = mem64[B+40]
assign r2 r3 to x2 x3 = mem64[X+104]
x0 ^= x4
x1 ^= x6
assign r0 r1 to x0 x1; mem64[X+72] = x0 x1
x2 ^= x5
x3 ^= x7
assign r2 r3 to x2 x3; mem64[X+104] = x2 x3
assign r0 r1 to x0 x1 = mem64[X+24]
assign r4 r5 to x4 x5 = mem64[B+16]
assign r6 r7 to x6 x7 = mem64[B+48]
assign r2 r3 to x2 x3 = mem64[X+56]
x0 ^= x4
x1 ^= x6
assign r0 r1 to x0 x1; mem64[X+24] = x0 x1
x2 ^= x5
x3 ^= x7
assign r2 r3 to x2 x3; mem64[X+56] = x2 x3
assign r0 r1 to x0 x1 = mem64[X+88]
assign r4 r5 to x4 x5 = mem64[B+24]
assign r6 r7 to x6 x7 = mem64[B+56]
assign r2 r3 to x2 x3 = mem64[X+120]
x0 ^= x4
x1 ^= x6
assign r0 r1 to x0 x1; mem64[X+88] = x0 x1
x2 ^= x5
x3 ^= x7
assign r2 r3 to x2 x3; mem64[X+120] = x2 x3
B += 64
Xrep = Xrep_stack
Xrep = Xrep - 1
goto _f8
_end_f8:
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
