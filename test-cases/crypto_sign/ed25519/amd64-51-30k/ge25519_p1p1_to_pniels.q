int64 rp
int64 pp
input rp
input pp
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
int64 x0
int64 x1
int64 x2
int64 x3
int64 x4
int64 y0
int64 y1
int64 y2
int64 y3
int64 y4
int64 ysubx0
int64 ysubx1
int64 ysubx2
int64 ysubx3
int64 ysubx4
int64 xaddy0
int64 xaddy1
int64 xaddy2
int64 xaddy3
int64 xaddy4
int64 rz0
int64 rz1
int64 rz2
int64 rz3
int64 rz4
int64 t0
int64 t1
int64 t2
int64 t3
int64 t4
int64 t2d0
int64 t2d1
int64 t2d2
int64 t2d3
int64 t2d4
stack64 stackt0
stack64 stackt1
stack64 stackt2
stack64 stackt3
stack64 stackt4
stack64 stackx0
stack64 stackx1
stack64 stackx2
stack64 stackx3
stack64 stackx4
stack64 stacky1
stack64 stacky2
stack64 stacky3
stack64 stacky4
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
enter crypto_sign_ed25519_amd64_51_30k_batch_ge25519_p1p1_to_pniels
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
  mulrax = *(uint64 *)(pp + 24)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  x0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 32)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? x0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? x0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  x1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  x2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  x3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  x4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? x1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? x2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? x3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? x4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? x0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? x2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? x3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? x4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? x0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? x1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 24)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? x3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 24)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? x4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? x1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? x2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 32)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? x4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? x1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? x2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? x3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.x0) << 13
  x0 &= mulredmask
  mulr11 = (mulr11.x1) << 13
  x1 &= mulredmask
  x1 += mulr01
  mulr21 = (mulr21.x2) << 13
  x2 &= mulredmask
  x2 += mulr11
  mulr31 = (mulr31.x3) << 13
  x3 &= mulredmask
  x3 += mulr21
  mulr41 = (mulr41.x4) << 13
  x4 &= mulredmask
  x4 += mulr31
  mulr41 = mulr41 * 19
  x0 += mulr41
  mult = x0
  (uint64) mult >>= 51
  mult += x1
  x1 = mult
  (uint64) mult >>= 51
  x0 &= mulredmask
  mult += x2
  x2 = mult
  (uint64) mult >>= 51
  x1 &= mulredmask
  mult += x3
  x3 = mult
  (uint64) mult >>= 51
  x2 &= mulredmask
  mult += x4
  x4 = mult
  (uint64) mult >>= 51
  x3 &= mulredmask
  mult *= 19
  x0 += mult
  x4 &= mulredmask
stackx0 = x0
stackx1 = x1
stackx2 = x2
stackx3 = x3
stackx4 = x4
  mulrax = *(uint64 *)(pp + 104)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  y0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 112)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  carry? y0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? y0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  y1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  y2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  y3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  y4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? y1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  carry? y2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  carry? y3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  carry? y4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  carry? y0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? y2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  carry? y3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  carry? y4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  carry? y0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  carry? y1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? y3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  carry? y4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  carry? y1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  carry? y2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? y4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  carry? y1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  carry? y2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  carry? y3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.y0) << 13
  y0 &= mulredmask
  mulr11 = (mulr11.y1) << 13
  y1 &= mulredmask
  y1 += mulr01
  mulr21 = (mulr21.y2) << 13
  y2 &= mulredmask
  y2 += mulr11
  mulr31 = (mulr31.y3) << 13
  y3 &= mulredmask
  y3 += mulr21
  mulr41 = (mulr41.y4) << 13
  y4 &= mulredmask
  y4 += mulr31
  mulr41 = mulr41 * 19
  y0 += mulr41
  mult = y0
  (uint64) mult >>= 51
  mult += y1
  y1 = mult
  (uint64) mult >>= 51
  y0 &= mulredmask
  mult += y2
  y2 = mult
  (uint64) mult >>= 51
  y1 &= mulredmask
  mult += y3
  y3 = mult
  (uint64) mult >>= 51
  y2 &= mulredmask
  mult += y4
  y4 = mult
  (uint64) mult >>= 51
  y3 &= mulredmask
  mult *= 19
  y0 += mult
  y4 &= mulredmask
