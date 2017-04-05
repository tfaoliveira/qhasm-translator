int64 rp
int64 xp
int64 yp
input rp
input xp
input yp
int64 r0
int64 r1
int64 r2
int64 r3
int64 r4
int64 r5
int64 r6
int64 r7
int64 c
int64 zero
int64 rax
int64 rdx
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
enter crypto_sign_ed25519_amd64_64_ull4_mul 
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
yp = yp
r4 = 0
r5 = 0
r6 = 0
r7 = 0
zero = 0
rax = *(uint64 *)(xp + 0)
(uint128) rdx rax = rax * *(uint64 *)(yp +  0)
r0 = rax
c = rdx
rax = *(uint64 *)(xp + 0)
(uint128) rdx rax = rax * *(uint64 *)(yp +  8)
r1 = rax
carry? r1 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 0)
(uint128) rdx rax = rax * *(uint64 *)(yp + 16)
r2 = rax
carry? r2 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 0)
(uint128) rdx rax = rax * *(uint64 *)(yp + 24)
r3 = rax
carry? r3 += c
r4 += rdx + carry
rax = *(uint64 *)(xp + 8)
(uint128) rdx rax = rax * *(uint64 *)(yp +  0)
carry? r1 += rax
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 8)
(uint128) rdx rax = rax * *(uint64 *)(yp +  8)
carry? r2 += rax
rdx += zero + carry
carry? r2 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 8)
(uint128) rdx rax = rax * *(uint64 *)(yp + 16)
carry? r3 += rax 
rdx += zero + carry
carry? r3 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 8)
(uint128) rdx rax = rax * *(uint64 *)(yp + 24)
carry? r4 += rax
rdx += zero + carry
carry? r4 += c
r5 += rdx + carry
rax = *(uint64 *)(xp + 16)
(uint128) rdx rax = rax * *(uint64 *)(yp +  0)
carry? r2 += rax
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 16)
(uint128) rdx rax = rax * *(uint64 *)(yp +  8)
carry? r3 += rax
rdx += zero + carry
carry? r3 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 16)
(uint128) rdx rax = rax * *(uint64 *)(yp + 16)
carry? r4 += rax
rdx += zero + carry
carry? r4 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 16)
(uint128) rdx rax = rax * *(uint64 *)(yp + 24)
carry? r5 += rax
rdx += zero + carry
carry? r5 += c
r6 += rdx + carry
rax = *(uint64 *)(xp + 24)
(uint128) rdx rax = rax * *(uint64 *)(yp +  0)
carry? r3 += rax
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 24)
(uint128) rdx rax = rax * *(uint64 *)(yp +  8)
carry? r4 += rax
rdx += zero + carry
carry? r4 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 24)
(uint128) rdx rax = rax * *(uint64 *)(yp + 16)
carry? r5 += rax
rdx += zero + carry
carry? r5 += c
c = 0
c += rdx + carry
rax = *(uint64 *)(xp + 24)
(uint128) rdx rax = rax * *(uint64 *)(yp + 24)
carry? r6 += rax
rdx += zero + carry
carry? r6 += c
r7 += rdx + carry
*(uint64 *)(rp +  0) = r0
*(uint64 *)(rp +  8) = r1
*(uint64 *)(rp + 16) = r2
*(uint64 *)(rp + 24) = r3
*(uint64 *)(rp + 32) = r4
*(uint64 *)(rp + 40) = r5
*(uint64 *)(rp + 48) = r6
*(uint64 *)(rp + 56) = r7
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
