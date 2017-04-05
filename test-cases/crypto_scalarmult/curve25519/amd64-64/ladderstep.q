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
stack64 t10_stack
stack64 t11_stack
stack64 t12_stack
stack64 t13_stack
int64 t20
int64 t21
int64 t22
int64 t23
stack64 t20_stack
stack64 t21_stack
stack64 t22_stack
stack64 t23_stack
int64 t30
int64 t31
int64 t32
int64 t33
stack64 t30_stack
stack64 t31_stack
stack64 t32_stack
stack64 t33_stack
int64 t40
int64 t41
int64 t42
int64 t43
stack64 t40_stack
stack64 t41_stack
stack64 t42_stack
stack64 t43_stack
int64 t50
int64 t51
int64 t52
int64 t53
stack64 t50_stack
stack64 t51_stack
stack64 t52_stack
stack64 t53_stack
int64 t60
int64 t61
int64 t62
int64 t63
stack64 t60_stack
stack64 t61_stack
stack64 t62_stack
stack64 t63_stack
int64 t70
int64 t71
int64 t72
int64 t73
stack64 t70_stack
stack64 t71_stack
stack64 t72_stack
stack64 t73_stack
int64 t80
int64 t81
int64 t82
int64 t83
stack64 t80_stack
stack64 t81_stack
stack64 t82_stack
stack64 t83_stack
int64 t90
int64 t91
int64 t92
int64 t93
stack64 t90_stack
stack64 t91_stack
stack64 t92_stack
stack64 t93_stack
int64 xp0
int64 xp1
int64 xp2
int64 xp3
int64 zp0
int64 zp1
int64 zp2
int64 zp3
int64 xq0
int64 xq1
int64 xq2
int64 xq3
int64 zq0
int64 zq1
int64 zq2
int64 zq3
int64 mulr4
int64 mulr5
int64 mulr6
int64 mulr7
int64 mulr8
int64 mulrax
int64 mulrdx
int64 mulx0
int64 mulx1
int64 mulx2
int64 mulx3
int64 mulc
int64 mulzero
int64 muli38
int64 squarer4
int64 squarer5
int64 squarer6
int64 squarer7
int64 squarer8
int64 squarerax
int64 squarerdx
int64 squaret1
int64 squaret2
int64 squaret3
int64 squarec
int64 squarezero
int64 squarei38
int64 mul121666rax
int64 mul121666rdx
int64 mul121666r4
int64 mul121666t1
int64 mul121666t2
int64 mul121666t3
int64 addt0
int64 addt1
int64 subt0
int64 subt1
enter crypto_scalarmult_curve25519_amd64_64_ladderstep
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
t10 = *(uint64 *)(workp + 32)
t11 = *(uint64 *)(workp + 40)
t12 = *(uint64 *)(workp + 48)
t13 = *(uint64 *)(workp + 56)
t20 = t10
t21 = t11
t22 = t12
t23 = t13
  carry? t10 += *(uint64 *)(workp + 64) 
  carry? t11 += *(uint64 *)(workp + 72) + carry
  carry? t12 += *(uint64 *)(workp + 80) + carry
  carry? t13 += *(uint64 *)(workp + 88) + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? t10 += addt1
  carry? t11 += addt0 + carry
  carry? t12 += addt0 + carry
  carry? t13 += addt0 + carry
  addt0 = addt1 if carry
  t10 += addt0
  carry? t20 -= *(uint64 *)(workp + 64) 
  carry? t21 -= *(uint64 *)(workp + 72) - carry
  carry? t22 -= *(uint64 *)(workp + 80) - carry
  carry? t23 -= *(uint64 *)(workp + 88) - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? t20 -= subt1
  carry? t21 -= subt0 - carry
  carry? t22 -= subt0 - carry
  carry? t23 -= subt0 - carry
  subt0 = subt1 if carry
  t20 -= subt0
