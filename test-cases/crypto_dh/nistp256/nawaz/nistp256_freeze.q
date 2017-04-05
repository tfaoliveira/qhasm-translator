enter nistp256_freeze
int64 out
int64 r
input out
input r
int64 constants
int64 constants_low
float64 r0
float64 r22
float64 r43
float64 r64
float64 r86
float64 r107
float64 r128
float64 r150
float64 r171
float64 r192
float64 r214
float64 r235
float64 output0
float64 output16
float64 output40
float64 output64
float64 output80
float64 output104
float64 output128
float64 output144
float64 output168
float64 output192
float64 output208
float64 output232
stack64 w0
stack64 w16
stack64 w40
stack64 w64
stack64 w80
stack64 w104
stack64 w128
stack64 w144
stack64 w168
stack64 w192
stack64 w208
stack64 w232
int64 s0
int64 s16
int64 s40
int64 s64
int64 s80
int64 s104
int64 s128
int64 s144
int64 s168
int64 s192
int64 s208
int64 s232
int64 32bits
int64 31bits
int64 accum
int64 t0
int64 t32
int64 t64
int64 t96
int64 t128
int64 t160
int64 t192
int64 t224
int64 u0
int64 u32
int64 u64
int64 u96
int64 u128
int64 u160
int64 u192
int64 u224
int64 uc
int64 uc1
int64 wantt
int64 wantu
constants = (nistp256_constants & 0xfffffc0000000000) >> 32
constants_low = nistp256_constants & 0xfffffc00
constants |= (nistp256_constants & 0x3ff00000000) >> 32
constants_low |= nistp256_constants & 0x3ff
constants <<= 32
constants |= constants_low
output0 = *(float64 *) (constants + 264 )
output16 = *(float64 *) (constants + 272 )
output40 = *(float64 *) (constants + 280 )
output64 = *(float64 *) (constants + 288 )
output80 = *(float64 *) (constants + 296 )
output104 = *(float64 *) (constants + 304)
output128 = *(float64 *) (constants + 312)
output144 = *(float64 *) (constants + 320)
output168 = *(float64 *) (constants + 328)
output192 = *(float64 *) (constants + 336)
output208 = *(float64 *) (constants + 344)
output232 = *(float64 *) (constants + 352)
r0 = *(float64 *) (r + 0)
r22 = *(float64 *) (r + 8)
r43 = *(float64 *) (r + 16)
r64 = *(float64 *) (r + 24)
r86 = *(float64 *) (r + 32)
r107 = *(float64 *) (r + 40)
r128 = *(float64 *) (r + 48)
r150 = *(float64 *) (r + 56)
r171 = *(float64 *) (r + 64)
r192 = *(float64 *) (r + 72)
r214 = *(float64 *) (r + 80)
r235 = *(float64 *) (r + 88)
output0 += r0
output16 += r22
output40 += r43
output64 += r64
output80 += r86
output104 += r107
output128 += r128
output144 += r150
output168 += r171
output192 += r192
output208 += r214
output232 += r235
w0 = output0
w16 = output16
w40 = output40
w64 = output64
w80 = output80
w104 = output104
w128 = output128
w144 = output144
w168 = output168
w192 = output192
w208 = output208
w232 = output232
s0 = bottom32 w0
s16 = bottom32 w16
s40 = bottom32 w40
s64 = bottom32 w64
s80 = bottom32 w80
s104 = bottom32 w104
s128 = bottom32 w128
s144 = bottom32 w144
s168 = bottom32 w168
s192 = bottom32 w192
s208 = bottom32 w208
s232 = bottom32 w232
32bits = 0xffffffff & 0xfffffc00
32bits |= 0xffffffff & 0x3ff
s16 <<= 16
accum = s0 + s16
t0 = accum & 32bits
(uint64) accum >>= 32
s40 <<= 8
accum += s40
t32 = accum & 32bits
(uint64) accum >>= 32
accum += s64
s80 <<= 16
accum += s80
t64 = accum & 32bits
(uint64) accum >>= 32
s104 <<= 8
accum += s104
t96 = accum & 32bits
(uint64) accum >>= 32
accum += s128
s144 <<= 16
accum += s144
t128 = accum & 32bits
(uint64) accum >>= 32
s168 <<= 8
accum += s168
t160 = accum & 32bits
(uint64) accum >>= 32
accum += s192
s208 <<= 16
accum += s208
t192 = accum & 32bits
(uint64) accum >>= 32
uc = 0x00000000
uc1 = 0x00000000
s232 <<= 8
t224 = accum + s232
 uc = t224
