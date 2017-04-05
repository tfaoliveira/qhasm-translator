int64 rp
int64 pp
int64 qp
input rp
input pp
input qp
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
int64 a0
int64 a1
int64 a2
int64 a3
int64 a4
stack64 a0_stack
stack64 a1_stack
stack64 a2_stack
stack64 a3_stack
stack64 a4_stack
int64 b0
int64 b1
int64 b2
int64 b3
int64 b4
stack64 b0_stack
stack64 b1_stack
stack64 b2_stack
stack64 b3_stack
stack64 b4_stack
int64 c0
int64 c1
int64 c2
int64 c3
int64 c4
stack64 c0_stack
stack64 c1_stack
stack64 c2_stack
stack64 c3_stack
stack64 c4_stack
int64 d0
int64 d1
int64 d2
int64 d3
int64 d4
stack64 d0_stack
stack64 d1_stack
stack64 d2_stack
stack64 d3_stack
stack64 d4_stack
int64 e0
int64 e1
int64 e2
int64 e3
int64 e4
stack64 e0_stack
stack64 e1_stack
stack64 e2_stack
stack64 e3_stack
stack64 e4_stack
int64 f0
int64 f1
int64 f2
int64 f3
int64 f4
stack64 f0_stack
stack64 f1_stack
stack64 f2_stack
stack64 f3_stack
stack64 f4_stack
int64 g0
int64 g1
int64 g2
int64 g3
int64 g4
stack64 g0_stack
stack64 g1_stack
stack64 g2_stack
stack64 g3_stack
stack64 g4_stack
int64 h0
int64 h1
int64 h2
int64 h3
int64 h4
stack64 h0_stack
stack64 h1_stack
stack64 h2_stack
stack64 h3_stack
stack64 h4_stack
int64 qt0
int64 qt1
int64 qt2
int64 qt3
int64 qt4
stack64 qt0_stack
stack64 qt1_stack
stack64 qt2_stack
stack64 qt3_stack
stack64 qt4_stack
int64 t10
int64 t11
int64 t12
int64 t13
int64 t14
stack64 t10_stack
stack64 t11_stack
stack64 t12_stack
stack64 t13_stack
stack64 t14_stack
int64 t20
int64 t21
int64 t22
int64 t23
int64 t24
stack64 t20_stack
stack64 t21_stack
stack64 t22_stack
stack64 t23_stack
stack64 t24_stack
int64 rx0
int64 rx1
int64 rx2
int64 rx3
int64 rx4
int64 ry0
int64 ry1
int64 ry2
int64 ry3
int64 ry4
int64 rz0
int64 rz1
int64 rz2
int64 rz3
int64 rz4
int64 rt0
int64 rt1
int64 rt2
int64 rt3
int64 rt4
int64 mulr01
int64 mulr11
int64 mulr21
int64 mulr31
int64 mulr41
int64 mulrax
int64 mulrdx
int64 mult
int64 mulredmask
stack64 mulx219_stack
stack64 mulx319_stack
stack64 mulx419_stack
enter crypto_sign_ed25519_amd64_51_30k_batch_ge25519_nielsadd_p1p1
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
qp = qp
a0 = *(uint64 *)(pp + 40)
a1 = *(uint64 *)(pp + 48)
a2 = *(uint64 *)(pp + 56)
a3 = *(uint64 *)(pp + 64)
a4 = *(uint64 *)(pp + 72)
b0 = a0
b1 = a1
b2 = a2
b3 = a3
b4 = a4
a0 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P0
a1 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P1234
a2 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P1234
a3 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P1234
a4 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P1234
b0 += *(uint64 *) (pp + 0)
b1 += *(uint64 *) (pp + 8)
b2 += *(uint64 *) (pp + 16)
b3 += *(uint64 *) (pp + 24)
b4 += *(uint64 *) (pp + 32)
a0 -= *(uint64 *) (pp + 0)
a1 -= *(uint64 *) (pp + 8)
a2 -= *(uint64 *) (pp + 16)
a3 -= *(uint64 *) (pp + 24)
a4 -= *(uint64 *) (pp + 32)
a0_stack = a0
a1_stack = a1
a2_stack = a2
a3_stack = a3
a4_stack = a4
b0_stack = b0
b1_stack = b1
b2_stack = b2
b3_stack = b3
b4_stack = b4
  mulrax = a3_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 16)
  a0 = mulrax
  mulr01 = mulrdx
  mulrax = a4_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 8)
  carry? a0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = a0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 0)
  carry? a0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = a0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 8)
  a1 = mulrax
  mulr11 = mulrdx
  mulrax = a0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 16)
  a2 = mulrax
  mulr21 = mulrdx
  mulrax = a0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 24)
  a3 = mulrax
  mulr31 = mulrdx
  mulrax = a0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 32)
  a4 = mulrax
  mulr41 = mulrdx
  mulrax = a1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 0)
  carry? a1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = a1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 8)
  carry? a2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = a1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 16)
  carry? a3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = a1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 24)
  carry? a4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = a1_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 32)
  carry? a0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = a2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 0)
  carry? a2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = a2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 8)
  carry? a3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = a2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 16)
  carry? a4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = a2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 24)
  carry? a0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = a2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 32)
  carry? a1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = a3_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 0)
  carry? a3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = a3_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 8)
  carry? a4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 24)
  carry? a1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 32)
  carry? a2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = a4_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 0)
  carry? a4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 16)
  carry? a1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 24)
  carry? a2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 32)
  carry? a3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.a0) << 13
  a0 &= mulredmask
  mulr11 = (mulr11.a1) << 13
  a1 &= mulredmask
  a1 += mulr01
  mulr21 = (mulr21.a2) << 13
  a2 &= mulredmask
  a2 += mulr11
  mulr31 = (mulr31.a3) << 13
  a3 &= mulredmask
  a3 += mulr21
  mulr41 = (mulr41.a4) << 13
  a4 &= mulredmask
  a4 += mulr31
  mulr41 = mulr41 * 19
  a0 += mulr41
  mult = a0
  (uint64) mult >>= 51
  mult += a1
  a1 = mult
  (uint64) mult >>= 51
  a0 &= mulredmask
  mult += a2
  a2 = mult
  (uint64) mult >>= 51
  a1 &= mulredmask
  mult += a3
  a3 = mult
  (uint64) mult >>= 51
  a2 &= mulredmask
  mult += a4
  a4 = mult
  (uint64) mult >>= 51
  a3 &= mulredmask
  mult *= 19
  a0 += mult
  a4 &= mulredmask
