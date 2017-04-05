int64 rp
int64 pp
input rp
input pp
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
int64 rx0
int64 rx1
int64 rx2
int64 rx3
int64 rx4
stack64 rx0_stack
stack64 rx1_stack
stack64 rx2_stack
stack64 rx3_stack
stack64 rx4_stack
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
int64 squarer01
int64 squarer11
int64 squarer21
int64 squarer31
int64 squarer41
int64 squarerax
int64 squarerdx
int64 squaret
int64 squareredmask
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
enter crypto_sign_ed25519_amd64_51_30k_batch_ge25519_dbl_p1p1
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
  squarerax = *(uint64 *)(pp + 0)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 0)
  a0 = squarerax
  squarer01 = squarerdx
  squarerax = *(uint64 *)(pp + 0)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 8)
  a1 = squarerax
  squarer11 = squarerdx
  squarerax = *(uint64 *)(pp + 0)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 16)
  a2 = squarerax
  squarer21 = squarerdx
  squarerax = *(uint64 *)(pp + 0)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 24)
  a3 = squarerax
  squarer31 = squarerdx
  squarerax = *(uint64 *)(pp + 0)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  a4 = squarerax
  squarer41 = squarerdx
  squarerax = *(uint64 *)(pp + 8)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 8)
  carry? a2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 8)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 16)
  carry? a3 += squarerax
  squarer31 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 8)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 24)
  carry? a4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 8)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  carry? a0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 16)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 16)
  carry? a4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 16)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 24)
  carry? a0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 16)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  carry? a1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 24)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 24)
  carry? a1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 24)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  carry? a2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 32)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  carry? a3 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  squarer01 = (squarer01.a0) << 13
  a0 &= squareredmask
  squarer11 = (squarer11.a1) << 13
  a1 &= squareredmask
  a1 += squarer01
  squarer21 = (squarer21.a2) << 13
  a2 &= squareredmask
  a2 += squarer11
  squarer31 = (squarer31.a3) << 13
  a3 &= squareredmask
  a3 += squarer21
  squarer41 = (squarer41.a4) << 13
  a4 &= squareredmask
  a4 += squarer31
  squarer41 = squarer41 * 19
  a0 += squarer41
  squaret = a0
  (uint64) squaret >>= 51
  squaret += a1
  a0 &= squareredmask
  a1 = squaret
  (uint64) squaret >>= 51
  squaret += a2
  a1 &= squareredmask
  a2 = squaret
  (uint64) squaret >>= 51
  squaret += a3
  a2 &= squareredmask
  a3 = squaret
  (uint64) squaret >>= 51
  squaret += a4
  a3 &= squareredmask
  a4 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  a0 += squaret
  a4 &= squareredmask
a0_stack = a0
a1_stack = a1
a2_stack = a2
a3_stack = a3
a4_stack = a4
  squarerax = *(uint64 *)(pp + 40)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 40)
  b0 = squarerax
  squarer01 = squarerdx
  squarerax = *(uint64 *)(pp + 40)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 48)
  b1 = squarerax
  squarer11 = squarerdx
  squarerax = *(uint64 *)(pp + 40)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 56)
  b2 = squarerax
  squarer21 = squarerdx
  squarerax = *(uint64 *)(pp + 40)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 64)
  b3 = squarerax
  squarer31 = squarerdx
  squarerax = *(uint64 *)(pp + 40)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 72)
  b4 = squarerax
  squarer41 = squarerdx
  squarerax = *(uint64 *)(pp + 48)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 48)
  carry? b2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 48)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 56)
  carry? b3 += squarerax
  squarer31 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 48)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 64)
  carry? b4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 48)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 72)
  carry? b0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 56)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 56)
  carry? b4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 56)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 64)
  carry? b0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 56)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 72)
  carry? b1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 64)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 64)
  carry? b1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 64)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 72)
  carry? b2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 72)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 72)
  carry? b3 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  squarer01 = (squarer01.b0) << 13
  b0 &= squareredmask
  squarer11 = (squarer11.b1) << 13
  b1 &= squareredmask
  b1 += squarer01
  squarer21 = (squarer21.b2) << 13
  b2 &= squareredmask
  b2 += squarer11
  squarer31 = (squarer31.b3) << 13
  b3 &= squareredmask
  b3 += squarer21
  squarer41 = (squarer41.b4) << 13
  b4 &= squareredmask
  b4 += squarer31
  squarer41 = squarer41 * 19
  b0 += squarer41
  squaret = b0
  (uint64) squaret >>= 51
  squaret += b1
  b0 &= squareredmask
  b1 = squaret
  (uint64) squaret >>= 51
  squaret += b2
  b1 &= squareredmask
  b2 = squaret
  (uint64) squaret >>= 51
  squaret += b3
  b2 &= squareredmask
  b3 = squaret
  (uint64) squaret >>= 51
  squaret += b4
  b3 &= squareredmask
  b4 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  b0 += squaret
  b4 &= squareredmask
