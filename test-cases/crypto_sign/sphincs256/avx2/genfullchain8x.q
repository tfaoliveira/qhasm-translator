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
reg256 x8
reg256 x9
reg256 x10
reg256 x11
reg256 x12
reg256 x13
reg256 x14
reg256 x15
reg256 mask
int64 ctr
int64 constp
int64 maskp
stack256 x6stack
stack256 x10stack
stack256 x11stack
stack256 x15stack
stack256 x4stack
stack256 x8stack
stack256 x9stack
stack256 x13stack
reg256 rotate8
reg256 rotate16
reg256 t
reg256 t0
reg256 t1
enter genfullchain8x
rotate8 = mem256[_rotate8]
rotate16 = mem256[_rotate16]
constp = &hashc8x
maskp = input_1
x0  = mem256[input_0 +   0]
x1  = mem256[input_0 +  32]
x2  = mem256[input_0 +  64]
x3  = mem256[input_0 +  96]
x4  = mem256[input_0 + 128]
x5  = mem256[input_0 + 160]
x6  = mem256[input_0 + 192]
x7  = mem256[input_0 + 224]
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
ctr = 15
wots_loop:
mask = 8x mem32[maskp + 24]
x6 ^= mask
x6stack = x6
x8  = mem256[constp +   0]
x9  = mem256[constp +  32]
x10 = mem256[constp +  64]
x10stack = x10
x11 = mem256[constp +  96]
x11stack = x11
x12 = mem256[constp + 128]
x13 = mem256[constp + 160]
x14 = mem256[constp + 192]
x15 = mem256[constp + 224]
x15stack = x15
mask = 8x mem32[maskp + 0]
x0 ^= mask
mask = 8x mem32[maskp + 4]
x1 ^= mask
mask = 8x mem32[maskp + 8]
x2 ^= mask
mask = 8x mem32[maskp + 12]
x3 ^= mask
mask = 8x mem32[maskp + 16]
x4 ^= mask
mask = 8x mem32[maskp + 20]
x5 ^= mask
mask = 8x mem32[maskp + 28]
x7 ^= mask
maskp += 32
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate16
x13 = shuffle bytes of x13 by rotate16
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 12
8x t1 = x5 << 12
8x x4 unsigned>>= 20
8x x5 unsigned>>= 20
x4 ^= t0
x5 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate8
x13 = shuffle bytes of x13 by rotate8
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 7
8x t1 = x5 << 7
8x x4 unsigned>>= 25
8x x5 unsigned>>= 25
x4 ^= t0
x5 ^= t1
x4stack = x4
x8stack = x8
x9stack = x9
x13stack = x13
x6 = x6stack
x10 = x10stack
x11 = x11stack
x15 = x15stack
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate16
x15 = shuffle bytes of x15 by rotate16
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 12
8x t1 = x7 << 12
8x x6 unsigned>>= 20
8x x7 unsigned>>= 20
x6 ^= t0
x7 ^= t1
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate8
x15 = shuffle bytes of x15 by rotate8
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 7
8x t1 = x7 << 7
8x x6 unsigned>>= 25
8x x7 unsigned>>= 25
x6 ^= t0
x7 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate16
x12 = shuffle bytes of x12 by rotate16
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 12
8x t1 = x6 << 12
8x x5 unsigned>>= 20
8x x6 unsigned>>= 20
x5 ^= t0
x6 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate8
x12 = shuffle bytes of x12 by rotate8
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 7
8x t1 = x6 << 7
8x x5 unsigned>>= 25
8x x6 unsigned>>= 25
x5 ^= t0
x6 ^= t1
x6stack = x6
x10stack = x10
x11stack = x11
x15stack = x15
x4 = x4stack
x8 = x8stack
x9 = x9stack
x13 = x13stack
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate16
x14 = shuffle bytes of x14 by rotate16
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 12
8x t1 = x4 << 12
8x x7 unsigned>>= 20
8x x4 unsigned>>= 20
x7 ^= t0
x4 ^= t1
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate8
x14 = shuffle bytes of x14 by rotate8
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 7
8x t1 = x4 << 7
8x x7 unsigned>>= 25
8x x4 unsigned>>= 25
x7 ^= t0
x4 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate16
x13 = shuffle bytes of x13 by rotate16
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 12
8x t1 = x5 << 12
8x x4 unsigned>>= 20
8x x5 unsigned>>= 20
x4 ^= t0
x5 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate8
x13 = shuffle bytes of x13 by rotate8
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 7
8x t1 = x5 << 7
8x x4 unsigned>>= 25
8x x5 unsigned>>= 25
x4 ^= t0
x5 ^= t1
x4stack = x4
x8stack = x8
x9stack = x9
x13stack = x13
x6 = x6stack
x10 = x10stack
x11 = x11stack
x15 = x15stack
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate16
x15 = shuffle bytes of x15 by rotate16
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 12
8x t1 = x7 << 12
8x x6 unsigned>>= 20
8x x7 unsigned>>= 20
x6 ^= t0
x7 ^= t1
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate8
x15 = shuffle bytes of x15 by rotate8
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 7
8x t1 = x7 << 7
8x x6 unsigned>>= 25
8x x7 unsigned>>= 25
x6 ^= t0
x7 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate16
x12 = shuffle bytes of x12 by rotate16
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 12
8x t1 = x6 << 12
8x x5 unsigned>>= 20
8x x6 unsigned>>= 20
x5 ^= t0
x6 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate8
x12 = shuffle bytes of x12 by rotate8
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 7
8x t1 = x6 << 7
8x x5 unsigned>>= 25
8x x6 unsigned>>= 25
x5 ^= t0
x6 ^= t1
x6stack = x6
x10stack = x10
x11stack = x11
x15stack = x15
x4 = x4stack
x8 = x8stack
x9 = x9stack
x13 = x13stack
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate16
x14 = shuffle bytes of x14 by rotate16
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 12
8x t1 = x4 << 12
8x x7 unsigned>>= 20
8x x4 unsigned>>= 20
x7 ^= t0
x4 ^= t1
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate8
x14 = shuffle bytes of x14 by rotate8
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 7
8x t1 = x4 << 7
8x x7 unsigned>>= 25
8x x4 unsigned>>= 25
x7 ^= t0
x4 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate16
x13 = shuffle bytes of x13 by rotate16
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 12
8x t1 = x5 << 12
8x x4 unsigned>>= 20
8x x5 unsigned>>= 20
x4 ^= t0
x5 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate8
x13 = shuffle bytes of x13 by rotate8
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 7
8x t1 = x5 << 7
8x x4 unsigned>>= 25
8x x5 unsigned>>= 25
x4 ^= t0
x5 ^= t1
x4stack = x4
x8stack = x8
x9stack = x9
x13stack = x13
x6 = x6stack
x10 = x10stack
x11 = x11stack
x15 = x15stack
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate16
x15 = shuffle bytes of x15 by rotate16
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 12
8x t1 = x7 << 12
8x x6 unsigned>>= 20
8x x7 unsigned>>= 20
x6 ^= t0
x7 ^= t1
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate8
x15 = shuffle bytes of x15 by rotate8
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 7
8x t1 = x7 << 7
8x x6 unsigned>>= 25
8x x7 unsigned>>= 25
x6 ^= t0
x7 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate16
x12 = shuffle bytes of x12 by rotate16
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 12
8x t1 = x6 << 12
8x x5 unsigned>>= 20
8x x6 unsigned>>= 20
x5 ^= t0
x6 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate8
x12 = shuffle bytes of x12 by rotate8
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 7
8x t1 = x6 << 7
8x x5 unsigned>>= 25
8x x6 unsigned>>= 25
x5 ^= t0
x6 ^= t1
x6stack = x6
x10stack = x10
x11stack = x11
x15stack = x15
x4 = x4stack
x8 = x8stack
x9 = x9stack
x13 = x13stack
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate16
x14 = shuffle bytes of x14 by rotate16
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 12
8x t1 = x4 << 12
8x x7 unsigned>>= 20
8x x4 unsigned>>= 20
x7 ^= t0
x4 ^= t1
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate8
x14 = shuffle bytes of x14 by rotate8
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 7
8x t1 = x4 << 7
8x x7 unsigned>>= 25
8x x4 unsigned>>= 25
x7 ^= t0
x4 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate16
x13 = shuffle bytes of x13 by rotate16
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 12
8x t1 = x5 << 12
8x x4 unsigned>>= 20
8x x5 unsigned>>= 20
x4 ^= t0
x5 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate8
x13 = shuffle bytes of x13 by rotate8
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 7
8x t1 = x5 << 7
8x x4 unsigned>>= 25
8x x5 unsigned>>= 25
x4 ^= t0
x5 ^= t1
x4stack = x4
x8stack = x8
x9stack = x9
x13stack = x13
x6 = x6stack
x10 = x10stack
x11 = x11stack
x15 = x15stack
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate16
x15 = shuffle bytes of x15 by rotate16
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 12
8x t1 = x7 << 12
8x x6 unsigned>>= 20
8x x7 unsigned>>= 20
x6 ^= t0
x7 ^= t1
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate8
x15 = shuffle bytes of x15 by rotate8
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 7
8x t1 = x7 << 7
8x x6 unsigned>>= 25
8x x7 unsigned>>= 25
x6 ^= t0
x7 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate16
x12 = shuffle bytes of x12 by rotate16
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 12
8x t1 = x6 << 12
8x x5 unsigned>>= 20
8x x6 unsigned>>= 20
x5 ^= t0
x6 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate8
x12 = shuffle bytes of x12 by rotate8
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 7
8x t1 = x6 << 7
8x x5 unsigned>>= 25
8x x6 unsigned>>= 25
x5 ^= t0
x6 ^= t1
x6stack = x6
x10stack = x10
x11stack = x11
x15stack = x15
x4 = x4stack
x8 = x8stack
x9 = x9stack
x13 = x13stack
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate16
x14 = shuffle bytes of x14 by rotate16
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 12
8x t1 = x4 << 12
8x x7 unsigned>>= 20
8x x4 unsigned>>= 20
x7 ^= t0
x4 ^= t1
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate8
x14 = shuffle bytes of x14 by rotate8
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 7
8x t1 = x4 << 7
8x x7 unsigned>>= 25
8x x4 unsigned>>= 25
x7 ^= t0
x4 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate16
x13 = shuffle bytes of x13 by rotate16
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 12
8x t1 = x5 << 12
8x x4 unsigned>>= 20
8x x5 unsigned>>= 20
x4 ^= t0
x5 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate8
x13 = shuffle bytes of x13 by rotate8
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 7
8x t1 = x5 << 7
8x x4 unsigned>>= 25
8x x5 unsigned>>= 25
x4 ^= t0
x5 ^= t1
x4stack = x4
x8stack = x8
x9stack = x9
x13stack = x13
x6 = x6stack
x10 = x10stack
x11 = x11stack
x15 = x15stack
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate16
x15 = shuffle bytes of x15 by rotate16
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 12
8x t1 = x7 << 12
8x x6 unsigned>>= 20
8x x7 unsigned>>= 20
x6 ^= t0
x7 ^= t1
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate8
x15 = shuffle bytes of x15 by rotate8
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 7
8x t1 = x7 << 7
8x x6 unsigned>>= 25
8x x7 unsigned>>= 25
x6 ^= t0
x7 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate16
x12 = shuffle bytes of x12 by rotate16
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 12
8x t1 = x6 << 12
8x x5 unsigned>>= 20
8x x6 unsigned>>= 20
x5 ^= t0
x6 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate8
x12 = shuffle bytes of x12 by rotate8
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 7
8x t1 = x6 << 7
8x x5 unsigned>>= 25
8x x6 unsigned>>= 25
x5 ^= t0
x6 ^= t1
x6stack = x6
x10stack = x10
x11stack = x11
x15stack = x15
x4 = x4stack
x8 = x8stack
x9 = x9stack
x13 = x13stack
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate16
x14 = shuffle bytes of x14 by rotate16
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 12
8x t1 = x4 << 12
8x x7 unsigned>>= 20
8x x4 unsigned>>= 20
x7 ^= t0
x4 ^= t1
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate8
x14 = shuffle bytes of x14 by rotate8
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 7
8x t1 = x4 << 7
8x x7 unsigned>>= 25
8x x4 unsigned>>= 25
x7 ^= t0
x4 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate16
x13 = shuffle bytes of x13 by rotate16
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 12
8x t1 = x5 << 12
8x x4 unsigned>>= 20
8x x5 unsigned>>= 20
x4 ^= t0
x5 ^= t1
8x  x0 += x4
8x  x1 += x5
x12 ^= x0
x13 ^= x1
x12 = shuffle bytes of x12 by rotate8
x13 = shuffle bytes of x13 by rotate8
8x x8 += x12
8x x9 += x13
x4 ^= x8
x5 ^= x9
8x t0 = x4 << 7
8x t1 = x5 << 7
8x x4 unsigned>>= 25
8x x5 unsigned>>= 25
x4 ^= t0
x5 ^= t1
x4stack = x4
x8stack = x8
x9stack = x9
x13stack = x13
x6 = x6stack
x10 = x10stack
x11 = x11stack
x15 = x15stack
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate16
x15 = shuffle bytes of x15 by rotate16
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 12
8x t1 = x7 << 12
8x x6 unsigned>>= 20
8x x7 unsigned>>= 20
x6 ^= t0
x7 ^= t1
8x  x2 += x6
8x  x3 += x7
x14 ^= x2
x15 ^= x3
x14 = shuffle bytes of x14 by rotate8
x15 = shuffle bytes of x15 by rotate8
8x x10 += x14
8x x11 += x15
x6 ^= x10
x7 ^= x11
8x t0 = x6 << 7
8x t1 = x7 << 7
8x x6 unsigned>>= 25
8x x7 unsigned>>= 25
x6 ^= t0
x7 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate16
x12 = shuffle bytes of x12 by rotate16
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 12
8x t1 = x6 << 12
8x x5 unsigned>>= 20
8x x6 unsigned>>= 20
x5 ^= t0
x6 ^= t1
8x  x0 += x5
8x  x1 += x6
x15 ^= x0
x12 ^= x1
x15 = shuffle bytes of x15 by rotate8
x12 = shuffle bytes of x12 by rotate8
8x x10 += x15
8x x11 += x12
x5 ^= x10
x6 ^= x11
8x t0 = x5 << 7
8x t1 = x6 << 7
8x x5 unsigned>>= 25
8x x6 unsigned>>= 25
x5 ^= t0
x6 ^= t1
x6stack = x6
x10stack = x10
x11stack = x11
x15stack = x15
x4 = x4stack
x8 = x8stack
x9 = x9stack
x13 = x13stack
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate16
x14 = shuffle bytes of x14 by rotate16
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 12
8x t1 = x4 << 12
8x x7 unsigned>>= 20
8x x4 unsigned>>= 20
x7 ^= t0
x4 ^= t1
8x  x2 += x7
8x  x3 += x4
x13 ^= x2
x14 ^= x3
x13 = shuffle bytes of x13 by rotate8
x14 = shuffle bytes of x14 by rotate8
8x x8 += x13
8x x9 += x14
x7 ^= x8
x4 ^= x9
8x t0 = x7 << 7
8x t1 = x4 << 7
8x x7 unsigned>>= 25
8x x4 unsigned>>= 25
x7 ^= t0
x4 ^= t1
unsigned>? ctr-=1
goto wots_loop if unsigned>
x6= x6stack
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
mem256[input_0 +  32] = x1
mem256[input_0 +  64] = x2
mem256[input_0 +  96] = x3
mem256[input_0 + 128] = x4
mem256[input_0 + 160] = x5
mem256[input_0 + 192] = x6
mem256[input_0 + 224] = x7
return