a0_stack = a0
a1_stack = a1
a2_stack = a2
a3_stack = a3
a4_stack = a4
  mulrax = b3_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  e0 = mulrax
  mulr01 = mulrdx
  mulrax = b4_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  carry? e0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? e0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  e1 = mulrax
  mulr11 = mulrdx
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  e2 = mulrax
  mulr21 = mulrdx
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  e3 = mulrax
  mulr31 = mulrdx
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  e4 = mulrax
  mulr41 = mulrdx
  mulrax = b1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? e1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = b1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  carry? e2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = b1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  carry? e3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = b1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  carry? e4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = b1_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  carry? e0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = b2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? e2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = b2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  carry? e3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = b2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  carry? e4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = b2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  carry? e0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = b2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  carry? e1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = b3_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? e3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = b3_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  carry? e4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  carry? e1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  carry? e2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = b4_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? e4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  carry? e1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  carry? e2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  carry? e3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.e0) << 13
  e0 &= mulredmask
  mulr11 = (mulr11.e1) << 13
  e1 &= mulredmask
  e1 += mulr01
  mulr21 = (mulr21.e2) << 13
  e2 &= mulredmask
  e2 += mulr11
  mulr31 = (mulr31.e3) << 13
  e3 &= mulredmask
  e3 += mulr21
  mulr41 = (mulr41.e4) << 13
  e4 &= mulredmask
  e4 += mulr31
  mulr41 = mulr41 * 19
  e0 += mulr41
  mult = e0
  (uint64) mult >>= 51
  mult += e1
  e1 = mult
  (uint64) mult >>= 51
  e0 &= mulredmask
  mult += e2
  e2 = mult
  (uint64) mult >>= 51
  e1 &= mulredmask
  mult += e3
  e3 = mult
  (uint64) mult >>= 51
  e2 &= mulredmask
  mult += e4
  e4 = mult
  (uint64) mult >>= 51
  e3 &= mulredmask
  mult *= 19
  e0 += mult
  e4 &= mulredmask
