int64 t0
int64 t1
int64 c
int64 r

## FIX
int64 input_0
input input_0
## FIX

enter vec_reduce_asm

r = 0
t0 = mem64[ input_0 + 192 ]
t1 = mem64[ input_0 + 200 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 176 ]
t1 = mem64[ input_0 + 184 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 160 ]
t1 = mem64[ input_0 + 168 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 144 ]
t1 = mem64[ input_0 + 152 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 128 ]
t1 = mem64[ input_0 + 136 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 112 ]
t1 = mem64[ input_0 + 120 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 96 ]
t1 = mem64[ input_0 + 104 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 80 ]
t1 = mem64[ input_0 + 88 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 64 ]
t1 = mem64[ input_0 + 72 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 48 ]
t1 = mem64[ input_0 + 56 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 32 ]
t1 = mem64[ input_0 + 40 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 16 ]
t1 = mem64[ input_0 + 24 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
t0 = mem64[ input_0 + 0 ]
t1 = mem64[ input_0 + 8 ]
t0 ^= t1
c = count(t0)
(uint32) c &= 1
r <<= 1
r |= c
#return r
return
