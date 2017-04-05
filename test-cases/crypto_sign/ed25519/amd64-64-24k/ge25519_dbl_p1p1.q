int64 rp
int64 pp
input rp
input pp
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
int64 e0
int64 e1
int64 e2
int64 e3
stack64 e0_stack
stack64 e1_stack
stack64 e2_stack
stack64 e3_stack
int64 rx0
int64 rx1
int64 rx2
int64 rx3
stack64 rx0_stack
stack64 rx1_stack
stack64 rx2_stack
stack64 rx3_stack
int64 ry0
int64 ry1
int64 ry2
int64 ry3
int64 ry4
int64 rz0
int64 rz1
int64 rz2
int64 rz3
int64 rt0
int64 rt1
int64 rt2
int64 rt3
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
int64 addt0
int64 addt1
int64 subt0
int64 subt1
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
enter crypto_sign_ed25519_amd64_64_ge25519_dbl_p1p1
  caller1_stack = caller1
  caller2_stack = caller2
  caller3_stack = caller3
  caller4_stack = caller4
  caller5_stack = caller5
  caller6_stack = caller6
  caller7_stack = caller7
  squarer7 = 0
  squarerax = *(uint64 *)(pp + 8)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 0)
  a1 = squarerax
  a2 = squarerdx
  squarerax = *(uint64 *)(pp + 16)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 8)
  a3 = squarerax 
  squarer4 = squarerdx
  squarerax = *(uint64 *)(pp + 24)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 16)
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = *(uint64 *)(pp + 16)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 0)
  carry? a2 += squarerax
  carry? a3 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = *(uint64 *)(pp + 24)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 8)
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = *(uint64 *)(pp + 24)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 0)
  carry? a3 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? a1 += a1
  carry? a2 += a2 + carry
  carry? a3 += a3 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = *(uint64 *)(pp + 0)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 0)
  a0 = squarerax
  squaret1 = squarerdx
  squarerax = *(uint64 *)(pp + 8)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 8)
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = *(uint64 *)(pp + 16)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 16)
  carry? a1 += squaret1
  carry? a2 += squaret2 + carry
  carry? a3 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = *(uint64 *)(pp + 24)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 24)
  carry? squarer6 += squarerax
  squarer7 += squarerdx + carry
  squarerax = squarer4
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  squarer4 = squarerax
  squarerax = squarer5
  squarer5 = squarerdx
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer5 += squarerax
  squarerax = squarer6
  squarer6 = 0
  squarer6 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer6 += squarerax
  squarerax = squarer7
  squarer7 = 0
  squarer7 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer7 += squarerax
  squarer8 = 0
  squarer8 += squarerdx + carry
  carry? a0 += squarer4
  carry? a1 += squarer5 + carry
  carry? a2 += squarer6 + carry
  carry? a3 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? a0 += squarer8
  carry? a1 += squarezero + carry
  carry? a2 += squarezero + carry
  carry? a3 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  a0 += squarezero
a0_stack = a0
a1_stack = a1
a2_stack = a2
a3_stack = a3
  squarer7 = 0
  squarerax = *(uint64 *)(pp + 40)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  b1 = squarerax
  b2 = squarerdx
  squarerax = *(uint64 *)(pp + 48)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 40)
  b3 = squarerax 
  squarer4 = squarerdx
  squarerax = *(uint64 *)(pp + 56)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 48)
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = *(uint64 *)(pp + 48)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  carry? b2 += squarerax
  carry? b3 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = *(uint64 *)(pp + 56)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 40)
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = *(uint64 *)(pp + 56)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  carry? b3 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? b1 += b1
  carry? b2 += b2 + carry
  carry? b3 += b3 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = *(uint64 *)(pp + 32)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 32)
  b0 = squarerax
  squaret1 = squarerdx
  squarerax = *(uint64 *)(pp + 40)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 40)
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = *(uint64 *)(pp + 48)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 48)
  carry? b1 += squaret1
  carry? b2 += squaret2 + carry
  carry? b3 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = *(uint64 *)(pp + 56)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 56)
  carry? squarer6 += squarerax
  squarer7 += squarerdx + carry
  squarerax = squarer4
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  squarer4 = squarerax
  squarerax = squarer5
  squarer5 = squarerdx
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer5 += squarerax
  squarerax = squarer6
  squarer6 = 0
  squarer6 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer6 += squarerax
  squarerax = squarer7
  squarer7 = 0
  squarer7 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer7 += squarerax
  squarer8 = 0
  squarer8 += squarerdx + carry
  carry? b0 += squarer4
  carry? b1 += squarer5 + carry
  carry? b2 += squarer6 + carry
  carry? b3 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? b0 += squarer8
  carry? b1 += squarezero + carry
  carry? b2 += squarezero + carry
  carry? b3 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  b0 += squarezero