t10_stack = t10
t11_stack = t11
t12_stack = t12
t13_stack = t13
t20_stack = t20
t21_stack = t21
t22_stack = t22
t23_stack = t23
  squarer7 = 0
  squarerax = t21_stack
  (uint128) squarerdx squarerax = squarerax * t20_stack
  t71 = squarerax
  t72 = squarerdx
  squarerax = t22_stack
  (uint128) squarerdx squarerax = squarerax * t21_stack
  t73 = squarerax 
  squarer4 = squarerdx
  squarerax = t23_stack
  (uint128) squarerdx squarerax = squarerax * t22_stack
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = t22_stack
  (uint128) squarerdx squarerax = squarerax * t20_stack
  carry? t72 += squarerax
  carry? t73 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = t23_stack
  (uint128) squarerdx squarerax = squarerax * t21_stack
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = t23_stack
  (uint128) squarerdx squarerax = squarerax * t20_stack
  carry? t73 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? t71 += t71
  carry? t72 += t72 + carry
  carry? t73 += t73 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = t20_stack
  (uint128) squarerdx squarerax = squarerax * t20_stack
  t70 = squarerax
  squaret1 = squarerdx
  squarerax = t21_stack
  (uint128) squarerdx squarerax = squarerax * t21_stack
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = t22_stack
  (uint128) squarerdx squarerax = squarerax * t22_stack
  carry? t71 += squaret1
  carry? t72 += squaret2 + carry
  carry? t73 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = t23_stack
  (uint128) squarerdx squarerax = squarerax * t23_stack
  carry? squarer6 += squarerax
  squarer7 += squarerdx + carry
  squarerax = squarer4
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  squarer4 = squarerax
  squarerax = squarer5
  squarer5 = squarerdx
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer5 += squarerax
  squarerax = squarer6
  squarer6 = 0
  squarer6 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer6 += squarerax
  squarerax = squarer7
  squarer7 = 0
  squarer7 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer7 += squarerax
  squarer8 = 0
  squarer8 += squarerdx + carry
  carry? t70 += squarer4
  carry? t71 += squarer5 + carry
  carry? t72 += squarer6 + carry
  carry? t73 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? t70 += squarer8
  carry? t71 += squarezero + carry
  carry? t72 += squarezero + carry
  carry? t73 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  t70 += squarezero
t70_stack = t70
t71_stack = t71
t72_stack = t72
t73_stack = t73
  squarer7 = 0
  squarerax = t11_stack
  (uint128) squarerdx squarerax = squarerax * t10_stack
  t61 = squarerax
  t62 = squarerdx
  squarerax = t12_stack
  (uint128) squarerdx squarerax = squarerax * t11_stack
  t63 = squarerax 
  squarer4 = squarerdx
  squarerax = t13_stack
  (uint128) squarerdx squarerax = squarerax * t12_stack
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = t12_stack
  (uint128) squarerdx squarerax = squarerax * t10_stack
  carry? t62 += squarerax
  carry? t63 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = t13_stack
  (uint128) squarerdx squarerax = squarerax * t11_stack
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = t13_stack
  (uint128) squarerdx squarerax = squarerax * t10_stack
  carry? t63 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? t61 += t61
  carry? t62 += t62 + carry
  carry? t63 += t63 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = t10_stack
  (uint128) squarerdx squarerax = squarerax * t10_stack
  t60 = squarerax
  squaret1 = squarerdx
  squarerax = t11_stack
  (uint128) squarerdx squarerax = squarerax * t11_stack
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = t12_stack
  (uint128) squarerdx squarerax = squarerax * t12_stack
  carry? t61 += squaret1
  carry? t62 += squaret2 + carry
  carry? t63 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = t13_stack
  (uint128) squarerdx squarerax = squarerax * t13_stack
  carry? squarer6 += squarerax
  squarer7 += squarerdx + carry
  squarerax = squarer4
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  squarer4 = squarerax
  squarerax = squarer5
  squarer5 = squarerdx
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer5 += squarerax
  squarerax = squarer6
  squarer6 = 0
  squarer6 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer6 += squarerax
  squarerax = squarer7
  squarer7 = 0
  squarer7 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer7 += squarerax
  squarer8 = 0
  squarer8 += squarerdx + carry
  carry? t60 += squarer4
  carry? t61 += squarer5 + carry
  carry? t62 += squarer6 + carry
  carry? t63 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? t60 += squarer8
  carry? t61 += squarezero + carry
  carry? t62 += squarezero + carry
  carry? t63 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  t60 += squarezero
t60_stack = t60
t61_stack = t61
t62_stack = t62
t63_stack = t63
t50 = t60
t51 = t61
t52 = t62
t53 = t63
  carry? t50 -= t70_stack 
  carry? t51 -= t71_stack - carry
  carry? t52 -= t72_stack - carry
  carry? t53 -= t73_stack - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? t50 -= subt1
  carry? t51 -= subt0 - carry
  carry? t52 -= subt0 - carry
  carry? t53 -= subt0 - carry
  subt0 = subt1 if carry
  t50 -= subt0
