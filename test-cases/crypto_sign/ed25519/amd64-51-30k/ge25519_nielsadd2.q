int64 rp
int64 qp
input rp
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
enter crypto_sign_ed25519_amd64_51_30k_batch_ge25519_nielsadd2
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
a0 = *(uint64 *)(rp + 40)
a1 = *(uint64 *)(rp + 48)
a2 = *(uint64 *)(rp + 56)
a3 = *(uint64 *)(rp + 64)
a4 = *(uint64 *)(rp + 72)
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
b0 += *(uint64 *) (rp + 0)
b1 += *(uint64 *) (rp + 8)
b2 += *(uint64 *) (rp + 16)
b3 += *(uint64 *) (rp + 24)
b4 += *(uint64 *) (rp + 32)
a0 -= *(uint64 *) (rp + 0)
a1 -= *(uint64 *) (rp + 8)
a2 -= *(uint64 *) (rp + 16)
a3 -= *(uint64 *) (rp + 24)
a4 -= *(uint64 *) (rp + 32)
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
h0_stack = h0
h1_stack = h1
h2_stack = h2
h3_stack = h3
h4_stack = h4
e0_stack = e0
e1_stack = e1
e2_stack = e2
e3_stack = e3
e4_stack = e4
  mulrax = *(uint64 *)(rp + 144)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  c0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(rp + 152)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  c1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(rp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  c2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(rp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  c3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(rp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  c4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(rp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 128)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 136)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 136)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 144)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(rp + 144)
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
  mulrax = *(uint64 *)(rp + 152)
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
f0 = *(uint64 *)(rp + 80)
f1 = *(uint64 *)(rp + 88)
f2 = *(uint64 *)(rp + 96)
f3 = *(uint64 *)(rp + 104)
f4 = *(uint64 *)(rp + 112)
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
g0_stack = g0
g1_stack = g1
g2_stack = g2
g3_stack = g3
g4_stack = g4
f0_stack = f0
f1_stack = f1
f2_stack = f2
f3_stack = f3
f4_stack = f4
  mulrax = e3_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * f2_stack
  rx0 = mulrax
  mulr01 = mulrdx
  mulrax = e4_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * f1_stack
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * f1_stack
  rx1 = mulrax
  mulr11 = mulrdx
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * f2_stack
  rx2 = mulrax
  mulr21 = mulrdx
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * f3_stack
  rx3 = mulrax
  mulr31 = mulrdx
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * f4_stack
  rx4 = mulrax
  mulr41 = mulrdx
  mulrax = e1_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = e1_stack
  (uint128) mulrdx mulrax = mulrax * f1_stack
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = e1_stack
  (uint128) mulrdx mulrax = mulrax * f2_stack
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = e1_stack
  (uint128) mulrdx mulrax = mulrax * f3_stack
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = e1_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * f4_stack
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = e2_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = e2_stack
  (uint128) mulrdx mulrax = mulrax * f1_stack
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = e2_stack
  (uint128) mulrdx mulrax = mulrax * f2_stack
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = e2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * f3_stack
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = e2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * f4_stack
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = e3_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = e3_stack
  (uint128) mulrdx mulrax = mulrax * f1_stack
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * f3_stack
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * f4_stack
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = e4_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * f2_stack
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * f3_stack
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * f4_stack
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.rx0) << 13
  rx0 &= mulredmask
  mulr11 = (mulr11.rx1) << 13
  rx1 &= mulredmask
  rx1 += mulr01
  mulr21 = (mulr21.rx2) << 13
  rx2 &= mulredmask
  rx2 += mulr11
  mulr31 = (mulr31.rx3) << 13
  rx3 &= mulredmask
  rx3 += mulr21
  mulr41 = (mulr41.rx4) << 13
  rx4 &= mulredmask
  rx4 += mulr31
  mulr41 = mulr41 * 19
  rx0 += mulr41
  mult = rx0
  (uint64) mult >>= 51
  mult += rx1
  rx1 = mult
  (uint64) mult >>= 51
  rx0 &= mulredmask
  mult += rx2
  rx2 = mult
  (uint64) mult >>= 51
  rx1 &= mulredmask
  mult += rx3
  rx3 = mult
  (uint64) mult >>= 51
  rx2 &= mulredmask
  mult += rx4
  rx4 = mult
  (uint64) mult >>= 51
  rx3 &= mulredmask
  mult *= 19
  rx0 += mult
  rx4 &= mulredmask