b0_stack = b0
b1_stack = b1
b2_stack = b2
b3_stack = b3
  squarer7 = 0
  squarerax = *(uint64 *)(pp + 72)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 64)
  c1 = squarerax
  c2 = squarerdx
  squarerax = *(uint64 *)(pp + 80)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 72)
  c3 = squarerax 
  squarer4 = squarerdx
  squarerax = *(uint64 *)(pp + 88)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 80)
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = *(uint64 *)(pp + 80)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 64)
  carry? c2 += squarerax
  carry? c3 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = *(uint64 *)(pp + 88)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 72)
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = *(uint64 *)(pp + 88)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 64)
  carry? c3 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? c1 += c1
  carry? c2 += c2 + carry
  carry? c3 += c3 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = *(uint64 *)(pp + 64)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 64)
  c0 = squarerax
  squaret1 = squarerdx
  squarerax = *(uint64 *)(pp + 72)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 72)
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = *(uint64 *)(pp + 80)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 80)
  carry? c1 += squaret1
  carry? c2 += squaret2 + carry
  carry? c3 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = *(uint64 *)(pp + 88)
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)(pp + 88)
  carry? squarer6 += squarerax
  squarer7 += squarerdx + carry
  squarerax = squarer4
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  squarer4 = squarerax
  squarerax = squarer5
  squarer5 = squarerdx
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer5 += squarerax
  squarerax = squarer6
  squarer6 = 0
  squarer6 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer6 += squarerax
  squarerax = squarer7
  squarer7 = 0
  squarer7 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer7 += squarerax
  squarer8 = 0
  squarer8 += squarerdx + carry
  carry? c0 += squarer4
  carry? c1 += squarer5 + carry
  carry? c2 += squarer6 + carry
  carry? c3 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? c0 += squarer8
  carry? c1 += squarezero + carry
  carry? c2 += squarezero + carry
  carry? c3 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  c0 += squarezero
  carry? c0 += c0 
  carry? c1 += c1 + carry
  carry? c2 += c2 + carry
  carry? c3 += c3 + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? c0 += addt1
  carry? c1 += addt0 + carry
  carry? c2 += addt0 + carry
  carry? c3 += addt0 + carry
  addt0 = addt1 if carry
  c0 += addt0
c0_stack = c0
c1_stack = c1
c2_stack = c2
c3_stack = c3
d0 = 0
d1 = 0
d2 = 0
d3 = 0
  carry? d0 -= a0_stack 
  carry? d1 -= a1_stack - carry
  carry? d2 -= a2_stack - carry
  carry? d3 -= a3_stack - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? d0 -= subt1
  carry? d1 -= subt0 - carry
  carry? d2 -= subt0 - carry
  carry? d3 -= subt0 - carry
  subt0 = subt1 if carry
  d0 -= subt0
d0_stack = d0
d1_stack = d1
d2_stack = d2
d3_stack = d3
e0 = 0
e1 = 0
e2 = 0
e3 = 0
  carry? e0 -= b0_stack 
  carry? e1 -= b1_stack - carry
  carry? e2 -= b2_stack - carry
  carry? e3 -= b3_stack - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? e0 -= subt1
  carry? e1 -= subt0 - carry
  carry? e2 -= subt0 - carry
  carry? e3 -= subt0 - carry
  subt0 = subt1 if carry
  e0 -= subt0
