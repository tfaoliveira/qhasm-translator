int64 workp
int64 swap
input workp
input swap
int64 w0
int64 w1
int64 w2
int64 w3
int64 w4
int64 w5
int64 w6
int64 w7
int64 w8
int64 w9
int64 w10
int64 w11
int64 w12
int64 w13
int64 w14
int64 w15
int64 t
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
enter crypto_scalarmult_curve25519_amd64_64_work_cswap
=? swap - 1
w0  = *(uint64 *)(workp +   0)
w8  = *(uint64 *)(workp +  64)
t = w0
w0  = w8 if =
w8  = t if =
*(uint64 *)(workp +   0) = w0
*(uint64 *)(workp +  64) = w8
w1  = *(uint64 *)(workp +   8)
w9  = *(uint64 *)(workp +  72)
t = w1
w1  = w9 if =
w9  = t if =
*(uint64 *)(workp +   8) = w1
*(uint64 *)(workp +  72) = w9
w2  = *(uint64 *)(workp +  16)
w10 = *(uint64 *)(workp +  80)
t = w2
w2  = w10 if =
w10 = t if =
*(uint64 *)(workp +  16) = w2
*(uint64 *)(workp +  80) = w10
w3  = *(uint64 *)(workp +  24)
w11 = *(uint64 *)(workp +  88)
t = w3
w3  = w11 if =
w11 = t if =
*(uint64 *)(workp +  24) = w3
*(uint64 *)(workp +  88) = w11
w4  = *(uint64 *)(workp +  32)
w12 = *(uint64 *)(workp +  96)
t = w4
w4  = w12 if =
w12 = t if =
*(uint64 *)(workp +  32) = w4
*(uint64 *)(workp +  96) = w12
w5  = *(uint64 *)(workp +  40)
w13 = *(uint64 *)(workp + 104)
t = w5
w5  = w13 if =
w13 = t if =
*(uint64 *)(workp +  40) = w5
*(uint64 *)(workp + 104) = w13
w6  = *(uint64 *)(workp +  48)
w14 = *(uint64 *)(workp + 112)
t = w6
w6  = w14 if =
w14 = t if =
*(uint64 *)(workp +  48) = w6
*(uint64 *)(workp + 112) = w14
w7  = *(uint64 *)(workp +  56)
w15 = *(uint64 *)(workp + 120)
t = w7
w7  = w15 if =
w15 = t if =
*(uint64 *)(workp +  56) = w7
*(uint64 *)(workp + 120) = w15
leave
