int64 rp
int64 xp
input rp
input xp
  int64 caller1
  int64 caller2
  int64 caller3
  int64 caller4
  int64 caller5
  int64 caller6
  int64 caller7
  caller caller1
  caller caller2
  caller caller3
  caller caller4
  caller caller5
  caller caller6
  caller caller7
  stack64 caller1_stack
  stack64 caller2_stack
  stack64 caller3_stack
  stack64 caller4_stack
  stack64 caller5_stack
  stack64 caller6_stack
  stack64 caller7_stack
int64 q23
int64 q24
int64 q30
int64 q31
int64 q32
int64 q33
int64 r20
int64 r21
int64 r22
int64 r23
int64 r24
int64 r0
int64 r1
int64 r2
int64 r3
int64 t0
int64 t1
int64 t2
int64 t3
int64 rax
int64 rdx
int64 c
int64 zero
int64 mask
int64 nmask
stack64 q30_stack
stack64 q31_stack
stack64 q32_stack
stack64 q33_stack
enter crypto_sign_ed25519_amd64_64_sc25519_barrett
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
zero ^= zero
q30 ^= q30
q31 ^= q31
q32 ^= q32
q33 ^= q33
rax = *(uint64 *)(xp + 24)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
q23 = rax
c = rdx
rax = *(uint64 *)(xp + 24)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
q24 = rax
carry? q24 += c
q30 += rdx + carry
rax = *(uint64 *)(xp + 32)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU2
carry? q23 += rax
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 32)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
carry? q24 += rax
rdx += zero + carry
carry? q24 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 32)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
carry? q30 += rax 
rdx += zero + carry
carry? q30 += c
q31 += rdx + carry
rax = *(uint64 *)(xp + 40)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU1
carry? q23 += rax
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 40)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU2
carry? q24 += rax
rdx += zero + carry
carry? q24 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 40)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
carry? q30 += rax
rdx += zero + carry
carry? q30 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 40)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
carry? q31 += rax 
rdx += zero + carry
carry? q31 += c
q32 += rdx + carry
rax = *(uint64 *)(xp + 48)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU0
carry? q23 += rax
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 48)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU1
carry? q24 += rax
rdx += zero + carry
carry? q24 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 48)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU2
carry? q30 += rax
rdx += zero + carry
carry? q30 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 48)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
carry? q31 += rax
rdx += zero + carry
carry? q31 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 48)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
carry? q32 += rax 
rdx += zero + carry
carry? q32 += c
q33 += rdx + carry
rax = *(uint64 *)(xp + 56)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU0
carry? q24 += rax
free q24
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 56)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU1
carry? q30 += rax
rdx += zero + carry
carry? q30 += c
c = 0
c += rdx + carry
q30_stack = q30
rax = *(uint64 *)(xp + 56)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU2
carry? q31 += rax
rdx += zero + carry
carry? q31 += c
c = 0
c += rdx + carry
q31_stack = q31
rax = *(uint64 *)(xp + 56)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU3
carry? q32 += rax
rdx += zero + carry
carry? q32 += c
c = 0
c += rdx + carry
q32_stack = q32
rax = *(uint64 *)(xp + 56)
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_MU4
carry? q33 += rax 
rdx += zero + carry
q33 += c
q33_stack = q33
rax = q30_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
r20 = rax
c = rdx
rax = q30_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1
r21 = rax
carry? r21 += c
c = 0
c += rdx + carry
rax = q30_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER2
r22 = rax
carry? r22 += c
c = 0
c += rdx + carry
rax = q30_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3
free rdx
r23 = rax
r23 += c
rax = q31_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
carry? r21 += rax
c = 0
c += rdx + carry
rax = q31_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1
carry? r22 += rax
rdx += zero + carry
carry? r22 += c
c = 0
c += rdx + carry
rax = q31_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER2
free rdx
r23 += rax 
r23 += c
rax = q32_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
carry? r22 += rax
c = 0
c += rdx + carry
rax = q32_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1
free rdx
r23 += rax
r23 += c
rax = q33_stack
(uint128) rdx rax = rax * *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
free rdx
r23 += rax
r0 = *(uint64 *)(xp +  0)
carry? r0 -= r20
t0 = r0
r1 = *(uint64 *)(xp +  8)
carry? r1 -= r21 - carry
t1 = r1
r2 = *(uint64 *)(xp + 16)
carry? r2 -= r22 - carry
t2 = r2
r3 = *(uint64 *)(xp + 24)
r3 -= r23 - carry
t3 = r3
carry? t0 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
carry? t1 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1 - carry
carry? t2 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER2 - carry
carry? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3 - carry
r0 = t0 if !carry
t0 = r0
r1 = t1 if !carry
t1 = r1
r2 = t2 if !carry
t2 = r2
r3 = t3 if !carry
#unsigned<? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3 - carry
#r0 = t0 if !unsigned<
#t0 = r0
#r1 = t1 if !unsigned<
#t1 = r1
#r2 = t2 if !unsigned<
#t2 = r2
#r3 = t3 if !unsigned<
t3 = r3
carry? t0 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER0
carry? t1 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER1 - carry
carry? t2 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER2 - carry
carry? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3 - carry
r0 = t0 if !carry
r1 = t1 if !carry
r2 = t2 if !carry
r3 = t3 if !carry
#unsigned<? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_64_ORDER3 - carry
#r0 = t0 if !unsigned<
#r1 = t1 if !unsigned<
#r2 = t2 if !unsigned<
#r3 = t3 if !unsigned<
*(uint64 *)(rp +  0) = r0
*(uint64 *)(rp +  8) = r1
*(uint64 *)(rp + 16) = r2
*(uint64 *)(rp + 24) = r3

  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
