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
int64 t0
int64 t1
int64 t2
int64 t3
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
  stack64 caller4_stack
  stack64 caller5_stack
  stack64 caller6_stack
  stack64 caller7_stack
enter crypto_sign_ed25519_amd64_64_sc25519_sub_nored
r0 = *(uint64 *)(xp +  0)
r1 = *(uint64 *)(xp +  8)
r2 = *(uint64 *)(xp + 16)
r3 = *(uint64 *)(xp + 24)
carry? r0 -= *(uint64 *)(yp +  0)
carry? r1 -= *(uint64 *)(yp +  8) - carry
carry? r2 -= *(uint64 *)(yp + 16) - carry
r3 -= *(uint64 *)(yp + 24) - carry
*(uint64 *)(rp +  0) = r0
*(uint64 *)(rp +  8) = r1
*(uint64 *)(rp + 16) = r2
*(uint64 *)(rp + 24) = r3
leave
