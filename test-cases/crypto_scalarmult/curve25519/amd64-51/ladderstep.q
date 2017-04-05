int64 workp
input workp
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
int64 t30
int64 t31
int64 t32
int64 t33
int64 t34
stack64 t30_stack
stack64 t31_stack
stack64 t32_stack
stack64 t33_stack
stack64 t34_stack
int64 t40
int64 t41
int64 t42
int64 t43
int64 t44
stack64 t40_stack
stack64 t41_stack
stack64 t42_stack
stack64 t43_stack
stack64 t44_stack
int64 t50
int64 t51
int64 t52
int64 t53
int64 t54
stack64 t50_stack
stack64 t51_stack
stack64 t52_stack
stack64 t53_stack
stack64 t54_stack
int64 t60
int64 t61
int64 t62
int64 t63
int64 t64
stack64 t60_stack
stack64 t61_stack
stack64 t62_stack
stack64 t63_stack
stack64 t64_stack
int64 t70
int64 t71
int64 t72
int64 t73
int64 t74
stack64 t70_stack
stack64 t71_stack
stack64 t72_stack
stack64 t73_stack
stack64 t74_stack
int64 t80
int64 t81
int64 t82
int64 t83
int64 t84
stack64 t80_stack
stack64 t81_stack
stack64 t82_stack
stack64 t83_stack
stack64 t84_stack
int64 t90
int64 t91
int64 t92
int64 t93
int64 t94
stack64 t90_stack
stack64 t91_stack
stack64 t92_stack
stack64 t93_stack
stack64 t94_stack
int64 xp0
int64 xp1
int64 xp2
int64 xp3
int64 xp4
int64 zp0
int64 zp1
int64 zp2
int64 zp3
int64 zp4
int64 xq0
int64 xq1
int64 xq2
int64 xq3
int64 xq4
int64 zq0
int64 zq1
int64 zq2
int64 zq3
int64 zq4
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
int64 mul121666rax
int64 mul121666rdx
enter crypto_scalarmult_curve25519_amd64_51_ladderstep
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
t10 = *(uint64 *)(workp + 40)
t11 = *(uint64 *)(workp + 48)
t12 = *(uint64 *)(workp + 56)
t13 = *(uint64 *)(workp + 64)
t14 = *(uint64 *)(workp + 72)
t20 = t10
t21 = t11
t22 = t12
t23 = t13
t24 = t14
t20 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P0
t21 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t22 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t23 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t24 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t10 += *(uint64 *)(workp + 80)
t11 += *(uint64 *)(workp + 88)
t12 += *(uint64 *)(workp + 96)
t13 += *(uint64 *)(workp + 104)
t14 += *(uint64 *)(workp + 112)
t20 -= *(uint64 *)(workp + 80)
t21 -= *(uint64 *)(workp + 88)
t22 -= *(uint64 *)(workp + 96)
t23 -= *(uint64 *)(workp + 104)
t24 -= *(uint64 *)(workp + 112)
t10_stack = t10
t11_stack = t11
t12_stack = t12
t13_stack = t13
t14_stack = t14
t20_stack = t20
t21_stack = t21
t22_stack = t22
t23_stack = t23
t24_stack = t24
  squarerax = t20_stack
  (uint128) squarerdx squarerax = squarerax * t20_stack
  t70 = squarerax
  squarer01 = squarerdx
  squarerax = t20_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t21_stack
  t71 = squarerax
  squarer11 = squarerdx
  squarerax = t20_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t22_stack
  t72 = squarerax
  squarer21 = squarerdx
  squarerax = t20_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t23_stack
  t73 = squarerax
  squarer31 = squarerdx
  squarerax = t20_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t24_stack
  t74 = squarerax
  squarer41 = squarerdx
  squarerax = t21_stack
  (uint128) squarerdx squarerax = squarerax * t21_stack
  carry? t72 += squarerax
  squarer21 += squarerdx + carry
  squarerax = t21_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t22_stack
  carry? t73 += squarerax
  squarer31 += squarerdx + carry
  squarerax = t21_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t23_stack
  carry? t74 += squarerax
  squarer41 += squarerdx + carry
  squarerax = t21_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * t24_stack
  carry? t70 += squarerax
  squarer01 += squarerdx + carry
  squarerax = t22_stack
  (uint128) squarerdx squarerax = squarerax * t22_stack
  carry? t74 += squarerax
  squarer41 += squarerdx + carry
  squarerax = t22_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * t23_stack
  carry? t70 += squarerax
  squarer01 += squarerdx + carry
  squarerax = t22_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * t24_stack
  carry? t71 += squarerax
  squarer11 += squarerdx + carry
  squarerax = t23_stack
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * t23_stack
  carry? t71 += squarerax
  squarer11 += squarerdx + carry
  squarerax = t23_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * t24_stack
  carry? t72 += squarerax
  squarer21 += squarerdx + carry
  squarerax = t24_stack
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * t24_stack
  carry? t73 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  squarer01 = (squarer01.t70) << 13
  t70 &= squareredmask
  squarer11 = (squarer11.t71) << 13
  t71 &= squareredmask
  t71 += squarer01
  squarer21 = (squarer21.t72) << 13
  t72 &= squareredmask
  t72 += squarer11
  squarer31 = (squarer31.t73) << 13
  t73 &= squareredmask
  t73 += squarer21
  squarer41 = (squarer41.t74) << 13
  t74 &= squareredmask
  t74 += squarer31
  squarer41 = squarer41 * 19
  t70 += squarer41
  squaret = t70
  (uint64) squaret >>= 51
  squaret += t71
  t70 &= squareredmask
  t71 = squaret
  (uint64) squaret >>= 51
  squaret += t72
  t71 &= squareredmask
  t72 = squaret
  (uint64) squaret >>= 51
  squaret += t73
  t72 &= squareredmask
  t73 = squaret
  (uint64) squaret >>= 51
  squaret += t74
  t73 &= squareredmask
  t74 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  t70 += squaret
  t74 &= squareredmask