t50_stack = t50
t51_stack = t51
t52_stack = t52
t53_stack = t53
t30 = *(uint64 *)(workp + 96)
t31 = *(uint64 *)(workp + 104)
t32 = *(uint64 *)(workp + 112)
t33 = *(uint64 *)(workp + 120)
t40 = t30
t41 = t31
t42 = t32
t43 = t33
  carry? t30 += *(uint64 *)(workp + 128) 
  carry? t31 += *(uint64 *)(workp + 136) + carry
  carry? t32 += *(uint64 *)(workp + 144) + carry
  carry? t33 += *(uint64 *)(workp + 152) + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? t30 += addt1
  carry? t31 += addt0 + carry
  carry? t32 += addt0 + carry
  carry? t33 += addt0 + carry
  addt0 = addt1 if carry
  t30 += addt0
  carry? t40 -= *(uint64 *)(workp + 128) 
  carry? t41 -= *(uint64 *)(workp + 136) - carry
  carry? t42 -= *(uint64 *)(workp + 144) - carry
  carry? t43 -= *(uint64 *)(workp + 152) - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? t40 -= subt1
  carry? t41 -= subt0 - carry
  carry? t42 -= subt0 - carry
  carry? t43 -= subt0 - carry
  subt0 = subt1 if carry
  t40 -= subt0
t30_stack = t30
t31_stack = t31
t32_stack = t32
t33_stack = t33
t40_stack = t40
t41_stack = t41
t42_stack = t42
t43_stack = t43
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = t30_stack
  mulrax = t20_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  t90 = mulrax
  t91 = mulrdx
  mulrax = t21_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? t91 += mulrax
  t92 = 0
  t92 += mulrdx + carry
  mulrax = t22_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? t92 += mulrax
  t93 = 0
  t93 += mulrdx + carry
  mulrax = t23_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? t93 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = t31_stack
  mulrax = t20_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? t91 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t21_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? t92 += mulrax
  mulrdx += 0 + carry
  carry? t92 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t22_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? t93 += mulrax 
  mulrdx += 0 + carry
  carry? t93 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t23_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = t32_stack
  mulrax = t20_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? t92 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t21_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? t93 += mulrax
  mulrdx += 0 + carry
  carry? t93 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t22_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t23_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = t33_stack
  mulrax = t20_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? t93 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t21_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t22_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t23_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr6 += mulrax
  mulrdx += 0 + carry
  carry? mulr6 += mulc
  mulr7 += mulrdx + carry
  mulrax = mulr4
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  mulr4 = mulrax
  mulrax = mulr5
  mulr5 = mulrdx
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr5 += mulrax
  mulrax = mulr6
  mulr6 = 0
  mulr6 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr6 += mulrax
  mulrax = mulr7
  mulr7 = 0
  mulr7 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr7 += mulrax
  mulr8 = 0
  mulr8 += mulrdx + carry
  carry? t90 += mulr4
  carry? t91 += mulr5 + carry
  carry? t92 += mulr6 + carry
  carry? t93 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? t90 += mulr8
  carry? t91 += mulzero + carry
  carry? t92 += mulzero + carry
  carry? t93 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  t90 += mulzero
t90_stack = t90
t91_stack = t91
t92_stack = t92
t93_stack = t93
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = t40_stack
  mulrax = t10_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  t80 = mulrax
  t81 = mulrdx
  mulrax = t11_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? t81 += mulrax
  t82 = 0
  t82 += mulrdx + carry
  mulrax = t12_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? t82 += mulrax
  t83 = 0
  t83 += mulrdx + carry
  mulrax = t13_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? t83 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = t41_stack
  mulrax = t10_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? t81 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t11_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? t82 += mulrax
  mulrdx += 0 + carry
  carry? t82 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t12_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? t83 += mulrax 
  mulrdx += 0 + carry
  carry? t83 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t13_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = t42_stack
  mulrax = t10_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? t82 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t11_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? t83 += mulrax
  mulrdx += 0 + carry
  carry? t83 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t12_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t13_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = t43_stack
  mulrax = t10_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? t83 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t11_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t12_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t13_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr6 += mulrax
  mulrdx += 0 + carry
  carry? mulr6 += mulc
  mulr7 += mulrdx + carry
  mulrax = mulr4
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  mulr4 = mulrax
  mulrax = mulr5
  mulr5 = mulrdx
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr5 += mulrax
  mulrax = mulr6
  mulr6 = 0
  mulr6 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr6 += mulrax
  mulrax = mulr7
  mulr7 = 0
  mulr7 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr7 += mulrax
  mulr8 = 0
  mulr8 += mulrdx + carry
  carry? t80 += mulr4
  carry? t81 += mulr5 + carry
  carry? t82 += mulr6 + carry
  carry? t83 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? t80 += mulr8
  carry? t81 += mulzero + carry
  carry? t82 += mulzero + carry
  carry? t83 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  t80 += mulzero
