int64 rp
input rp
int64 r0
int64 r1
int64 r2
int64 r3
int64 t0
int64 t1
int64 t2
int64 t3
int64 two63
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
enter crypto_sign_ed25519_amd64_64_fe25519_freeze
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
r0 = *(uint64 *) (rp + 0)
r1 = *(uint64 *) (rp + 8)
r2 = *(uint64 *) (rp + 16)
r3 = *(uint64 *) (rp + 24)
t0 = r0
t1 = r1
t2 = r2
t3 = r3
two63 = 1
two63 <<= 63
carry? t0 += 19
carry? t1 += 0 + carry
carry? t2 += 0 + carry
carry? t3 += two63 + carry
r0 = t0 if carry
r1 = t1 if carry
r2 = t2 if carry
r3 = t3 if carry
t0 = r0
t1 = r1
t2 = r2
t3 = r3
carry? t0 += 19
carry? t1 += 0 + carry
carry? t2 += 0 + carry
carry? t3 += two63 + carry
r0 = t0 if carry
r1 = t1 if carry
r2 = t2 if carry
r3 = t3 if carry
*(uint64 *)(rp + 0) = r0
*(uint64 *)(rp + 8) = r1
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