t70_stack = t70
t71_stack = t71
t72_stack = t72
t73_stack = t73
t74_stack = t74
  squarerax = t10_stack
  (uint128) squarerdx squarerax = squarerax * t10_stack
  t60 = squarerax
  squarer01 = squarerdx
  squarerax = t10_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t11_stack
  t61 = squarerax
  squarer11 = squarerdx
  squarerax = t10_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t12_stack
  t62 = squarerax
  squarer21 = squarerdx
  squarerax = t10_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t13_stack
  t63 = squarerax
  squarer31 = squarerdx
  squarerax = t10_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t14_stack
  t64 = squarerax
  squarer41 = squarerdx
  squarerax = t11_stack
  (uint128) squarerdx squarerax = squarerax * t11_stack
  carry? t62 += squarerax
  squarer21 += squarerdx + carry
  squarerax = t11_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t12_stack
  carry? t63 += squarerax
  squarer31 += squarerdx + carry
  squarerax = t11_stack
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * t13_stack
  carry? t64 += squarerax
  squarer41 += squarerdx + carry
  squarerax = t11_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * t14_stack
  carry? t60 += squarerax
  squarer01 += squarerdx + carry
  squarerax = t12_stack
  (uint128) squarerdx squarerax = squarerax * t12_stack
  carry? t64 += squarerax
  squarer41 += squarerdx + carry
  squarerax = t12_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * t13_stack
  carry? t60 += squarerax
  squarer01 += squarerdx + carry
  squarerax = t12_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * t14_stack
  carry? t61 += squarerax
  squarer11 += squarerdx + carry
  squarerax = t13_stack
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * t13_stack
  carry? t61 += squarerax
  squarer11 += squarerdx + carry
  squarerax = t13_stack
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * t14_stack
  carry? t62 += squarerax
  squarer21 += squarerdx + carry
  squarerax = t14_stack
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * t14_stack
  carry? t63 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  squarer01 = (squarer01.t60) << 13
  t60 &= squareredmask
  squarer11 = (squarer11.t61) << 13
  t61 &= squareredmask
  t61 += squarer01
  squarer21 = (squarer21.t62) << 13
  t62 &= squareredmask
  t62 += squarer11
  squarer31 = (squarer31.t63) << 13
  t63 &= squareredmask
  t63 += squarer21
  squarer41 = (squarer41.t64) << 13
  t64 &= squareredmask
  t64 += squarer31
  squarer41 = squarer41 * 19
  t60 += squarer41
  squaret = t60
  (uint64) squaret >>= 51
  squaret += t61
  t60 &= squareredmask
  t61 = squaret
  (uint64) squaret >>= 51
  squaret += t62
  t61 &= squareredmask
  t62 = squaret
  (uint64) squaret >>= 51
  squaret += t63
  t62 &= squareredmask
  t63 = squaret
  (uint64) squaret >>= 51
  squaret += t64
  t63 &= squareredmask
  t64 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  t60 += squaret
  t64 &= squareredmask
