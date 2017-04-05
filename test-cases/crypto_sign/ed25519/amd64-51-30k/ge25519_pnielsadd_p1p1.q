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
int64 x0
int64 x1
int64 x2
int64 x3
int64 x4
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
enter crypto_sign_ed25519_amd64_51_30k_batch_ge25519_pnielsadd_p1p1
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
  rx0 = mulrax
  mulr01 = mulrdx
  mulrax = b4_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  rx1 = mulrax
  mulr11 = mulrdx
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  rx2 = mulrax
  mulr21 = mulrdx
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  rx3 = mulrax
  mulr31 = mulrdx
  mulrax = b0_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  rx4 = mulrax
  mulr41 = mulrdx
  mulrax = b1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = b1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = b1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = b1_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = b1_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = b2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = b2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = b2_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = b2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = b2_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = b3_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = b3_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 48)
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = b4_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 40)
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 56)
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 64)
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 72)
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
ry0 = rx0
ry1 = rx1
ry2 = rx2
ry3 = rx3
ry4 = rx4
rx0 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P0
rx1 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
rx2 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
rx3 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
rx4 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
ry0 += a0_stack
ry1 += a1_stack
ry2 += a2_stack
ry3 += a3_stack
ry4 += a4_stack
rx0 -= a0_stack
rx1 -= a1_stack
rx2 -= a2_stack
rx3 -= a3_stack
rx4 -= a4_stack
*(uint64 *) (rp + 0) = rx0
*(uint64 *) (rp + 8) = rx1
*(uint64 *) (rp + 16) = rx2
*(uint64 *) (rp + 24) = rx3
*(uint64 *) (rp + 32) = rx4
*(uint64 *) (rp + 80) = ry0
*(uint64 *) (rp + 88) = ry1
*(uint64 *) (rp + 96) = ry2
*(uint64 *) (rp + 104) = ry3
*(uint64 *) (rp + 112) = ry4
  mulrax = *(uint64 *)(pp + 144)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 136)
  c0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 152)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 128)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 120)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 128)
  c1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 136)
  c2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 144)
  c3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 152)
  c4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 120)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 128)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 136)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 128)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 144)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 128)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 152)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 120)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 128)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 136)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 144)
  carry? c0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 136)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 152)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 144)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 120)
  carry? c3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 144)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 128)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 144)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 152)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 152)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 120)
  carry? c4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 136)
  carry? c1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 144)
  carry? c2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 152)
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
c1_stack = c1
c2_stack = c2
c3_stack = c3
c4_stack = c4
  mulrax = *(uint64 *)(pp + 104)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  rt0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 112)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? rt0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? rt0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  rt1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  rt2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  rt3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  rt4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? rt1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? rt2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  carry? rt3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? rt4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? rt0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? rt2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? rt3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  carry? rt4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? rt0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? rt1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? rt3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 88)
  carry? rt4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? rt1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
  carry? rt2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 80)
  carry? rt4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 96)
  carry? rt1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 104)
  carry? rt2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(qp + 112)
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
rt0 += rt0
rt1 += rt1
rt2 += rt2
rt3 += rt3
rt4 += rt4
rz0 = rt0
rz1 = rt1
rz2 = rt2
rz3 = rt3
rz4 = rt4
rt0 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P0
rt1 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
rt2 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
rt3 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
rt4 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
rz0 += c0_stack
rz1 += c1_stack
rz2 += c2_stack
rz3 += c3_stack
rz4 += c4_stack
rt0 -= c0_stack
rt1 -= c1_stack
rt2 -= c2_stack
rt3 -= c3_stack
rt4 -= c4_stack
*(uint64 *)(rp + 40) = rz0
*(uint64 *)(rp + 48) = rz1
*(uint64 *)(rp + 56) = rz2
*(uint64 *)(rp + 64) = rz3
*(uint64 *)(rp + 72) = rz4
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