*(uint64 *)(rp + 0) = rx0
*(uint64 *)(rp + 8) = rx1
*(uint64 *)(rp + 16) = rx2
*(uint64 *)(rp + 24) = rx3
*(uint64 *)(rp + 32) = rx4
  mulrax = h3_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * g2_stack
  ry0 = mulrax
  mulr01 = mulrdx
  mulrax = h4_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * g1_stack
  carry? ry0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = h0_stack
  (uint128) mulrdx mulrax = mulrax * g0_stack
  carry? ry0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = h0_stack
  (uint128) mulrdx mulrax = mulrax * g1_stack
  ry1 = mulrax
  mulr11 = mulrdx
  mulrax = h0_stack
  (uint128) mulrdx mulrax = mulrax * g2_stack
  ry2 = mulrax
  mulr21 = mulrdx
  mulrax = h0_stack
  (uint128) mulrdx mulrax = mulrax * g3_stack
  ry3 = mulrax
  mulr31 = mulrdx
  mulrax = h0_stack
  (uint128) mulrdx mulrax = mulrax * g4_stack
  ry4 = mulrax
  mulr41 = mulrdx
  mulrax = h1_stack
  (uint128) mulrdx mulrax = mulrax * g0_stack
  carry? ry1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = h1_stack
  (uint128) mulrdx mulrax = mulrax * g1_stack
  carry? ry2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = h1_stack
  (uint128) mulrdx mulrax = mulrax * g2_stack
  carry? ry3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = h1_stack
  (uint128) mulrdx mulrax = mulrax * g3_stack
  carry? ry4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = h1_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * g4_stack
  carry? ry0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = h2_stack
  (uint128) mulrdx mulrax = mulrax * g0_stack
  carry? ry2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = h2_stack
  (uint128) mulrdx mulrax = mulrax * g1_stack
  carry? ry3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = h2_stack
  (uint128) mulrdx mulrax = mulrax * g2_stack
  carry? ry4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = h2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * g3_stack
  carry? ry0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = h2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * g4_stack
  carry? ry1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = h3_stack
  (uint128) mulrdx mulrax = mulrax * g0_stack
  carry? ry3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = h3_stack
  (uint128) mulrdx mulrax = mulrax * g1_stack
  carry? ry4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * g3_stack
  carry? ry1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * g4_stack
  carry? ry2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = h4_stack
  (uint128) mulrdx mulrax = mulrax * g0_stack
  carry? ry4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * g2_stack
  carry? ry1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * g3_stack
  carry? ry2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * g4_stack
  carry? ry3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.ry0) << 13
  ry0 &= mulredmask
  mulr11 = (mulr11.ry1) << 13
  ry1 &= mulredmask
  ry1 += mulr01
  mulr21 = (mulr21.ry2) << 13
  ry2 &= mulredmask
  ry2 += mulr11
  mulr31 = (mulr31.ry3) << 13
  ry3 &= mulredmask
  ry3 += mulr21
  mulr41 = (mulr41.ry4) << 13
  ry4 &= mulredmask
  ry4 += mulr31
  mulr41 = mulr41 * 19
  ry0 += mulr41
  mult = ry0
  (uint64) mult >>= 51
  mult += ry1
  ry1 = mult
  (uint64) mult >>= 51
  ry0 &= mulredmask
  mult += ry2
  ry2 = mult
  (uint64) mult >>= 51
  ry1 &= mulredmask
  mult += ry3
  ry3 = mult
  (uint64) mult >>= 51
  ry2 &= mulredmask
  mult += ry4
  ry4 = mult
  (uint64) mult >>= 51
  ry3 &= mulredmask
  mult *= 19
  ry0 += mult
  ry4 &= mulredmask
*(uint64 *)(rp + 40) = ry0
*(uint64 *)(rp + 48) = ry1
*(uint64 *)(rp + 56) = ry2
*(uint64 *)(rp + 64) = ry3
*(uint64 *)(rp + 72) = ry4
  mulrax = g3_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * f2_stack
  rz0 = mulrax
  mulr01 = mulrdx
  mulrax = g4_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * f1_stack
  carry? rz0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = g0_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rz0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = g0_stack
  (uint128) mulrdx mulrax = mulrax * f1_stack
  rz1 = mulrax
  mulr11 = mulrdx
  mulrax = g0_stack
  (uint128) mulrdx mulrax = mulrax * f2_stack
  rz2 = mulrax
  mulr21 = mulrdx
  mulrax = g0_stack
  (uint128) mulrdx mulrax = mulrax * f3_stack
  rz3 = mulrax
  mulr31 = mulrdx
  mulrax = g0_stack
  (uint128) mulrdx mulrax = mulrax * f4_stack
  rz4 = mulrax
  mulr41 = mulrdx
  mulrax = g1_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rz1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = g1_stack
  (uint128) mulrdx mulrax = mulrax * f1_stack
  carry? rz2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = g1_stack
  (uint128) mulrdx mulrax = mulrax * f2_stack
  carry? rz3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = g1_stack
  (uint128) mulrdx mulrax = mulrax * f3_stack
  carry? rz4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = g1_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * f4_stack
  carry? rz0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = g2_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rz2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = g2_stack
  (uint128) mulrdx mulrax = mulrax * f1_stack
  carry? rz3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = g2_stack
  (uint128) mulrdx mulrax = mulrax * f2_stack
  carry? rz4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = g2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * f3_stack
  carry? rz0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = g2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * f4_stack
  carry? rz1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = g3_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rz3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = g3_stack
  (uint128) mulrdx mulrax = mulrax * f1_stack
  carry? rz4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * f3_stack
  carry? rz1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * f4_stack
  carry? rz2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = g4_stack
  (uint128) mulrdx mulrax = mulrax * f0_stack
  carry? rz4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * f2_stack
  carry? rz1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * f3_stack
  carry? rz2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * f4_stack
  carry? rz3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.rz0) << 13
  rz0 &= mulredmask
  mulr11 = (mulr11.rz1) << 13
  rz1 &= mulredmask
  rz1 += mulr01
  mulr21 = (mulr21.rz2) << 13
  rz2 &= mulredmask
  rz2 += mulr11
  mulr31 = (mulr31.rz3) << 13
  rz3 &= mulredmask
  rz3 += mulr21
  mulr41 = (mulr41.rz4) << 13
  rz4 &= mulredmask
  rz4 += mulr31
  mulr41 = mulr41 * 19
  rz0 += mulr41
  mult = rz0
  (uint64) mult >>= 51
  mult += rz1
  rz1 = mult
  (uint64) mult >>= 51
  rz0 &= mulredmask
  mult += rz2
  rz2 = mult
  (uint64) mult >>= 51
  rz1 &= mulredmask
  mult += rz3
  rz3 = mult
  (uint64) mult >>= 51
  rz2 &= mulredmask
  mult += rz4
  rz4 = mult
  (uint64) mult >>= 51
  rz3 &= mulredmask
  mult *= 19
  rz0 += mult
  rz4 &= mulredmask