t60_stack = t60
t61_stack = t61
t62_stack = t62
t63_stack = t63
t64_stack = t64
t50 = t60
t51 = t61
t52 = t62
t53 = t63
t54 = t64
t50 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P0
t51 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t52 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t53 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t54 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t50 -= t70_stack
t51 -= t71_stack
t52 -= t72_stack
t53 -= t73_stack
t54 -= t74_stack
t50_stack = t50
t51_stack = t51
t52_stack = t52
t53_stack = t53
t54_stack = t54
t30 = *(uint64 *)(workp + 120)
t31 = *(uint64 *)(workp + 128)
t32 = *(uint64 *)(workp + 136)
t33 = *(uint64 *)(workp + 144)
t34 = *(uint64 *)(workp + 152)
t40 = t30
t41 = t31
t42 = t32
t43 = t33
t44 = t34
t40 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P0
t41 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t42 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t43 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t44 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t30 += *(uint64 *)(workp + 160)
t31 += *(uint64 *)(workp + 168)
t32 += *(uint64 *)(workp + 176)
t33 += *(uint64 *)(workp + 184)
t34 += *(uint64 *)(workp + 192)
t40 -= *(uint64 *)(workp + 160)
t41 -= *(uint64 *)(workp + 168)
t42 -= *(uint64 *)(workp + 176)
t43 -= *(uint64 *)(workp + 184)
t44 -= *(uint64 *)(workp + 192)
t30_stack = t30
t31_stack = t31
t32_stack = t32
t33_stack = t33
t34_stack = t34
t40_stack = t40
t41_stack = t41
t42_stack = t42
t43_stack = t43
t44_stack = t44
  mulrax = t33_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * t22_stack
  t90 = mulrax
  mulr01 = mulrdx
  mulrax = t34_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * t21_stack
  carry? t90 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t30_stack
  (uint128) mulrdx mulrax = mulrax * t20_stack
  carry? t90 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t30_stack
  (uint128) mulrdx mulrax = mulrax * t21_stack
  t91 = mulrax
  mulr11 = mulrdx
  mulrax = t30_stack
  (uint128) mulrdx mulrax = mulrax * t22_stack
  t92 = mulrax
  mulr21 = mulrdx
  mulrax = t30_stack
  (uint128) mulrdx mulrax = mulrax * t23_stack
  t93 = mulrax
  mulr31 = mulrdx
  mulrax = t30_stack
  (uint128) mulrdx mulrax = mulrax * t24_stack
  t94 = mulrax
  mulr41 = mulrdx
  mulrax = t31_stack
  (uint128) mulrdx mulrax = mulrax * t20_stack
  carry? t91 += mulrax
  mulr11 += mulrdx + carry
  mulrax = t31_stack
  (uint128) mulrdx mulrax = mulrax * t21_stack
  carry? t92 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t31_stack
  (uint128) mulrdx mulrax = mulrax * t22_stack
  carry? t93 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t31_stack
  (uint128) mulrdx mulrax = mulrax * t23_stack
  carry? t94 += mulrax
  mulr41 += mulrdx + carry
  mulrax = t31_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t24_stack
  carry? t90 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t32_stack
  (uint128) mulrdx mulrax = mulrax * t20_stack
  carry? t92 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t32_stack
  (uint128) mulrdx mulrax = mulrax * t21_stack
  carry? t93 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t32_stack
  (uint128) mulrdx mulrax = mulrax * t22_stack
  carry? t94 += mulrax
  mulr41 += mulrdx + carry
  mulrax = t32_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t23_stack
  carry? t90 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t32_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t24_stack
  carry? t91 += mulrax
  mulr11 += mulrdx + carry
  mulrax = t33_stack
  (uint128) mulrdx mulrax = mulrax * t20_stack
  carry? t93 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t33_stack
  (uint128) mulrdx mulrax = mulrax * t21_stack
  carry? t94 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * t23_stack
  carry? t91 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * t24_stack
  carry? t92 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t34_stack
  (uint128) mulrdx mulrax = mulrax * t20_stack
  carry? t94 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t22_stack
  carry? t91 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t23_stack
  carry? t92 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t24_stack
  carry? t93 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  mulr01 = (mulr01.t90) << 13
  t90 &= mulredmask
  mulr11 = (mulr11.t91) << 13
  t91 &= mulredmask
  t91 += mulr01
  mulr21 = (mulr21.t92) << 13
  t92 &= mulredmask
  t92 += mulr11
  mulr31 = (mulr31.t93) << 13
  t93 &= mulredmask
  t93 += mulr21
  mulr41 = (mulr41.t94) << 13
  t94 &= mulredmask
  t94 += mulr31
  mulr41 = mulr41 * 19
  t90 += mulr41
  mult = t90
  (uint64) mult >>= 51
  mult += t91
  t91 = mult
  (uint64) mult >>= 51
  t90 &= mulredmask
  mult += t92
  t92 = mult
  (uint64) mult >>= 51
  t91 &= mulredmask
  mult += t93
  t93 = mult
  (uint64) mult >>= 51
  t92 &= mulredmask
  mult += t94
  t94 = mult
  (uint64) mult >>= 51
  t93 &= mulredmask
  mult *= 19
  t90 += mult
  t94 &= mulredmask