ysubx0 = y0
ysubx1 = y1
ysubx2 = y2
ysubx3 = y3
ysubx4 = y4
ysubx0 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P0
ysubx1 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P1234
ysubx2 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P1234
ysubx3 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P1234
ysubx4 += *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_2P1234
x0 = stackx0
ysubx0 -= x0
y0 += x0
x1 = stackx1
ysubx1 -= x1
y1 += x1
x2 = stackx2
ysubx2 -= x2
y2 += x2
x3 = stackx3
ysubx3 -= x3
y3 += x3
x4 = stackx4
ysubx4 -= x4
y4 += x4
*(uint64 *)(rp + 0) = ysubx0
*(uint64 *)(rp + 8) = ysubx1
*(uint64 *)(rp + 16) = ysubx2
*(uint64 *)(rp + 24) = ysubx3
*(uint64 *)(rp + 32) = ysubx4
*(uint64 *)(rp + 40) = y0
*(uint64 *)(rp + 48) = y1
*(uint64 *)(rp + 56) = y2
*(uint64 *)(rp + 64) = y3
*(uint64 *)(rp + 72) = y4
  mulrax = *(uint64 *)(pp + 64)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  rz0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 72)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? rz0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rz0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  rz1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  rz2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  rz3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  rz4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 48)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rz1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 48)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? rz2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 48)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? rz3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 48)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? rz4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 48)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? rz0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rz2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? rz3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? rz4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? rz0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? rz1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 64)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rz3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 64)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? rz4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? rz1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? rz2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 72)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rz4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? rz1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? rz2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
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
  mulrax = *(uint64 *)(pp + 24)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 96)
  t0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 32)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 88)
  carry? t0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 80)
  carry? t0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 88)
  t1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 96)
  t2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 104)
  t3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 112)
  t4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 80)
  carry? t1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 88)
  carry? t2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 96)
  carry? t3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 104)
  carry? t4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 112)
  carry? t0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 80)
  carry? t2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 88)
  carry? t3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 96)
  carry? t4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 104)
  carry? t0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 112)
  carry? t1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 24)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 80)
  carry? t3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 24)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 88)
  carry? t4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 104)
  carry? t1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 112)
  carry? t2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 32)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 80)
  carry? t4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 96)
  carry? t1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 104)
  carry? t2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 112)
  carry? t3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.t0) << 13
  t0 &= mulredmask
  mulr11 = (mulr11.t1) << 13
  t1 &= mulredmask
  t1 += mulr01
  mulr21 = (mulr21.t2) << 13
  t2 &= mulredmask
  t2 += mulr11
  mulr31 = (mulr31.t3) << 13
  t3 &= mulredmask
  t3 += mulr21
  mulr41 = (mulr41.t4) << 13
  t4 &= mulredmask
  t4 += mulr31
  mulr41 = mulr41 * 19
  t0 += mulr41
  mult = t0
  (uint64) mult >>= 51
  mult += t1
  t1 = mult
  (uint64) mult >>= 51
  t0 &= mulredmask
  mult += t2
  t2 = mult
  (uint64) mult >>= 51
  t1 &= mulredmask
  mult += t3
  t3 = mult
  (uint64) mult >>= 51
  t2 &= mulredmask
  mult += t4
  t4 = mult
  (uint64) mult >>= 51
  t3 &= mulredmask
  mult *= 19
  t0 += mult
  t4 &= mulredmask
stackt0 = t0
stackt1 = t1
stackt2 = t2
stackt3 = t3
stackt4 = t4
  mulrax = stackt3
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D2
  t2d0 = mulrax
  mulr01 = mulrdx
  mulrax = stackt4
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D1
  carry? t2d0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = stackt0
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D0
  carry? t2d0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = stackt0
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D1
  t2d1 = mulrax
  mulr11 = mulrdx
  mulrax = stackt0
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D2
  t2d2 = mulrax
  mulr21 = mulrdx
  mulrax = stackt0
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D3
  t2d3 = mulrax
  mulr31 = mulrdx
  mulrax = stackt0
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D4
  t2d4 = mulrax
  mulr41 = mulrdx
  mulrax = stackt1
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D0
  carry? t2d1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = stackt1
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D1
  carry? t2d2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = stackt1
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D2
  carry? t2d3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = stackt1
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D3
  carry? t2d4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = stackt1
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D4
  carry? t2d0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = stackt2
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D0
  carry? t2d2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = stackt2
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D1
  carry? t2d3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = stackt2
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D2
  carry? t2d4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = stackt2
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D3
  carry? t2d0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = stackt2
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D4
  carry? t2d1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = stackt3
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D0
  carry? t2d3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = stackt3
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D1
  carry? t2d4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D3
  carry? t2d1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D4
  carry? t2d2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = stackt4
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D0
  carry? t2d4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D2
  carry? t2d1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D3
  carry? t2d2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_51_30k_batch_EC2D4
  carry? t2d3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  mulr01 = (mulr01.t2d0) << 13
  t2d0 &= mulredmask
  mulr11 = (mulr11.t2d1) << 13
  t2d1 &= mulredmask
  t2d1 += mulr01
  mulr21 = (mulr21.t2d2) << 13
  t2d2 &= mulredmask
  t2d2 += mulr11
  mulr31 = (mulr31.t2d3) << 13
  t2d3 &= mulredmask
  t2d3 += mulr21
  mulr41 = (mulr41.t2d4) << 13
  t2d4 &= mulredmask
  t2d4 += mulr31
  mulr41 = mulr41 * 19
  t2d0 += mulr41
  mult = t2d0
  (uint64) mult >>= 51
  mult += t2d1
  t2d1 = mult
  (uint64) mult >>= 51
  t2d0 &= mulredmask
  mult += t2d2
  t2d2 = mult
  (uint64) mult >>= 51
  t2d1 &= mulredmask
  mult += t2d3
  t2d3 = mult
  (uint64) mult >>= 51
  t2d2 &= mulredmask
  mult += t2d4
  t2d4 = mult
  (uint64) mult >>= 51
  t2d3 &= mulredmask
  mult *= 19
  t2d0 += mult
  t2d4 &= mulredmask
*(uint64 *)(rp + 120) = t2d0
*(uint64 *)(rp + 128) = t2d1
*(uint64 *)(rp + 136) = t2d2
*(uint64 *)(rp + 144) = t2d3
*(uint64 *)(rp + 152) = t2d4
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
