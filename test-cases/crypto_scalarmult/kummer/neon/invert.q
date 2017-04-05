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
int32 adr0
int32 adr1
int128 a0
int128 a1
int128 a2
int128 a3
int128 a4
int128 b0
int128 b1
int128 b2
int128 b3
int128 b4
int128 _2a0
int128 _2a1
int128 _2a2
int128 _2a3
int128 _2a4
int128 h0
int128 h1
int128 h2
int128 h3
int128 h4
int128 h5
int128 r0
int128 r1
int128 r2
int128 r3
int128 r4
int128 r5
int128 _2h0
int128 _2h1
int128 _2h2
int128 _2h3
int128 _2h4
int128 k0
int128 k1
int128 k2
int128 k3
int128 k4
int128 _2k0
int128 _2k1
int128 _2k2
int128 _2k3
int128 _2k4
int128 s4
int128 t
int128 mask25
int128 mask26
int32 ptr0
int32 ptr1
int32 ctr
stack3072 ptr_stack
qpushenter invert 
stack32 stack_r4
stack32 stack_r5
stack32 stack_r6
stack32 stack_r7
stack32 stack_r8
stack32 stack_r9
stack32 stack_r10
stack32 stack_r11
stack32 stack_r12
stack32 stack_r14
stack_r4 = caller_r4
stack_r5 = caller_r5
stack_r6 = caller_r6
stack_r7 = caller_r7
stack_r8 = caller_r8
stack_r9 = caller_r9
stack_r10 = caller_r10
stack_r11 = caller_r11
stack_r12 = caller_r12
stack_r14 = caller_r14
stack128 caller_q4_stack
stack128 caller_q5_stack
stack128 caller_q6_stack
stack128 caller_q7_stack
ptr0 = &ptr_stack
ptr1 = ptr0
2x mask25 = 0xffffffff
4x mask25 <<= 7
2x mask25 unsigned>> = 7
2x mask26 = 0xffffffff
4x mask26 <<= 6
2x mask26 unsigned>> = 6
mem128[ptr1] aligned = mask25; ptr1+=16		
adr1 = input_1
a0 aligned = mem128[adr1]; adr1+=16
a1 aligned = mem128[adr1]; adr1+=16
a2 aligned = mem128[adr1]; adr1+=16
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  =   a0[0] unsigned*   a0[0]; h0[2,3]  =   a0[1] unsigned*   a0[1]		
h2[0,1]  = _2a0[2] unsigned*   a0[2]; h2[2,3]  = _2a0[3] unsigned*   a0[3]		
h4[0,1]  =   a1[0] unsigned*   a1[0]; h4[2,3]  =   a1[1] unsigned*   a1[1]		
h1[0,1]  = _2a1[2] unsigned*   a1[2]; h1[2,3]  = _2a1[3] unsigned*   a1[3]		
h3[0,1]  =   a2[0] unsigned*   a2[0]; h3[2,3]  =   a2[1] unsigned*   a2[1]		
h1[0,1] += _2a0[2] unsigned*   a0[0]; h1[2,3] += _2a0[3] unsigned*   a0[1]		
h2[0,1] += _2a1[0] unsigned*   a0[0]; h2[2,3] += _2a1[1] unsigned*   a0[1]		
h3[0,1] += _2a1[2] unsigned*   a0[0]; h3[2,3] += _2a1[3] unsigned*   a0[1]		
h4[0,1] += _2a2[0] unsigned*   a0[0]; h4[2,3] += _2a2[1] unsigned*   a0[1]		
h0[0,1] += _2a2[0] unsigned* _2a0[2]; h0[2,3] += _2a2[1] unsigned* _2a0[3]		
h4[0,1] += _2a1[2] unsigned* _2a0[2]; h4[2,3] += _2a1[3] unsigned* _2a0[3]		
h3[0,1] += _2a1[0] unsigned*   a0[2]; h3[2,3] += _2a1[1] unsigned*   a0[3]		
h0[0,1] += _2a1[2] unsigned* _2a1[0]; h0[2,3] += _2a1[3] unsigned* _2a1[1]		
h1[0,1] += _2a2[0] unsigned*   a1[0]; h1[2,3] += _2a2[1] unsigned*   a1[1]		
h2[0,1] += _2a2[0] unsigned* _2a1[2]; h2[2,3] += _2a2[1] unsigned* _2a1[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
k0[0,1]  = h0[0] unsigned*   a0[0]; k0[2,3]  = h0[1] unsigned*   a0[1]		
k1[0,1]  = h0[2] unsigned*   a0[0]; k1[2,3]  = h0[3] unsigned*   a0[1]		
k2[0,1]  = h2[0] unsigned*   a0[0]; k2[2,3]  = h2[1] unsigned*   a0[1]		
k3[0,1]  = h2[2] unsigned*   a0[0]; k3[2,3]  = h2[3] unsigned*   a0[1]		
k4[0,1]  = h4[0] unsigned*   a0[0]; k4[2,3]  = h4[1] unsigned*   a0[1]		
k0[0,1] += h4[0] unsigned* _2a0[2]; k0[2,3] += h4[1] unsigned* _2a0[3]		
k1[0,1] += h0[0] unsigned*   a0[2]; k1[2,3] += h0[1] unsigned*   a0[3]		
k2[0,1] += h0[2] unsigned* _2a0[2]; k2[2,3] += h0[3] unsigned* _2a0[3]		
k3[0,1] += h2[0] unsigned*   a0[2]; k3[2,3] += h2[1] unsigned*   a0[3]		
k4[0,1] += h2[2] unsigned* _2a0[2]; k4[2,3] += h2[3] unsigned* _2a0[3]		
k0[0,1] += h2[2] unsigned* _2a1[0]; k0[2,3] += h2[3] unsigned* _2a1[1]		
k1[0,1] += h4[0] unsigned*   a1[0]; k1[2,3] += h4[1] unsigned*   a1[1]		
k2[0,1] += h0[0] unsigned*   a1[0]; k2[2,3] += h0[1] unsigned*   a1[1]		
k3[0,1] += h0[2] unsigned*   a1[0]; k3[2,3] += h0[3] unsigned*   a1[1]		
k4[0,1] += h2[0] unsigned*   a1[0]; k4[2,3] += h2[1] unsigned*   a1[1]		
k0[0,1] += h2[0] unsigned* _2a1[2]; k0[2,3] += h2[1] unsigned* _2a1[3]		
k1[0,1] += h2[2] unsigned* _2a1[2]; k1[2,3] += h2[3] unsigned* _2a1[3]		
k2[0,1] += h4[0] unsigned* _2a1[2]; k2[2,3] += h4[1] unsigned* _2a1[3]		
k3[0,1] += h0[0] unsigned*   a1[2]; k3[2,3] += h0[1] unsigned*   a1[3]		
k4[0,1] += h0[2] unsigned* _2a1[2]; k4[2,3] += h0[3] unsigned* _2a1[3]		
k0[0,1] += h0[2] unsigned* _2a2[0]; k0[2,3] += h0[3] unsigned* _2a2[1]		
k1[0,1] += h2[0] unsigned*   a2[0]; k1[2,3] += h2[1] unsigned*   a2[1]		
k2[0,1] += h2[2] unsigned* _2a2[0]; k2[2,3] += h2[3] unsigned* _2a2[1]		
k3[0,1] += h4[0] unsigned*   a2[0]; k3[2,3] += h4[1] unsigned*   a2[1]		
k4[0,1] += h0[0] unsigned*   a2[0]; k4[2,3] += h0[1] unsigned*   a2[1]		
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
2x t = k1 unsigned>> 25
2x k2 += t
k1 &= mask25
2x t = k2 unsigned>> 26
2x k3 += t
k2 &= mask26
2x t = k3 unsigned>> 25
2x k4 += t
k3 &= mask25
2x t = k4 unsigned>> 25
2x k0 += t
k4 &= mask25
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
k0 k1 = k0[0]k1[0]k0[2]k1[2] k0[1]k1[1]k0[3]k1[3]
k0 = k0[0,2,1,3]
k2 k3 = k2[0]k3[0]k2[2]k3[2] k2[1]k3[1]k2[3]k3[3]
k2 = k2[0,2,1,3]
k4 = k4[0,2,1,3]
mem128[ptr1] aligned = k0; ptr1+=16	
mem128[ptr1] aligned = k2; ptr1+=16	
mem128[ptr1] aligned = k4; ptr1+=16	
2x _2k0 = k0 << 1
2x _2k2 = k2 << 1
2x _2k4 = k4 << 1
h0[0,1]  =   k0[0] unsigned*   k0[0]; h0[2,3]  =   k0[1] unsigned*   k0[1]		
h2[0,1]  = _2k0[2] unsigned*   k0[2]; h2[2,3]  = _2k0[3] unsigned*   k0[3]		
h4[0,1]  =   k2[0] unsigned*   k2[0]; h4[2,3]  =   k2[1] unsigned*   k2[1]		
h1[0,1]  = _2k2[2] unsigned*   k2[2]; h1[2,3]  = _2k2[3] unsigned*   k2[3]		
h3[0,1]  =   k4[0] unsigned*   k4[0]; h3[2,3]  =   k4[1] unsigned*   k4[1]		
h1[0,1] += _2k0[2] unsigned*   k0[0]; h1[2,3] += _2k0[3] unsigned*   k0[1]		
h2[0,1] += _2k2[0] unsigned*   k0[0]; h2[2,3] += _2k2[1] unsigned*   k0[1]		
h3[0,1] += _2k2[2] unsigned*   k0[0]; h3[2,3] += _2k2[3] unsigned*   k0[1]		
h4[0,1] += _2k4[0] unsigned*   k0[0]; h4[2,3] += _2k4[1] unsigned*   k0[1]		
h0[0,1] += _2k4[0] unsigned* _2k0[2]; h0[2,3] += _2k4[1] unsigned* _2k0[3]		
h4[0,1] += _2k2[2] unsigned* _2k0[2]; h4[2,3] += _2k2[3] unsigned* _2k0[3]		
h3[0,1] += _2k2[0] unsigned*   k0[2]; h3[2,3] += _2k2[1] unsigned*   k0[3]		
h0[0,1] += _2k2[2] unsigned* _2k2[0]; h0[2,3] += _2k2[3] unsigned* _2k2[1]		
h1[0,1] += _2k4[0] unsigned*   k2[0]; h1[2,3] += _2k4[1] unsigned*   k2[1]		
h2[0,1] += _2k4[0] unsigned* _2k2[2]; h2[2,3] += _2k4[1] unsigned* _2k2[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
2x _2h0 = h0 << 1
2x _2h2 = h2 << 1
2x _2h4 = h4 << 1
k0[0,1]  =   h0[0] unsigned*   h0[0]; k0[2,3]  =   h0[1] unsigned*   h0[1]		
k2[0,1]  = _2h0[2] unsigned*   h0[2]; k2[2,3]  = _2h0[3] unsigned*   h0[3]		
k4[0,1]  =   h2[0] unsigned*   h2[0]; k4[2,3]  =   h2[1] unsigned*   h2[1]		
k1[0,1]  = _2h2[2] unsigned*   h2[2]; k1[2,3]  = _2h2[3] unsigned*   h2[3]		
k3[0,1]  =   h4[0] unsigned*   h4[0]; k3[2,3]  =   h4[1] unsigned*   h4[1]		
k1[0,1] += _2h0[2] unsigned*   h0[0]; k1[2,3] += _2h0[3] unsigned*   h0[1]		
k2[0,1] += _2h2[0] unsigned*   h0[0]; k2[2,3] += _2h2[1] unsigned*   h0[1]		
k3[0,1] += _2h2[2] unsigned*   h0[0]; k3[2,3] += _2h2[3] unsigned*   h0[1]		
k4[0,1] += _2h4[0] unsigned*   h0[0]; k4[2,3] += _2h4[1] unsigned*   h0[1]		
k0[0,1] += _2h4[0] unsigned* _2h0[2]; k0[2,3] += _2h4[1] unsigned* _2h0[3]		
k4[0,1] += _2h2[2] unsigned* _2h0[2]; k4[2,3] += _2h2[3] unsigned* _2h0[3]		
k3[0,1] += _2h2[0] unsigned*   h0[2]; k3[2,3] += _2h2[1] unsigned*   h0[3]		
k0[0,1] += _2h2[2] unsigned* _2h2[0]; k0[2,3] += _2h2[3] unsigned* _2h2[1]		
k1[0,1] += _2h4[0] unsigned*   h2[0]; k1[2,3] += _2h4[1] unsigned*   h2[1]		
k2[0,1] += _2h4[0] unsigned* _2h2[2]; k2[2,3] += _2h4[1] unsigned* _2h2[3]		
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
2x t = k1 unsigned>> 25
2x k2 += t
k1 &= mask25
2x t = k2 unsigned>> 26
2x k3 += t
k2 &= mask26
2x t = k3 unsigned>> 25
2x k4 += t
k3 &= mask25
2x t = k4 unsigned>> 25
2x k0 += t
k4 &= mask25
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
k0 k1 = k0[0]k1[0]k0[2]k1[2] k0[1]k1[1]k0[3]k1[3]
k0 = k0[0,2,1,3]
k2 k3 = k2[0]k3[0]k2[2]k3[2] k2[1]k3[1]k2[3]k3[3]
k2 = k2[0,2,1,3]
k4 = k4[0,2,1,3]
ptr1 -= 48				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 aligned = mem128[ptr1]; ptr1+=16	
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  = k0[0] unsigned*   a0[0]; h0[2,3]  = k0[1] unsigned*   a0[1]		
h1[0,1]  = k0[2] unsigned*   a0[0]; h1[2,3]  = k0[3] unsigned*   a0[1]		
h2[0,1]  = k2[0] unsigned*   a0[0]; h2[2,3]  = k2[1] unsigned*   a0[1]		
h3[0,1]  = k2[2] unsigned*   a0[0]; h3[2,3]  = k2[3] unsigned*   a0[1]		
h4[0,1]  = k4[0] unsigned*   a0[0]; h4[2,3]  = k4[1] unsigned*   a0[1]		
h0[0,1] += k4[0] unsigned* _2a0[2]; h0[2,3] += k4[1] unsigned* _2a0[3]		
h1[0,1] += k0[0] unsigned*   a0[2]; h1[2,3] += k0[1] unsigned*   a0[3]		
h2[0,1] += k0[2] unsigned* _2a0[2]; h2[2,3] += k0[3] unsigned* _2a0[3]		
h3[0,1] += k2[0] unsigned*   a0[2]; h3[2,3] += k2[1] unsigned*   a0[3]		
h4[0,1] += k2[2] unsigned* _2a0[2]; h4[2,3] += k2[3] unsigned* _2a0[3]		
h0[0,1] += k2[2] unsigned* _2a1[0]; h0[2,3] += k2[3] unsigned* _2a1[1]		
h1[0,1] += k4[0] unsigned*   a1[0]; h1[2,3] += k4[1] unsigned*   a1[1]		
h2[0,1] += k0[0] unsigned*   a1[0]; h2[2,3] += k0[1] unsigned*   a1[1]		
h3[0,1] += k0[2] unsigned*   a1[0]; h3[2,3] += k0[3] unsigned*   a1[1]		
h4[0,1] += k2[0] unsigned*   a1[0]; h4[2,3] += k2[1] unsigned*   a1[1]		
h0[0,1] += k2[0] unsigned* _2a1[2]; h0[2,3] += k2[1] unsigned* _2a1[3]		
h1[0,1] += k2[2] unsigned* _2a1[2]; h1[2,3] += k2[3] unsigned* _2a1[3]		
h2[0,1] += k4[0] unsigned* _2a1[2]; h2[2,3] += k4[1] unsigned* _2a1[3]		
h3[0,1] += k0[0] unsigned*   a1[2]; h3[2,3] += k0[1] unsigned*   a1[3]		
h4[0,1] += k0[2] unsigned* _2a1[2]; h4[2,3] += k0[3] unsigned* _2a1[3]		
h0[0,1] += k0[2] unsigned* _2a2[0]; h0[2,3] += k0[3] unsigned* _2a2[1]		
h1[0,1] += k2[0] unsigned*   a2[0]; h1[2,3] += k2[1] unsigned*   a2[1]		
h2[0,1] += k2[2] unsigned* _2a2[0]; h2[2,3] += k2[3] unsigned* _2a2[1]		
h3[0,1] += k4[0] unsigned*   a2[0]; h3[2,3] += k4[1] unsigned*   a2[1]		
h4[0,1] += k0[0] unsigned*   a2[0]; h4[2,3] += k0[1] unsigned*   a2[1]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
2x _2h0 = h0 << 1
2x _2h2 = h2 << 1
2x _2h4 = h4 << 1
k0[0,1]  =   h0[0] unsigned*   h0[0]; k0[2,3]  =   h0[1] unsigned*   h0[1]		
k2[0,1]  = _2h0[2] unsigned*   h0[2]; k2[2,3]  = _2h0[3] unsigned*   h0[3]		
k4[0,1]  =   h2[0] unsigned*   h2[0]; k4[2,3]  =   h2[1] unsigned*   h2[1]		
k1[0,1]  = _2h2[2] unsigned*   h2[2]; k1[2,3]  = _2h2[3] unsigned*   h2[3]		
k3[0,1]  =   h4[0] unsigned*   h4[0]; k3[2,3]  =   h4[1] unsigned*   h4[1]		
k1[0,1] += _2h0[2] unsigned*   h0[0]; k1[2,3] += _2h0[3] unsigned*   h0[1]		
k2[0,1] += _2h2[0] unsigned*   h0[0]; k2[2,3] += _2h2[1] unsigned*   h0[1]		
k3[0,1] += _2h2[2] unsigned*   h0[0]; k3[2,3] += _2h2[3] unsigned*   h0[1]		
k4[0,1] += _2h4[0] unsigned*   h0[0]; k4[2,3] += _2h4[1] unsigned*   h0[1]		
k0[0,1] += _2h4[0] unsigned* _2h0[2]; k0[2,3] += _2h4[1] unsigned* _2h0[3]		
k4[0,1] += _2h2[2] unsigned* _2h0[2]; k4[2,3] += _2h2[3] unsigned* _2h0[3]		
k3[0,1] += _2h2[0] unsigned*   h0[2]; k3[2,3] += _2h2[1] unsigned*   h0[3]		
k0[0,1] += _2h2[2] unsigned* _2h2[0]; k0[2,3] += _2h2[3] unsigned* _2h2[1]		
k1[0,1] += _2h4[0] unsigned*   h2[0]; k1[2,3] += _2h4[1] unsigned*   h2[1]		
k2[0,1] += _2h4[0] unsigned* _2h2[2]; k2[2,3] += _2h4[1] unsigned* _2h2[3]		
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
2x t = k1 unsigned>> 25
2x k2 += t
k1 &= mask25
2x t = k2 unsigned>> 26
2x k3 += t
k2 &= mask26
2x t = k3 unsigned>> 25
2x k4 += t
k3 &= mask25
2x t = k4 unsigned>> 25
2x k0 += t
k4 &= mask25
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
k0 k1 = k0[0]k1[0]k0[2]k1[2] k0[1]k1[1]k0[3]k1[3]
k0 = k0[0,2,1,3]
k2 k3 = k2[0]k3[0]k2[2]k3[2] k2[1]k3[1]k2[3]k3[3]
k2 = k2[0,2,1,3]
k4 = k4[0,2,1,3]
adr1 = input_1
a0 aligned = mem128[adr1]; adr1+=16
a1 aligned = mem128[adr1]; adr1+=16
a2 aligned = mem128[adr1]; adr1+=16
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  = k0[0] unsigned*   a0[0]; h0[2,3]  = k0[1] unsigned*   a0[1]		
h1[0,1]  = k0[2] unsigned*   a0[0]; h1[2,3]  = k0[3] unsigned*   a0[1]		
h2[0,1]  = k2[0] unsigned*   a0[0]; h2[2,3]  = k2[1] unsigned*   a0[1]		
h3[0,1]  = k2[2] unsigned*   a0[0]; h3[2,3]  = k2[3] unsigned*   a0[1]		
h4[0,1]  = k4[0] unsigned*   a0[0]; h4[2,3]  = k4[1] unsigned*   a0[1]		
h0[0,1] += k4[0] unsigned* _2a0[2]; h0[2,3] += k4[1] unsigned* _2a0[3]		
h1[0,1] += k0[0] unsigned*   a0[2]; h1[2,3] += k0[1] unsigned*   a0[3]		
h2[0,1] += k0[2] unsigned* _2a0[2]; h2[2,3] += k0[3] unsigned* _2a0[3]		
h3[0,1] += k2[0] unsigned*   a0[2]; h3[2,3] += k2[1] unsigned*   a0[3]		
h4[0,1] += k2[2] unsigned* _2a0[2]; h4[2,3] += k2[3] unsigned* _2a0[3]		
h0[0,1] += k2[2] unsigned* _2a1[0]; h0[2,3] += k2[3] unsigned* _2a1[1]		
h1[0,1] += k4[0] unsigned*   a1[0]; h1[2,3] += k4[1] unsigned*   a1[1]		
h2[0,1] += k0[0] unsigned*   a1[0]; h2[2,3] += k0[1] unsigned*   a1[1]		
h3[0,1] += k0[2] unsigned*   a1[0]; h3[2,3] += k0[3] unsigned*   a1[1]		
h4[0,1] += k2[0] unsigned*   a1[0]; h4[2,3] += k2[1] unsigned*   a1[1]		
h0[0,1] += k2[0] unsigned* _2a1[2]; h0[2,3] += k2[1] unsigned* _2a1[3]		
h1[0,1] += k2[2] unsigned* _2a1[2]; h1[2,3] += k2[3] unsigned* _2a1[3]		
h2[0,1] += k4[0] unsigned* _2a1[2]; h2[2,3] += k4[1] unsigned* _2a1[3]		
h3[0,1] += k0[0] unsigned*   a1[2]; h3[2,3] += k0[1] unsigned*   a1[3]		
h4[0,1] += k0[2] unsigned* _2a1[2]; h4[2,3] += k0[3] unsigned* _2a1[3]		
h0[0,1] += k0[2] unsigned* _2a2[0]; h0[2,3] += k0[3] unsigned* _2a2[1]		
h1[0,1] += k2[0] unsigned*   a2[0]; h1[2,3] += k2[1] unsigned*   a2[1]		
h2[0,1] += k2[2] unsigned* _2a2[0]; h2[2,3] += k2[3] unsigned* _2a2[1]		
h3[0,1] += k4[0] unsigned*   a2[0]; h3[2,3] += k4[1] unsigned*   a2[1]		
h4[0,1] += k0[0] unsigned*   a2[0]; h4[2,3] += k0[1] unsigned*   a2[1]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
ptr1 -= 48				
mem128[ptr1] aligned = h0; ptr1+=16	
mem128[ptr1] aligned = h2; ptr1+=16	
mem128[ptr1] aligned = h4; ptr1+=16	
s4 = h4
adr1 = input_1 + 32
a2 aligned = mem128[adr1]; adr1+=16
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
2x _2a2 = a2 << 1
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  =   a3[0] unsigned*   a3[0]; h0[2,3]  =   a3[1] unsigned*   a3[1]		
h2[0,1]  = _2a3[2] unsigned*   a3[2]; h2[2,3]  = _2a3[3] unsigned*   a3[3]		
h4[0,1]  =   a4[0] unsigned*   a4[0]; h4[2,3]  =   a4[1] unsigned*   a4[1]		
h1[0,1]  = _2a4[2] unsigned*   a4[2]; h1[2,3]  = _2a4[3] unsigned*   a4[3]		
h3[0,1]  =   a2[2] unsigned*   a2[2]; h3[2,3]  =   a2[3] unsigned*   a2[3]		
h1[0,1] += _2a3[2] unsigned*   a3[0]; h1[2,3] += _2a3[3] unsigned*   a3[1]		
h2[0,1] += _2a4[0] unsigned*   a3[0]; h2[2,3] += _2a4[1] unsigned*   a3[1]		
h3[0,1] += _2a4[2] unsigned*   a3[0]; h3[2,3] += _2a4[3] unsigned*   a3[1]		
h4[0,1] += _2a2[2] unsigned*   a3[0]; h4[2,3] += _2a2[3] unsigned*   a3[1]		
h0[0,1] += _2a2[2] unsigned* _2a3[2]; h0[2,3] += _2a2[3] unsigned* _2a3[3]		
h4[0,1] += _2a4[2] unsigned* _2a3[2]; h4[2,3] += _2a4[3] unsigned* _2a3[3]		
h3[0,1] += _2a4[0] unsigned*   a3[2]; h3[2,3] += _2a4[1] unsigned*   a3[3]		
h0[0,1] += _2a4[2] unsigned* _2a4[0]; h0[2,3] += _2a4[3] unsigned* _2a4[1]		
h1[0,1] += _2a2[2] unsigned*   a4[0]; h1[2,3] += _2a2[3] unsigned*   a4[1]		
h2[0,1] += _2a2[2] unsigned* _2a4[2]; h2[2,3] += _2a2[3] unsigned* _2a4[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
k0[0,1]  = h0[0] unsigned*   a3[0]; k0[2,3]  = h0[1] unsigned*   a3[1]		
k1[0,1]  = h0[2] unsigned*   a3[0]; k1[2,3]  = h0[3] unsigned*   a3[1]		
k2[0,1]  = h2[0] unsigned*   a3[0]; k2[2,3]  = h2[1] unsigned*   a3[1]		
k3[0,1]  = h2[2] unsigned*   a3[0]; k3[2,3]  = h2[3] unsigned*   a3[1]		
k4[0,1]  = h4[0] unsigned*   a3[0]; k4[2,3]  = h4[1] unsigned*   a3[1]		
k0[0,1] += h4[0] unsigned* _2a3[2]; k0[2,3] += h4[1] unsigned* _2a3[3]		
k1[0,1] += h0[0] unsigned*   a3[2]; k1[2,3] += h0[1] unsigned*   a3[3]		
k2[0,1] += h0[2] unsigned* _2a3[2]; k2[2,3] += h0[3] unsigned* _2a3[3]		
k3[0,1] += h2[0] unsigned*   a3[2]; k3[2,3] += h2[1] unsigned*   a3[3]		
k4[0,1] += h2[2] unsigned* _2a3[2]; k4[2,3] += h2[3] unsigned* _2a3[3]		
k0[0,1] += h2[2] unsigned* _2a4[0]; k0[2,3] += h2[3] unsigned* _2a4[1]		
k1[0,1] += h4[0] unsigned*   a4[0]; k1[2,3] += h4[1] unsigned*   a4[1]		
k2[0,1] += h0[0] unsigned*   a4[0]; k2[2,3] += h0[1] unsigned*   a4[1]		
k3[0,1] += h0[2] unsigned*   a4[0]; k3[2,3] += h0[3] unsigned*   a4[1]		
k4[0,1] += h2[0] unsigned*   a4[0]; k4[2,3] += h2[1] unsigned*   a4[1]		
k0[0,1] += h2[0] unsigned* _2a4[2]; k0[2,3] += h2[1] unsigned* _2a4[3]		
k1[0,1] += h2[2] unsigned* _2a4[2]; k1[2,3] += h2[3] unsigned* _2a4[3]		
k2[0,1] += h4[0] unsigned* _2a4[2]; k2[2,3] += h4[1] unsigned* _2a4[3]		
k3[0,1] += h0[0] unsigned*   a4[2]; k3[2,3] += h0[1] unsigned*   a4[3]		
k4[0,1] += h0[2] unsigned* _2a4[2]; k4[2,3] += h0[3] unsigned* _2a4[3]		
k0[0,1] += h0[2] unsigned* _2a2[2]; k0[2,3] += h0[3] unsigned* _2a2[3]		
k1[0,1] += h2[0] unsigned*   a2[2]; k1[2,3] += h2[1] unsigned*   a2[3]		
k2[0,1] += h2[2] unsigned* _2a2[2]; k2[2,3] += h2[3] unsigned* _2a2[3]		
k3[0,1] += h4[0] unsigned*   a2[2]; k3[2,3] += h4[1] unsigned*   a2[3]		
k4[0,1] += h0[0] unsigned*   a2[2]; k4[2,3] += h0[1] unsigned*   a2[3]		
ptr1 -= 64			
mask25 aligned = mem128[ptr1]
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
2x t = k1 unsigned>> 25
2x k2 += t
k1 &= mask25
2x t = k2 unsigned>> 26
2x k3 += t
k2 &= mask26
2x t = k3 unsigned>> 25
2x k4 += t
k3 &= mask25
2x t = k4 unsigned>> 25
2x k0 += t
k4 &= mask25
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
k0 k1 = k0[0]k1[0]k0[2]k1[2] k0[1]k1[1]k0[3]k1[3]
k0 = k0[0,2,1,3]
k2 k3 = k2[0]k3[0]k2[2]k3[2] k2[1]k3[1]k2[3]k3[3]
k2 = k2[0,2,1,3]
k4 = k4[0,2,1,3]
ptr1 += 96				
mem128[ptr1] aligned = k0; ptr1+=16	
mem128[ptr1] aligned = k2; ptr1+=16	
ptr1 -= 80				
k1 aligned = mem128[ptr1]
k1 = k1[0]k4[0]
ptr1 += 80				
mem128[ptr1] aligned = k1
2x _2k0 = k0 << 1
2x _2k2 = k2 << 1
2x _2k4 = k4 << 1
h0[0,1]  =   k0[0] unsigned*   k0[0]; h0[2,3]  =   k0[1] unsigned*   k0[1]		
h2[0,1]  = _2k0[2] unsigned*   k0[2]; h2[2,3]  = _2k0[3] unsigned*   k0[3]		
h4[0,1]  =   k2[0] unsigned*   k2[0]; h4[2,3]  =   k2[1] unsigned*   k2[1]		
h1[0,1]  = _2k2[2] unsigned*   k2[2]; h1[2,3]  = _2k2[3] unsigned*   k2[3]		
h3[0,1]  =   k4[0] unsigned*   k4[0]; h3[2,3]  =   k4[1] unsigned*   k4[1]		
h1[0,1] += _2k0[2] unsigned*   k0[0]; h1[2,3] += _2k0[3] unsigned*   k0[1]		
h2[0,1] += _2k2[0] unsigned*   k0[0]; h2[2,3] += _2k2[1] unsigned*   k0[1]		
h3[0,1] += _2k2[2] unsigned*   k0[0]; h3[2,3] += _2k2[3] unsigned*   k0[1]		
h4[0,1] += _2k4[0] unsigned*   k0[0]; h4[2,3] += _2k4[1] unsigned*   k0[1]		
h0[0,1] += _2k4[0] unsigned* _2k0[2]; h0[2,3] += _2k4[1] unsigned* _2k0[3]		
h4[0,1] += _2k2[2] unsigned* _2k0[2]; h4[2,3] += _2k2[3] unsigned* _2k0[3]		
h3[0,1] += _2k2[0] unsigned*   k0[2]; h3[2,3] += _2k2[1] unsigned*   k0[3]		
h0[0,1] += _2k2[2] unsigned* _2k2[0]; h0[2,3] += _2k2[3] unsigned* _2k2[1]		
h1[0,1] += _2k4[0] unsigned*   k2[0]; h1[2,3] += _2k4[1] unsigned*   k2[1]		
h2[0,1] += _2k4[0] unsigned* _2k2[2]; h2[2,3] += _2k4[1] unsigned* _2k2[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
2x _2h0 = h0 << 1
2x _2h2 = h2 << 1
2x _2h4 = h4 << 1
k0[0,1]  =   h0[0] unsigned*   h0[0]; k0[2,3]  =   h0[1] unsigned*   h0[1]		
k2[0,1]  = _2h0[2] unsigned*   h0[2]; k2[2,3]  = _2h0[3] unsigned*   h0[3]		
k4[0,1]  =   h2[0] unsigned*   h2[0]; k4[2,3]  =   h2[1] unsigned*   h2[1]		
k1[0,1]  = _2h2[2] unsigned*   h2[2]; k1[2,3]  = _2h2[3] unsigned*   h2[3]		
k3[0,1]  =   h4[0] unsigned*   h4[0]; k3[2,3]  =   h4[1] unsigned*   h4[1]		
k1[0,1] += _2h0[2] unsigned*   h0[0]; k1[2,3] += _2h0[3] unsigned*   h0[1]		
k2[0,1] += _2h2[0] unsigned*   h0[0]; k2[2,3] += _2h2[1] unsigned*   h0[1]		
k3[0,1] += _2h2[2] unsigned*   h0[0]; k3[2,3] += _2h2[3] unsigned*   h0[1]		
k4[0,1] += _2h4[0] unsigned*   h0[0]; k4[2,3] += _2h4[1] unsigned*   h0[1]		
k0[0,1] += _2h4[0] unsigned* _2h0[2]; k0[2,3] += _2h4[1] unsigned* _2h0[3]		
k4[0,1] += _2h2[2] unsigned* _2h0[2]; k4[2,3] += _2h2[3] unsigned* _2h0[3]		
k3[0,1] += _2h2[0] unsigned*   h0[2]; k3[2,3] += _2h2[1] unsigned*   h0[3]		
k0[0,1] += _2h2[2] unsigned* _2h2[0]; k0[2,3] += _2h2[3] unsigned* _2h2[1]		
k1[0,1] += _2h4[0] unsigned*   h2[0]; k1[2,3] += _2h4[1] unsigned*   h2[1]		
k2[0,1] += _2h4[0] unsigned* _2h2[2]; k2[2,3] += _2h4[1] unsigned* _2h2[3]		
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
2x t = k1 unsigned>> 25
2x k2 += t
k1 &= mask25
2x t = k2 unsigned>> 26
2x k3 += t
k2 &= mask26
2x t = k3 unsigned>> 25
2x k4 += t
k3 &= mask25
2x t = k4 unsigned>> 25
2x k0 += t
k4 &= mask25
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
k0 k1 = k0[0]k1[0]k0[2]k1[2] k0[1]k1[1]k0[3]k1[3]
k0 = k0[0,2,1,3]
k2 k3 = k2[0]k3[0]k2[2]k3[2] k2[1]k3[1]k2[3]k3[3]
k2 = k2[0,2,1,3]
k4 = k4[0,2,1,3]
a2 aligned = mem128[ptr1]
ptr1 -= 32				
a3 aligned = mem128[ptr1]; ptr1+=16	
a4 aligned = mem128[ptr1]; ptr1+=16	
2x _2a2 = a2 << 1
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  = k0[0] unsigned*   a3[0]; h0[2,3]  = k0[1] unsigned*   a3[1]		
h1[0,1]  = k0[2] unsigned*   a3[0]; h1[2,3]  = k0[3] unsigned*   a3[1]		
h2[0,1]  = k2[0] unsigned*   a3[0]; h2[2,3]  = k2[1] unsigned*   a3[1]		
h3[0,1]  = k2[2] unsigned*   a3[0]; h3[2,3]  = k2[3] unsigned*   a3[1]		
h4[0,1]  = k4[0] unsigned*   a3[0]; h4[2,3]  = k4[1] unsigned*   a3[1]		
h0[0,1] += k4[0] unsigned* _2a3[2]; h0[2,3] += k4[1] unsigned* _2a3[3]		
h1[0,1] += k0[0] unsigned*   a3[2]; h1[2,3] += k0[1] unsigned*   a3[3]		
h2[0,1] += k0[2] unsigned* _2a3[2]; h2[2,3] += k0[3] unsigned* _2a3[3]		
h3[0,1] += k2[0] unsigned*   a3[2]; h3[2,3] += k2[1] unsigned*   a3[3]		
h4[0,1] += k2[2] unsigned* _2a3[2]; h4[2,3] += k2[3] unsigned* _2a3[3]		
h0[0,1] += k2[2] unsigned* _2a4[0]; h0[2,3] += k2[3] unsigned* _2a4[1]		
h1[0,1] += k4[0] unsigned*   a4[0]; h1[2,3] += k4[1] unsigned*   a4[1]		
h2[0,1] += k0[0] unsigned*   a4[0]; h2[2,3] += k0[1] unsigned*   a4[1]		
h3[0,1] += k0[2] unsigned*   a4[0]; h3[2,3] += k0[3] unsigned*   a4[1]		
h4[0,1] += k2[0] unsigned*   a4[0]; h4[2,3] += k2[1] unsigned*   a4[1]		
h0[0,1] += k2[0] unsigned* _2a4[2]; h0[2,3] += k2[1] unsigned* _2a4[3]		
h1[0,1] += k2[2] unsigned* _2a4[2]; h1[2,3] += k2[3] unsigned* _2a4[3]		
h2[0,1] += k4[0] unsigned* _2a4[2]; h2[2,3] += k4[1] unsigned* _2a4[3]		
h3[0,1] += k0[0] unsigned*   a4[2]; h3[2,3] += k0[1] unsigned*   a4[3]		
h4[0,1] += k0[2] unsigned* _2a4[2]; h4[2,3] += k0[3] unsigned* _2a4[3]		
h0[0,1] += k0[2] unsigned* _2a2[2]; h0[2,3] += k0[3] unsigned* _2a2[3]		
h1[0,1] += k2[0] unsigned*   a2[2]; h1[2,3] += k2[1] unsigned*   a2[3]		
h2[0,1] += k2[2] unsigned* _2a2[2]; h2[2,3] += k2[3] unsigned* _2a2[3]		
h3[0,1] += k4[0] unsigned*   a2[2]; h3[2,3] += k4[1] unsigned*   a2[3]		
h4[0,1] += k0[0] unsigned*   a2[2]; h4[2,3] += k0[1] unsigned*   a2[3]		
ptr1 -= 128			
mask25 aligned = mem128[ptr1]
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
2x _2h0 = h0 << 1
2x _2h2 = h2 << 1
2x _2h4 = h4 << 1
k0[0,1]  =   h0[0] unsigned*   h0[0]; k0[2,3]  =   h0[1] unsigned*   h0[1]		
k2[0,1]  = _2h0[2] unsigned*   h0[2]; k2[2,3]  = _2h0[3] unsigned*   h0[3]		
k4[0,1]  =   h2[0] unsigned*   h2[0]; k4[2,3]  =   h2[1] unsigned*   h2[1]		
k1[0,1]  = _2h2[2] unsigned*   h2[2]; k1[2,3]  = _2h2[3] unsigned*   h2[3]		
k3[0,1]  =   h4[0] unsigned*   h4[0]; k3[2,3]  =   h4[1] unsigned*   h4[1]		
k1[0,1] += _2h0[2] unsigned*   h0[0]; k1[2,3] += _2h0[3] unsigned*   h0[1]		
k2[0,1] += _2h2[0] unsigned*   h0[0]; k2[2,3] += _2h2[1] unsigned*   h0[1]		
k3[0,1] += _2h2[2] unsigned*   h0[0]; k3[2,3] += _2h2[3] unsigned*   h0[1]		
k4[0,1] += _2h4[0] unsigned*   h0[0]; k4[2,3] += _2h4[1] unsigned*   h0[1]		
k0[0,1] += _2h4[0] unsigned* _2h0[2]; k0[2,3] += _2h4[1] unsigned* _2h0[3]		
k4[0,1] += _2h2[2] unsigned* _2h0[2]; k4[2,3] += _2h2[3] unsigned* _2h0[3]		
k3[0,1] += _2h2[0] unsigned*   h0[2]; k3[2,3] += _2h2[1] unsigned*   h0[3]		
k0[0,1] += _2h2[2] unsigned* _2h2[0]; k0[2,3] += _2h2[3] unsigned* _2h2[1]		
k1[0,1] += _2h4[0] unsigned*   h2[0]; k1[2,3] += _2h4[1] unsigned*   h2[1]		
k2[0,1] += _2h4[0] unsigned* _2h2[2]; k2[2,3] += _2h4[1] unsigned* _2h2[3]		
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
2x t = k1 unsigned>> 25
2x k2 += t
k1 &= mask25
2x t = k2 unsigned>> 26
2x k3 += t
k2 &= mask26
2x t = k3 unsigned>> 25
2x k4 += t
k3 &= mask25
2x t = k4 unsigned>> 25
2x k0 += t
k4 &= mask25
2x t = k0 unsigned>> 26
2x k1 += t
k0 &= mask26
k0 k1 = k0[0]k1[0]k0[2]k1[2] k0[1]k1[1]k0[3]k1[3]
k0 = k0[0,2,1,3]
k2 k3 = k2[0]k3[0]k2[2]k3[2] k2[1]k3[1]k2[3]k3[3]
k2 = k2[0,2,1,3]
k4 = k4[0,2,1,3]
adr1 = input_1 + 32
a2 aligned = mem128[adr1]; adr1+=16
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
2x _2a2 = a2 << 1
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  = k0[0] unsigned*   a3[0]; h0[2,3]  = k0[1] unsigned*   a3[1]		
h1[0,1]  = k0[2] unsigned*   a3[0]; h1[2,3]  = k0[3] unsigned*   a3[1]		
h2[0,1]  = k2[0] unsigned*   a3[0]; h2[2,3]  = k2[1] unsigned*   a3[1]		
h3[0,1]  = k2[2] unsigned*   a3[0]; h3[2,3]  = k2[3] unsigned*   a3[1]		
h4[0,1]  = k4[0] unsigned*   a3[0]; h4[2,3]  = k4[1] unsigned*   a3[1]		
h0[0,1] += k4[0] unsigned* _2a3[2]; h0[2,3] += k4[1] unsigned* _2a3[3]		
h1[0,1] += k0[0] unsigned*   a3[2]; h1[2,3] += k0[1] unsigned*   a3[3]		
h2[0,1] += k0[2] unsigned* _2a3[2]; h2[2,3] += k0[3] unsigned* _2a3[3]		
h3[0,1] += k2[0] unsigned*   a3[2]; h3[2,3] += k2[1] unsigned*   a3[3]		
h4[0,1] += k2[2] unsigned* _2a3[2]; h4[2,3] += k2[3] unsigned* _2a3[3]		
h0[0,1] += k2[2] unsigned* _2a4[0]; h0[2,3] += k2[3] unsigned* _2a4[1]		
h1[0,1] += k4[0] unsigned*   a4[0]; h1[2,3] += k4[1] unsigned*   a4[1]		
h2[0,1] += k0[0] unsigned*   a4[0]; h2[2,3] += k0[1] unsigned*   a4[1]		
h3[0,1] += k0[2] unsigned*   a4[0]; h3[2,3] += k0[3] unsigned*   a4[1]		
h4[0,1] += k2[0] unsigned*   a4[0]; h4[2,3] += k2[1] unsigned*   a4[1]		
h0[0,1] += k2[0] unsigned* _2a4[2]; h0[2,3] += k2[1] unsigned* _2a4[3]		
h1[0,1] += k2[2] unsigned* _2a4[2]; h1[2,3] += k2[3] unsigned* _2a4[3]		
h2[0,1] += k4[0] unsigned* _2a4[2]; h2[2,3] += k4[1] unsigned* _2a4[3]		
h3[0,1] += k0[0] unsigned*   a4[2]; h3[2,3] += k0[1] unsigned*   a4[3]		
h4[0,1] += k0[2] unsigned* _2a4[2]; h4[2,3] += k0[3] unsigned* _2a4[3]		
h0[0,1] += k0[2] unsigned* _2a2[2]; h0[2,3] += k0[3] unsigned* _2a2[3]		
h1[0,1] += k2[0] unsigned*   a2[2]; h1[2,3] += k2[1] unsigned*   a2[3]		
h2[0,1] += k2[2] unsigned* _2a2[2]; h2[2,3] += k2[3] unsigned* _2a2[3]		
h3[0,1] += k4[0] unsigned*   a2[2]; h3[2,3] += k4[1] unsigned*   a2[3]		
h4[0,1] += k0[0] unsigned*   a2[2]; h4[2,3] += k0[1] unsigned*   a2[3]		
mask25 aligned = mem128[ptr1]
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
s4 = s4[0]h4[0]
ptr1 += 48				
mem128[ptr1] aligned = s4; ptr1+=16	
mem128[ptr1] aligned = h0; ptr1+=16	
mem128[ptr1] aligned = h2; ptr1+=16	
ptr1 -= 80				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 = s4
a3 = h0
a4 = h2
ctr = 5
loop5:
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  =   a0[0] unsigned*   a0[0]; h0[2,3]  =   a0[1] unsigned*   a0[1]		
h2[0,1]  = _2a0[2] unsigned*   a0[2]; h2[2,3]  = _2a0[3] unsigned*   a0[3]		
h4[0,1]  =   a1[0] unsigned*   a1[0]; h4[2,3]  =   a1[1] unsigned*   a1[1]		
h1[0,1]  = _2a1[2] unsigned*   a1[2]; h1[2,3]  = _2a1[3] unsigned*   a1[3]		
h3[0,1]  =   a2[0] unsigned*   a2[0]; h3[2,3]  =   a2[1] unsigned*   a2[1]		
h1[0,1] += _2a0[2] unsigned*   a0[0]; h1[2,3] += _2a0[3] unsigned*   a0[1]		
h2[0,1] += _2a1[0] unsigned*   a0[0]; h2[2,3] += _2a1[1] unsigned*   a0[1]		
h3[0,1] += _2a1[2] unsigned*   a0[0]; h3[2,3] += _2a1[3] unsigned*   a0[1]		
h4[0,1] += _2a2[0] unsigned*   a0[0]; h4[2,3] += _2a2[1] unsigned*   a0[1]		
h0[0,1] += _2a2[0] unsigned* _2a0[2]; h0[2,3] += _2a2[1] unsigned* _2a0[3]		
h4[0,1] += _2a1[2] unsigned* _2a0[2]; h4[2,3] += _2a1[3] unsigned* _2a0[3]		
h3[0,1] += _2a1[0] unsigned*   a0[2]; h3[2,3] += _2a1[1] unsigned*   a0[3]		
h0[0,1] += _2a1[2] unsigned* _2a1[0]; h0[2,3] += _2a1[3] unsigned* _2a1[1]		
h1[0,1] += _2a2[0] unsigned*   a1[0]; h1[2,3] += _2a2[1] unsigned*   a1[1]		
h2[0,1] += _2a2[0] unsigned* _2a1[2]; h2[2,3] += _2a2[1] unsigned* _2a1[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
a0 = h0
a1 = h2
a2 = h4[0]a2[1]
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  =   a3[0] unsigned*   a3[0]; h0[2,3]  =   a3[1] unsigned*   a3[1]		
h2[0,1]  = _2a3[2] unsigned*   a3[2]; h2[2,3]  = _2a3[3] unsigned*   a3[3]		
h5[0,1]  =   a4[0] unsigned*   a4[0]; h5[2,3]  =   a4[1] unsigned*   a4[1]		
h1[0,1]  = _2a4[2] unsigned*   a4[2]; h1[2,3]  = _2a4[3] unsigned*   a4[3]		
h3[0,1]  =   a2[2] unsigned*   a2[2]; h3[2,3]  =   a2[3] unsigned*   a2[3]		
h1[0,1] += _2a3[2] unsigned*   a3[0]; h1[2,3] += _2a3[3] unsigned*   a3[1]		
h2[0,1] += _2a4[0] unsigned*   a3[0]; h2[2,3] += _2a4[1] unsigned*   a3[1]		
h3[0,1] += _2a4[2] unsigned*   a3[0]; h3[2,3] += _2a4[3] unsigned*   a3[1]		
h5[0,1] += _2a2[2] unsigned*   a3[0]; h5[2,3] += _2a2[3] unsigned*   a3[1]		
h0[0,1] += _2a2[2] unsigned* _2a3[2]; h0[2,3] += _2a2[3] unsigned* _2a3[3]		
h5[0,1] += _2a4[2] unsigned* _2a3[2]; h5[2,3] += _2a4[3] unsigned* _2a3[3]		
h3[0,1] += _2a4[0] unsigned*   a3[2]; h3[2,3] += _2a4[1] unsigned*   a3[3]		
h0[0,1] += _2a4[2] unsigned* _2a4[0]; h0[2,3] += _2a4[3] unsigned* _2a4[1]		
h1[0,1] += _2a2[2] unsigned*   a4[0]; h1[2,3] += _2a2[3] unsigned*   a4[1]		
h2[0,1] += _2a2[2] unsigned* _2a4[2]; h2[2,3] += _2a2[3] unsigned* _2a4[3]		
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
2x h5 += t
h3 &= mask25
2x t = h5 unsigned>> 25
2x h0 += t
h5 &= mask25
2x t = h0 unsigned>> 26
2x h1 += t
h0 &= mask26
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h5 = h5[0,2,1,3]
a3 = h0
a4 = h2
a2 = a2[0]h5[0]
ctr -= 1
unsigned>? ctr - 0
goto loop5 if unsigned>
adr0 = input_0 + 48
mem128[adr0] aligned = a3; adr0+=16
mem128[adr0] aligned = a4; adr0+=16
ptr1 -= 32				
b0 aligned = mem128[ptr1]; ptr1+=16	
b1 aligned = mem128[ptr1]; ptr1+=16	
b2 aligned = mem128[ptr1]; ptr1+=16	
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
r0[0,1]  =   a0[0] unsigned* b0[0]; r0[2,3]  =   a0[1] unsigned* b0[1]		
r1[0,1]  =   a0[2] unsigned* b0[0]; r1[2,3]  =   a0[3] unsigned* b0[1]		
r2[0,1]  =   a1[0] unsigned* b0[0]; r2[2,3]  =   a1[1] unsigned* b0[1]		
r3[0,1]  =   a1[2] unsigned* b0[0]; r3[2,3]  =   a1[3] unsigned* b0[1]		
r4[0,1]  =   a2[0] unsigned* b0[0]; r4[2,3]  =   a2[1] unsigned* b0[1]		
r0[0,1] += _2a2[0] unsigned* b0[2]; r0[2,3] += _2a2[1] unsigned* b0[3]		
r1[0,1] +=   a0[0] unsigned* b0[2]; r1[2,3] +=   a0[1] unsigned* b0[3]		
r2[0,1] += _2a0[2] unsigned* b0[2]; r2[2,3] += _2a0[3] unsigned* b0[3]		
r3[0,1] +=   a1[0] unsigned* b0[2]; r3[2,3] +=   a1[1] unsigned* b0[3]		
r4[0,1] += _2a1[2] unsigned* b0[2]; r4[2,3] += _2a1[3] unsigned* b0[3]		
r0[0,1] += _2a1[2] unsigned* b1[0]; r0[2,3] += _2a1[3] unsigned* b1[1]		
r1[0,1] +=   a2[0] unsigned* b1[0]; r1[2,3] +=   a2[1] unsigned* b1[1]		
r2[0,1] +=   a0[0] unsigned* b1[0]; r2[2,3] +=   a0[1] unsigned* b1[1]		
r3[0,1] +=   a0[2] unsigned* b1[0]; r3[2,3] +=   a0[3] unsigned* b1[1]		
r4[0,1] +=   a1[0] unsigned* b1[0]; r4[2,3] +=   a1[1] unsigned* b1[1]		
r0[0,1] += _2a1[0] unsigned* b1[2]; r0[2,3] += _2a1[1] unsigned* b1[3]		
r1[0,1] += _2a1[2] unsigned* b1[2]; r1[2,3] += _2a1[3] unsigned* b1[3]		
r2[0,1] += _2a2[0] unsigned* b1[2]; r2[2,3] += _2a2[1] unsigned* b1[3]		
r3[0,1] +=   a0[0] unsigned* b1[2]; r3[2,3] +=   a0[1] unsigned* b1[3]		
r4[0,1] += _2a0[2] unsigned* b1[2]; r4[2,3] += _2a0[3] unsigned* b1[3]		
r0[0,1] += _2a0[2] unsigned* b2[0]; r0[2,3] += _2a0[3] unsigned* b2[1]		
r1[0,1] +=   a1[0] unsigned* b2[0]; r1[2,3] +=   a1[1] unsigned* b2[1]		
r2[0,1] += _2a1[2] unsigned* b2[0]; r2[2,3] += _2a1[3] unsigned* b2[1]		
r3[0,1] +=   a2[0] unsigned* b2[0]; r3[2,3] +=   a2[1] unsigned* b2[1]		
r4[0,1] +=   a0[0] unsigned* b2[0]; r4[2,3] +=   a0[1] unsigned* b2[1]		
ptr1 -= 64					
mask25 aligned = mem128[ptr1]
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
ptr1 += 96				
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
adr1 = input_0 +48
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
ptr1 -= 64				
b3 aligned = mem128[ptr1]; ptr1+=16	
b4 aligned = mem128[ptr1]; ptr1+=16	
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
r0[0,1]  =   a3[0] unsigned* b3[0]; r0[2,3]  =   a3[1] unsigned* b3[1]		
r1[0,1]  =   a3[2] unsigned* b3[0]; r1[2,3]  =   a3[3] unsigned* b3[1]		
r2[0,1]  =   a4[0] unsigned* b3[0]; r2[2,3]  =   a4[1] unsigned* b3[1]		
r3[0,1]  =   a4[2] unsigned* b3[0]; r3[2,3]  =   a4[3] unsigned* b3[1]		
r5[0,1]  =   a2[2] unsigned* b3[0]; r5[2,3]  =   a2[3] unsigned* b3[1]		
r0[0,1] += _2a2[2] unsigned* b3[2]; r0[2,3] += _2a2[3] unsigned* b3[3]		
r1[0,1] +=   a3[0] unsigned* b3[2]; r1[2,3] +=   a3[1] unsigned* b3[3]		
r2[0,1] += _2a3[2] unsigned* b3[2]; r2[2,3] += _2a3[3] unsigned* b3[3]		
r3[0,1] +=   a4[0] unsigned* b3[2]; r3[2,3] +=   a4[1] unsigned* b3[3]		
r5[0,1] += _2a4[2] unsigned* b3[2]; r5[2,3] += _2a4[3] unsigned* b3[3]		
r0[0,1] += _2a4[2] unsigned* b4[0]; r0[2,3] += _2a4[3] unsigned* b4[1]		
r1[0,1] +=   a2[2] unsigned* b4[0]; r1[2,3] +=   a2[3] unsigned* b4[1]		
r2[0,1] +=   a3[0] unsigned* b4[0]; r2[2,3] +=   a3[1] unsigned* b4[1]		
r3[0,1] +=   a3[2] unsigned* b4[0]; r3[2,3] +=   a3[3] unsigned* b4[1]		
r5[0,1] +=   a4[0] unsigned* b4[0]; r5[2,3] +=   a4[1] unsigned* b4[1]		
r0[0,1] += _2a4[0] unsigned* b4[2]; r0[2,3] += _2a4[1] unsigned* b4[3]		
r1[0,1] += _2a4[2] unsigned* b4[2]; r1[2,3] += _2a4[3] unsigned* b4[3]		
r2[0,1] += _2a2[2] unsigned* b4[2]; r2[2,3] += _2a2[3] unsigned* b4[3]		
r3[0,1] +=   a3[0] unsigned* b4[2]; r3[2,3] +=   a3[1] unsigned* b4[3]		
r5[0,1] += _2a3[2] unsigned* b4[2]; r5[2,3] += _2a3[3] unsigned* b4[3]		
r0[0,1] += _2a3[2] unsigned* b2[2]; r0[2,3] += _2a3[3] unsigned* b2[3]		
r1[0,1] +=   a4[0] unsigned* b2[2]; r1[2,3] +=   a4[1] unsigned* b2[3]		
r2[0,1] += _2a4[2] unsigned* b2[2]; r2[2,3] += _2a4[3] unsigned* b2[3]		
r3[0,1] +=   a2[2] unsigned* b2[2]; r3[2,3] +=   a2[3] unsigned* b2[3]		
r5[0,1] +=   a3[0] unsigned* b2[2]; r5[2,3] +=   a3[1] unsigned* b2[3]		
ptr1 -= 96					
mask25 aligned = mem128[ptr1]
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
ptr1 += 128				
mem128[ptr1] aligned = r4; ptr1+=16	
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 -= 80				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 = r4
a3 = r0
a4 = r2
ctr = 10
loop10:
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  =   a0[0] unsigned*   a0[0]; h0[2,3]  =   a0[1] unsigned*   a0[1]		
h2[0,1]  = _2a0[2] unsigned*   a0[2]; h2[2,3]  = _2a0[3] unsigned*   a0[3]		
h4[0,1]  =   a1[0] unsigned*   a1[0]; h4[2,3]  =   a1[1] unsigned*   a1[1]		
h1[0,1]  = _2a1[2] unsigned*   a1[2]; h1[2,3]  = _2a1[3] unsigned*   a1[3]		
h3[0,1]  =   a2[0] unsigned*   a2[0]; h3[2,3]  =   a2[1] unsigned*   a2[1]		
h1[0,1] += _2a0[2] unsigned*   a0[0]; h1[2,3] += _2a0[3] unsigned*   a0[1]		
h2[0,1] += _2a1[0] unsigned*   a0[0]; h2[2,3] += _2a1[1] unsigned*   a0[1]		
h3[0,1] += _2a1[2] unsigned*   a0[0]; h3[2,3] += _2a1[3] unsigned*   a0[1]		
h4[0,1] += _2a2[0] unsigned*   a0[0]; h4[2,3] += _2a2[1] unsigned*   a0[1]		
h0[0,1] += _2a2[0] unsigned* _2a0[2]; h0[2,3] += _2a2[1] unsigned* _2a0[3]		
h4[0,1] += _2a1[2] unsigned* _2a0[2]; h4[2,3] += _2a1[3] unsigned* _2a0[3]		
h3[0,1] += _2a1[0] unsigned*   a0[2]; h3[2,3] += _2a1[1] unsigned*   a0[3]		
h0[0,1] += _2a1[2] unsigned* _2a1[0]; h0[2,3] += _2a1[3] unsigned* _2a1[1]		
h1[0,1] += _2a2[0] unsigned*   a1[0]; h1[2,3] += _2a2[1] unsigned*   a1[1]		
h2[0,1] += _2a2[0] unsigned* _2a1[2]; h2[2,3] += _2a2[1] unsigned* _2a1[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
a0 = h0
a1 = h2
a2 = h4[0]a2[1]
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  =   a3[0] unsigned*   a3[0]; h0[2,3]  =   a3[1] unsigned*   a3[1]		
h2[0,1]  = _2a3[2] unsigned*   a3[2]; h2[2,3]  = _2a3[3] unsigned*   a3[3]		
h5[0,1]  =   a4[0] unsigned*   a4[0]; h5[2,3]  =   a4[1] unsigned*   a4[1]		
h1[0,1]  = _2a4[2] unsigned*   a4[2]; h1[2,3]  = _2a4[3] unsigned*   a4[3]		
h3[0,1]  =   a2[2] unsigned*   a2[2]; h3[2,3]  =   a2[3] unsigned*   a2[3]		
h1[0,1] += _2a3[2] unsigned*   a3[0]; h1[2,3] += _2a3[3] unsigned*   a3[1]		
h2[0,1] += _2a4[0] unsigned*   a3[0]; h2[2,3] += _2a4[1] unsigned*   a3[1]		
h3[0,1] += _2a4[2] unsigned*   a3[0]; h3[2,3] += _2a4[3] unsigned*   a3[1]		
h5[0,1] += _2a2[2] unsigned*   a3[0]; h5[2,3] += _2a2[3] unsigned*   a3[1]		
h0[0,1] += _2a2[2] unsigned* _2a3[2]; h0[2,3] += _2a2[3] unsigned* _2a3[3]		
h5[0,1] += _2a4[2] unsigned* _2a3[2]; h5[2,3] += _2a4[3] unsigned* _2a3[3]		
h3[0,1] += _2a4[0] unsigned*   a3[2]; h3[2,3] += _2a4[1] unsigned*   a3[3]		
h0[0,1] += _2a4[2] unsigned* _2a4[0]; h0[2,3] += _2a4[3] unsigned* _2a4[1]		
h1[0,1] += _2a2[2] unsigned*   a4[0]; h1[2,3] += _2a2[3] unsigned*   a4[1]		
h2[0,1] += _2a2[2] unsigned* _2a4[2]; h2[2,3] += _2a2[3] unsigned* _2a4[3]		
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
2x h5 += t
h3 &= mask25
2x t = h5 unsigned>> 25
2x h0 += t
h5 &= mask25
2x t = h0 unsigned>> 26
2x h1 += t
h0 &= mask26
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h5 = h5[0,2,1,3]
a3 = h0
a4 = h2
a2 = a2[0]h5[0]
ctr -= 1
unsigned>? ctr - 0
goto loop10 if unsigned>
adr0 = input_0 + 48
mem128[adr0] aligned = a3; adr0+=16
mem128[adr0] aligned = a4; adr0+=16
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
ptr1 -= 32				
b0 aligned = mem128[ptr1]; ptr1+=16	
b1 aligned = mem128[ptr1]; ptr1+=16	
b2 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a0[0] unsigned* b0[0]; r0[2,3]  =   a0[1] unsigned* b0[1]		
r1[0,1]  =   a0[2] unsigned* b0[0]; r1[2,3]  =   a0[3] unsigned* b0[1]		
r2[0,1]  =   a1[0] unsigned* b0[0]; r2[2,3]  =   a1[1] unsigned* b0[1]		
r3[0,1]  =   a1[2] unsigned* b0[0]; r3[2,3]  =   a1[3] unsigned* b0[1]		
r4[0,1]  =   a2[0] unsigned* b0[0]; r4[2,3]  =   a2[1] unsigned* b0[1]		
r0[0,1] += _2a2[0] unsigned* b0[2]; r0[2,3] += _2a2[1] unsigned* b0[3]		
r1[0,1] +=   a0[0] unsigned* b0[2]; r1[2,3] +=   a0[1] unsigned* b0[3]		
r2[0,1] += _2a0[2] unsigned* b0[2]; r2[2,3] += _2a0[3] unsigned* b0[3]		
r3[0,1] +=   a1[0] unsigned* b0[2]; r3[2,3] +=   a1[1] unsigned* b0[3]		
r4[0,1] += _2a1[2] unsigned* b0[2]; r4[2,3] += _2a1[3] unsigned* b0[3]		
r0[0,1] += _2a1[2] unsigned* b1[0]; r0[2,3] += _2a1[3] unsigned* b1[1]		
r1[0,1] +=   a2[0] unsigned* b1[0]; r1[2,3] +=   a2[1] unsigned* b1[1]		
r2[0,1] +=   a0[0] unsigned* b1[0]; r2[2,3] +=   a0[1] unsigned* b1[1]		
r3[0,1] +=   a0[2] unsigned* b1[0]; r3[2,3] +=   a0[3] unsigned* b1[1]		
r4[0,1] +=   a1[0] unsigned* b1[0]; r4[2,3] +=   a1[1] unsigned* b1[1]		
r0[0,1] += _2a1[0] unsigned* b1[2]; r0[2,3] += _2a1[1] unsigned* b1[3]		
r1[0,1] += _2a1[2] unsigned* b1[2]; r1[2,3] += _2a1[3] unsigned* b1[3]		
r2[0,1] += _2a2[0] unsigned* b1[2]; r2[2,3] += _2a2[1] unsigned* b1[3]		
r3[0,1] +=   a0[0] unsigned* b1[2]; r3[2,3] +=   a0[1] unsigned* b1[3]		
r4[0,1] += _2a0[2] unsigned* b1[2]; r4[2,3] += _2a0[3] unsigned* b1[3]		
r0[0,1] += _2a0[2] unsigned* b2[0]; r0[2,3] += _2a0[3] unsigned* b2[1]		
r1[0,1] +=   a1[0] unsigned* b2[0]; r1[2,3] +=   a1[1] unsigned* b2[1]		
r2[0,1] += _2a1[2] unsigned* b2[0]; r2[2,3] += _2a1[3] unsigned* b2[1]		
r3[0,1] +=   a2[0] unsigned* b2[0]; r3[2,3] +=   a2[1] unsigned* b2[1]		
r4[0,1] +=   a0[0] unsigned* b2[0]; r4[2,3] +=   a0[1] unsigned* b2[1]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
ptr1 += 32				
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
adr1 = input_0 + 48
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
ptr1 -= 64				
b3 aligned = mem128[ptr1]; ptr1+=16	
b4 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a3[0] unsigned* b3[0]; r0[2,3]  =   a3[1] unsigned* b3[1]		
r1[0,1]  =   a3[2] unsigned* b3[0]; r1[2,3]  =   a3[3] unsigned* b3[1]		
r2[0,1]  =   a4[0] unsigned* b3[0]; r2[2,3]  =   a4[1] unsigned* b3[1]		
r3[0,1]  =   a4[2] unsigned* b3[0]; r3[2,3]  =   a4[3] unsigned* b3[1]		
r5[0,1]  =   a2[2] unsigned* b3[0]; r5[2,3]  =   a2[3] unsigned* b3[1]		
r0[0,1] += _2a2[2] unsigned* b3[2]; r0[2,3] += _2a2[3] unsigned* b3[3]		
r1[0,1] +=   a3[0] unsigned* b3[2]; r1[2,3] +=   a3[1] unsigned* b3[3]		
r2[0,1] += _2a3[2] unsigned* b3[2]; r2[2,3] += _2a3[3] unsigned* b3[3]		
r3[0,1] +=   a4[0] unsigned* b3[2]; r3[2,3] +=   a4[1] unsigned* b3[3]		
r5[0,1] += _2a4[2] unsigned* b3[2]; r5[2,3] += _2a4[3] unsigned* b3[3]		
r0[0,1] += _2a4[2] unsigned* b4[0]; r0[2,3] += _2a4[3] unsigned* b4[1]		
r1[0,1] +=   a2[2] unsigned* b4[0]; r1[2,3] +=   a2[3] unsigned* b4[1]		
r2[0,1] +=   a3[0] unsigned* b4[0]; r2[2,3] +=   a3[1] unsigned* b4[1]		
r3[0,1] +=   a3[2] unsigned* b4[0]; r3[2,3] +=   a3[3] unsigned* b4[1]		
r5[0,1] +=   a4[0] unsigned* b4[0]; r5[2,3] +=   a4[1] unsigned* b4[1]		
r0[0,1] += _2a4[0] unsigned* b4[2]; r0[2,3] += _2a4[1] unsigned* b4[3]		
r1[0,1] += _2a4[2] unsigned* b4[2]; r1[2,3] += _2a4[3] unsigned* b4[3]		
r2[0,1] += _2a2[2] unsigned* b4[2]; r2[2,3] += _2a2[3] unsigned* b4[3]		
r3[0,1] +=   a3[0] unsigned* b4[2]; r3[2,3] +=   a3[1] unsigned* b4[3]		
r5[0,1] += _2a3[2] unsigned* b4[2]; r5[2,3] += _2a3[3] unsigned* b4[3]		
r0[0,1] += _2a3[2] unsigned* b2[2]; r0[2,3] += _2a3[3] unsigned* b2[3]		
r1[0,1] +=   a4[0] unsigned* b2[2]; r1[2,3] +=   a4[1] unsigned* b2[3]		
r2[0,1] += _2a4[2] unsigned* b2[2]; r2[2,3] += _2a4[3] unsigned* b2[3]		
r3[0,1] +=   a2[2] unsigned* b2[2]; r3[2,3] +=   a2[3] unsigned* b2[3]		
r5[0,1] +=   a3[0] unsigned* b2[2]; r5[2,3] +=   a3[1] unsigned* b2[3]		
ptr1 -= 176				
mask25 aligned = mem128[ptr1]
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
ptr1 += 208				
mem128[ptr1] aligned = r4; ptr1+=16	
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 -= 80				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 = r4
a3 = r0
a4 = r2
ctr = 20
loop20:
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  =   a0[0] unsigned*   a0[0]; h0[2,3]  =   a0[1] unsigned*   a0[1]		
h2[0,1]  = _2a0[2] unsigned*   a0[2]; h2[2,3]  = _2a0[3] unsigned*   a0[3]		
h4[0,1]  =   a1[0] unsigned*   a1[0]; h4[2,3]  =   a1[1] unsigned*   a1[1]		
h1[0,1]  = _2a1[2] unsigned*   a1[2]; h1[2,3]  = _2a1[3] unsigned*   a1[3]		
h3[0,1]  =   a2[0] unsigned*   a2[0]; h3[2,3]  =   a2[1] unsigned*   a2[1]		
h1[0,1] += _2a0[2] unsigned*   a0[0]; h1[2,3] += _2a0[3] unsigned*   a0[1]		
h2[0,1] += _2a1[0] unsigned*   a0[0]; h2[2,3] += _2a1[1] unsigned*   a0[1]		
h3[0,1] += _2a1[2] unsigned*   a0[0]; h3[2,3] += _2a1[3] unsigned*   a0[1]		
h4[0,1] += _2a2[0] unsigned*   a0[0]; h4[2,3] += _2a2[1] unsigned*   a0[1]		
h0[0,1] += _2a2[0] unsigned* _2a0[2]; h0[2,3] += _2a2[1] unsigned* _2a0[3]		
h4[0,1] += _2a1[2] unsigned* _2a0[2]; h4[2,3] += _2a1[3] unsigned* _2a0[3]		
h3[0,1] += _2a1[0] unsigned*   a0[2]; h3[2,3] += _2a1[1] unsigned*   a0[3]		
h0[0,1] += _2a1[2] unsigned* _2a1[0]; h0[2,3] += _2a1[3] unsigned* _2a1[1]		
h1[0,1] += _2a2[0] unsigned*   a1[0]; h1[2,3] += _2a2[1] unsigned*   a1[1]		
h2[0,1] += _2a2[0] unsigned* _2a1[2]; h2[2,3] += _2a2[1] unsigned* _2a1[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
a0 = h0
a1 = h2
a2 = h4[0]a2[1]
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  =   a3[0] unsigned*   a3[0]; h0[2,3]  =   a3[1] unsigned*   a3[1]		
h2[0,1]  = _2a3[2] unsigned*   a3[2]; h2[2,3]  = _2a3[3] unsigned*   a3[3]		
h5[0,1]  =   a4[0] unsigned*   a4[0]; h5[2,3]  =   a4[1] unsigned*   a4[1]		
h1[0,1]  = _2a4[2] unsigned*   a4[2]; h1[2,3]  = _2a4[3] unsigned*   a4[3]		
h3[0,1]  =   a2[2] unsigned*   a2[2]; h3[2,3]  =   a2[3] unsigned*   a2[3]		
h1[0,1] += _2a3[2] unsigned*   a3[0]; h1[2,3] += _2a3[3] unsigned*   a3[1]		
h2[0,1] += _2a4[0] unsigned*   a3[0]; h2[2,3] += _2a4[1] unsigned*   a3[1]		
h3[0,1] += _2a4[2] unsigned*   a3[0]; h3[2,3] += _2a4[3] unsigned*   a3[1]		
h5[0,1] += _2a2[2] unsigned*   a3[0]; h5[2,3] += _2a2[3] unsigned*   a3[1]		
h0[0,1] += _2a2[2] unsigned* _2a3[2]; h0[2,3] += _2a2[3] unsigned* _2a3[3]		
h5[0,1] += _2a4[2] unsigned* _2a3[2]; h5[2,3] += _2a4[3] unsigned* _2a3[3]		
h3[0,1] += _2a4[0] unsigned*   a3[2]; h3[2,3] += _2a4[1] unsigned*   a3[3]		
h0[0,1] += _2a4[2] unsigned* _2a4[0]; h0[2,3] += _2a4[3] unsigned* _2a4[1]		
h1[0,1] += _2a2[2] unsigned*   a4[0]; h1[2,3] += _2a2[3] unsigned*   a4[1]		
h2[0,1] += _2a2[2] unsigned* _2a4[2]; h2[2,3] += _2a2[3] unsigned* _2a4[3]		
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
2x h5 += t
h3 &= mask25
2x t = h5 unsigned>> 25
2x h0 += t
h5 &= mask25
2x t = h0 unsigned>> 26
2x h1 += t
h0 &= mask26
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h5 = h5[0,2,1,3]
a3 = h0
a4 = h2
a2 = a2[0]h5[0]
ctr -= 1
unsigned>? ctr - 0
goto loop20 if unsigned>
adr0 = input_0 + 48
mem128[adr0] aligned = a3; adr0+=16
mem128[adr0] aligned = a4; adr0+=16
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
ptr1 -= 32				
b0 aligned = mem128[ptr1]; ptr1+=16	
b1 aligned = mem128[ptr1]; ptr1+=16	
b2 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a0[0] unsigned* b0[0]; r0[2,3]  =   a0[1] unsigned* b0[1]		
r1[0,1]  =   a0[2] unsigned* b0[0]; r1[2,3]  =   a0[3] unsigned* b0[1]		
r2[0,1]  =   a1[0] unsigned* b0[0]; r2[2,3]  =   a1[1] unsigned* b0[1]		
r3[0,1]  =   a1[2] unsigned* b0[0]; r3[2,3]  =   a1[3] unsigned* b0[1]		
r4[0,1]  =   a2[0] unsigned* b0[0]; r4[2,3]  =   a2[1] unsigned* b0[1]		
r0[0,1] += _2a2[0] unsigned* b0[2]; r0[2,3] += _2a2[1] unsigned* b0[3]		
r1[0,1] +=   a0[0] unsigned* b0[2]; r1[2,3] +=   a0[1] unsigned* b0[3]		
r2[0,1] += _2a0[2] unsigned* b0[2]; r2[2,3] += _2a0[3] unsigned* b0[3]		
r3[0,1] +=   a1[0] unsigned* b0[2]; r3[2,3] +=   a1[1] unsigned* b0[3]		
r4[0,1] += _2a1[2] unsigned* b0[2]; r4[2,3] += _2a1[3] unsigned* b0[3]		
r0[0,1] += _2a1[2] unsigned* b1[0]; r0[2,3] += _2a1[3] unsigned* b1[1]		
r1[0,1] +=   a2[0] unsigned* b1[0]; r1[2,3] +=   a2[1] unsigned* b1[1]		
r2[0,1] +=   a0[0] unsigned* b1[0]; r2[2,3] +=   a0[1] unsigned* b1[1]		
r3[0,1] +=   a0[2] unsigned* b1[0]; r3[2,3] +=   a0[3] unsigned* b1[1]		
r4[0,1] +=   a1[0] unsigned* b1[0]; r4[2,3] +=   a1[1] unsigned* b1[1]		
r0[0,1] += _2a1[0] unsigned* b1[2]; r0[2,3] += _2a1[1] unsigned* b1[3]		
r1[0,1] += _2a1[2] unsigned* b1[2]; r1[2,3] += _2a1[3] unsigned* b1[3]		
r2[0,1] += _2a2[0] unsigned* b1[2]; r2[2,3] += _2a2[1] unsigned* b1[3]		
r3[0,1] +=   a0[0] unsigned* b1[2]; r3[2,3] +=   a0[1] unsigned* b1[3]		
r4[0,1] += _2a0[2] unsigned* b1[2]; r4[2,3] += _2a0[3] unsigned* b1[3]		
r0[0,1] += _2a0[2] unsigned* b2[0]; r0[2,3] += _2a0[3] unsigned* b2[1]		
r1[0,1] +=   a1[0] unsigned* b2[0]; r1[2,3] +=   a1[1] unsigned* b2[1]		
r2[0,1] += _2a1[2] unsigned* b2[0]; r2[2,3] += _2a1[3] unsigned* b2[1]		
r3[0,1] +=   a2[0] unsigned* b2[0]; r3[2,3] +=   a2[1] unsigned* b2[1]		
r4[0,1] +=   a0[0] unsigned* b2[0]; r4[2,3] +=   a0[1] unsigned* b2[1]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
ptr1 -= 128				
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
adr1 = input_0 + 48
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
ptr1 += 96				
b3 aligned = mem128[ptr1]; ptr1+=16	
b4 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a3[0] unsigned* b3[0]; r0[2,3]  =   a3[1] unsigned* b3[1]		
r1[0,1]  =   a3[2] unsigned* b3[0]; r1[2,3]  =   a3[3] unsigned* b3[1]		
r2[0,1]  =   a4[0] unsigned* b3[0]; r2[2,3]  =   a4[1] unsigned* b3[1]		
r3[0,1]  =   a4[2] unsigned* b3[0]; r3[2,3]  =   a4[3] unsigned* b3[1]		
r5[0,1]  =   a2[2] unsigned* b3[0]; r5[2,3]  =   a2[3] unsigned* b3[1]		
r0[0,1] += _2a2[2] unsigned* b3[2]; r0[2,3] += _2a2[3] unsigned* b3[3]		
r1[0,1] +=   a3[0] unsigned* b3[2]; r1[2,3] +=   a3[1] unsigned* b3[3]		
r2[0,1] += _2a3[2] unsigned* b3[2]; r2[2,3] += _2a3[3] unsigned* b3[3]		
r3[0,1] +=   a4[0] unsigned* b3[2]; r3[2,3] +=   a4[1] unsigned* b3[3]		
r5[0,1] += _2a4[2] unsigned* b3[2]; r5[2,3] += _2a4[3] unsigned* b3[3]		
r0[0,1] += _2a4[2] unsigned* b4[0]; r0[2,3] += _2a4[3] unsigned* b4[1]		
r1[0,1] +=   a2[2] unsigned* b4[0]; r1[2,3] +=   a2[3] unsigned* b4[1]		
r2[0,1] +=   a3[0] unsigned* b4[0]; r2[2,3] +=   a3[1] unsigned* b4[1]		
r3[0,1] +=   a3[2] unsigned* b4[0]; r3[2,3] +=   a3[3] unsigned* b4[1]		
r5[0,1] +=   a4[0] unsigned* b4[0]; r5[2,3] +=   a4[1] unsigned* b4[1]		
r0[0,1] += _2a4[0] unsigned* b4[2]; r0[2,3] += _2a4[1] unsigned* b4[3]		
r1[0,1] += _2a4[2] unsigned* b4[2]; r1[2,3] += _2a4[3] unsigned* b4[3]		
r2[0,1] += _2a2[2] unsigned* b4[2]; r2[2,3] += _2a2[3] unsigned* b4[3]		
r3[0,1] +=   a3[0] unsigned* b4[2]; r3[2,3] +=   a3[1] unsigned* b4[3]		
r5[0,1] += _2a3[2] unsigned* b4[2]; r5[2,3] += _2a3[3] unsigned* b4[3]		
r0[0,1] += _2a3[2] unsigned* b2[2]; r0[2,3] += _2a3[3] unsigned* b2[3]		
r1[0,1] +=   a4[0] unsigned* b2[2]; r1[2,3] +=   a4[1] unsigned* b2[3]		
r2[0,1] += _2a4[2] unsigned* b2[2]; r2[2,3] += _2a4[3] unsigned* b2[3]		
r3[0,1] +=   a2[2] unsigned* b2[2]; r3[2,3] +=   a2[3] unsigned* b2[3]		
r5[0,1] +=   a3[0] unsigned* b2[2]; r5[2,3] +=   a3[1] unsigned* b2[3]		
ptr1 -= 256			
mask25 aligned = mem128[ptr1]
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
ptr1 += 128				
mem128[ptr1] aligned = r4; ptr1+=16	
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 -= 80				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 = r4
a3 = r0
a4 = r2
ctr = 40
loop40:
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  =   a0[0] unsigned*   a0[0]; h0[2,3]  =   a0[1] unsigned*   a0[1]		
h2[0,1]  = _2a0[2] unsigned*   a0[2]; h2[2,3]  = _2a0[3] unsigned*   a0[3]		
h4[0,1]  =   a1[0] unsigned*   a1[0]; h4[2,3]  =   a1[1] unsigned*   a1[1]		
h1[0,1]  = _2a1[2] unsigned*   a1[2]; h1[2,3]  = _2a1[3] unsigned*   a1[3]		
h3[0,1]  =   a2[0] unsigned*   a2[0]; h3[2,3]  =   a2[1] unsigned*   a2[1]		
h1[0,1] += _2a0[2] unsigned*   a0[0]; h1[2,3] += _2a0[3] unsigned*   a0[1]		
h2[0,1] += _2a1[0] unsigned*   a0[0]; h2[2,3] += _2a1[1] unsigned*   a0[1]		
h3[0,1] += _2a1[2] unsigned*   a0[0]; h3[2,3] += _2a1[3] unsigned*   a0[1]		
h4[0,1] += _2a2[0] unsigned*   a0[0]; h4[2,3] += _2a2[1] unsigned*   a0[1]		
h0[0,1] += _2a2[0] unsigned* _2a0[2]; h0[2,3] += _2a2[1] unsigned* _2a0[3]		
h4[0,1] += _2a1[2] unsigned* _2a0[2]; h4[2,3] += _2a1[3] unsigned* _2a0[3]		
h3[0,1] += _2a1[0] unsigned*   a0[2]; h3[2,3] += _2a1[1] unsigned*   a0[3]		
h0[0,1] += _2a1[2] unsigned* _2a1[0]; h0[2,3] += _2a1[3] unsigned* _2a1[1]		
h1[0,1] += _2a2[0] unsigned*   a1[0]; h1[2,3] += _2a2[1] unsigned*   a1[1]		
h2[0,1] += _2a2[0] unsigned* _2a1[2]; h2[2,3] += _2a2[1] unsigned* _2a1[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
a0 = h0
a1 = h2
a2 = h4[0]a2[1]
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  =   a3[0] unsigned*   a3[0]; h0[2,3]  =   a3[1] unsigned*   a3[1]		
h2[0,1]  = _2a3[2] unsigned*   a3[2]; h2[2,3]  = _2a3[3] unsigned*   a3[3]		
h5[0,1]  =   a4[0] unsigned*   a4[0]; h5[2,3]  =   a4[1] unsigned*   a4[1]		
h1[0,1]  = _2a4[2] unsigned*   a4[2]; h1[2,3]  = _2a4[3] unsigned*   a4[3]		
h3[0,1]  =   a2[2] unsigned*   a2[2]; h3[2,3]  =   a2[3] unsigned*   a2[3]		
h1[0,1] += _2a3[2] unsigned*   a3[0]; h1[2,3] += _2a3[3] unsigned*   a3[1]		
h2[0,1] += _2a4[0] unsigned*   a3[0]; h2[2,3] += _2a4[1] unsigned*   a3[1]		
h3[0,1] += _2a4[2] unsigned*   a3[0]; h3[2,3] += _2a4[3] unsigned*   a3[1]		
h5[0,1] += _2a2[2] unsigned*   a3[0]; h5[2,3] += _2a2[3] unsigned*   a3[1]		
h0[0,1] += _2a2[2] unsigned* _2a3[2]; h0[2,3] += _2a2[3] unsigned* _2a3[3]		
h5[0,1] += _2a4[2] unsigned* _2a3[2]; h5[2,3] += _2a4[3] unsigned* _2a3[3]		
h3[0,1] += _2a4[0] unsigned*   a3[2]; h3[2,3] += _2a4[1] unsigned*   a3[3]		
h0[0,1] += _2a4[2] unsigned* _2a4[0]; h0[2,3] += _2a4[3] unsigned* _2a4[1]		
h1[0,1] += _2a2[2] unsigned*   a4[0]; h1[2,3] += _2a2[3] unsigned*   a4[1]		
h2[0,1] += _2a2[2] unsigned* _2a4[2]; h2[2,3] += _2a2[3] unsigned* _2a4[3]		
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
2x h5 += t
h3 &= mask25
2x t = h5 unsigned>> 25
2x h0 += t
h5 &= mask25
2x t = h0 unsigned>> 26
2x h1 += t
h0 &= mask26
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h5 = h5[0,2,1,3]
a3 = h0
a4 = h2
a2 = a2[0]h5[0]
ctr -= 1
unsigned>? ctr - 0
goto loop40 if unsigned>
adr0 = input_0 + 48
mem128[adr0] aligned = a3; adr0+=16
mem128[adr0] aligned = a4; adr0+=16
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
ptr1 -= 32				
b0 aligned = mem128[ptr1]; ptr1+=16	
b1 aligned = mem128[ptr1]; ptr1+=16	
b2 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a0[0] unsigned* b0[0]; r0[2,3]  =   a0[1] unsigned* b0[1]		
r1[0,1]  =   a0[2] unsigned* b0[0]; r1[2,3]  =   a0[3] unsigned* b0[1]		
r2[0,1]  =   a1[0] unsigned* b0[0]; r2[2,3]  =   a1[1] unsigned* b0[1]		
r3[0,1]  =   a1[2] unsigned* b0[0]; r3[2,3]  =   a1[3] unsigned* b0[1]		
r4[0,1]  =   a2[0] unsigned* b0[0]; r4[2,3]  =   a2[1] unsigned* b0[1]		
r0[0,1] += _2a2[0] unsigned* b0[2]; r0[2,3] += _2a2[1] unsigned* b0[3]		
r1[0,1] +=   a0[0] unsigned* b0[2]; r1[2,3] +=   a0[1] unsigned* b0[3]		
r2[0,1] += _2a0[2] unsigned* b0[2]; r2[2,3] += _2a0[3] unsigned* b0[3]		
r3[0,1] +=   a1[0] unsigned* b0[2]; r3[2,3] +=   a1[1] unsigned* b0[3]		
r4[0,1] += _2a1[2] unsigned* b0[2]; r4[2,3] += _2a1[3] unsigned* b0[3]		
r0[0,1] += _2a1[2] unsigned* b1[0]; r0[2,3] += _2a1[3] unsigned* b1[1]		
r1[0,1] +=   a2[0] unsigned* b1[0]; r1[2,3] +=   a2[1] unsigned* b1[1]		
r2[0,1] +=   a0[0] unsigned* b1[0]; r2[2,3] +=   a0[1] unsigned* b1[1]		
r3[0,1] +=   a0[2] unsigned* b1[0]; r3[2,3] +=   a0[3] unsigned* b1[1]		
r4[0,1] +=   a1[0] unsigned* b1[0]; r4[2,3] +=   a1[1] unsigned* b1[1]		
r0[0,1] += _2a1[0] unsigned* b1[2]; r0[2,3] += _2a1[1] unsigned* b1[3]		
r1[0,1] += _2a1[2] unsigned* b1[2]; r1[2,3] += _2a1[3] unsigned* b1[3]		
r2[0,1] += _2a2[0] unsigned* b1[2]; r2[2,3] += _2a2[1] unsigned* b1[3]		
r3[0,1] +=   a0[0] unsigned* b1[2]; r3[2,3] +=   a0[1] unsigned* b1[3]		
r4[0,1] += _2a0[2] unsigned* b1[2]; r4[2,3] += _2a0[3] unsigned* b1[3]		
r0[0,1] += _2a0[2] unsigned* b2[0]; r0[2,3] += _2a0[3] unsigned* b2[1]		
r1[0,1] +=   a1[0] unsigned* b2[0]; r1[2,3] +=   a1[1] unsigned* b2[1]		
r2[0,1] += _2a1[2] unsigned* b2[0]; r2[2,3] += _2a1[3] unsigned* b2[1]		
r3[0,1] +=   a2[0] unsigned* b2[0]; r3[2,3] +=   a2[1] unsigned* b2[1]		
r4[0,1] +=   a0[0] unsigned* b2[0]; r4[2,3] +=   a0[1] unsigned* b2[1]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
ptr1 += 32				
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
adr1 = input_0 + 48
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
ptr1 -= 64				
b3 aligned = mem128[ptr1]; ptr1+=16	
b4 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a3[0] unsigned* b3[0]; r0[2,3]  =   a3[1] unsigned* b3[1]		
r1[0,1]  =   a3[2] unsigned* b3[0]; r1[2,3]  =   a3[3] unsigned* b3[1]		
r2[0,1]  =   a4[0] unsigned* b3[0]; r2[2,3]  =   a4[1] unsigned* b3[1]		
r3[0,1]  =   a4[2] unsigned* b3[0]; r3[2,3]  =   a4[3] unsigned* b3[1]		
r5[0,1]  =   a2[2] unsigned* b3[0]; r5[2,3]  =   a2[3] unsigned* b3[1]		
r0[0,1] += _2a2[2] unsigned* b3[2]; r0[2,3] += _2a2[3] unsigned* b3[3]		
r1[0,1] +=   a3[0] unsigned* b3[2]; r1[2,3] +=   a3[1] unsigned* b3[3]		
r2[0,1] += _2a3[2] unsigned* b3[2]; r2[2,3] += _2a3[3] unsigned* b3[3]		
r3[0,1] +=   a4[0] unsigned* b3[2]; r3[2,3] +=   a4[1] unsigned* b3[3]		
r5[0,1] += _2a4[2] unsigned* b3[2]; r5[2,3] += _2a4[3] unsigned* b3[3]		
r0[0,1] += _2a4[2] unsigned* b4[0]; r0[2,3] += _2a4[3] unsigned* b4[1]		
r1[0,1] +=   a2[2] unsigned* b4[0]; r1[2,3] +=   a2[3] unsigned* b4[1]		
r2[0,1] +=   a3[0] unsigned* b4[0]; r2[2,3] +=   a3[1] unsigned* b4[1]		
r3[0,1] +=   a3[2] unsigned* b4[0]; r3[2,3] +=   a3[3] unsigned* b4[1]		
r5[0,1] +=   a4[0] unsigned* b4[0]; r5[2,3] +=   a4[1] unsigned* b4[1]		
r0[0,1] += _2a4[0] unsigned* b4[2]; r0[2,3] += _2a4[1] unsigned* b4[3]		
r1[0,1] += _2a4[2] unsigned* b4[2]; r1[2,3] += _2a4[3] unsigned* b4[3]		
r2[0,1] += _2a2[2] unsigned* b4[2]; r2[2,3] += _2a2[3] unsigned* b4[3]		
r3[0,1] +=   a3[0] unsigned* b4[2]; r3[2,3] +=   a3[1] unsigned* b4[3]		
r5[0,1] += _2a3[2] unsigned* b4[2]; r5[2,3] += _2a3[3] unsigned* b4[3]		
r0[0,1] += _2a3[2] unsigned* b2[2]; r0[2,3] += _2a3[3] unsigned* b2[3]		
r1[0,1] +=   a4[0] unsigned* b2[2]; r1[2,3] +=   a4[1] unsigned* b2[3]		
r2[0,1] += _2a4[2] unsigned* b2[2]; r2[2,3] += _2a4[3] unsigned* b2[3]		
r3[0,1] +=   a2[2] unsigned* b2[2]; r3[2,3] +=   a2[3] unsigned* b2[3]		
r5[0,1] +=   a3[0] unsigned* b2[2]; r5[2,3] +=   a3[1] unsigned* b2[3]		
ptr1 -= 176				
mask25 aligned = mem128[ptr1]
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
ptr1 += 208				
mem128[ptr1] aligned = r4; ptr1+=16	
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 -= 80				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 = r4
a3 = r0
a4 = r2
ctr = 40
loop40_:
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  =   a0[0] unsigned*   a0[0]; h0[2,3]  =   a0[1] unsigned*   a0[1]		
h2[0,1]  = _2a0[2] unsigned*   a0[2]; h2[2,3]  = _2a0[3] unsigned*   a0[3]		
h4[0,1]  =   a1[0] unsigned*   a1[0]; h4[2,3]  =   a1[1] unsigned*   a1[1]		
h1[0,1]  = _2a1[2] unsigned*   a1[2]; h1[2,3]  = _2a1[3] unsigned*   a1[3]		
h3[0,1]  =   a2[0] unsigned*   a2[0]; h3[2,3]  =   a2[1] unsigned*   a2[1]		
h1[0,1] += _2a0[2] unsigned*   a0[0]; h1[2,3] += _2a0[3] unsigned*   a0[1]		
h2[0,1] += _2a1[0] unsigned*   a0[0]; h2[2,3] += _2a1[1] unsigned*   a0[1]		
h3[0,1] += _2a1[2] unsigned*   a0[0]; h3[2,3] += _2a1[3] unsigned*   a0[1]		
h4[0,1] += _2a2[0] unsigned*   a0[0]; h4[2,3] += _2a2[1] unsigned*   a0[1]		
h0[0,1] += _2a2[0] unsigned* _2a0[2]; h0[2,3] += _2a2[1] unsigned* _2a0[3]		
h4[0,1] += _2a1[2] unsigned* _2a0[2]; h4[2,3] += _2a1[3] unsigned* _2a0[3]		
h3[0,1] += _2a1[0] unsigned*   a0[2]; h3[2,3] += _2a1[1] unsigned*   a0[3]		
h0[0,1] += _2a1[2] unsigned* _2a1[0]; h0[2,3] += _2a1[3] unsigned* _2a1[1]		
h1[0,1] += _2a2[0] unsigned*   a1[0]; h1[2,3] += _2a2[1] unsigned*   a1[1]		
h2[0,1] += _2a2[0] unsigned* _2a1[2]; h2[2,3] += _2a2[1] unsigned* _2a1[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
a0 = h0
a1 = h2
a2 = h4[0]a2[1]
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  =   a3[0] unsigned*   a3[0]; h0[2,3]  =   a3[1] unsigned*   a3[1]		
h2[0,1]  = _2a3[2] unsigned*   a3[2]; h2[2,3]  = _2a3[3] unsigned*   a3[3]		
h5[0,1]  =   a4[0] unsigned*   a4[0]; h5[2,3]  =   a4[1] unsigned*   a4[1]		
h1[0,1]  = _2a4[2] unsigned*   a4[2]; h1[2,3]  = _2a4[3] unsigned*   a4[3]		
h3[0,1]  =   a2[2] unsigned*   a2[2]; h3[2,3]  =   a2[3] unsigned*   a2[3]		
h1[0,1] += _2a3[2] unsigned*   a3[0]; h1[2,3] += _2a3[3] unsigned*   a3[1]		
h2[0,1] += _2a4[0] unsigned*   a3[0]; h2[2,3] += _2a4[1] unsigned*   a3[1]		
h3[0,1] += _2a4[2] unsigned*   a3[0]; h3[2,3] += _2a4[3] unsigned*   a3[1]		
h5[0,1] += _2a2[2] unsigned*   a3[0]; h5[2,3] += _2a2[3] unsigned*   a3[1]		
h0[0,1] += _2a2[2] unsigned* _2a3[2]; h0[2,3] += _2a2[3] unsigned* _2a3[3]		
h5[0,1] += _2a4[2] unsigned* _2a3[2]; h5[2,3] += _2a4[3] unsigned* _2a3[3]		
h3[0,1] += _2a4[0] unsigned*   a3[2]; h3[2,3] += _2a4[1] unsigned*   a3[3]		
h0[0,1] += _2a4[2] unsigned* _2a4[0]; h0[2,3] += _2a4[3] unsigned* _2a4[1]		
h1[0,1] += _2a2[2] unsigned*   a4[0]; h1[2,3] += _2a2[3] unsigned*   a4[1]		
h2[0,1] += _2a2[2] unsigned* _2a4[2]; h2[2,3] += _2a2[3] unsigned* _2a4[3]		
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
2x h5 += t
h3 &= mask25
2x t = h5 unsigned>> 25
2x h0 += t
h5 &= mask25
2x t = h0 unsigned>> 26
2x h1 += t
h0 &= mask26
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h5 = h5[0,2,1,3]
a3 = h0
a4 = h2
a2 = a2[0]h5[0]
ctr -= 1
unsigned>? ctr - 0
goto loop40_ if unsigned>
adr0 = input_0 + 48
mem128[adr0] aligned = a3; adr0+=16
mem128[adr0] aligned = a4; adr0+=16
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
ptr1 -= 112				
b0 aligned = mem128[ptr1]; ptr1+=16	
b1 aligned = mem128[ptr1]; ptr1+=16	
b2 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a0[0] unsigned* b0[0]; r0[2,3]  =   a0[1] unsigned* b0[1]		
r1[0,1]  =   a0[2] unsigned* b0[0]; r1[2,3]  =   a0[3] unsigned* b0[1]		
r2[0,1]  =   a1[0] unsigned* b0[0]; r2[2,3]  =   a1[1] unsigned* b0[1]		
r3[0,1]  =   a1[2] unsigned* b0[0]; r3[2,3]  =   a1[3] unsigned* b0[1]		
r4[0,1]  =   a2[0] unsigned* b0[0]; r4[2,3]  =   a2[1] unsigned* b0[1]		
r0[0,1] += _2a2[0] unsigned* b0[2]; r0[2,3] += _2a2[1] unsigned* b0[3]		
r1[0,1] +=   a0[0] unsigned* b0[2]; r1[2,3] +=   a0[1] unsigned* b0[3]		
r2[0,1] += _2a0[2] unsigned* b0[2]; r2[2,3] += _2a0[3] unsigned* b0[3]		
r3[0,1] +=   a1[0] unsigned* b0[2]; r3[2,3] +=   a1[1] unsigned* b0[3]		
r4[0,1] += _2a1[2] unsigned* b0[2]; r4[2,3] += _2a1[3] unsigned* b0[3]		
r0[0,1] += _2a1[2] unsigned* b1[0]; r0[2,3] += _2a1[3] unsigned* b1[1]		
r1[0,1] +=   a2[0] unsigned* b1[0]; r1[2,3] +=   a2[1] unsigned* b1[1]		
r2[0,1] +=   a0[0] unsigned* b1[0]; r2[2,3] +=   a0[1] unsigned* b1[1]		
r3[0,1] +=   a0[2] unsigned* b1[0]; r3[2,3] +=   a0[3] unsigned* b1[1]		
r4[0,1] +=   a1[0] unsigned* b1[0]; r4[2,3] +=   a1[1] unsigned* b1[1]		
r0[0,1] += _2a1[0] unsigned* b1[2]; r0[2,3] += _2a1[1] unsigned* b1[3]		
r1[0,1] += _2a1[2] unsigned* b1[2]; r1[2,3] += _2a1[3] unsigned* b1[3]		
r2[0,1] += _2a2[0] unsigned* b1[2]; r2[2,3] += _2a2[1] unsigned* b1[3]		
r3[0,1] +=   a0[0] unsigned* b1[2]; r3[2,3] +=   a0[1] unsigned* b1[3]		
r4[0,1] += _2a0[2] unsigned* b1[2]; r4[2,3] += _2a0[3] unsigned* b1[3]		
r0[0,1] += _2a0[2] unsigned* b2[0]; r0[2,3] += _2a0[3] unsigned* b2[1]		
r1[0,1] +=   a1[0] unsigned* b2[0]; r1[2,3] +=   a1[1] unsigned* b2[1]		
r2[0,1] += _2a1[2] unsigned* b2[0]; r2[2,3] += _2a1[3] unsigned* b2[1]		
r3[0,1] +=   a2[0] unsigned* b2[0]; r3[2,3] +=   a2[1] unsigned* b2[1]		
r4[0,1] +=   a0[0] unsigned* b2[0]; r4[2,3] +=   a0[1] unsigned* b2[1]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
ptr1 += 112				
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
adr1 = input_0 + 48
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
ptr1 -= 144				
b3 aligned = mem128[ptr1]; ptr1+=16	
b4 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a3[0] unsigned* b3[0]; r0[2,3]  =   a3[1] unsigned* b3[1]		
r1[0,1]  =   a3[2] unsigned* b3[0]; r1[2,3]  =   a3[3] unsigned* b3[1]		
r2[0,1]  =   a4[0] unsigned* b3[0]; r2[2,3]  =   a4[1] unsigned* b3[1]		
r3[0,1]  =   a4[2] unsigned* b3[0]; r3[2,3]  =   a4[3] unsigned* b3[1]		
r5[0,1]  =   a2[2] unsigned* b3[0]; r5[2,3]  =   a2[3] unsigned* b3[1]		
r0[0,1] += _2a2[2] unsigned* b3[2]; r0[2,3] += _2a2[3] unsigned* b3[3]		
r1[0,1] +=   a3[0] unsigned* b3[2]; r1[2,3] +=   a3[1] unsigned* b3[3]		
r2[0,1] += _2a3[2] unsigned* b3[2]; r2[2,3] += _2a3[3] unsigned* b3[3]		
r3[0,1] +=   a4[0] unsigned* b3[2]; r3[2,3] +=   a4[1] unsigned* b3[3]		
r5[0,1] += _2a4[2] unsigned* b3[2]; r5[2,3] += _2a4[3] unsigned* b3[3]		
r0[0,1] += _2a4[2] unsigned* b4[0]; r0[2,3] += _2a4[3] unsigned* b4[1]		
r1[0,1] +=   a2[2] unsigned* b4[0]; r1[2,3] +=   a2[3] unsigned* b4[1]		
r2[0,1] +=   a3[0] unsigned* b4[0]; r2[2,3] +=   a3[1] unsigned* b4[1]		
r3[0,1] +=   a3[2] unsigned* b4[0]; r3[2,3] +=   a3[3] unsigned* b4[1]		
r5[0,1] +=   a4[0] unsigned* b4[0]; r5[2,3] +=   a4[1] unsigned* b4[1]		
r0[0,1] += _2a4[0] unsigned* b4[2]; r0[2,3] += _2a4[1] unsigned* b4[3]		
r1[0,1] += _2a4[2] unsigned* b4[2]; r1[2,3] += _2a4[3] unsigned* b4[3]		
r2[0,1] += _2a2[2] unsigned* b4[2]; r2[2,3] += _2a2[3] unsigned* b4[3]		
r3[0,1] +=   a3[0] unsigned* b4[2]; r3[2,3] +=   a3[1] unsigned* b4[3]		
r5[0,1] += _2a3[2] unsigned* b4[2]; r5[2,3] += _2a3[3] unsigned* b4[3]		
r0[0,1] += _2a3[2] unsigned* b2[2]; r0[2,3] += _2a3[3] unsigned* b2[3]		
r1[0,1] +=   a4[0] unsigned* b2[2]; r1[2,3] +=   a4[1] unsigned* b2[3]		
r2[0,1] += _2a4[2] unsigned* b2[2]; r2[2,3] += _2a4[3] unsigned* b2[3]		
r3[0,1] +=   a2[2] unsigned* b2[2]; r3[2,3] +=   a2[3] unsigned* b2[3]		
r5[0,1] +=   a3[0] unsigned* b2[2]; r5[2,3] +=   a3[1] unsigned* b2[3]		
ptr1 -= 176				
mask25 aligned = mem128[ptr1]
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
ptr1 += 288				
mem128[ptr1] aligned = r4; ptr1+=16	
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 -= 80				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 = r4
a3 = r0
a4 = r2
ctr = 5
loop5_:
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
h0[0,1]  =   a0[0] unsigned*   a0[0]; h0[2,3]  =   a0[1] unsigned*   a0[1]		
h2[0,1]  = _2a0[2] unsigned*   a0[2]; h2[2,3]  = _2a0[3] unsigned*   a0[3]		
h4[0,1]  =   a1[0] unsigned*   a1[0]; h4[2,3]  =   a1[1] unsigned*   a1[1]		
h1[0,1]  = _2a1[2] unsigned*   a1[2]; h1[2,3]  = _2a1[3] unsigned*   a1[3]		
h3[0,1]  =   a2[0] unsigned*   a2[0]; h3[2,3]  =   a2[1] unsigned*   a2[1]		
h1[0,1] += _2a0[2] unsigned*   a0[0]; h1[2,3] += _2a0[3] unsigned*   a0[1]		
h2[0,1] += _2a1[0] unsigned*   a0[0]; h2[2,3] += _2a1[1] unsigned*   a0[1]		
h3[0,1] += _2a1[2] unsigned*   a0[0]; h3[2,3] += _2a1[3] unsigned*   a0[1]		
h4[0,1] += _2a2[0] unsigned*   a0[0]; h4[2,3] += _2a2[1] unsigned*   a0[1]		
h0[0,1] += _2a2[0] unsigned* _2a0[2]; h0[2,3] += _2a2[1] unsigned* _2a0[3]		
h4[0,1] += _2a1[2] unsigned* _2a0[2]; h4[2,3] += _2a1[3] unsigned* _2a0[3]		
h3[0,1] += _2a1[0] unsigned*   a0[2]; h3[2,3] += _2a1[1] unsigned*   a0[3]		
h0[0,1] += _2a1[2] unsigned* _2a1[0]; h0[2,3] += _2a1[3] unsigned* _2a1[1]		
h1[0,1] += _2a2[0] unsigned*   a1[0]; h1[2,3] += _2a2[1] unsigned*   a1[1]		
h2[0,1] += _2a2[0] unsigned* _2a1[2]; h2[2,3] += _2a2[1] unsigned* _2a1[3]		
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
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h4 = h4[0,2,1,3]
a0 = h0
a1 = h2
a2 = h4[0]a2[1]
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
h0[0,1]  =   a3[0] unsigned*   a3[0]; h0[2,3]  =   a3[1] unsigned*   a3[1]		
h2[0,1]  = _2a3[2] unsigned*   a3[2]; h2[2,3]  = _2a3[3] unsigned*   a3[3]		
h5[0,1]  =   a4[0] unsigned*   a4[0]; h5[2,3]  =   a4[1] unsigned*   a4[1]		
h1[0,1]  = _2a4[2] unsigned*   a4[2]; h1[2,3]  = _2a4[3] unsigned*   a4[3]		
h3[0,1]  =   a2[2] unsigned*   a2[2]; h3[2,3]  =   a2[3] unsigned*   a2[3]		
h1[0,1] += _2a3[2] unsigned*   a3[0]; h1[2,3] += _2a3[3] unsigned*   a3[1]		
h2[0,1] += _2a4[0] unsigned*   a3[0]; h2[2,3] += _2a4[1] unsigned*   a3[1]		
h3[0,1] += _2a4[2] unsigned*   a3[0]; h3[2,3] += _2a4[3] unsigned*   a3[1]		
h5[0,1] += _2a2[2] unsigned*   a3[0]; h5[2,3] += _2a2[3] unsigned*   a3[1]		
h0[0,1] += _2a2[2] unsigned* _2a3[2]; h0[2,3] += _2a2[3] unsigned* _2a3[3]		
h5[0,1] += _2a4[2] unsigned* _2a3[2]; h5[2,3] += _2a4[3] unsigned* _2a3[3]		
h3[0,1] += _2a4[0] unsigned*   a3[2]; h3[2,3] += _2a4[1] unsigned*   a3[3]		
h0[0,1] += _2a4[2] unsigned* _2a4[0]; h0[2,3] += _2a4[3] unsigned* _2a4[1]		
h1[0,1] += _2a2[2] unsigned*   a4[0]; h1[2,3] += _2a2[3] unsigned*   a4[1]		
h2[0,1] += _2a2[2] unsigned* _2a4[2]; h2[2,3] += _2a2[3] unsigned* _2a4[3]		
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
2x h5 += t
h3 &= mask25
2x t = h5 unsigned>> 25
2x h0 += t
h5 &= mask25
2x t = h0 unsigned>> 26
2x h1 += t
h0 &= mask26
h0 h1 = h0[0]h1[0]h0[2]h1[2] h0[1]h1[1]h0[3]h1[3]
h0 = h0[0,2,1,3]
h2 h3 = h2[0]h3[0]h2[2]h3[2] h2[1]h3[1]h2[3]h3[3]
h2 = h2[0,2,1,3]
h5 = h5[0,2,1,3]
a3 = h0
a4 = h2
a2 = a2[0]h5[0]
ctr -= 1
unsigned>? ctr - 0
goto loop5_ if unsigned>
adr0 = input_0 + 48
mem128[adr0] aligned = a3; adr0+=16
mem128[adr0] aligned = a4; adr0+=16
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
ptr1 -= 272				
b0 aligned = mem128[ptr1]; ptr1+=16	
b1 aligned = mem128[ptr1]; ptr1+=16	
b2 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a0[0] unsigned* b0[0]; r0[2,3]  =   a0[1] unsigned* b0[1]		
r1[0,1]  =   a0[2] unsigned* b0[0]; r1[2,3]  =   a0[3] unsigned* b0[1]		
r2[0,1]  =   a1[0] unsigned* b0[0]; r2[2,3]  =   a1[1] unsigned* b0[1]		
r3[0,1]  =   a1[2] unsigned* b0[0]; r3[2,3]  =   a1[3] unsigned* b0[1]		
r4[0,1]  =   a2[0] unsigned* b0[0]; r4[2,3]  =   a2[1] unsigned* b0[1]		
r0[0,1] += _2a2[0] unsigned* b0[2]; r0[2,3] += _2a2[1] unsigned* b0[3]		
r1[0,1] +=   a0[0] unsigned* b0[2]; r1[2,3] +=   a0[1] unsigned* b0[3]		
r2[0,1] += _2a0[2] unsigned* b0[2]; r2[2,3] += _2a0[3] unsigned* b0[3]		
r3[0,1] +=   a1[0] unsigned* b0[2]; r3[2,3] +=   a1[1] unsigned* b0[3]		
r4[0,1] += _2a1[2] unsigned* b0[2]; r4[2,3] += _2a1[3] unsigned* b0[3]		
r0[0,1] += _2a1[2] unsigned* b1[0]; r0[2,3] += _2a1[3] unsigned* b1[1]		
r1[0,1] +=   a2[0] unsigned* b1[0]; r1[2,3] +=   a2[1] unsigned* b1[1]		
r2[0,1] +=   a0[0] unsigned* b1[0]; r2[2,3] +=   a0[1] unsigned* b1[1]		
r3[0,1] +=   a0[2] unsigned* b1[0]; r3[2,3] +=   a0[3] unsigned* b1[1]		
r4[0,1] +=   a1[0] unsigned* b1[0]; r4[2,3] +=   a1[1] unsigned* b1[1]		
r0[0,1] += _2a1[0] unsigned* b1[2]; r0[2,3] += _2a1[1] unsigned* b1[3]		
r1[0,1] += _2a1[2] unsigned* b1[2]; r1[2,3] += _2a1[3] unsigned* b1[3]		
r2[0,1] += _2a2[0] unsigned* b1[2]; r2[2,3] += _2a2[1] unsigned* b1[3]		
r3[0,1] +=   a0[0] unsigned* b1[2]; r3[2,3] +=   a0[1] unsigned* b1[3]		
r4[0,1] += _2a0[2] unsigned* b1[2]; r4[2,3] += _2a0[3] unsigned* b1[3]		
r0[0,1] += _2a0[2] unsigned* b2[0]; r0[2,3] += _2a0[3] unsigned* b2[1]		
r1[0,1] +=   a1[0] unsigned* b2[0]; r1[2,3] +=   a1[1] unsigned* b2[1]		
r2[0,1] += _2a1[2] unsigned* b2[0]; r2[2,3] += _2a1[3] unsigned* b2[1]		
r3[0,1] +=   a2[0] unsigned* b2[0]; r3[2,3] +=   a2[1] unsigned* b2[1]		
r4[0,1] +=   a0[0] unsigned* b2[0]; r4[2,3] +=   a0[1] unsigned* b2[1]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
ptr1 += 112				
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
adr1 = input_0 + 48
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
ptr1 -= 144				
b3 aligned = mem128[ptr1]; ptr1+=16	
b4 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a3[0] unsigned* b3[0]; r0[2,3]  =   a3[1] unsigned* b3[1]		
r1[0,1]  =   a3[2] unsigned* b3[0]; r1[2,3]  =   a3[3] unsigned* b3[1]		
r2[0,1]  =   a4[0] unsigned* b3[0]; r2[2,3]  =   a4[1] unsigned* b3[1]		
r3[0,1]  =   a4[2] unsigned* b3[0]; r3[2,3]  =   a4[3] unsigned* b3[1]		
r5[0,1]  =   a2[2] unsigned* b3[0]; r5[2,3]  =   a2[3] unsigned* b3[1]		
r0[0,1] += _2a2[2] unsigned* b3[2]; r0[2,3] += _2a2[3] unsigned* b3[3]		
r1[0,1] +=   a3[0] unsigned* b3[2]; r1[2,3] +=   a3[1] unsigned* b3[3]		
r2[0,1] += _2a3[2] unsigned* b3[2]; r2[2,3] += _2a3[3] unsigned* b3[3]		
r3[0,1] +=   a4[0] unsigned* b3[2]; r3[2,3] +=   a4[1] unsigned* b3[3]		
r5[0,1] += _2a4[2] unsigned* b3[2]; r5[2,3] += _2a4[3] unsigned* b3[3]		
r0[0,1] += _2a4[2] unsigned* b4[0]; r0[2,3] += _2a4[3] unsigned* b4[1]		
r1[0,1] +=   a2[2] unsigned* b4[0]; r1[2,3] +=   a2[3] unsigned* b4[1]		
r2[0,1] +=   a3[0] unsigned* b4[0]; r2[2,3] +=   a3[1] unsigned* b4[1]		
r3[0,1] +=   a3[2] unsigned* b4[0]; r3[2,3] +=   a3[3] unsigned* b4[1]		
r5[0,1] +=   a4[0] unsigned* b4[0]; r5[2,3] +=   a4[1] unsigned* b4[1]		
r0[0,1] += _2a4[0] unsigned* b4[2]; r0[2,3] += _2a4[1] unsigned* b4[3]		
r1[0,1] += _2a4[2] unsigned* b4[2]; r1[2,3] += _2a4[3] unsigned* b4[3]		
r2[0,1] += _2a2[2] unsigned* b4[2]; r2[2,3] += _2a2[3] unsigned* b4[3]		
r3[0,1] +=   a3[0] unsigned* b4[2]; r3[2,3] +=   a3[1] unsigned* b4[3]		
r5[0,1] += _2a3[2] unsigned* b4[2]; r5[2,3] += _2a3[3] unsigned* b4[3]		
r0[0,1] += _2a3[2] unsigned* b2[2]; r0[2,3] += _2a3[3] unsigned* b2[3]		
r1[0,1] +=   a4[0] unsigned* b2[2]; r1[2,3] +=   a4[1] unsigned* b2[3]		
r2[0,1] += _2a4[2] unsigned* b2[2]; r2[2,3] += _2a4[3] unsigned* b2[3]		
r3[0,1] +=   a2[2] unsigned* b2[2]; r3[2,3] +=   a2[3] unsigned* b2[3]		
r5[0,1] +=   a3[0] unsigned* b2[2]; r5[2,3] +=   a3[1] unsigned* b2[3]		
ptr1 -= 96				
mask25 aligned = mem128[ptr1]
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
ptr1 += 208				
mem128[ptr1] aligned = r4; ptr1+=16	
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 -= 80				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 = r4
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
r0[0,1]  =   a0[0] unsigned*   a0[0]; r0[2,3]  =   a0[1] unsigned*   a0[1]		
r2[0,1]  = _2a0[2] unsigned*   a0[2]; r2[2,3]  = _2a0[3] unsigned*   a0[3]		
r4[0,1]  =   a1[0] unsigned*   a1[0]; r4[2,3]  =   a1[1] unsigned*   a1[1]		
r1[0,1]  = _2a1[2] unsigned*   a1[2]; r1[2,3]  = _2a1[3] unsigned*   a1[3]		
r3[0,1]  =   a2[0] unsigned*   a2[0]; r3[2,3]  =   a2[1] unsigned*   a2[1]		
r1[0,1] += _2a0[2] unsigned*   a0[0]; r1[2,3] += _2a0[3] unsigned*   a0[1]		
r2[0,1] += _2a1[0] unsigned*   a0[0]; r2[2,3] += _2a1[1] unsigned*   a0[1]		
r3[0,1] += _2a1[2] unsigned*   a0[0]; r3[2,3] += _2a1[3] unsigned*   a0[1]		
r4[0,1] += _2a2[0] unsigned*   a0[0]; r4[2,3] += _2a2[1] unsigned*   a0[1]		
r0[0,1] += _2a2[0] unsigned* _2a0[2]; r0[2,3] += _2a2[1] unsigned* _2a0[3]		
r4[0,1] += _2a1[2] unsigned* _2a0[2]; r4[2,3] += _2a1[3] unsigned* _2a0[3]		
r3[0,1] += _2a1[0] unsigned*   a0[2]; r3[2,3] += _2a1[1] unsigned*   a0[3]		
r0[0,1] += _2a1[2] unsigned* _2a1[0]; r0[2,3] += _2a1[3] unsigned* _2a1[1]		
r1[0,1] += _2a2[0] unsigned*   a1[0]; r1[2,3] += _2a2[1] unsigned*   a1[1]		
r2[0,1] += _2a2[0] unsigned* _2a1[2]; r2[2,3] += _2a2[1] unsigned* _2a1[3]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
ptr1 -=192				
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 += 176				
a3 aligned = mem128[ptr1]; ptr1+=16	
a4 aligned = mem128[ptr1]; ptr1+=16	
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
r0[0,1]  =   a3[0] unsigned*   a3[0]; r0[2,3]  =   a3[1] unsigned*   a3[1]		
r2[0,1]  = _2a3[2] unsigned*   a3[2]; r2[2,3]  = _2a3[3] unsigned*   a3[3]		
r5[0,1]  =   a4[0] unsigned*   a4[0]; r5[2,3]  =   a4[1] unsigned*   a4[1]		
r1[0,1]  = _2a4[2] unsigned*   a4[2]; r1[2,3]  = _2a4[3] unsigned*   a4[3]		
r3[0,1]  =   a2[2] unsigned*   a2[2]; r3[2,3]  =   a2[3] unsigned*   a2[3]		
r1[0,1] += _2a3[2] unsigned*   a3[0]; r1[2,3] += _2a3[3] unsigned*   a3[1]		
r2[0,1] += _2a4[0] unsigned*   a3[0]; r2[2,3] += _2a4[1] unsigned*   a3[1]		
r3[0,1] += _2a4[2] unsigned*   a3[0]; r3[2,3] += _2a4[3] unsigned*   a3[1]		
r5[0,1] += _2a2[2] unsigned*   a3[0]; r5[2,3] += _2a2[3] unsigned*   a3[1]		
r0[0,1] += _2a2[2] unsigned* _2a3[2]; r0[2,3] += _2a2[3] unsigned* _2a3[3]		
r5[0,1] += _2a4[2] unsigned* _2a3[2]; r5[2,3] += _2a4[3] unsigned* _2a3[3]		
r3[0,1] += _2a4[0] unsigned*   a3[2]; r3[2,3] += _2a4[1] unsigned*   a3[3]		
r0[0,1] += _2a4[2] unsigned* _2a4[0]; r0[2,3] += _2a4[3] unsigned* _2a4[1]		
r1[0,1] += _2a2[2] unsigned*   a4[0]; r1[2,3] += _2a2[3] unsigned*   a4[1]		
r2[0,1] += _2a2[2] unsigned* _2a4[2]; r2[2,3] += _2a2[3] unsigned* _2a4[3]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
ptr1 -= 208				
mem128[ptr1] aligned = r4; ptr1+=16	
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 -= 80				
a0 aligned = mem128[ptr1]; ptr1+=16	
a1 aligned = mem128[ptr1]; ptr1+=16	
a2 aligned = mem128[ptr1]; ptr1+=16	
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
r0[0,1]  =   a0[0] unsigned*   a0[0]; r0[2,3]  =   a0[1] unsigned*   a0[1]		
r2[0,1]  = _2a0[2] unsigned*   a0[2]; r2[2,3]  = _2a0[3] unsigned*   a0[3]		
r4[0,1]  =   a1[0] unsigned*   a1[0]; r4[2,3]  =   a1[1] unsigned*   a1[1]		
r1[0,1]  = _2a1[2] unsigned*   a1[2]; r1[2,3]  = _2a1[3] unsigned*   a1[3]		
r3[0,1]  =   a2[0] unsigned*   a2[0]; r3[2,3]  =   a2[1] unsigned*   a2[1]		
r1[0,1] += _2a0[2] unsigned*   a0[0]; r1[2,3] += _2a0[3] unsigned*   a0[1]		
r2[0,1] += _2a1[0] unsigned*   a0[0]; r2[2,3] += _2a1[1] unsigned*   a0[1]		
r3[0,1] += _2a1[2] unsigned*   a0[0]; r3[2,3] += _2a1[3] unsigned*   a0[1]		
r4[0,1] += _2a2[0] unsigned*   a0[0]; r4[2,3] += _2a2[1] unsigned*   a0[1]		
r0[0,1] += _2a2[0] unsigned* _2a0[2]; r0[2,3] += _2a2[1] unsigned* _2a0[3]		
r4[0,1] += _2a1[2] unsigned* _2a0[2]; r4[2,3] += _2a1[3] unsigned* _2a0[3]		
r3[0,1] += _2a1[0] unsigned*   a0[2]; r3[2,3] += _2a1[1] unsigned*   a0[3]		
r0[0,1] += _2a1[2] unsigned* _2a1[0]; r0[2,3] += _2a1[3] unsigned* _2a1[1]		
r1[0,1] += _2a2[0] unsigned*   a1[0]; r1[2,3] += _2a2[1] unsigned*   a1[1]		
r2[0,1] += _2a2[0] unsigned* _2a1[2]; r2[2,3] += _2a2[1] unsigned* _2a1[3]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
ptr1 += 32				
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
ptr1 -= 64				
a3 aligned = mem128[ptr1]; ptr1+=16	
a4 aligned = mem128[ptr1]; ptr1+=16	
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
r0[0,1]  =   a3[0] unsigned*   a3[0]; r0[2,3]  =   a3[1] unsigned*   a3[1]		
r2[0,1]  = _2a3[2] unsigned*   a3[2]; r2[2,3]  = _2a3[3] unsigned*   a3[3]		
r5[0,1]  =   a4[0] unsigned*   a4[0]; r5[2,3]  =   a4[1] unsigned*   a4[1]		
r1[0,1]  = _2a4[2] unsigned*   a4[2]; r1[2,3]  = _2a4[3] unsigned*   a4[3]		
r3[0,1]  =   a2[2] unsigned*   a2[2]; r3[2,3]  =   a2[3] unsigned*   a2[3]		
r1[0,1] += _2a3[2] unsigned*   a3[0]; r1[2,3] += _2a3[3] unsigned*   a3[1]		
r2[0,1] += _2a4[0] unsigned*   a3[0]; r2[2,3] += _2a4[1] unsigned*   a3[1]		
r3[0,1] += _2a4[2] unsigned*   a3[0]; r3[2,3] += _2a4[3] unsigned*   a3[1]		
r5[0,1] += _2a2[2] unsigned*   a3[0]; r5[2,3] += _2a2[3] unsigned*   a3[1]		
r0[0,1] += _2a2[2] unsigned* _2a3[2]; r0[2,3] += _2a2[3] unsigned* _2a3[3]		
r5[0,1] += _2a4[2] unsigned* _2a3[2]; r5[2,3] += _2a4[3] unsigned* _2a3[3]		
r3[0,1] += _2a4[0] unsigned*   a3[2]; r3[2,3] += _2a4[1] unsigned*   a3[3]		
r0[0,1] += _2a4[2] unsigned* _2a4[0]; r0[2,3] += _2a4[3] unsigned* _2a4[1]		
r1[0,1] += _2a2[2] unsigned*   a4[0]; r1[2,3] += _2a2[3] unsigned*   a4[1]		
r2[0,1] += _2a2[2] unsigned* _2a4[2]; r2[2,3] += _2a2[3] unsigned* _2a4[3]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
ptr1 += 32				
mem128[ptr1] aligned = r4; ptr1+=16	
mem128[ptr1] aligned = r0; ptr1+=16	
mem128[ptr1] aligned = r2; ptr1+=16	
adr1 = input_1
a0 = mem128[adr1]; adr1+=16
a1 = mem128[adr1]; adr1+=16
a2 = mem128[adr1]; adr1+=16
2x _2a0 = a0 << 1
2x _2a1 = a1 << 1
2x _2a2 = a2 << 1
ptr1 -= 80				
b0 aligned = mem128[ptr1]; ptr1+=16	
b1 aligned = mem128[ptr1]; ptr1+=16	
b2 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a0[0] unsigned* b0[0]; r0[2,3]  =   a0[1] unsigned* b0[1]		
r1[0,1]  =   a0[2] unsigned* b0[0]; r1[2,3]  =   a0[3] unsigned* b0[1]		
r2[0,1]  =   a1[0] unsigned* b0[0]; r2[2,3]  =   a1[1] unsigned* b0[1]		
r3[0,1]  =   a1[2] unsigned* b0[0]; r3[2,3]  =   a1[3] unsigned* b0[1]		
r4[0,1]  =   a2[0] unsigned* b0[0]; r4[2,3]  =   a2[1] unsigned* b0[1]		
r0[0,1] += _2a2[0] unsigned* b0[2]; r0[2,3] += _2a2[1] unsigned* b0[3]		
r1[0,1] +=   a0[0] unsigned* b0[2]; r1[2,3] +=   a0[1] unsigned* b0[3]		
r2[0,1] += _2a0[2] unsigned* b0[2]; r2[2,3] += _2a0[3] unsigned* b0[3]		
r3[0,1] +=   a1[0] unsigned* b0[2]; r3[2,3] +=   a1[1] unsigned* b0[3]		
r4[0,1] += _2a1[2] unsigned* b0[2]; r4[2,3] += _2a1[3] unsigned* b0[3]		
r0[0,1] += _2a1[2] unsigned* b1[0]; r0[2,3] += _2a1[3] unsigned* b1[1]		
r1[0,1] +=   a2[0] unsigned* b1[0]; r1[2,3] +=   a2[1] unsigned* b1[1]		
r2[0,1] +=   a0[0] unsigned* b1[0]; r2[2,3] +=   a0[1] unsigned* b1[1]		
r3[0,1] +=   a0[2] unsigned* b1[0]; r3[2,3] +=   a0[3] unsigned* b1[1]		
r4[0,1] +=   a1[0] unsigned* b1[0]; r4[2,3] +=   a1[1] unsigned* b1[1]		
r0[0,1] += _2a1[0] unsigned* b1[2]; r0[2,3] += _2a1[1] unsigned* b1[3]		
r1[0,1] += _2a1[2] unsigned* b1[2]; r1[2,3] += _2a1[3] unsigned* b1[3]		
r2[0,1] += _2a2[0] unsigned* b1[2]; r2[2,3] += _2a2[1] unsigned* b1[3]		
r3[0,1] +=   a0[0] unsigned* b1[2]; r3[2,3] +=   a0[1] unsigned* b1[3]		
r4[0,1] += _2a0[2] unsigned* b1[2]; r4[2,3] += _2a0[3] unsigned* b1[3]		
r0[0,1] += _2a0[2] unsigned* b2[0]; r0[2,3] += _2a0[3] unsigned* b2[1]		
r1[0,1] +=   a1[0] unsigned* b2[0]; r1[2,3] +=   a1[1] unsigned* b2[1]		
r2[0,1] += _2a1[2] unsigned* b2[0]; r2[2,3] += _2a1[3] unsigned* b2[1]		
r3[0,1] +=   a2[0] unsigned* b2[0]; r3[2,3] +=   a2[1] unsigned* b2[1]		
r4[0,1] +=   a0[0] unsigned* b2[0]; r4[2,3] +=   a0[1] unsigned* b2[1]		
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r4 += t
r3 &= mask25
2x t = r4 unsigned>> 25
2x r0 += t
r4 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
adr0 = input_0
mem128[adr0] aligned = r0; adr0+=16
mem128[adr0] aligned = r2; adr0+=16
a3 aligned = mem128[adr1]; adr1+=16
a4 aligned = mem128[adr1]; adr1+=16
2x _2a3 = a3 << 1
2x _2a4 = a4 << 1
b3 aligned = mem128[ptr1]; ptr1+=16	
b4 aligned = mem128[ptr1]; ptr1+=16	
r0[0,1]  =   a3[0] unsigned* b3[0]; r0[2,3]  =   a3[1] unsigned* b3[1]		
r1[0,1]  =   a3[2] unsigned* b3[0]; r1[2,3]  =   a3[3] unsigned* b3[1]		
r2[0,1]  =   a4[0] unsigned* b3[0]; r2[2,3]  =   a4[1] unsigned* b3[1]		
r3[0,1]  =   a4[2] unsigned* b3[0]; r3[2,3]  =   a4[3] unsigned* b3[1]		
r5[0,1]  =   a2[2] unsigned* b3[0]; r5[2,3]  =   a2[3] unsigned* b3[1]		
r0[0,1] += _2a2[2] unsigned* b3[2]; r0[2,3] += _2a2[3] unsigned* b3[3]		
r1[0,1] +=   a3[0] unsigned* b3[2]; r1[2,3] +=   a3[1] unsigned* b3[3]		
r2[0,1] += _2a3[2] unsigned* b3[2]; r2[2,3] += _2a3[3] unsigned* b3[3]		
r3[0,1] +=   a4[0] unsigned* b3[2]; r3[2,3] +=   a4[1] unsigned* b3[3]		
r5[0,1] += _2a4[2] unsigned* b3[2]; r5[2,3] += _2a4[3] unsigned* b3[3]		
r0[0,1] += _2a4[2] unsigned* b4[0]; r0[2,3] += _2a4[3] unsigned* b4[1]		
r1[0,1] +=   a2[2] unsigned* b4[0]; r1[2,3] +=   a2[3] unsigned* b4[1]		
r2[0,1] +=   a3[0] unsigned* b4[0]; r2[2,3] +=   a3[1] unsigned* b4[1]		
r3[0,1] +=   a3[2] unsigned* b4[0]; r3[2,3] +=   a3[3] unsigned* b4[1]		
r5[0,1] +=   a4[0] unsigned* b4[0]; r5[2,3] +=   a4[1] unsigned* b4[1]		
r0[0,1] += _2a4[0] unsigned* b4[2]; r0[2,3] += _2a4[1] unsigned* b4[3]		
r1[0,1] += _2a4[2] unsigned* b4[2]; r1[2,3] += _2a4[3] unsigned* b4[3]		
r2[0,1] += _2a2[2] unsigned* b4[2]; r2[2,3] += _2a2[3] unsigned* b4[3]		
r3[0,1] +=   a3[0] unsigned* b4[2]; r3[2,3] +=   a3[1] unsigned* b4[3]		
r5[0,1] += _2a3[2] unsigned* b4[2]; r5[2,3] += _2a3[3] unsigned* b4[3]		
r0[0,1] += _2a3[2] unsigned* b2[2]; r0[2,3] += _2a3[3] unsigned* b2[3]		
r1[0,1] +=   a4[0] unsigned* b2[2]; r1[2,3] +=   a4[1] unsigned* b2[3]		
r2[0,1] += _2a4[2] unsigned* b2[2]; r2[2,3] += _2a4[3] unsigned* b2[3]		
r3[0,1] +=   a2[2] unsigned* b2[2]; r3[2,3] +=   a2[3] unsigned* b2[3]		
r5[0,1] +=   a3[0] unsigned* b2[2]; r5[2,3] +=   a3[1] unsigned* b2[3]		
ptr1 -= 176			
mask25 aligned = mem128[ptr1]
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
2x t = r1 unsigned>> 25
2x r2 += t
r1 &= mask25
2x t = r2 unsigned>> 26
2x r3 += t
r2 &= mask26
2x t = r3 unsigned>> 25
2x r5 += t
r3 &= mask25
2x t = r5 unsigned>> 25
2x r0 += t
r5 &= mask25
2x t = r0 unsigned>> 26
2x r1 += t
r0 &= mask26
r0 r1 = r0[0]r1[0]r0[2]r1[2] r0[1]r1[1]r0[3]r1[3]
r0 = r0[0,2,1,3]
r2 r3 = r2[0]r3[0]r2[2]r3[2] r2[1]r3[1]r2[3]r3[3]
r2 = r2[0,2,1,3]
r4 r5 = r4[0]r5[0]r4[2]r5[2] r4[1]r5[1]r4[3]r5[3]
r4 = r4[0,2,1,3]
mem128[adr0] aligned = r4; adr0+=16
mem128[adr0] aligned = r0; adr0+=16
mem128[adr0] aligned = r2; adr0+=16
caller_r4 = stack_r4
caller_r5 = stack_r5
caller_r6 = stack_r6
caller_r7 = stack_r7
caller_r8 = stack_r8
caller_r9 = stack_r9
caller_r10 = stack_r10
caller_r11 = stack_r11
caller_r12 = stack_r12
caller_r14 = stack_r14
qpopreturn