zq0 = t80
zq1 = t81
zq2 = t82
zq3 = t83
  carry? zq0 -= t90_stack 
  carry? zq1 -= t91_stack - carry
  carry? zq2 -= t92_stack - carry
  carry? zq3 -= t93_stack - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? zq0 -= subt1
  carry? zq1 -= subt0 - carry
  carry? zq2 -= subt0 - carry
  carry? zq3 -= subt0 - carry
  subt0 = subt1 if carry
  zq0 -= subt0
  carry? t80 += t90_stack 
  carry? t81 += t91_stack + carry
  carry? t82 += t92_stack + carry
  carry? t83 += t93_stack + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? t80 += addt1
  carry? t81 += addt0 + carry
  carry? t82 += addt0 + carry
  carry? t83 += addt0 + carry
  addt0 = addt1 if carry
  t80 += addt0
*(uint64 *)(workp + 96) = t80
*(uint64 *)(workp + 104) = t81
*(uint64 *)(workp + 112) = t82
*(uint64 *)(workp + 120) = t83
*(uint64 *)(workp + 128) = zq0
*(uint64 *)(workp + 136) = zq1
*(uint64 *)(workp + 144) = zq2
*(uint64 *)(workp + 152) = zq3
  squarer7 = 0
  squarerax = *(uint64 *)(workp + 104)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 96)
  xq1 = squarerax
  xq2 = squarerdx
  squarerax = *(uint64 *)(workp + 112)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 104)
  xq3 = squarerax 
  squarer4 = squarerdx
  squarerax = *(uint64 *)(workp + 120)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 112)
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = *(uint64 *)(workp + 112)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 96)
  carry? xq2 += squarerax
  carry? xq3 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = *(uint64 *)(workp + 120)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 104)
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = *(uint64 *)(workp + 120)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 96)
  carry? xq3 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? xq1 += xq1
  carry? xq2 += xq2 + carry
  carry? xq3 += xq3 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = *(uint64 *)(workp + 96)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 96)
  xq0 = squarerax
  squaret1 = squarerdx
  squarerax = *(uint64 *)(workp + 104)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 104)
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = *(uint64 *)(workp + 112)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 112)
  carry? xq1 += squaret1
  carry? xq2 += squaret2 + carry
  carry? xq3 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = *(uint64 *)(workp + 120)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 120)
  carry? squarer6 += squarerax
  squarer7 += squarerdx + carry
  squarerax = squarer4
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  squarer4 = squarerax
  squarerax = squarer5
  squarer5 = squarerdx
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer5 += squarerax
  squarerax = squarer6
  squarer6 = 0
  squarer6 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer6 += squarerax
  squarerax = squarer7
  squarer7 = 0
  squarer7 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer7 += squarerax
  squarer8 = 0
  squarer8 += squarerdx + carry
  carry? xq0 += squarer4
  carry? xq1 += squarer5 + carry
  carry? xq2 += squarer6 + carry
  carry? xq3 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? xq0 += squarer8
  carry? xq1 += squarezero + carry
  carry? xq2 += squarezero + carry
  carry? xq3 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  xq0 += squarezero