e0_stack = e0
e1_stack = e1
e2_stack = e2
e3_stack = e3
rz0 = d0
rz1 = d1
rz2 = d2
rz3 = d3
  carry? rz0 += b0_stack 
  carry? rz1 += b1_stack + carry
  carry? rz2 += b2_stack + carry
  carry? rz3 += b3_stack + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? rz0 += addt1
  carry? rz1 += addt0 + carry
  carry? rz2 += addt0 + carry
  carry? rz3 += addt0 + carry
  addt0 = addt1 if carry
  rz0 += addt0
*(uint64 *) (rp + 32) = rz0
*(uint64 *) (rp + 40) = rz1
*(uint64 *) (rp + 48) = rz2
*(uint64 *) (rp + 56) = rz3
  carry? d0 -= b0_stack 
  carry? d1 -= b1_stack - carry
  carry? d2 -= b2_stack - carry
  carry? d3 -= b3_stack - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? d0 -= subt1
  carry? d1 -= subt0 - carry
  carry? d2 -= subt0 - carry
  carry? d3 -= subt0 - carry
  subt0 = subt1 if carry
  d0 -= subt0
*(uint64 *)(rp + 64) = d0
*(uint64 *)(rp + 72) = d1
*(uint64 *)(rp + 80) = d2
*(uint64 *)(rp + 88) = d3
  carry? rz0 -= c0_stack 
  carry? rz1 -= c1_stack - carry
  carry? rz2 -= c2_stack - carry
  carry? rz3 -= c3_stack - carry
  subt0 = 0
  subt1 = 38
  subt1 = subt0 if !carry
  carry? rz0 -= subt1
  carry? rz1 -= subt0 - carry
  carry? rz2 -= subt0 - carry
  carry? rz3 -= subt0 - carry
  subt0 = subt1 if carry
  rz0 -= subt0
*(uint64 *) (rp + 96) = rz0
*(uint64 *) (rp + 104) = rz1
*(uint64 *) (rp + 112) = rz2
*(uint64 *) (rp + 120) = rz3
rx0 = *(uint64 *)(pp + 0)
rx1 = *(uint64 *)(pp + 8)
rx2 = *(uint64 *)(pp + 16)
rx3 = *(uint64 *)(pp + 24)
  carry? rx0 += *(uint64 *)(pp + 32) 
  carry? rx1 += *(uint64 *)(pp + 40) + carry
  carry? rx2 += *(uint64 *)(pp + 48) + carry
  carry? rx3 += *(uint64 *)(pp + 56) + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? rx0 += addt1
  carry? rx1 += addt0 + carry
  carry? rx2 += addt0 + carry
  carry? rx3 += addt0 + carry
  addt0 = addt1 if carry
  rx0 += addt0