t90_stack = t90
t91_stack = t91
t92_stack = t92
t93_stack = t93
t94_stack = t94
  mulrax = t43_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * t12_stack
  t80 = mulrax
  mulr01 = mulrdx
  mulrax = t44_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * t11_stack
  carry? t80 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t40_stack
  (uint128) mulrdx mulrax = mulrax * t10_stack
  carry? t80 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t40_stack
  (uint128) mulrdx mulrax = mulrax * t11_stack
  t81 = mulrax
  mulr11 = mulrdx
  mulrax = t40_stack
  (uint128) mulrdx mulrax = mulrax * t12_stack
  t82 = mulrax
  mulr21 = mulrdx
  mulrax = t40_stack
  (uint128) mulrdx mulrax = mulrax * t13_stack
  t83 = mulrax
  mulr31 = mulrdx
  mulrax = t40_stack
  (uint128) mulrdx mulrax = mulrax * t14_stack
  t84 = mulrax
  mulr41 = mulrdx
  mulrax = t41_stack
  (uint128) mulrdx mulrax = mulrax * t10_stack
  carry? t81 += mulrax
  mulr11 += mulrdx + carry
  mulrax = t41_stack
  (uint128) mulrdx mulrax = mulrax * t11_stack
  carry? t82 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t41_stack
  (uint128) mulrdx mulrax = mulrax * t12_stack
  carry? t83 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t41_stack
  (uint128) mulrdx mulrax = mulrax * t13_stack
  carry? t84 += mulrax
  mulr41 += mulrdx + carry
  mulrax = t41_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t14_stack
  carry? t80 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t42_stack
  (uint128) mulrdx mulrax = mulrax * t10_stack
  carry? t82 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t42_stack
  (uint128) mulrdx mulrax = mulrax * t11_stack
  carry? t83 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t42_stack
  (uint128) mulrdx mulrax = mulrax * t12_stack
  carry? t84 += mulrax
  mulr41 += mulrdx + carry
  mulrax = t42_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t13_stack
  carry? t80 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t42_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t14_stack
  carry? t81 += mulrax
  mulr11 += mulrdx + carry
  mulrax = t43_stack
  (uint128) mulrdx mulrax = mulrax * t10_stack
  carry? t83 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t43_stack
  (uint128) mulrdx mulrax = mulrax * t11_stack
  carry? t84 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * t13_stack
  carry? t81 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * t14_stack
  carry? t82 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t44_stack
  (uint128) mulrdx mulrax = mulrax * t10_stack
  carry? t84 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t12_stack
  carry? t81 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t13_stack
  carry? t82 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t14_stack
  carry? t83 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  mulr01 = (mulr01.t80) << 13
  t80 &= mulredmask
  mulr11 = (mulr11.t81) << 13
  t81 &= mulredmask
  t81 += mulr01
  mulr21 = (mulr21.t82) << 13
  t82 &= mulredmask
  t82 += mulr11
  mulr31 = (mulr31.t83) << 13
  t83 &= mulredmask
  t83 += mulr21
  mulr41 = (mulr41.t84) << 13
  t84 &= mulredmask
  t84 += mulr31
  mulr41 = mulr41 * 19
  t80 += mulr41
  mult = t80
  (uint64) mult >>= 51
  mult += t81
  t81 = mult
  (uint64) mult >>= 51
  t80 &= mulredmask
  mult += t82
  t82 = mult
  (uint64) mult >>= 51
  t81 &= mulredmask
  mult += t83
  t83 = mult
  (uint64) mult >>= 51
  t82 &= mulredmask
  mult += t84
  t84 = mult
  (uint64) mult >>= 51
  t83 &= mulredmask
  mult *= 19
  t80 += mult
  t84 &= mulredmask
