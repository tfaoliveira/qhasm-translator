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
int64 w16
int64 w17
int64 w18
int64 w19
int64 t0
int64 t1
int64 t2
int64 t3
int64 t4
int64 t5
int64 t6
int64 t7
int64 t8
int64 t9
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
enter crypto_scalarmult_curve25519_amd64_51_work_cswap
=? swap - 1
w0  = *(uint64 *)(workp +   0)
w10 = *(uint64 *)(workp +  80)
        w1  = *(uint64 *)(workp +   8)
        w11 = *(uint64 *)(workp +  88)
t0 = w0
w0  = w10 if =
w10 = t0 if =
        t1 = w1
        w1  = w11 if =
        w11 = t1 if =
*(uint64 *)(workp +   0) = w0
*(uint64 *)(workp +  80) = w10
        *(uint64 *)(workp +   8) = w1
        *(uint64 *)(workp +  88) = w11
w2  = *(uint64 *)(workp +  16)
w12 = *(uint64 *)(workp +  96)
        w3  = *(uint64 *)(workp +  24)
        w13 = *(uint64 *)(workp + 104)
t2 = w2
w2  = w12 if =
w12 = t2 if =
        t3 = w3
        w3  = w13 if =
        w13 = t3 if =
*(uint64 *)(workp +  16) = w2
*(uint64 *)(workp +  96) = w12
        *(uint64 *)(workp +  24) = w3
        *(uint64 *)(workp + 104) = w13
w4  = *(uint64 *)(workp +  32)
w14 = *(uint64 *)(workp + 112)
        w5  = *(uint64 *)(workp +  40)
        w15 = *(uint64 *)(workp + 120)
t4 = w4
w4  = w14 if =
w14 = t4 if =
        t5 = w5
        w5  = w15 if =
        w15 = t5 if =
*(uint64 *)(workp +  32) = w4
*(uint64 *)(workp + 112) = w14
        *(uint64 *)(workp +  40) = w5
        *(uint64 *)(workp + 120) = w15
w6  = *(uint64 *)(workp +  48)
w16 = *(uint64 *)(workp + 128)
        w7  = *(uint64 *)(workp +  56)
        w17 = *(uint64 *)(workp + 136)
t6 = w6
w6  = w16 if =
w16 = t6 if =
        t7 = w7
        w7  = w17 if =
        w17 = t7 if =
*(uint64 *)(workp +  48) = w6
*(uint64 *)(workp + 128) = w16
        *(uint64 *)(workp +  56) = w7
        *(uint64 *)(workp + 136) = w17
w8  = *(uint64 *)(workp +  64)
w18 = *(uint64 *)(workp + 144)
        w9  = *(uint64 *)(workp +  72)
        w19 = *(uint64 *)(workp + 152)
t8 = w8
w8  = w18 if =
w18 = t8 if =
        t9 = w9
        w9  = w19 if =
        w19 = t9 if =
*(uint64 *)(workp +  64) = w8
*(uint64 *)(workp + 144) = w18
        *(uint64 *)(workp +  72) = w9
        *(uint64 *)(workp + 152) = w19
leave
