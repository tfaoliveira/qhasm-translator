int64 rp
int64 pp
int64 qp
input rp
input pp
input qp
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
int64 a0
int64 a1
int64 a2
int64 a3
stack64 a0_stack
stack64 a1_stack
stack64 a2_stack
stack64 a3_stack
int64 b0
int64 b1
int64 b2
int64 b3
stack64 b0_stack
stack64 b1_stack
stack64 b2_stack
stack64 b3_stack
int64 c0
int64 c1
int64 c2
int64 c3
stack64 c0_stack
stack64 c1_stack
stack64 c2_stack
stack64 c3_stack
int64 d0
int64 d1
int64 d2
int64 d3
stack64 d0_stack
stack64 d1_stack
stack64 d2_stack
stack64 d3_stack
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
int64 rt0
int64 rt1
int64 rt2
int64 rt3
int64 x0
int64 x1
int64 x2
int64 x3
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
int64 addt0
int64 addt1
int64 subt0
int64 subt1
enter crypto_sign_ed25519_amd64_64_ge25519_pnielsadd_p1p1
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
qp = qp
a0 = *(uint64 *)(pp + 32)
a1 = *(uint64 *)(pp + 40)
a2 = *(uint64 *)(pp + 48)
a3 = *(uint64 *)(pp + 56)
b0 = a0
b1 = a1
b2 = a2
b3 = a3
  carry? a0 -= *(uint64 *)(pp + 0) 
  carry? a1 -= *(uint64 *)(pp + 8) - carry
  carry? a2 -= *(uint64 *)(pp + 16) - carry
  carry? a3 -= *(uint64 *)(pp + 24) - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? a0 -= subt1
  carry? a1 -= subt0 - carry
  carry? a2 -= subt0 - carry
  carry? a3 -= subt0 - carry
  subt0 = subt1 if carry
  a0 -= subt0
  carry? b0 += *(uint64 *)(pp + 0) 
  carry? b1 += *(uint64 *)(pp + 8) + carry
  carry? b2 += *(uint64 *)(pp + 16) + carry
  carry? b3 += *(uint64 *)(pp + 24) + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? b0 += addt1
  carry? b1 += addt0 + carry
  carry? b2 += addt0 + carry
  carry? b3 += addt0 + carry
  addt0 = addt1 if carry
  b0 += addt0