zq0 = t80
zq1 = t81
zq2 = t82
zq3 = t83
zq4 = t84
zq0 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P0
zq1 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
zq2 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
zq3 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
zq4 += *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_2P1234
t80 += t90_stack
t81 += t91_stack
t82 += t92_stack
t83 += t93_stack
t84 += t94_stack
zq0 -= t90_stack
zq1 -= t91_stack
zq2 -= t92_stack
zq3 -= t93_stack
zq4 -= t94_stack
*(uint64 *)(workp + 120) = t80
*(uint64 *)(workp + 128) = t81
*(uint64 *)(workp + 136) = t82
*(uint64 *)(workp + 144) = t83
*(uint64 *)(workp + 152) = t84
*(uint64 *)(workp + 160) = zq0
*(uint64 *)(workp + 168) = zq1
*(uint64 *)(workp + 176) = zq2
*(uint64 *)(workp + 184) = zq3
*(uint64 *)(workp + 192) = zq4
  squarerax = *(uint64 *)(workp + 120)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 120)
  xq0 = squarerax
  squarer01 = squarerdx
  squarerax = *(uint64 *)(workp + 120)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 128)
  xq1 = squarerax
  squarer11 = squarerdx
  squarerax = *(uint64 *)(workp + 120)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 136)
  xq2 = squarerax
  squarer21 = squarerdx
  squarerax = *(uint64 *)(workp + 120)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 144)
  xq3 = squarerax
  squarer31 = squarerdx
  squarerax = *(uint64 *)(workp + 120)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 152)
  xq4 = squarerax
  squarer41 = squarerdx
  squarerax = *(uint64 *)(workp + 128)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 128)
  carry? xq2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 128)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 136)
  carry? xq3 += squarerax
  squarer31 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 128)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 144)
  carry? xq4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 128)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 152)
  carry? xq0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 136)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 136)
  carry? xq4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 136)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 144)
  carry? xq0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 136)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 152)
  carry? xq1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 144)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 144)
  carry? xq1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 144)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 152)
  carry? xq2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 152)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 152)
  carry? xq3 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  squarer01 = (squarer01.xq0) << 13
  xq0 &= squareredmask
  squarer11 = (squarer11.xq1) << 13
  xq1 &= squareredmask
  xq1 += squarer01
  squarer21 = (squarer21.xq2) << 13
  xq2 &= squareredmask
  xq2 += squarer11
  squarer31 = (squarer31.xq3) << 13
  xq3 &= squareredmask
  xq3 += squarer21
  squarer41 = (squarer41.xq4) << 13
  xq4 &= squareredmask
  xq4 += squarer31
  squarer41 = squarer41 * 19
  xq0 += squarer41
  squaret = xq0
  (uint64) squaret >>= 51
  squaret += xq1
  xq0 &= squareredmask
  xq1 = squaret
  (uint64) squaret >>= 51
  squaret += xq2
  xq1 &= squareredmask
  xq2 = squaret
  (uint64) squaret >>= 51
  squaret += xq3
  xq2 &= squareredmask
  xq3 = squaret
  (uint64) squaret >>= 51
  squaret += xq4
  xq3 &= squareredmask
  xq4 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  xq0 += squaret
  xq4 &= squareredmask
*(uint64 *)(workp + 120) = xq0
*(uint64 *)(workp + 128) = xq1
*(uint64 *)(workp + 136) = xq2
*(uint64 *)(workp + 144) = xq3
*(uint64 *)(workp + 152) = xq4
  squarerax = *(uint64 *)(workp + 160)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 160)
  zq0 = squarerax
  squarer01 = squarerdx
  squarerax = *(uint64 *)(workp + 160)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 168)
  zq1 = squarerax
  squarer11 = squarerdx
  squarerax = *(uint64 *)(workp + 160)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 176)
  zq2 = squarerax
  squarer21 = squarerdx
  squarerax = *(uint64 *)(workp + 160)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 184)
  zq3 = squarerax
  squarer31 = squarerdx
  squarerax = *(uint64 *)(workp + 160)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 192)
  zq4 = squarerax
  squarer41 = squarerdx
  squarerax = *(uint64 *)(workp + 168)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 168)
  carry? zq2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 168)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 176)
  carry? zq3 += squarerax
  squarer31 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 168)
  squarerax <<= 1
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 184)
  carry? zq4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 168)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 192)
  carry? zq0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 176)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 176)
  carry? zq4 += squarerax
  squarer41 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 176)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 184)
  carry? zq0 += squarerax
  squarer01 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 176)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 192)
  carry? zq1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 184)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 184)
  carry? zq1 += squarerax
  squarer11 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 184)
  squarerax *= 38
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 192)
  carry? zq2 += squarerax
  squarer21 += squarerdx + carry
  squarerax = *(uint64 *)(workp + 192)
  squarerax *= 19
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 192)
  carry? zq3 += squarerax
  squarer31 += squarerdx + carry
  squareredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  squarer01 = (squarer01.zq0) << 13
  zq0 &= squareredmask
  squarer11 = (squarer11.zq1) << 13
  zq1 &= squareredmask
  zq1 += squarer01
  squarer21 = (squarer21.zq2) << 13
  zq2 &= squareredmask
  zq2 += squarer11
  squarer31 = (squarer31.zq3) << 13
  zq3 &= squareredmask
  zq3 += squarer21
  squarer41 = (squarer41.zq4) << 13
  zq4 &= squareredmask
  zq4 += squarer31
  squarer41 = squarer41 * 19
  zq0 += squarer41
  squaret = zq0
  (uint64) squaret >>= 51
  squaret += zq1
  zq0 &= squareredmask
  zq1 = squaret
  (uint64) squaret >>= 51
  squaret += zq2
  zq1 &= squareredmask
  zq2 = squaret
  (uint64) squaret >>= 51
  squaret += zq3
  zq2 &= squareredmask
  zq3 = squaret
  (uint64) squaret >>= 51
  squaret += zq4
  zq3 &= squareredmask
  zq4 = squaret
  (uint64) squaret >>= 51
  squaret *= 19
  zq0 += squaret
  zq4 &= squareredmask