h0 = e0
h1 = e1
h2 = e2
h3 = e3
h4 = e4
e0 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P0
e1 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
e2 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
e3 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
e4 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
h0 += a0_stack
h1 += a1_stack
h2 += a2_stack
h3 += a3_stack
h4 += a4_stack
e0 -= a0_stack
e1 -= a1_stack
e2 -= a2_stack
e3 -= a3_stack
e4 -= a4_stack
*(uint64 *)(rp + 80) = h0
*(uint64 *)(rp + 88) = h1
*(uint64 *)(rp + 96) = h2
*(uint64 *)(rp + 104) = h3
*(uint64 *)(rp + 112) = h4
*(uint64 *)(rp + 0) = e0
*(uint64 *)(rp + 8) = e1
*(uint64 *)(rp + 16) = e2
*(uint64 *)(rp + 24) = e3
*(uint64 *)(rp + 32) = e4
  mulrax = *(uint64 *)(pp + 144)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  c0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 152)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  c1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  c2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  c3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  c4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 128)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 144)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 144)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 152)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.c0) << 13
  c0 &= mulredmask
  mulr11 = (mulr11.c1) << 13
  c1 &= mulredmask
  c1 += mulr01
  mulr21 = (mulr21.c2) << 13
  c2 &= mulredmask
  c2 += mulr11
  mulr31 = (mulr31.c3) << 13
  c3 &= mulredmask
  c3 += mulr21
  mulr41 = (mulr41.c4) << 13
  c4 &= mulredmask
  c4 += mulr31
  mulr41 = mulr41 * 19
  c0 += mulr41
  mult = c0
  (uint64) mult >>= 51
  mult += c1
  c1 = mult
  (uint64) mult >>= 51
  c0 &= mulredmask
  mult += c2
  c2 = mult
  (uint64) mult >>= 51
  c1 &= mulredmask
  mult += c3
  c3 = mult
  (uint64) mult >>= 51
  c2 &= mulredmask
  mult += c4
  c4 = mult
  (uint64) mult >>= 51
  c3 &= mulredmask
  mult *= 19
  c0 += mult
  c4 &= mulredmask
c0_stack = c0
f0 = *(uint64 *)(pp + 80)
f1 = *(uint64 *)(pp + 88)
f2 = *(uint64 *)(pp + 96)
f3 = *(uint64 *)(pp + 104)
f4 = *(uint64 *)(pp + 112)
f0 += f0
f1 += f1
f2 += f2
f3 += f3
f4 += f4
g0 = f0
g1 = f1
g2 = f2
g3 = f3
g4 = f4
f0 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P0
f1 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
f2 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
f3 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
f4 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
g0 += c0_stack
g1 += c1
g2 += c2
g3 += c3
g4 += c4
f0 -= c0_stack
f1 -= c1
f2 -= c2
f3 -= c3
f4 -= c4
*(uint64 *)(rp + 40) = g0
*(uint64 *)(rp + 48) = g1
*(uint64 *)(rp + 56) = g2
*(uint64 *)(rp + 64) = g3
*(uint64 *)(rp + 72) = g4
*(uint64 *)(rp + 120) = f0
*(uint64 *)(rp + 128) = f1
*(uint64 *)(rp + 136) = f2
*(uint64 *)(rp + 144) = f3
*(uint64 *)(rp + 152) = f4
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
