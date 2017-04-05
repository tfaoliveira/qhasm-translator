int64 xp
int64 yp
int64 ret
input xp
input yp
output ret
int64 t0
int64 t1
int64 t2
int64 t3
int64 doof
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
enter crypto_sign_ed25519_amd64_64_sc25519_lt
t0 = *(uint64 *)(xp +  0)
t1 = *(uint64 *)(xp +  8)
t2 = *(uint64 *)(xp + 16)
t3 = *(uint64 *)(xp + 24)
carry? t0 -= *(uint64 *)(yp +  0)
carry? t1 -= *(uint64 *)(yp +  8) - carry
carry? t2 -= *(uint64 *)(yp + 16) - carry
carry? t3 -= *(uint64 *)(yp + 24) - carry
ret = 0
doof = 1
ret = doof if carry
leave
