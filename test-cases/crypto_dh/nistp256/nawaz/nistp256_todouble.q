enter nistp256_todouble
int64 z
int64 x
input z
input x
int64 constants
int64 constants_low
float64 alpha0
float64 alpha48
float64 alpha88
float64 alpha176
float64 alpha216
float64 alpha22
float64 alpha43
float64 alpha64
float64 alpha86
float64 alpha107
float64 alpha128
float64 alpha150
float64 alpha171
float64 alpha192
float64 alpha214
float64 alpha235
int64 f0
int64 f1
int64 f2
int64 f3
int64 f4
int64 f5
int64 f6
int64 f7
int64 f8
int64 f9
int64 f10
int64 f11
int64 f12
int64 f13
int64 f14
int64 f15
int64 f16
int64 f17
int64 f18
int64 f19
int64 f20
int64 f21
int64 f22
int64 f23
int64 f24
int64 f25
int64 f26
int64 f27
int64 f28
int64 f29
int64 f30
int64 f31
int64 x0
int64 x48
int64 x88
int64 x128
int64 x176
int64 x216
stack64 y0
stack64 y48
stack64 y88
stack64 y128
stack64 y176
stack64 y216
float64 z0
float64 z22
float64 z43
float64 z64
float64 z86
float64 z107
float64 z128
float64 z150
float64 z171
float64 z192
float64 z214
float64 z235
float64 closest43
float64 closest86
float64 closest128
float64 closest171
float64 closest214
f0 = *(uint8 *) (x + 0)
f1 = *(uint8 *) (x + 1)
f2 = *(uint8 *) (x + 2)
f3 = *(uint8 *) (x + 3)
f4 = *(uint8 *) (x + 4)
f5 = *(uint8 *) (x + 5)
f1 <<= 8
f2 <<= 16
f3 <<= 24
f4 <<= 32
f5 <<= 40
x0 = 2151
x0 <<= 51
x0 += f0
x0 += f1
x0 += f2
x0 += f3
x0 += f4
x0 += f5
f6 = *(uint8 *) (x + 6)
f7 = *(uint8 *) (x + 7)
f8 = *(uint8 *) (x + 8)
f9 = *(uint8 *) (x + 9)
f10 = *(uint8 *) (x + 10)
f7 <<= 8
f8 <<= 16
f9 <<= 24
f10 <<= 32
x48 = 2247
x48 <<= 51
x48 += f6
x48 += f7
x48 += f8
x48 += f9
x48 += f10
f11 = *(uint8 *) (x + 11)
f12 = *(uint8 *) (x + 12)
f13 = *(uint8 *) (x + 13)
f14 = *(uint8 *) (x + 14)
f15 = *(uint8 *) (x + 15)
f12 <<= 8
f13 <<= 16
f14 <<= 24
f15 <<= 32
x88 = 2327
x88 <<= 51
x88 += f11
x88 += f12
x88 += f13
x88 += f14
x88 += f15
f16 = *(uint8 *) (x + 16)
f17 = *(uint8 *) (x + 17)
f18 = *(uint8 *) (x + 18)
f19 = *(uint8 *) (x + 19)
f20 = *(uint8 *) (x + 20)
f21 = *(uint8 *) (x + 21)
f17 <<= 8
f18 <<= 16
f19 <<= 24
f20 <<= 32
f21 <<= 40
x128 = 2407
x128 <<= 51
x128 += f16
x128 += f17
x128 += f18
x128 += f19
x128 += f20
x128 += f21
f22 = *(uint8 *) (x + 22)
f23 = *(uint8 *) (x + 23)
f24 = *(uint8 *) (x + 24)
f25 = *(uint8 *) (x + 25)
f26 = *(uint8 *) (x + 26)
f23 <<= 8
f24 <<= 16
f25 <<= 24
f26 <<= 32
x176 = 2503
x176 <<= 51
x176 += f22
x176 += f23
x176 += f24
x176 += f25
x176 += f26
f27 = *(uint8 *) (x + 27)
f28 = *(uint8 *) (x + 28)
f29 = *(uint8 *) (x + 29)
f30 = *(uint8 *) (x + 30)
f31 = *(uint8 *) (x + 31)
f28 <<= 8
f29 <<= 16
f30 <<= 24
f31 <<= 32
x216 = 2583
x216 <<= 51
x216 += f27
x216 += f28
x216 += f29
x216 += f30
x216 += f31
y0 = x0
y48 = x48
y88 = x88
y128 = x128
y176 = x176
y216 = x216
constants = (nistp256_constants & 0xfffffc0000000000) >> 32
constants_low = nistp256_constants & 0xfffffc00
constants |= (nistp256_constants & 0x3ff00000000) >> 32
constants_low |= nistp256_constants & 0x3ff
constants <<= 32
constants |= constants_low
alpha0 = *(float64 *) (constants + 104)
alpha48 = *(float64 *) (constants + 112)
alpha88 = *(float64 *) (constants + 120)
alpha128 = *(float64 *) (constants + 48)
alpha176 = *(float64 *) (constants + 128)
alpha216 = *(float64 *) (constants + 136)
alpha22 = *(float64 *) (constants + 8)
alpha43 = *(float64 *) (constants + 16)
alpha64 = *(float64 *) (constants + 24)
alpha86 = *(float64 *) (constants + 32)
alpha107 = *(float64 *) (constants + 40)
alpha150 = *(float64 *) (constants + 56)
alpha171 = *(float64 *) (constants + 64)
alpha192 = *(float64 *) (constants + 72)
alpha214 = *(float64 *) (constants + 80)
alpha235 = *(float64 *) (constants + 88)
z0 = y0
z43 = y48
z86 = y88
z128 = y128
z171 = y176
z214 = y216
z0 -= alpha0
z43 -= alpha48
z86 -= alpha88
z128 -= alpha128
z171 -= alpha176
z214 -= alpha216
z22 = z0 + alpha22
z22 -= alpha22
z0 -= z22
closest43 = z22 + alpha43
closest43 -= alpha43
z22 -= closest43
z43 += closest43
z64 = z43 + alpha64
z64 -= alpha64
z43 -= z64
closest86 = z64 + alpha86
closest86 -= alpha86
z64 -= closest86
z86 += closest86
z107 = z86 + alpha107
z107 -= alpha107
z86 -= z107
closest128 = z107 + alpha128
closest128 -= alpha128
z107 -= closest128
z128 += closest128
z150 = z128 + alpha150
z150 -= alpha150
z128 -= z150
closest171 = z150 + alpha171
closest171 -= alpha171
z150 -= closest171
z171 += closest171
z192 = z171 + alpha192
z192 -= alpha192
z171 -= z192
closest214 = z192 + alpha214
closest214 -= alpha214
z192 -= closest214
z214 += closest214
z235 = z214 + alpha235
z235 -= alpha235
z214 -= z235
*(float64 *) (z + 0) = z0
*(float64 *) (z + 8) = z22
*(float64 *) (z + 16) = z43
*(float64 *) (z + 24) = z64
*(float64 *) (z + 32) = z86
*(float64 *) (z + 40) = z107
*(float64 *) (z + 48) = z128
*(float64 *) (z + 56) = z150
*(float64 *) (z + 64) = z171
*(float64 *) (z + 72) = z192
*(float64 *) (z + 80) = z214
*(float64 *) (z + 88) = z235
leave