(uint64) uc>>=32
32bits = 0xffffffff & 0xfffffc00
32bits |= 0xffffffff & 0x3ff
carry32? u0 = t0 + 1
carry32? u32 = t32 + 0 + carry32
carry32? u64 = t64 + 0 + carry32
carry32? u96 = t96 + 32bits + carry32
carry32? u128 = t128 + 32bits + carry32
carry32? u160 = t160 + 32bits + carry32
32bits -=1
carry32? u192 = t192 + 32bits + carry32
carry32? u224 = t224 + 0 + carry32
uc1 = u224
(uint64) uc1>>=32
uc |= uc1
wantt = uc
wantt -= 1
wantu = ~wantt
t0 &= wantt
t32 &= wantt
t64 &= wantt
t96 &= wantt
t128 &= wantt
t160 &= wantt
t192 &= wantt
t224 &= wantt
u0 &= wantu
u32 &= wantu
u64 &= wantu
u96 &= wantu
u128 &= wantu
u160 &= wantu
u192 &= wantu
u224 &= wantu
t0 ^= u0
t32 ^= u32
t64 ^= u64
t96 ^= u96
t128 ^= u128
t160 ^= u160
t192 ^= u192
t224 ^= u224
*(uint8 *) (out + 0) = t0
*(uint8 *) (out + 4) = t32
*(uint8 *) (out + 8) = t64
*(uint8 *) (out + 12) = t96
*(uint8 *) (out + 16) = t128
*(uint8 *) (out + 20) = t160
*(uint8 *) (out + 24) = t192
*(uint8 *) (out + 28) = t224
out += 1
(uint64) t0 >>= 8
(uint64) t32 >>= 8
(uint64) t64 >>= 8
(uint64) t96 >>= 8
(uint64) t128 >>= 8
(uint64) t160 >>= 8
(uint64) t192 >>= 8
(uint64) t224 >>= 8
*(uint8 *) (out + 0) = t0
*(uint8 *) (out + 4) = t32
*(uint8 *) (out + 8) = t64
*(uint8 *) (out + 12) = t96
*(uint8 *) (out + 16) = t128
*(uint8 *) (out + 20) = t160
*(uint8 *) (out + 24) = t192
*(uint8 *) (out + 28) = t224
out += 1
(uint64) t0 >>= 8
(uint64) t32 >>= 8
(uint64) t64 >>= 8
(uint64) t96 >>= 8
(uint64) t128 >>= 8
(uint64) t160 >>= 8
(uint64) t192 >>= 8
(uint64) t224 >>= 8
*(uint8 *) (out + 0) = t0
*(uint8 *) (out + 4) = t32
*(uint8 *) (out + 8) = t64
*(uint8 *) (out + 12) = t96
*(uint8 *) (out + 16) = t128
*(uint8 *) (out + 20) = t160
*(uint8 *) (out + 24) = t192
*(uint8 *) (out + 28) = t224
out += 1
(uint64) t0 >>= 8
(uint64) t32 >>= 8
(uint64) t64 >>= 8
(uint64) t96 >>= 8
(uint64) t128 >>= 8
(uint64) t160 >>= 8
(uint64) t192 >>= 8
(uint64) t224 >>= 8
*(uint8 *) (out + 0) = t0
*(uint8 *) (out + 4) = t32
*(uint8 *) (out + 8) = t64
*(uint8 *) (out + 12) = t96
*(uint8 *) (out + 16) = t128
*(uint8 *) (out + 20) = t160
*(uint8 *) (out + 24) = t192
*(uint8 *) (out + 28) = t224
leave