*(uint64 *)(rp + 80) = rz0
*(uint64 *)(rp + 88) = rz1
*(uint64 *)(rp + 96) = rz2
*(uint64 *)(rp + 104) = rz3
*(uint64 *)(rp + 112) = rz4
  mulrax = e3_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * h2_stack
  rt0 = mulrax
  mulr01 = mulrdx
  mulrax = e4_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * h1_stack
  carry? rt0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * h0_stack
  carry? rt0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * h1_stack
  rt1 = mulrax
  mulr11 = mulrdx
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * h2_stack
  rt2 = mulrax
  mulr21 = mulrdx
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * h3_stack
  rt3 = mulrax
  mulr31 = mulrdx
  mulrax = e0_stack
  (uint128) mulrdx mulrax = mulrax * h4_stack
  rt4 = mulrax
  mulr41 = mulrdx
  mulrax = e1_stack
  (uint128) mulrdx mulrax = mulrax * h0_stack
  carry? rt1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = e1_stack
  (uint128) mulrdx mulrax = mulrax * h1_stack
  carry? rt2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = e1_stack
  (uint128) mulrdx mulrax = mulrax * h2_stack
  carry? rt3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = e1_stack
  (uint128) mulrdx mulrax = mulrax * h3_stack
  carry? rt4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = e1_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * h4_stack
  carry? rt0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = e2_stack
  (uint128) mulrdx mulrax = mulrax * h0_stack
  carry? rt2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = e2_stack
  (uint128) mulrdx mulrax = mulrax * h1_stack
  carry? rt3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = e2_stack
  (uint128) mulrdx mulrax = mulrax * h2_stack
  carry? rt4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = e2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * h3_stack
  carry? rt0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = e2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * h4_stack
  carry? rt1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = e3_stack
  (uint128) mulrdx mulrax = mulrax * h0_stack
  carry? rt3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = e3_stack
  (uint128) mulrdx mulrax = mulrax * h1_stack
  carry? rt4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * h3_stack
  carry? rt1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * h4_stack
  carry? rt2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = e4_stack
  (uint128) mulrdx mulrax = mulrax * h0_stack
  carry? rt4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * h2_stack
  carry? rt1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * h3_stack
  carry? rt2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * h4_stack
  carry? rt3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.rt0) << 13
  rt0 &= mulredmask
  mulr11 = (mulr11.rt1) << 13
  rt1 &= mulredmask
  rt1 += mulr01
  mulr21 = (mulr21.rt2) << 13
  rt2 &= mulredmask
  rt2 += mulr11
  mulr31 = (mulr31.rt3) << 13
  rt3 &= mulredmask
  rt3 += mulr21
  mulr41 = (mulr41.rt4) << 13
  rt4 &= mulredmask
  rt4 += mulr31
  mulr41 = mulr41 * 19
  rt0 += mulr41
  mult = rt0
  (uint64) mult >>= 51
  mult += rt1
  rt1 = mult
  (uint64) mult >>= 51
  rt0 &= mulredmask
  mult += rt2
  rt2 = mult
  (uint64) mult >>= 51
  rt1 &= mulredmask
  mult += rt3
  rt3 = mult
  (uint64) mult >>= 51
  rt2 &= mulredmask
  mult += rt4
  rt4 = mult
  (uint64) mult >>= 51
  rt3 &= mulredmask
  mult *= 19
  rt0 += mult
  rt4 &= mulredmask
*(uint64 *)(rp + 120) = rt0
*(uint64 *)(rp + 128) = rt1
*(uint64 *)(rp + 136) = rt2
*(uint64 *)(rp + 144) = rt3
*(uint64 *)(rp + 152) = rt4
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
