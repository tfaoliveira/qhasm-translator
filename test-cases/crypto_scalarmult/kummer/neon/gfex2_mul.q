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
int32 caller_r12
int32 caller_r14
reg128 caller_q4
reg128 caller_q5
reg128 caller_q6
reg128 caller_q7
startcode
int128 f0
int128 f1
int128 f2
int128 _2f1
int128 _2f2
int128 g0
int128 g1
int128 g2
int128 h0
int128 h1
int128 h2
int128 h3
int128 h4
int128 t
int128 mask25
int128 mask26
int32 adr0
int32 adr1
int32 adr2
int32 count
stack128 caller_q4_stack
stack128 caller_q5_stack
stack128 caller_q6_stack
stack128 caller_q7_stack
qpushenter gfex2_mul
adr0 = input_0
adr1 = input_1
adr2 = input_2
2x mask25 = 0xffffffff
4x mask25 <<= 7
2x mask25 unsigned>> = 7
2x mask26 = 0xffffffff
4x mask26 <<= 6
2x mask26 unsigned>> = 6
f0 = mem128[adr1]
adr1+=8
f1 = mem128[adr1]; adr1+=16
f2 = mem128[adr1]; adr1+=16
2x _2f1 = f1 << 1
2x _2f2 = f2 << 1
g0 = mem128[adr2]
adr2+=8
g1 = mem128[adr2]; adr2+=16
g2 = mem128[adr2]; adr2+=16
h0[0,1]  =   f0[0] unsigned* g0[0]; h0[2,3]  =   f0[1] unsigned* g0[1]
h1[0,1]  =   f1[0] unsigned* g0[0]; h1[2,3]  =   f1[1] unsigned* g0[1]
h2[0,1]  =   f1[2] unsigned* g0[0]; h2[2,3]  =   f1[3] unsigned* g0[1]
h3[0,1]  =   f2[0] unsigned* g0[0]; h3[2,3]  =   f2[1] unsigned* g0[1]
h4[0,1]  =   f2[2] unsigned* g0[0]; h4[2,3]  =   f2[3] unsigned* g0[1]
h0[0,1] += _2f2[0] unsigned* g1[2]; h0[2,3] += _2f2[1] unsigned* g1[3]
h0[0,1] += _2f2[2] unsigned* g1[0]; h0[2,3] += _2f2[3] unsigned* g1[1]
h1[0,1] +=   f0[0] unsigned* g1[0]; h1[2,3] +=   f0[1] unsigned* g1[1]
h1[0,1] +=   f2[2] unsigned* g1[2]; h1[2,3] +=   f2[3] unsigned* g1[3]
h2[0,1] +=   f0[0] unsigned* g1[2]; h2[2,3] +=   f0[1] unsigned* g1[3]
h2[0,1] += _2f1[0] unsigned* g1[0]; h2[2,3] += _2f1[1] unsigned* g1[1]
h3[0,1] +=   f1[2] unsigned* g1[0]; h3[2,3] +=   f1[3] unsigned* g1[1]
h3[0,1] +=   f1[0] unsigned* g1[2]; h3[2,3] +=   f1[1] unsigned* g1[3]
h4[0,1] +=   f1[2] unsigned* g1[2]; h4[2,3] +=   f1[3] unsigned* g1[3]
h4[0,1] += _2f2[0] unsigned* g1[0]; h4[2,3] += _2f2[1] unsigned* g1[1]
h0[0,1] += _2f1[0] unsigned* g2[2]; h0[2,3] += _2f1[1] unsigned* g2[3]
h0[0,1] += _2f1[2] unsigned* g2[0]; h0[2,3] += _2f1[3] unsigned* g2[1]
h1[0,1] += _2f2[0] unsigned* g2[0]; h1[2,3] += _2f2[1] unsigned* g2[1]
h1[0,1] +=   f1[2] unsigned* g2[2]; h1[2,3] +=   f1[3] unsigned* g2[3]
h2[0,1] += _2f2[0] unsigned* g2[2]; h2[2,3] += _2f2[1] unsigned* g2[3]
h2[0,1] += _2f2[2] unsigned* g2[0]; h2[2,3] += _2f2[3] unsigned* g2[1]
h3[0,1] +=   f0[0] unsigned* g2[0]; h3[2,3] +=   f0[1] unsigned* g2[1]
h3[0,1] +=   f2[2] unsigned* g2[2]; h3[2,3] +=   f2[3] unsigned* g2[3]
h4[0,1] +=   f0[0] unsigned* g2[2]; h4[2,3] +=   f0[1] unsigned* g2[3]
h4[0,1] += _2f1[0] unsigned* g2[0]; h4[2,3] += _2f1[1] unsigned* g2[1]
2x t = h0 unsigned>> 26
2x h1 += t
h0 &= mask26
2x t = h1 unsigned>> 25
2x h2 += t
h1 &= mask25
2x t = h2 unsigned>> 26
2x h3 += t
h2 &= mask26
2x t = h3 unsigned>> 25
2x h4 += t
h3 &= mask25
2x t = h4 unsigned>> 25
2x h0 += t
h4 &= mask25
2x t = h0 unsigned>> 26
2x h1 += t
h0 &= mask26
h0 = h0[0,2,1,3]
h1 h2 = h1[0]h2[0]h1[2]h2[2] h1[1]h2[1]h1[3]h2[3]
h1 = h1[0,2,1,3]
h3 h4 = h3[0]h4[0]h3[2]h4[2] h3[1]h4[1]h3[3]h4[3]
h3 = h3[0,2,1,3]
mem128[adr0] = h0
adr0+=8
mem128[adr0] = h1; adr0+=16
mem128[adr0] = h3; adr0+=16
qpopreturn
