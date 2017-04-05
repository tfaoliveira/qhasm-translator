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
enter crypto_sign_ed25519_amd64_51_30k_batch_sc25519_add
caller4_stack = caller4
caller5_stack = caller5
caller6_stack = caller6
r0 = *(uint64 *)(xp +  0)
r1 = *(uint64 *)(xp +  8)
r2 = *(uint64 *)(xp + 16)
r3 = *(uint64 *)(xp + 24)
carry? r0 += *(uint64 *)(yp +  0)
carry? r1 += *(uint64 *)(yp +  8) + carry
carry? r2 += *(uint64 *)(yp + 16) + carry
r3 += *(uint64 *)(yp + 24) + carry
t0 = r0
t1 = r1
t2 = r2
t3 = r3
carry? t0 -= *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_ORDER0
carry? t1 -= *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_ORDER1 - carry
carry? t2 -= *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_ORDER2 - carry
unsigned<? t3 -= *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_ORDER3 - carry
r0 = t0 if !unsigned<
r1 = t1 if !unsigned<
r2 = t2 if !unsigned<
r3 = t3 if !unsigned<
*(uint64 *)(rp +  0) = r0
*(uint64 *)(rp +  8) = r1
*(uint64 *)(rp + 16) = r2
*(uint64 *)(rp + 24) = r3
caller4 = caller4_stack
caller5 = caller5_stack
caller6 = caller6_stack
leave
