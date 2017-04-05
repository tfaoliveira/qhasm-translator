int64 rp
int64 xp
input rp
input xp
int64 r0
int64 r1
int64 r2
int64 r3
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
enter crypto_scalarmult_curve25519_amd64_64_fe25519_square
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
  squarer7 = 0
  squarerax = *(uint64 *)(xp + 8)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 0)
  r1 = squarerax
  r2 = squarerdx
  squarerax = *(uint64 *)(xp + 16)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 8)
  r3 = squarerax 
  squarer4 = squarerdx
  squarerax = *(uint64 *)(xp + 24)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 16)
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = *(uint64 *)(xp + 16)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 0)
  carry? r2 += squarerax
  carry? r3 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = *(uint64 *)(xp + 24)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 8)
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = *(uint64 *)(xp + 24)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 0)
  carry? r3 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? r1 += r1
  carry? r2 += r2 + carry
  carry? r3 += r3 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = *(uint64 *)(xp + 0)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 0)
  r0 = squarerax
  squaret1 = squarerdx
  squarerax = *(uint64 *)(xp + 8)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 8)
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = *(uint64 *)(xp + 16)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 16)
  carry? r1 += squaret1
  carry? r2 += squaret2 + carry
  carry? r3 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = *(uint64 *)(xp + 24)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(xp + 24)
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
  carry? r0 += squarer4
  carry? r1 += squarer5 + carry
  carry? r2 += squarer6 + carry
  carry? r3 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? r0 += squarer8
  carry? r1 += squarezero + carry
  carry? r2 += squarezero + carry
  carry? r3 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  r0 += squarezero
*(uint64 *)(rp + 8) = r1
*(uint64 *)(rp + 16) = r2
*(uint64 *)(rp + 24) = r3
*(uint64 *)(rp + 0) = r0
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