a0_stack = a0
a1_stack = a1
a2_stack = a2
a3_stack = a3
b0_stack = b0
b1_stack = b1
b2_stack = b2
b3_stack = b3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = a0_stack
  mulrax = *(uint64 *)(qp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx0
  a0 = mulrax
  a1 = mulrdx
  mulrax = *(uint64 *)(qp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? a1 += mulrax
  a2 = 0
  a2 += mulrdx + carry
  mulrax = *(uint64 *)(qp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? a2 += mulrax
  a3 = 0
  a3 += mulrdx + carry
  mulrax = *(uint64 *)(qp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? a3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = a1_stack
  mulrax = *(uint64 *)(qp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? a1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? a2 += mulrax
  mulrdx += 0 + carry
  carry? a2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? a3 += mulrax 
  mulrdx += 0 + carry
  carry? a3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = a2_stack
  mulrax = *(uint64 *)(qp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? a2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? a3 += mulrax
  mulrdx += 0 + carry
  carry? a3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 24)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = a3_stack
  mulrax = *(uint64 *)(qp + 0)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? a3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 8)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 16)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 24)
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
  carry? a0 += mulr4
  carry? a1 += mulr5 + carry
  carry? a2 += mulr6 + carry
  carry? a3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? a0 += mulr8
  carry? a1 += mulzero + carry
  carry? a2 += mulzero + carry
  carry? a3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  a0 += mulzero
a0_stack = a0
a1_stack = a1
a2_stack = a2
a3_stack = a3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = b0_stack
  mulrax = *(uint64 *)(qp + 32)
  (uint128) mulrdx mulrax = mulrax * mulx0
  rx0 = mulrax
  rx1 = mulrdx
  mulrax = *(uint64 *)(qp + 40)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rx1 += mulrax
  rx2 = 0
  rx2 += mulrdx + carry
  mulrax = *(uint64 *)(qp + 48)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rx2 += mulrax
  rx3 = 0
  rx3 += mulrdx + carry
  mulrax = *(uint64 *)(qp + 56)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rx3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = b1_stack
  mulrax = *(uint64 *)(qp + 32)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rx1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 40)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rx2 += mulrax
  mulrdx += 0 + carry
  carry? rx2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 48)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rx3 += mulrax 
  mulrdx += 0 + carry
  carry? rx3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 56)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = b2_stack
  mulrax = *(uint64 *)(qp + 32)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? rx2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 40)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? rx3 += mulrax
  mulrdx += 0 + carry
  carry? rx3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 48)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 56)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = b3_stack
  mulrax = *(uint64 *)(qp + 32)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? rx3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 40)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 48)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 56)
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
ry0 = rx0
ry1 = rx1
ry2 = rx2
ry3 = rx3
  carry? ry0 += a0_stack 
  carry? ry1 += a1_stack + carry
  carry? ry2 += a2_stack + carry
  carry? ry3 += a3_stack + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? ry0 += addt1
  carry? ry1 += addt0 + carry
  carry? ry2 += addt0 + carry
  carry? ry3 += addt0 + carry
  addt0 = addt1 if carry
  ry0 += addt0
  carry? rx0 -= a0_stack 
  carry? rx1 -= a1_stack - carry
  carry? rx2 -= a2_stack - carry
  carry? rx3 -= a3_stack - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? rx0 -= subt1
  carry? rx1 -= subt0 - carry
  carry? rx2 -= subt0 - carry
  carry? rx3 -= subt0 - carry
  subt0 = subt1 if carry
  rx0 -= subt0
