int64 input_0
int64 input_1
int64 input_2
int64 input_3
int64 input_4
int64 input_5
stack64 input_6
stack64 input_7
int64 caller_r11
int64 caller_r12
int64 caller_r13
int64 caller_r14
int64 caller_r15
int64 caller_rbx
int64 caller_rbp
reg256 x0
reg256 x1
reg256 x2
reg256 x3
reg256 x4
reg256 x5
reg256 x6
reg256 x7
reg256 t0
reg256 t1
int64 offset
enter transpose8x
x0  = mem256[input_1 +   0]
offset = input_2
x1  = mem256[input_1 +   0 + offset]
offset += input_2
x2  = mem256[input_1 +   0 + offset]
offset += input_2
x3  = mem256[input_1 +   0 + offset]
offset += input_2
x4  = mem256[input_1 +   0 + offset]
offset += input_2
x5  = mem256[input_1 +   0 + offset]
offset += input_2
x6  = mem256[input_1 +   0 + offset]
offset += input_2
x7  = mem256[input_1 +   0 + offset]
t0 = unpack  low dwords of x0 and x4 
t1 = unpack high dwords of x0 and x4 
x0[0,1,2,3] = t0[0,1],t1[0,1]
x4[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x1 and x5
t1 = unpack high dwords of x1 and x5
x1[0,1,2,3] = t0[0,1],t1[0,1]
x5[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x2 and x6
t1 = unpack high dwords of x2 and x6
x2[0,1,2,3] = t0[0,1],t1[0,1]
x6[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x3 and x7
t1 = unpack high dwords of x3 and x7
x3[0,1,2,3] = t0[0,1],t1[0,1]
x7[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x0 and x2
t1 = unpack high dwords of x0 and x2
x0[0,1,2,3] = t0[0,1],t1[0,1]
x2[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x1 and x3
t1 = unpack high dwords of x1 and x3
x1[0,1,2,3] = t0[0,1],t1[0,1]
x3[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x4 and x6
t1 = unpack high dwords of x4 and x6
x4[0,1,2,3] = t0[0,1],t1[0,1]
x6[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x5 and x7
t1 = unpack high dwords of x5 and x7
x5[0,1,2,3] = t0[0,1],t1[0,1]
x7[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x0 and x1
t1 = unpack high dwords of x0 and x1
x0[0,1,2,3] = t0[0,1],t1[0,1]
x1[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x2 and x3
t1 = unpack high dwords of x2 and x3
x2[0,1,2,3] = t0[0,1],t1[0,1]
x3[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x4 and x5
t1 = unpack high dwords of x4 and x5
x4[0,1,2,3] = t0[0,1],t1[0,1]
x5[0,1,2,3] = t0[2,3],t1[2,3]
t0 = unpack  low dwords of x6 and x7
t1 = unpack high dwords of x6 and x7
x6[0,1,2,3] = t0[0,1],t1[0,1]
x7[0,1,2,3] = t0[2,3],t1[2,3]
mem256[input_0 +   0] = x0
offset = input_2
mem256[input_0 +   0 + offset] = x1
offset += input_2
mem256[input_0 +   0 + offset] = x2
offset += input_2
mem256[input_0 +   0 + offset] = x3
offset += input_2
mem256[input_0 +   0 + offset] = x4
offset += input_2
mem256[input_0 +   0 + offset] = x5
offset += input_2
mem256[input_0 +   0 + offset] = x6
offset += input_2
mem256[input_0 +   0 + offset] = x7
return