b0_stack = b0
b1_stack = b1
b2_stack = b2
b3_stack = b3
b4_stack = b4
  squarerax = *(uint64 *)(pp + 80)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 80)
  c0 = squarerax
  squarer01 = squarerdx
  squarerax = *(uint64 *)(pp + 80)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 88)
  c1 = squarerax
  squarer11 = squarerdx
  squarerax = *(uint64 *)(pp + 80)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 96)
  c2 = squarerax
  squarer21 = squarerdx
  squarerax = *(uint64 *)(pp + 80)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 104)
  c3 = squarerax
  squarer31 = squarerdx
  squarerax = *(uint64 *)(pp + 80)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 112)
  c4 = squarerax
  squarer41 = squarerdx
  squarerax = *(uint64 *)(pp + 88)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 88)
  carry? c2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 88)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 96)
  carry? c3 += squarerax
  squarer31 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 88)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 104)
  carry? c4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 88)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 112)
  carry? c0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 96)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 96)
  carry? c4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 96)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 104)
  carry? c0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 96)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 112)
  carry? c1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 104)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 104)
  carry? c1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 104)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 112)
  carry? c2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(pp + 112)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 112)
  carry? c3 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  squarer01 = (squarer01.c0) << 13
  c0 &= squareredmask
  squarer11 = (squarer11.c1) << 13
  c1 &= squareredmask
  c1 += squarer01
  squarer21 = (squarer21.c2) << 13
  c2 &= squareredmask
  c2 += squarer11
  squarer31 = (squarer31.c3) << 13
  c3 &= squareredmask
  c3 += squarer21
  squarer41 = (squarer41.c4) << 13
  c4 &= squareredmask
  c4 += squarer31
  squarer41 = squarer41 * 19
  c0 += squarer41
  squaret = c0
  (uint64) squaret >>= 51
  squaret += c1
  c0 &= squareredmask
  c1 = squaret
  (uint64) squaret >>= 51
  squaret += c2
  c1 &= squareredmask
  c2 = squaret
  (uint64) squaret >>= 51
  squaret += c3
  c2 &= squareredmask
  c3 = squaret
  (uint64) squaret >>= 51
  squaret += c4
  c3 &= squareredmask
  c4 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  c0 += squaret
  c4 &= squareredmask