*(uint64 *)(workp + 160) = zq0
*(uint64 *)(workp + 168) = zq1
*(uint64 *)(workp + 176) = zq2
*(uint64 *)(workp + 184) = zq3
*(uint64 *)(workp + 192) = zq4
  mulrax = *(uint64 *)(workp + 184)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 16)
  zq0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(workp + 192)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 8)
  carry? zq0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 160)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 0)
  carry? zq0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 160)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 8)
  zq1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(workp + 160)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 16)
  zq2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(workp + 160)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 24)
  zq3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(workp + 160)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 32)
  zq4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(workp + 168)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 0)
  carry? zq1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 168)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 8)
  carry? zq2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 168)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 16)
  carry? zq3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 168)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 24)
  carry? zq4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 168)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 32)
  carry? zq0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 176)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 0)
  carry? zq2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 176)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 8)
  carry? zq3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 176)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 16)
  carry? zq4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 176)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 24)
  carry? zq0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 176)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 32)
  carry? zq1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 184)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 0)
  carry? zq3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 184)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 8)
  carry? zq4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 24)
  carry? zq1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 32)
  carry? zq2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 192)
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 0)
  carry? zq4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 16)
  carry? zq1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 24)
  carry? zq2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)(workp + 32)
  carry? zq3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  mulr01 = (mulr01.zq0) << 13
  zq0 &= mulredmask
  mulr11 = (mulr11.zq1) << 13
  zq1 &= mulredmask
  zq1 += mulr01
  mulr21 = (mulr21.zq2) << 13
  zq2 &= mulredmask
  zq2 += mulr11
  mulr31 = (mulr31.zq3) << 13
  zq3 &= mulredmask
  zq3 += mulr21
  mulr41 = (mulr41.zq4) << 13
  zq4 &= mulredmask
  zq4 += mulr31
  mulr41 = mulr41 * 19
  zq0 += mulr41
  mult = zq0
  (uint64) mult >>= 51
  mult += zq1
  zq1 = mult
  (uint64) mult >>= 51
  zq0 &= mulredmask
  mult += zq2
  zq2 = mult
  (uint64) mult >>= 51
  zq1 &= mulredmask
  mult += zq3
  zq3 = mult
  (uint64) mult >>= 51
  zq2 &= mulredmask
  mult += zq4
  zq4 = mult
  (uint64) mult >>= 51
  zq3 &= mulredmask
  mult *= 19
  zq0 += mult
  zq4 &= mulredmask
