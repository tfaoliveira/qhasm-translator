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
int64 ry0
int64 ry1
int64 ry2
int64 ry3
int64 rz0
int64 rz1
int64 rz2
int64 rz3
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
enter crypto_sign_ed25519_amd64_64_ge25519_p1p1_to_p2
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = *(uint64 *)(pp + 0)
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx0
  rx0 = mulrax
  rx1 = mulrdx
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rx1 += mulrax
  rx2 = 0
  rx2 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rx2 += mulrax
  rx3 = 0
  rx3 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rx3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = *(uint64 *)(pp + 8)
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rx1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rx2 += mulrax
  mulrdx += 0 + carry
  carry? rx2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rx3 += mulrax 
  mulrdx += 0 + carry
  carry? rx3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = *(uint64 *)(pp + 16)
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? rx2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? rx3 += mulrax
  mulrdx += 0 + carry
  carry? rx3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = *(uint64 *)(pp + 24)
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? rx3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
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
  carry? rx0 += mulr4
  carry? rx1 += mulr5 + carry
  carry? rx2 += mulr6 + carry
  carry? rx3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? rx0 += mulr8
  carry? rx1 += mulzero + carry
  carry? rx2 += mulzero + carry
  carry? rx3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  rx0 += mulzero
*(uint64 *)(rp + 0) = rx0
*(uint64 *)(rp + 8) = rx1
*(uint64 *)(rp + 16) = rx2
*(uint64 *)(rp + 24) = rx3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = *(uint64 *)(pp + 64)
  mulrax = *(uint64 *)(pp + 32)
  (uint128) mulrdx mulrax = mulrax * mulx0
  ry0 = mulrax
  ry1 = mulrdx
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? ry1 += mulrax
  ry2 = 0
  ry2 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 48)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? ry2 += mulrax
  ry3 = 0
  ry3 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? ry3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = *(uint64 *)(pp + 72)
  mulrax = *(uint64 *)(pp + 32)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? ry1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? ry2 += mulrax
  mulrdx += 0 + carry
  carry? ry2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 48)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? ry3 += mulrax 
  mulrdx += 0 + carry
  carry? ry3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = *(uint64 *)(pp + 80)
  mulrax = *(uint64 *)(pp + 32)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? ry2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? ry3 += mulrax
  mulrdx += 0 + carry
  carry? ry3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 48)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = *(uint64 *)(pp + 88)
  mulrax = *(uint64 *)(pp + 32)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? ry3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 40)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 48)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 56)
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
  carry? ry0 += mulr4
  carry? ry1 += mulr5 + carry
  carry? ry2 += mulr6 + carry
  carry? ry3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? ry0 += mulr8
  carry? ry1 += mulzero + carry
  carry? ry2 += mulzero + carry
  carry? ry3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  ry0 += mulzero
*(uint64 *)(rp + 32) = ry0
*(uint64 *)(rp + 40) = ry1
*(uint64 *)(rp + 48) = ry2
*(uint64 *)(rp + 56) = ry3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = *(uint64 *)(pp + 32)
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx0
  rz0 = mulrax
  rz1 = mulrdx
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rz1 += mulrax
  rz2 = 0
  rz2 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rz2 += mulrax
  rz3 = 0
  rz3 += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rz3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = *(uint64 *)(pp + 40)
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rz1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rz2 += mulrax
  mulrdx += 0 + carry
  carry? rz2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rz3 += mulrax 
  mulrdx += 0 + carry
  carry? rz3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = *(uint64 *)(pp + 48)
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? rz2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? rz3 += mulrax
  mulrdx += 0 + carry
  carry? rz3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = *(uint64 *)(pp + 56)
  mulrax = *(uint64 *)(pp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? rz3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(pp + 120)
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
  carry? rz0 += mulr4
  carry? rz1 += mulr5 + carry
  carry? rz2 += mulr6 + carry
  carry? rz3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? rz0 += mulr8
  carry? rz1 += mulzero + carry
  carry? rz2 += mulzero + carry
  carry? rz3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  rz0 += mulzero
*(uint64 *)(rp + 64) = rz0
*(uint64 *)(rp + 72) = rz1
*(uint64 *)(rp + 80) = rz2
*(uint64 *)(rp + 88) = rz3
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
