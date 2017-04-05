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
enter crypto_sign_ed25519_amd64_64_fe25519_mul
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
yp = yp
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = *(uint64 *)(xp + 0)
  mulrax = *(uint64 *)(yp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx0
  r0 = mulrax
  r1 = mulrdx
  mulrax = *(uint64 *)(yp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? r1 += mulrax
  r2 = 0
  r2 += mulrdx + carry
  mulrax = *(uint64 *)(yp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? r2 += mulrax
  r3 = 0
  r3 += mulrdx + carry
  mulrax = *(uint64 *)(yp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? r3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = *(uint64 *)(xp + 8)
  mulrax = *(uint64 *)(yp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? r1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? r2 += mulrax
  mulrdx += 0 + carry
  carry? r2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? r3 += mulrax 
  mulrdx += 0 + carry
  carry? r3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = *(uint64 *)(xp + 16)
  mulrax = *(uint64 *)(yp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? r2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? r3 += mulrax
  mulrdx += 0 + carry
  carry? r3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = *(uint64 *)(xp + 24)
  mulrax = *(uint64 *)(yp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? r3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(yp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr6 += mulrax
  mulrdx += 0 + carry
  carry? mulr6 += mulc
  mulr7 += mulrdx + carry
  mulrax = mulr4
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  mulr4 = mulrax
  mulrax = mulr5
  mulr5 = mulrdx
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? mulr5 += mulrax
  mulrax = mulr6
  mulr6 = 0
  mulr6 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? mulr6 += mulrax
  mulrax = mulr7
  mulr7 = 0
  mulr7 += mulrdx + carry
  (uint128) mulrdx mulrax = mulrax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? mulr7 += mulrax
  mulr8 = 0
  mulr8 += mulrdx + carry
  carry? r0 += mulr4
  carry? r1 += mulr5 + carry
  carry? r2 += mulr6 + carry
  carry? r3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? r0 += mulr8
  carry? r1 += mulzero + carry
  carry? r2 += mulzero + carry
  carry? r3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  r0 += mulzero
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