*(uint64 *)(workp + 160) = zq0
*(uint64 *)(workp + 168) = zq1
*(uint64 *)(workp + 176) = zq2
*(uint64 *)(workp + 184) = zq3
*(uint64 *)(workp + 192) = zq4
  mulrax = t63_stack
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * t72_stack
  xp0 = mulrax
  mulr01 = mulrdx
  mulrax = t64_stack
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * t71_stack
  carry? xp0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t60_stack
  (uint128) mulrdx mulrax = mulrax * t70_stack
  carry? xp0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t60_stack
  (uint128) mulrdx mulrax = mulrax * t71_stack
  xp1 = mulrax
  mulr11 = mulrdx
  mulrax = t60_stack
  (uint128) mulrdx mulrax = mulrax * t72_stack
  xp2 = mulrax
  mulr21 = mulrdx
  mulrax = t60_stack
  (uint128) mulrdx mulrax = mulrax * t73_stack
  xp3 = mulrax
  mulr31 = mulrdx
  mulrax = t60_stack
  (uint128) mulrdx mulrax = mulrax * t74_stack
  xp4 = mulrax
  mulr41 = mulrdx
  mulrax = t61_stack
  (uint128) mulrdx mulrax = mulrax * t70_stack
  carry? xp1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = t61_stack
  (uint128) mulrdx mulrax = mulrax * t71_stack
  carry? xp2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t61_stack
  (uint128) mulrdx mulrax = mulrax * t72_stack
  carry? xp3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t61_stack
  (uint128) mulrdx mulrax = mulrax * t73_stack
  carry? xp4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = t61_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t74_stack
  carry? xp0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t62_stack
  (uint128) mulrdx mulrax = mulrax * t70_stack
  carry? xp2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t62_stack
  (uint128) mulrdx mulrax = mulrax * t71_stack
  carry? xp3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t62_stack
  (uint128) mulrdx mulrax = mulrax * t72_stack
  carry? xp4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = t62_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t73_stack
  carry? xp0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = t62_stack
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t74_stack
  carry? xp1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = t63_stack
  (uint128) mulrdx mulrax = mulrax * t70_stack
  carry? xp3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = t63_stack
  (uint128) mulrdx mulrax = mulrax * t71_stack
  carry? xp4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * t73_stack
  carry? xp1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * t74_stack
  carry? xp2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = t64_stack
  (uint128) mulrdx mulrax = mulrax * t70_stack
  carry? xp4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t72_stack
  carry? xp1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t73_stack
  carry? xp2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t74_stack
  carry? xp3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  mulr01 = (mulr01.xp0) << 13
  xp0 &= mulredmask
  mulr11 = (mulr11.xp1) << 13
  xp1 &= mulredmask
  xp1 += mulr01
  mulr21 = (mulr21.xp2) << 13
  xp2 &= mulredmask
  xp2 += mulr11
  mulr31 = (mulr31.xp3) << 13
  xp3 &= mulredmask
  xp3 += mulr21
  mulr41 = (mulr41.xp4) << 13
  xp4 &= mulredmask
  xp4 += mulr31
  mulr41 = mulr41 * 19
  xp0 += mulr41
  mult = xp0
  (uint64) mult >>= 51
  mult += xp1
  xp1 = mult
  (uint64) mult >>= 51
  xp0 &= mulredmask
  mult += xp2
  xp2 = mult
  (uint64) mult >>= 51
  xp1 &= mulredmask
  mult += xp3
  xp3 = mult
  (uint64) mult >>= 51
  xp2 &= mulredmask
  mult += xp4
  xp4 = mult
  (uint64) mult >>= 51
  xp3 &= mulredmask
  mult *= 19
  xp0 += mult
  xp4 &= mulredmask
*(uint64 *)(workp + 40) = xp0
*(uint64 *)(workp + 48) = xp1
*(uint64 *)(workp + 56) = xp2
*(uint64 *)(workp + 64) = xp3
*(uint64 *)(workp + 72) = xp4
  mul121666rax = t50_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_121666_213
  (uint64) mul121666rax >>= 13
  zp0 = mul121666rax
  zp1 = mul121666rdx
  mul121666rax = t51_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_121666_213
  (uint64) mul121666rax >>= 13
  zp1 += mul121666rax
  zp2 = mul121666rdx
  mul121666rax = t52_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_121666_213
  (uint64) mul121666rax >>= 13
  zp2 += mul121666rax
  zp3 = mul121666rdx
  mul121666rax = t53_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_121666_213
  (uint64) mul121666rax >>= 13
  zp3 += mul121666rax
  zp4 = mul121666rdx
  mul121666rax = t54_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_121666_213
  (uint64) mul121666rax >>= 13
  zp4 += mul121666rax
  mul121666rdx *= 19
  zp0 += mul121666rdx