rx0_stack = rx0
rx1_stack = rx1
rx2_stack = rx2
rx3_stack = rx3
  squarer7 = 0
  squarerax = rx1_stack
  (uint128) squarerdx squarerax = squarerax * rx0_stack
  rx1 = squarerax
  rx2 = squarerdx
  squarerax = rx2_stack
  (uint128) squarerdx squarerax = squarerax * rx1_stack
  rx3 = squarerax 
  squarer4 = squarerdx
  squarerax = rx3_stack
  (uint128) squarerdx squarerax = squarerax * rx2_stack
  squarer5 = squarerax
  squarer6 = squarerdx
  squarerax = rx2_stack
  (uint128) squarerdx squarerax = squarerax * rx0_stack
  carry? rx2 += squarerax
  carry? rx3 += squarerdx + carry
  squarer4 += 0 + carry
  squarerax = rx3_stack
  (uint128) squarerdx squarerax = squarerax * rx1_stack
  carry? squarer4 += squarerax
  carry? squarer5 += squarerdx + carry
  squarer6 += 0 + carry
  squarerax = rx3_stack
  (uint128) squarerdx squarerax = squarerax * rx0_stack
  carry? rx3 += squarerax
  carry? squarer4 += squarerdx + carry
  carry? squarer5 += 0 + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry
  carry? rx1 += rx1
  carry? rx2 += rx2 + carry
  carry? rx3 += rx3 + carry
  carry? squarer4 += squarer4 + carry
  carry? squarer5 += squarer5 + carry
  carry? squarer6 += squarer6 + carry
  squarer7 += squarer7 + carry
  squarerax = rx0_stack
  (uint128) squarerdx squarerax = squarerax * rx0_stack
  rx0 = squarerax
  squaret1 = squarerdx
  squarerax = rx1_stack
  (uint128) squarerdx squarerax = squarerax * rx1_stack
  squaret2 = squarerax
  squaret3 = squarerdx
  squarerax = rx2_stack
  (uint128) squarerdx squarerax = squarerax * rx2_stack
  carry? rx1 += squaret1
  carry? rx2 += squaret2 + carry
  carry? rx3 += squaret3 + carry
  carry? squarer4 += squarerax + carry
  carry? squarer5 += squarerdx + carry
  carry? squarer6 += 0 + carry
  squarer7 += 0 + carry 
  squarerax = rx3_stack
  (uint128) squarerdx squarerax = squarerax * rx3_stack
  carry? squarer6 += squarerax
  squarer7 += squarerdx + carry
  squarerax = squarer4
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  squarer4 = squarerax
  squarerax = squarer5
  squarer5 = squarerdx
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer5 += squarerax
  squarerax = squarer6
  squarer6 = 0
  squarer6 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer6 += squarerax
  squarerax = squarer7
  squarer7 = 0
  squarer7 += squarerdx + carry
  (uint128) squarerdx squarerax = squarerax * *(uint64 *)&crypto_sign_ed25519_amd64_64_38
  carry? squarer7 += squarerax
  squarer8 = 0
  squarer8 += squarerdx + carry
  carry? rx0 += squarer4
  carry? rx1 += squarer5 + carry
  carry? rx2 += squarer6 + carry
  carry? rx3 += squarer7 + carry
  squarezero = 0
  squarer8 += squarezero + carry
  squarer8 *= 38
  carry? rx0 += squarer8
  carry? rx1 += squarezero + carry
  carry? rx2 += squarezero + carry
  carry? rx3 += squarezero + carry
  squarezero += squarezero + carry
  squarezero *= 38
  rx0 += squarezero
  carry? rx0 += d0_stack 
  carry? rx1 += d1_stack + carry
  carry? rx2 += d2_stack + carry
  carry? rx3 += d3_stack + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? rx0 += addt1
  carry? rx1 += addt0 + carry
  carry? rx2 += addt0 + carry
  carry? rx3 += addt0 + carry
  addt0 = addt1 if carry
  rx0 += addt0
  carry? rx0 += e0_stack 
  carry? rx1 += e1_stack + carry
  carry? rx2 += e2_stack + carry
  carry? rx3 += e3_stack + carry
  addt0 = 0
  addt1 = 38
  addt1 = addt0 if !carry
  carry? rx0 += addt1
  carry? rx1 += addt0 + carry
  carry? rx2 += addt0 + carry
  carry? rx3 += addt0 + carry
  addt0 = addt1 if carry
  rx0 += addt0
*(uint64 *)(rp + 0) = rx0
*(uint64 *)(rp + 8) = rx1
*(uint64 *)(rp + 16) = rx2
*(uint64 *)(rp + 24) = rx3
  caller1 = caller1_stack
  caller2 = caller2_stack
  caller3 = caller3_stack
  caller4 = caller4_stack
  caller5 = caller5_stack
  caller6 = caller6_stack
  caller7 = caller7_stack
leave