*(uint64 *)(workp + 96) = xq0
*(uint64 *)(workp + 104) = xq1
*(uint64 *)(workp + 112) = xq2
*(uint64 *)(workp + 120) = xq3
  squarer7 = 0
  squarerax = *(uint64 *)(workp + 136)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 128)
  zq1 = squarerax
  zq2 = squarerdx
  squarerax = *(uint64 *)(workp + 144)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 136)
  zq3 = squarerax 
  squarer4 = squarerdx
  squarerax = *(uint64 *)(workp + 152)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 144)
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = *(uint64 *)(workp + 144)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 128)
  carry? zq2 += squarerax
  carry? zq3 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = *(uint64 *)(workp + 152)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 136)
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = *(uint64 *)(workp + 152)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 128)
  carry? zq3 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? zq1 += zq1
  carry? zq2 += zq2 + carry
  carry? zq3 += zq3 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = *(uint64 *)(workp + 128)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 128)
  zq0 = squarerax
  squaret1 = squarerdx
  squarerax = *(uint64 *)(workp + 136)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 136)
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = *(uint64 *)(workp + 144)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 144)
  carry? zq1 += squaret1
  carry? zq2 += squaret2 + carry
  carry? zq3 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = *(uint64 *)(workp + 152)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(workp + 152)
  carry? squarer6 += squarerax
  squarer7 += squarerdx + carry
  squarerax = squarer4
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  squarer4 = squarerax
  squarerax = squarer5
  squarer5 = squarerdx
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer5 += squarerax
  squarerax = squarer6
  squarer6 = 0
  squarer6 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer6 += squarerax
  squarerax = squarer7
  squarer7 = 0
  squarer7 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? squarer7 += squarerax
  squarer8 = 0
  squarer8 += squarerdx + carry
  carry? zq0 += squarer4
  carry? zq1 += squarer5 + carry
  carry? zq2 += squarer6 + carry
  carry? zq3 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? zq0 += squarer8
  carry? zq1 += squarezero + carry
  carry? zq2 += squarezero + carry
  carry? zq3 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  zq0 += squarezero