zp0 += t70_stack
zp1 += t71_stack
zp2 += t72_stack
zp3 += t73_stack
zp4 += t74_stack
*(uint64 *)(workp + 80) = zp0
*(uint64 *)(workp + 88) = zp1
*(uint64 *)(workp + 96) = zp2
*(uint64 *)(workp + 104) = zp3
*(uint64 *)(workp + 112) = zp4
  mulrax = *(uint64 *)(workp + 104)
  mulrax *= 19
  mulx319_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * t52_stack
  zp0 = mulrax
  mulr01 = mulrdx
  mulrax = *(uint64 *)(workp + 112)
  mulrax *= 19
  mulx419_stack = mulrax
  (uint128) mulrdx mulrax = mulrax * t51_stack
  carry? zp0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 80)
  (uint128) mulrdx mulrax = mulrax * t50_stack
  carry? zp0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 80)
  (uint128) mulrdx mulrax = mulrax * t51_stack
  zp1 = mulrax
  mulr11 = mulrdx
  mulrax = *(uint64 *)(workp + 80)
  (uint128) mulrdx mulrax = mulrax * t52_stack
  zp2 = mulrax
  mulr21 = mulrdx
  mulrax = *(uint64 *)(workp + 80)
  (uint128) mulrdx mulrax = mulrax * t53_stack
  zp3 = mulrax
  mulr31 = mulrdx
  mulrax = *(uint64 *)(workp + 80)
  (uint128) mulrdx mulrax = mulrax * t54_stack
  zp4 = mulrax
  mulr41 = mulrdx
  mulrax = *(uint64 *)(workp + 88)
  (uint128) mulrdx mulrax = mulrax * t50_stack
  carry? zp1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 88)
  (uint128) mulrdx mulrax = mulrax * t51_stack
  carry? zp2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 88)
  (uint128) mulrdx mulrax = mulrax * t52_stack
  carry? zp3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 88)
  (uint128) mulrdx mulrax = mulrax * t53_stack
  carry? zp4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 88)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t54_stack
  carry? zp0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 96)
  (uint128) mulrdx mulrax = mulrax * t50_stack
  carry? zp2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 96)
  (uint128) mulrdx mulrax = mulrax * t51_stack
  carry? zp3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 96)
  (uint128) mulrdx mulrax = mulrax * t52_stack
  carry? zp4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 96)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t53_stack
  carry? zp0 += mulrax
  mulr01 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 96)
  mulrax *= 19
  (uint128) mulrdx mulrax = mulrax * t54_stack
  carry? zp1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 104)
  (uint128) mulrdx mulrax = mulrax * t50_stack
  carry? zp3 += mulrax
  mulr31 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 104)
  (uint128) mulrdx mulrax = mulrax * t51_stack
  carry? zp4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * t53_stack
  carry? zp1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx319_stack
  (uint128) mulrdx mulrax = mulrax * t54_stack
  carry? zp2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 112)
  (uint128) mulrdx mulrax = mulrax * t50_stack
  carry? zp4 += mulrax
  mulr41 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t52_stack
  carry? zp1 += mulrax
  mulr11 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t53_stack
  carry? zp2 += mulrax
  mulr21 += mulrdx + carry
  mulrax = mulx419_stack
  (uint128) mulrdx mulrax = mulrax * t54_stack
  carry? zp3 += mulrax
  mulr31 += mulrdx + carry
  mulredmask = *(uint64 *) &crypto_scalarmult_curve25519_amd64_51_REDMASK51
  mulr01 = (mulr01.zp0) << 13
  zp0 &= mulredmask
  mulr11 = (mulr11.zp1) << 13
  zp1 &= mulredmask
  zp1 += mulr01
  mulr21 = (mulr21.zp2) << 13
  zp2 &= mulredmask
  zp2 += mulr11
  mulr31 = (mulr31.zp3) << 13
  zp3 &= mulredmask
  zp3 += mulr21
  mulr41 = (mulr41.zp4) << 13
  zp4 &= mulredmask
  zp4 += mulr31
  mulr41 = mulr41 * 19
  zp0 += mulr41
  mult = zp0
  (uint64) mult >>= 51
  mult += zp1
  zp1 = mult
  (uint64) mult >>= 51
  zp0 &= mulredmask
  mult += zp2
  zp2 = mult
  (uint64) mult >>= 51
  zp1 &= mulredmask
  mult += zp3
  zp3 = mult
  (uint64) mult >>= 51
  zp2 &= mulredmask
  mult += zp4
  zp4 = mult
  (uint64) mult >>= 51
  zp3 &= mulredmask
  mult *= 19
  zp0 += mult
  zp4 &= mulredmask
*(uint64 *)(workp + 80) = zp0
*(uint64 *)(workp + 88) = zp1
*(uint64 *)(workp + 96) = zp2
*(uint64 *)(workp + 104) = zp3
*(uint64 *)(workp + 112) = zp4
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