*(uint64 *) (rp + 0) = rx0
*(uint64 *) (rp + 8) = rx1
*(uint64 *) (rp + 16) = rx2
*(uint64 *) (rp + 24) = rx3
*(uint64 *) (rp + 64) = ry0
*(uint64 *) (rp + 72) = ry1
*(uint64 *) (rp + 80) = ry2
*(uint64 *) (rp + 88) = ry3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = *(uint64 *)(pp + 96)
  mulrax = *(uint64 *)(qp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx0
  c0 = mulrax
  c1 = mulrdx
  mulrax = *(uint64 *)(qp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? c1 += mulrax
  c2 = 0
  c2 += mulrdx + carry
  mulrax = *(uint64 *)(qp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? c2 += mulrax
  c3 = 0
  c3 += mulrdx + carry
  mulrax = *(uint64 *)(qp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? c3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = *(uint64 *)(pp + 104)
  mulrax = *(uint64 *)(qp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? c1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? c2 += mulrax
  mulrdx += 0 + carry
  carry? c2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? c3 += mulrax 
  mulrdx += 0 + carry
  carry? c3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = *(uint64 *)(pp + 112)
  mulrax = *(uint64 *)(qp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? c2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? c3 += mulrax
  mulrdx += 0 + carry
  carry? c3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 120)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = *(uint64 *)(pp + 120)
  mulrax = *(uint64 *)(qp + 96)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? c3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 104)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 112)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 120)
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
  carry? c0 += mulr4
  carry? c1 += mulr5 + carry
  carry? c2 += mulr6 + carry
  carry? c3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? c0 += mulr8
  carry? c1 += mulzero + carry
  carry? c2 += mulzero + carry
  carry? c3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  c0 += mulzero
c0_stack = c0
c1_stack = c1
c2_stack = c2
c3_stack = c3
  mulr4 = 0
  mulr5 = 0
  mulr6 = 0
  mulr7 = 0
  mulx0 = *(uint64 *)(pp + 64)
  mulrax = *(uint64 *)(qp + 64)
  (uint128) mulrdx mulrax = mulrax * mulx0
  rt0 = mulrax
  rt1 = mulrdx
  mulrax = *(uint64 *)(qp + 72)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rt1 += mulrax
  rt2 = 0
  rt2 += mulrdx + carry
  mulrax = *(uint64 *)(qp + 80)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rt2 += mulrax
  rt3 = 0
  rt3 += mulrdx + carry
  mulrax = *(uint64 *)(qp + 88)
  (uint128) mulrdx mulrax = mulrax * mulx0
  carry? rt3 += mulrax
  mulr4 += mulrdx + carry
  mulx1 = *(uint64 *)(pp + 72)
  mulrax = *(uint64 *)(qp + 64)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rt1 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 72)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rt2 += mulrax
  mulrdx += 0 + carry
  carry? rt2 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 80)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? rt3 += mulrax 
  mulrdx += 0 + carry
  carry? rt3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 88)
  (uint128) mulrdx mulrax = mulrax * mulx1
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulr5 += mulrdx + carry
  mulx2 = *(uint64 *)(pp + 80)
  mulrax = *(uint64 *)(qp + 64)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? rt2 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 72)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? rt3 += mulrax
  mulrdx += 0 + carry
  carry? rt3 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 80)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 88)
  (uint128) mulrdx mulrax = mulrax * mulx2
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulr6 += mulrdx + carry
  mulx3 = *(uint64 *)(pp + 88)
  mulrax = *(uint64 *)(qp + 64)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? rt3 += mulrax
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 72)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr4 += mulrax
  mulrdx += 0 + carry
  carry? mulr4 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 80)
  (uint128) mulrdx mulrax = mulrax * mulx3
  carry? mulr5 += mulrax
  mulrdx += 0 + carry
  carry? mulr5 += mulc
  mulc = 0
  mulc += mulrdx + carry
  mulrax = *(uint64 *)(qp + 88)
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
  carry? rt0 += mulr4
  carry? rt1 += mulr5 + carry
  carry? rt2 += mulr6 + carry
  carry? rt3 += mulr7 + carry
  mulzero = 0
  mulr8 += mulzero + carry
  mulr8 *= 38
  carry? rt0 += mulr8
  carry? rt1 += mulzero + carry
  carry? rt2 += mulzero + carry
  carry? rt3 += mulzero + carry
  mulzero += mulzero + carry
  mulzero *= 38
  rt0 += mulzero
  carry? rt0 += rt0 
  carry? rt1 += rt1 + carry
  carry? rt2 += rt2 + carry
  carry? rt3 += rt3 + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? rt0 += addt1
  carry? rt1 += addt0 + carry
  carry? rt2 += addt0 + carry
  carry? rt3 += addt0 + carry
  addt0 = addt1 if carry
  rt0 += addt0
rz0 = rt0
rz1 = rt1
rz2 = rt2
rz3 = rt3
  carry? rz0 += c0_stack 
  carry? rz1 += c1_stack + carry
  carry? rz2 += c2_stack + carry
  carry? rz3 += c3_stack + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? rz0 += addt1
  carry? rz1 += addt0 + carry
  carry? rz2 += addt0 + carry
  carry? rz3 += addt0 + carry
  addt0 = addt1 if carry
  rz0 += addt0
  carry? rt0 -= c0_stack 
  carry? rt1 -= c1_stack - carry
  carry? rt2 -= c2_stack - carry
  carry? rt3 -= c3_stack - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? rt0 -= subt1
  carry? rt1 -= subt0 - carry
  carry? rt2 -= subt0 - carry
  carry? rt3 -= subt0 - carry
  subt0 = subt1 if carry
  rt0 -= subt0
*(uint64 *)(rp + 32) = rz0
*(uint64 *)(rp + 40) = rz1
*(uint64 *)(rp + 48) = rz2
*(uint64 *)(rp + 56) = rz3
*(uint64 *)(rp + 96) = rt0
*(uint64 *)(rp + 104) = rt1
*(uint64 *)(rp + 112) = rt2
*(uint64 *)(rp + 120) = rt3
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