*(uint64 *)(workp + 128) = zq0
*(uint64 *)(workp + 136) = zq1
*(uint64 *)(workp + 144) = zq2
*(uint64 *)(workp + 152) = zq3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = *(uint64 *)(workp + 128)
  mulrax = *(uint64 *)(workp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx0
  zq0 = mulrax
  zq1 = mulrdx
  mulrax = *(uint64 *)(workp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? zq1 += mulrax
  zq2 = 0
  zq2 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? zq2 += mulrax
  zq3 = 0
  zq3 += mulrdx + carry
  mulrax = *(uint64 *)(workp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? zq3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = *(uint64 *)(workp + 136)
  mulrax = *(uint64 *)(workp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? zq1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? zq2 += mulrax
  mulrdx += 0 + carry
  carry? zq2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? zq3 += mulrax 
  mulrdx += 0 + carry
  carry? zq3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = *(uint64 *)(workp + 144)
  mulrax = *(uint64 *)(workp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? zq2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? zq3 += mulrax
  mulrdx += 0 + carry
  carry? zq3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = *(uint64 *)(workp + 152)
  mulrax = *(uint64 *)(workp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? zq3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(workp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr6 += mulrax
  mulrdx += 0 + carry
  carry? mulr6 += mulc
  mulr7 += mulrdx + carry
  mulrax = mulr4
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  mulr4 = mulrax
  mulrax = mulr5
  mulr5 = mulrdx
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr5 += mulrax
  mulrax = mulr6
  mulr6 = 0
  mulr6 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr6 += mulrax
  mulrax = mulr7
  mulr7 = 0
  mulr7 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr7 += mulrax
  mulr8 = 0
  mulr8 += mulrdx + carry
  carry? zq0 += mulr4
  carry? zq1 += mulr5 + carry
  carry? zq2 += mulr6 + carry
  carry? zq3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? zq0 += mulr8
  carry? zq1 += mulzero + carry
  carry? zq2 += mulzero + carry
  carry? zq3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  zq0 += mulzero
*(uint64 *)(workp + 128) = zq0
*(uint64 *)(workp + 136) = zq1
*(uint64 *)(workp + 144) = zq2
*(uint64 *)(workp + 152) = zq3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = t60_stack
  mulrax = t70_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  xp0 = mulrax
  xp1 = mulrdx
  mulrax = t71_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? xp1 += mulrax
  xp2 = 0
  xp2 += mulrdx + carry
  mulrax = t72_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? xp2 += mulrax
  xp3 = 0
  xp3 += mulrdx + carry
  mulrax = t73_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? xp3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = t61_stack
  mulrax = t70_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? xp1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t71_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? xp2 += mulrax
  mulrdx += 0 + carry
  carry? xp2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t72_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? xp3 += mulrax 
  mulrdx += 0 + carry
  carry? xp3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t73_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = t62_stack
  mulrax = t70_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? xp2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t71_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? xp3 += mulrax
  mulrdx += 0 + carry
  carry? xp3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t72_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t73_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = t63_stack
  mulrax = t70_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? xp3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t71_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t72_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t73_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr6 += mulrax
  mulrdx += 0 + carry
  carry? mulr6 += mulc
  mulr7 += mulrdx + carry
  mulrax = mulr4
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  mulr4 = mulrax
  mulrax = mulr5
  mulr5 = mulrdx
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr5 += mulrax
  mulrax = mulr6
  mulr6 = 0
  mulr6 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr6 += mulrax
  mulrax = mulr7
  mulr7 = 0
  mulr7 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr7 += mulrax
  mulr8 = 0
  mulr8 += mulrdx + carry
  carry? xp0 += mulr4
  carry? xp1 += mulr5 + carry
  carry? xp2 += mulr6 + carry
  carry? xp3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? xp0 += mulr8
  carry? xp1 += mulzero + carry
  carry? xp2 += mulzero + carry
  carry? xp3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  xp0 += mulzero
*(uint64 *)(workp + 32) = xp0
*(uint64 *)(workp + 40) = xp1
*(uint64 *)(workp + 48) = xp2
*(uint64 *)(workp + 56) = xp3
  mul121666rax = t50_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_121666
  zp0 = mul121666rax
  zp1 = mul121666rdx
  mul121666rax = t52_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_121666
  zp2 = mul121666rax
  zp3 = mul121666rdx
  mul121666rax = t51_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_121666
  mul121666t1 = mul121666rax
  mul121666t2 = mul121666rdx
  mul121666rax = t53_stack
  (uint128) mul121666rdx mul121666rax = mul121666rax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_121666
  mul121666t3 = mul121666rax
  mul121666r4 = mul121666rdx
  carry? zp1 += mul121666t1
  carry? zp2 += mul121666t2 + carry
  carry? zp3 += mul121666t3 + carry
  mul121666r4 += 0 + carry
  mul121666r4 *= 38
  carry? zp0 += mul121666r4
  carry? zp1 += 0 + carry
  carry? zp2 += 0 + carry
  carry? zp3 += 0 + carry
  mul121666t1 = 38
  mul121666t2 = 0
  mul121666t1 = mul121666t2 if !carry
  zp0 += mul121666t1
  carry? zp0 += t70_stack 
  carry? zp1 += t71_stack + carry
  carry? zp2 += t72_stack + carry
  carry? zp3 += t73_stack + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? zp0 += addt1
  carry? zp1 += addt0 + carry
  carry? zp2 += addt0 + carry
  carry? zp3 += addt0 + carry
  addt0 = addt1 if carry
  zp0 += addt0
*(uint64 *)(workp + 64) = zp0
*(uint64 *)(workp + 72) = zp1
*(uint64 *)(workp + 80) = zp2
*(uint64 *)(workp + 88) = zp3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = *(uint64 *)(workp + 64)
  mulrax = t50_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  zp0 = mulrax
  zp1 = mulrdx
  mulrax = t51_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? zp1 += mulrax
  zp2 = 0
  zp2 += mulrdx + carry
  mulrax = t52_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? zp2 += mulrax
  zp3 = 0
  zp3 += mulrdx + carry
  mulrax = t53_stack
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? zp3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = *(uint64 *)(workp + 72)
  mulrax = t50_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? zp1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t51_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? zp2 += mulrax
  mulrdx += 0 + carry
  carry? zp2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t52_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? zp3 += mulrax 
  mulrdx += 0 + carry
  carry? zp3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t53_stack
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = *(uint64 *)(workp + 80)
  mulrax = t50_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? zp2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t51_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? zp3 += mulrax
  mulrdx += 0 + carry
  carry? zp3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t52_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t53_stack
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = *(uint64 *)(workp + 88)
  mulrax = t50_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? zp3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t51_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t52_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = t53_stack
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr6 += mulrax
  mulrdx += 0 + carry
  carry? mulr6 += mulc
  mulr7 += mulrdx + carry
  mulrax = mulr4
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  mulr4 = mulrax
  mulrax = mulr5
  mulr5 = mulrdx
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr5 += mulrax
  mulrax = mulr6
  mulr6 = 0
  mulr6 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr6 += mulrax
  mulrax = mulr7
  mulr7 = 0
  mulr7 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_scalarmult_curve25519_amd64_64_38
  carry? mulr7 += mulrax
  mulr8 = 0
  mulr8 += mulrdx + carry
  carry? zp0 += mulr4
  carry? zp1 += mulr5 + carry
  carry? zp2 += mulr6 + carry
  carry? zp3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? zp0 += mulr8
  carry? zp1 += mulzero + carry
  carry? zp2 += mulzero + carry
  carry? zp3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  zp0 += mulzero
*(uint64 *)(workp + 64) = zp0
*(uint64 *)(workp + 72) = zp1
*(uint64 *)(workp + 80) = zp2
*(uint64 *)(workp + 88) = zp3
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
