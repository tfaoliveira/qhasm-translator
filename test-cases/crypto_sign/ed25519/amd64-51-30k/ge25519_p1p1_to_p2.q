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
enter crypto_sign_ed25519_amd64_51_30k_batch_ge25519_p1p1_to_p2
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
  rx0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 32)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  rx1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  rx2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  rx3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  rx4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 8)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? rx0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 16)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 24)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rx3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 24)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 128)
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 32)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 120)
  carry? rx4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 136)
  carry? rx1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 144)
  carry? rx2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 152)
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
  mulrax = *(uint64 *)(pp + 104)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  ry0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(pp + 112)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  carry? ry0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? ry0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  ry1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  ry2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  ry3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(pp + 80)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  ry4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? ry1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  carry? ry2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  carry? ry3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  carry? ry4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 88)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  carry? ry0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? ry2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  carry? ry3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  carry? ry4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  carry? ry0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 96)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  carry? ry1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? ry3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 48)
  carry? ry4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  carry? ry1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
  carry? ry2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 40)
  carry? ry4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 56)
  carry? ry1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 64)
  carry? ry2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(pp + 72)
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
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave