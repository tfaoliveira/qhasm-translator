int64 rp
int64 n
input rp
input n
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
int64 squarer01
int64 squarer11
int64 squarer21
int64 squarer31
int64 squarer41
int64 squarerax
int64 squarerdx
int64 squaret
int64 squareredmask
stack64 n_stack
enter crypto_sign_ed25519_amd64_51_30k_batch_fe25519_nsquare
c1_stack = c1
c2_stack = c2
c3_stack = c3
c4_stack = c4
c5_stack = c5
c6_stack = c6
c7_stack = c7
loop:
  squarerax = *(uint64 *)(rp + 0)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 0)
  r0 = squarerax
  squarer01 = squarerdx
  squarerax = *(uint64 *)(rp + 0)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 8)
  r1 = squarerax
  squarer11 = squarerdx
  squarerax = *(uint64 *)(rp + 0)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 16)
  r2 = squarerax
  squarer21 = squarerdx
  squarerax = *(uint64 *)(rp + 0)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 24)
  r3 = squarerax
  squarer31 = squarerdx
  squarerax = *(uint64 *)(rp + 0)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 32)
  r4 = squarerax
  squarer41 = squarerdx
  squarerax = *(uint64 *)(rp + 8)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 8)
  carry? r2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 8)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 16)
  carry? r3 += squarerax
  squarer31 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 8)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 24)
  carry? r4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 8)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 32)
  carry? r0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 16)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 16)
  carry? r4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 16)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 24)
  carry? r0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 16)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 32)
  carry? r1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 24)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 24)
  carry? r1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 24)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 32)
  carry? r2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(rp + 32)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(rp + 32)
  carry? r3 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_sign_ed25519_amd64_51_30k_batch_REDMASK51
  squarer01 = (squarer01.r0) << 13
  r0 &= squareredmask
  squarer11 = (squarer11.r1) << 13
  r1 &= squareredmask
  r1 += squarer01
  squarer21 = (squarer21.r2) << 13
  r2 &= squareredmask
  r2 += squarer11
  squarer31 = (squarer31.r3) << 13
  r3 &= squareredmask
  r3 += squarer21
  squarer41 = (squarer41.r4) << 13
  r4 &= squareredmask
  r4 += squarer31
  squarer41 = squarer41 * 19
  r0 += squarer41
  squaret = r0
  (uint64) squaret >>= 51
  squaret += r1
  r0 &= squareredmask
  r1 = squaret
  (uint64) squaret >>= 51
  squaret += r2
  r1 &= squareredmask
  r2 = squaret
  (uint64) squaret >>= 51
  squaret += r3
  r2 &= squareredmask
  r3 = squaret
  (uint64) squaret >>= 51
  squaret += r4
  r3 &= squareredmask
  r4 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  r0 += squaret
  r4 &= squareredmask
*(uint64 *)(rp + 0) = r0
*(uint64 *)(rp + 8) = r1
*(uint64 *)(rp + 16) = r2
*(uint64 *)(rp + 24) = r3
*(uint64 *)(rp + 32) = r4
signed>? n -= 1
goto loop if signed>
c1 =c1_stack
c2 =c2_stack
c3 =c3_stack
c4 =c4_stack
c5 =c5_stack
c6 =c6_stack
c7 =c7_stack
leave
