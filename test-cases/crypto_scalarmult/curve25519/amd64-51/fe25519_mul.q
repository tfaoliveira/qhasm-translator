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
int64 r4
int64 c1
int64 c2
int64 c3
int64 c4
int64 c5
int64 c6
int64 c7
caller c1
caller c2
caller c3
caller c4
caller c5
caller c6
caller c7
stack64 c1_stack
stack64 c2_stack
stack64 c3_stack
stack64 c4_stack
stack64 c5_stack
stack64 c6_stack
stack64 c7_stack
stack64 x119_stack
stack64 x219_stack
stack64 x319_stack
stack64 x419_stack
stack64 rp_stack
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
enter crypto_scalarmult_curve25519_amd64_51_fe25519_mul
  c1_stack = c1
  c2_stack = c2
  c3_stack = c3
  c4_stack = c4
  c5_stack = c5
  c6_stack = c6
  c7_stack = c7
  rp_stack = rp
yp = yp
  mulrax = *(uint64 *)(xp + 24)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 16)
  r0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(xp + 32)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 8)
  carry? r0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 0)
  carry? r0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 8)
  r1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(xp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 16)
  r2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(xp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 24)
  r3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(xp + 0)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 32)
  r4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(xp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 0)
  carry? r1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 8)
  carry? r2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 16)
  carry? r3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 8)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 24)
  carry? r4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 8)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 32)
  carry? r0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 0)
  carry? r2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 8)
  carry? r3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 16)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 16)
  carry? r4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 16)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 24)
  carry? r0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 16)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 32)
  carry? r1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 24)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 0)
  carry? r3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 24)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 8)
  carry? r4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 24)
  carry? r1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 32)
  carry? r2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(xp + 32)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 0)
  carry? r4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 16)
  carry? r1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 24)
  carry? r2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(yp + 32)
  carry? r3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  mulr01 = (mulr01.r0) << 13
  r0 &= mulredmask
  mulr11 = (mulr11.r1) << 13
  r1 &= mulredmask
  r1 += mulr01
  mulr21 = (mulr21.r2) << 13
  r2 &= mulredmask
  r2 += mulr11
  mulr31 = (mulr31.r3) << 13
  r3 &= mulredmask
  r3 += mulr21
  mulr41 = (mulr41.r4) << 13
  r4 &= mulredmask
  r4 += mulr31
  mulr41 = mulr41 * 19
  r0 += mulr41
  mult = r0
  (uint64) mult >>= 51
  mult += r1
  r1 = mult
  (uint64) mult >>= 51
  r0 &= mulredmask
  mult += r2
  r2 = mult
  (uint64) mult >>= 51
  r1 &= mulredmask
  mult += r3
  r3 = mult
  (uint64) mult >>= 51
  r2 &= mulredmask
  mult += r4
  r4 = mult
  (uint64) mult >>= 51
  r3 &= mulredmask
  mult *= 19
  r0 += mult
  r4 &= mulredmask
*(uint64 *)(rp + 0) = r0
*(uint64 *)(rp + 8) = r1
*(uint64 *)(rp + 16) = r2
*(uint64 *)(rp + 24) = r3
*(uint64 *)(rp + 32) = r4
c1 =c1_stack
c2 =c2_stack
c3 =c3_stack
c4 =c4_stack
c5 =c5_stack
c6 =c6_stack
c7 =c7_stack
leave