c0 += c0
c1 += c1
c2 += c2
c3 += c3
c4 += c4
c0_stack = c0
c1_stack = c1
c2_stack = c2
c3_stack = c3
c4_stack = c4
d0 = *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P0
d1 = *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
d2 = *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
d3 = *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
d4 = *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
e0 = d0
e1 = d1
e2 = d2
e3 = d3
e4 = d4
d0 -= a0_stack
d1 -= a1_stack
d2 -= a2_stack
d3 -= a3_stack
d4 -= a4_stack
e0 -= b0_stack
e1 -= b1_stack
e2 -= b2_stack
e3 -= b3_stack
e4 -= b4_stack
d0_stack = d0
d1_stack = d1
d2_stack = d2
d3_stack = d3
d4_stack = d4
e0_stack = e0
e1_stack = e1
e2_stack = e2
e3_stack = e3
e4_stack = e4
rz0 = d0
rz1 = d1
rz2 = d2
rz3 = d3
rz4 = d4
rz0 += b0_stack
rz1 += b1_stack
rz2 += b2_stack
rz3 += b3_stack
rz4 += b4_stack
*(uint64 *) (rp + 40) = rz0
*(uint64 *) (rp + 48) = rz1
*(uint64 *) (rp + 56) = rz2
*(uint64 *) (rp + 64) = rz3
*(uint64 *) (rp + 72) = rz4
d0 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P0
d1 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
d2 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
d3 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
d4 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_2P1234
d0 -= b0_stack
d1 -= b1_stack
d2 -= b2_stack
d3 -= b3_stack
d4 -= b4_stack
*(uint64 *)(rp + 80) = d0
*(uint64 *)(rp + 88) = d1
*(uint64 *)(rp + 96) = d2
*(uint64 *)(rp + 104) = d3
*(uint64 *)(rp + 112) = d4
rz0 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_4P0
rz1 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_4P1234
rz2 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_4P1234
rz3 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_4P1234
rz4 += *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_4P1234
rz0 -= c0_stack
rz1 -= c1_stack
rz2 -= c2_stack
rz3 -= c3_stack
rz4 -= c4_stack
*(uint64 *) (rp + 120) = rz0
*(uint64 *) (rp + 128) = rz1
*(uint64 *) (rp + 136) = rz2
*(uint64 *) (rp + 144) = rz3
*(uint64 *) (rp + 152) = rz4
rx0 = *(uint64 *)(pp + 0)
rx1 = *(uint64 *)(pp + 8)
rx2 = *(uint64 *)(pp + 16)
rx3 = *(uint64 *)(pp + 24)
rx4 = *(uint64 *)(pp + 32)
rx0 += *(uint64 *)(pp + 40)
rx1 += *(uint64 *)(pp + 48)
rx2 += *(uint64 *)(pp + 56)
rx3 += *(uint64 *)(pp + 64)
rx4 += *(uint64 *)(pp + 72)
rx0_stack = rx0
rx1_stack = rx1
rx2_stack = rx2
rx3_stack = rx3
rx4_stack = rx4
  squarerax = rx0_stack
  (uint128) squarerdx squarerax = squarerax * rx0_stack
  rx0 = squarerax
  squarer01 = squarerdx
  squarerax = rx0_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * rx1_stack
  rx1 = squarerax
  squarer11 = squarerdx
  squarerax = rx0_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * rx2_stack
  rx2 = squarerax
  squarer21 = squarerdx
  squarerax = rx0_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * rx3_stack
  rx3 = squarerax
  squarer31 = squarerdx
  squarerax = rx0_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * rx4_stack
  rx4 = squarerax
  squarer41 = squarerdx
  squarerax = rx1_stack
  (uint128) squarerdx squarerax = squarerax * rx1_stack
  carry? rx2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = rx1_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * rx2_stack
  carry? rx3 += squarerax
  squarer31 += squarerdx + carry
  squarerax = rx1_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * rx3_stack
  carry? rx4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = rx1_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * rx4_stack
  carry? rx0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = rx2_stack
  (uint128) squarerdx squarerax = squarerax * rx2_stack
  carry? rx4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = rx2_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * rx3_stack
  carry? rx0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = rx2_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * rx4_stack
  carry? rx1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = rx3_stack
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * rx3_stack
  carry? rx1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = rx3_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * rx4_stack
  carry? rx2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = rx4_stack
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * rx4_stack
  carry? rx3 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  squarer01 = (squarer01.rx0) << 13
  rx0 &= squareredmask
  squarer11 = (squarer11.rx1) << 13
  rx1 &= squareredmask
  rx1 += squarer01
  squarer21 = (squarer21.rx2) << 13
  rx2 &= squareredmask
  rx2 += squarer11
  squarer31 = (squarer31.rx3) << 13
  rx3 &= squareredmask
  rx3 += squarer21
  squarer41 = (squarer41.rx4) << 13
  rx4 &= squareredmask
  rx4 += squarer31
  squarer41 = squarer41 * 19
  rx0 += squarer41
  squaret = rx0
  (uint64) squaret >>= 51
  squaret += rx1
  rx0 &= squareredmask
  rx1 = squaret
  (uint64) squaret >>= 51
  squaret += rx2
  rx1 &= squareredmask
  rx2 = squaret
  (uint64) squaret >>= 51
  squaret += rx3
  rx2 &= squareredmask
  rx3 = squaret
  (uint64) squaret >>= 51
  squaret += rx4
  rx3 &= squareredmask
  rx4 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  rx0 += squaret
  rx4 &= squareredmask
rx0 += d0_stack
rx1 += d1_stack
rx2 += d2_stack
rx3 += d3_stack
rx4 += d4_stack
rx0 += e0_stack
rx1 += e1_stack
rx2 += e2_stack
rx3 += e3_stack
rx4 += e4_stack
*(uint64 *)(rp + 0) = rx0
*(uint64 *)(rp + 8) = rx1
*(uint64 *)(rp + 16) = rx2
*(uint64 *)(rp + 24) = rx3
*(uint64 *)(rp + 32) = rx4
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
