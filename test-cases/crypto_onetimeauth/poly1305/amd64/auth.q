int64 r11_caller
int64 r12_caller
int64 r13_caller
int64 r14_caller
int64 r15_caller
int64 rbx_caller
int64 rbp_caller
caller r11_caller
caller r12_caller
caller r13_caller
caller r14_caller
caller r15_caller
caller rbx_caller
caller rbp_caller
stack64 r11_stack
stack64 r12_stack
stack64 r13_stack
stack64 r14_stack
stack64 r15_stack
stack64 rbx_stack
stack64 rbp_stack
int64 out
stack64 out_stack
int64 m
int64 l
int64 k
stack64 k_stack
int64 m0
int64 m1
int64 m2
int64 m3
float80 a0
float80 a1
float80 a2
float80 a3
float80 h0
float80 h1
float80 h2
float80 h3
float80 x0
float80 x1
float80 x2
float80 x3
float80 y0
float80 y1
float80 y2
float80 y3
float80 r0x0
float80 r1x0
float80 r2x0
float80 r3x0
float80 r0x1
float80 r1x1
float80 r2x1
float80 sr3x1
float80 r0x2
float80 r1x2
float80 sr2x2
float80 sr3x2
float80 r0x3
float80 sr1x3
float80 sr2x3
float80 sr3x3
stack64 d0
stack64 d1
stack64 d2
stack64 d3
stack64 r0
stack64 r1
stack64 r2
stack64 r3
stack64 sr1
stack64 sr2
stack64 sr3
enter crypto_onetimeauth_poly1305_amd64
input out
input m
input l
input k
r11_stack = r11_caller
r12_stack = r12_caller
r13_stack = r13_caller
r14_stack = r14_caller
r15_stack = r15_caller
rbx_stack = rbx_caller
rbp_stack = rbp_caller
  round *(uint16 *) &crypto_onetimeauth_poly1305_amd64_rounding
  m0 = *(uint32 *) (k + 0)
  m1 = *(uint32 *) (k + 4)
  m2 = *(uint32 *) (k + 8)
  m3 = *(uint32 *) (k + 12)
  out_stack = out
  k_stack = k
  d0 top = 0x43300000
  d1 top = 0x45300000
  d2 top = 0x47300000
  d3 top = 0x49300000
  (uint32) m0 &= 0x0fffffff
  (uint32) m1 &= 0x0ffffffc
  (uint32) m2 &= 0x0ffffffc
  (uint32) m3 &= 0x0ffffffc
  inplace d0 bottom = m0
  inplace d1 bottom = m1
  inplace d2 bottom = m2
  inplace d3 bottom = m3
  a0 = *(float64 *) &d0
  a0 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset0
  a1 = *(float64 *) &d1
  a1 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset1
  a2 = *(float64 *) &d2
  a2 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset2
  a3 = *(float64 *) &d3
  a3 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset3
internal stacktop a0
  *(float64 *) &r0 = a0
internal stacktop a1
  *(float64 *) &r1 = a1
  a1 *= *(float64 *) &crypto_onetimeauth_poly1305_amd64_scale
  *(float64 *) &sr1 = a1
  *(float64 *) &r2 = a2
  a2 *= *(float64 *) &crypto_onetimeauth_poly1305_amd64_scale
  *(float64 *) &sr2 = a2
  *(float64 *) &r3 = a3
  a3 *= *(float64 *) &crypto_onetimeauth_poly1305_amd64_scale
  *(float64 *) &sr3 = a3
  h3 = 0
  h2 = 0
  h1 = 0
  h0 = 0
                         unsigned<? l - 16
goto addatmost15bytes if unsigned<
initialatleast16bytes:
  m3 = *(uint32 *) (m + 12)
  m2 = *(uint32 *) (m + 8)
  m1 = *(uint32 *) (m + 4)
  m0 = *(uint32 *) (m + 0)
  inplace d3 bottom = m3
  inplace d2 bottom = m2
  inplace d1 bottom = m1
  inplace d0 bottom = m0
  m += 16
  l -= 16
internal stacktop h3
  h3 += *(float64 *) &d3
  h3 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset3minustwo128
internal stacktop h1
  h1 += *(float64 *) &d1
  h1 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset1
internal stacktop h2
  h2 += *(float64 *) &d2
  h2 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset2
internal stacktop h0
  h0 += *(float64 *) &d0
  h0 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset0
                                 unsigned<? l - 16
goto multiplyaddatmost15bytes if unsigned<
multiplyaddatleast16bytes:
  m3 = *(uint32 *) (m + 12)
  m2 = *(uint32 *) (m + 8)
  m1 = *(uint32 *) (m + 4)
  m0 = *(uint32 *) (m + 0)
  inplace d3 bottom = m3
  inplace d2 bottom = m2
  inplace d1 bottom = m1
  inplace d0 bottom = m0
  m += 16
  l -= 16
  x0 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha130
  x0 += h3
  x0 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha130
  h3 -= x0
  x0 *= *(float64 *) &crypto_onetimeauth_poly1305_amd64_scale
  x1 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha32
  x1 += h0
  x1 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha32
  h0 -= x1
internal stacktop h0
  x0 += h0
  x2 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha64
  x2 += h1
  x2 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha64
  h1 -= x2
  x3 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha96
  x3 += h2
  x3 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha96
  h2 -= x3
internal stacktop h2
  x2 += h2
internal stacktop h3
  x3 += h3
internal stacktop h1
  x1 += h1
  h3 = *(float64 *) &r3
  h3 *= x0
  h2 = *(float64 *) &r2
  h2 *= x0
  h1 = *(float64 *) &r1
  h1 *= x0
  h0 = *(float64 *) &r0
  h0 *= x0
  r2x1 = *(float64 *) &r2
  r2x1 *= x1
  h3 += r2x1
  r1x1 = *(float64 *) &r1
  r1x1 *= x1
  h2 += r1x1
  r0x1 = *(float64 *) &r0
  r0x1 *= x1
  h1 += r0x1
  sr3x1 = *(float64 *) &sr3
  sr3x1 *= x1
internal stacktop sr3x1
  h0 += sr3x1
  r1x2 = *(float64 *) &r1
  r1x2 *= x2
  h3 += r1x2
  r0x2 = *(float64 *) &r0
  r0x2 *= x2
  h2 += r0x2
  sr3x2 = *(float64 *) &sr3
  sr3x2 *= x2
  h1 += sr3x2
  sr2x2 = *(float64 *) &sr2
  sr2x2 *= x2
internal stacktop sr2x2
  h0 += sr2x2
  r0x3 = *(float64 *) &r0
  r0x3 *= x3
  h3 += r0x3
  stacktop h0
  sr3x3 = *(float64 *) &sr3
  sr3x3 *= x3
  h2 += sr3x3
  stacktop h1
  sr2x3 = *(float64 *) &sr2
  sr2x3 *= x3
  h1 += sr2x3
  sr1x3 = *(float64 *) &sr1
  sr1x3 *= x3
internal stacktop sr1x3
  h0 += sr1x3
                                   unsigned<? l - 16
  stacktop h3
  y3 = *(float64 *) &d3
  y3 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset3minustwo128
  h3 += y3
  stacktop h2
  y2 = *(float64 *) &d2
  y2 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset2
  h2 += y2
  stacktop h1
  y1 = *(float64 *) &d1
  y1 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset1
  h1 += y1
  stacktop h0
  y0 = *(float64 *) &d0
  y0 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset0
  h0 += y0
goto multiplyaddatleast16bytes if !unsigned<
multiplyaddatmost15bytes:
  x0 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha130
  x0 += h3
  x0 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha130
  h3 -= x0
  x0 *= *(float64 *) &crypto_onetimeauth_poly1305_amd64_scale
  x1 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha32
  x1 += h0
  x1 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha32
  h0 -= x1
  x2 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha64
  x2 += h1
  x2 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha64
  h1 -= x2
  x3 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha96
  x3 += h2
  x3 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha96
  h2 -= x3
internal stacktop h2
  x2 += h2
internal stacktop h1
  x1 += h1
internal stacktop h3
  x3 += h3
  x0 += h0
  h3 = *(float64 *) &r3
  h3 *= x0
  h2 = *(float64 *) &r2
  h2 *= x0
  h1 = *(float64 *) &r1
  h1 *= x0
  h0 = *(float64 *) &r0
  h0 *= x0
  r2x1 = *(float64 *) &r2
  r2x1 *= x1
  h3 += r2x1
  r1x1 = *(float64 *) &r1
  r1x1 *= x1
  h2 += r1x1
  r0x1 = *(float64 *) &r0
  r0x1 *= x1
  h1 += r0x1
  sr3x1 = *(float64 *) &sr3
  sr3x1 *= x1
internal stacktop sr3x1
  h0 += sr3x1
  r1x2 = *(float64 *) &r1
  r1x2 *= x2
  h3 += r1x2
  r0x2 = *(float64 *) &r0
  r0x2 *= x2
  h2 += r0x2
  sr3x2 = *(float64 *) &sr3
  sr3x2 *= x2
  h1 += sr3x2
  sr2x2 = *(float64 *) &sr2
  sr2x2 *= x2
internal stacktop sr2x2
  h0 += sr2x2
  r0x3 = *(float64 *) &r0
  r0x3 *= x3
  h3 += r0x3
  sr3x3 = *(float64 *) &sr3
  sr3x3 *= x3
  h2 += sr3x3
  sr2x3 = *(float64 *) &sr2
  sr2x3 *= x3
  h1 += sr2x3
  sr1x3 = *(float64 *) &sr1
  sr1x3 *= x3
internal stacktop sr1x3
  h0 += sr1x3
addatmost15bytes:
                    =? l - 0
goto nomorebytes if =
stack128 lastchunk
int64 destination
int64 numbytes
  ((uint32 *)&lastchunk)[0] = 0
  ((uint32 *)&lastchunk)[1] = 0
  ((uint32 *)&lastchunk)[2] = 0
  ((uint32 *)&lastchunk)[3] = 0
  destination = &lastchunk
  numbytes = l
  while (numbytes) { *destination++ = *m++; --numbytes }
  *(uint8 *) (destination + 0) = 1
  m3 = ((uint32 *)&lastchunk)[3]
  m2 = ((uint32 *)&lastchunk)[2]
  m1 = ((uint32 *)&lastchunk)[1]
  m0 = ((uint32 *)&lastchunk)[0]
  inplace d3 bottom = m3
  inplace d2 bottom = m2
  inplace d1 bottom = m1
  inplace d0 bottom = m0
internal stacktop h3
  h3 += *(float64 *) &d3
  h3 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset3
internal stacktop h2
  h2 += *(float64 *) &d2
  h2 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset2
internal stacktop h1
  h1 += *(float64 *) &d1
  h1 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset1
internal stacktop h0
  h0 += *(float64 *) &d0
  h0 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_doffset0
  x0 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha130
  x0 += h3
  x0 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha130
  h3 -= x0
  x0 *= *(float64 *) &crypto_onetimeauth_poly1305_amd64_scale
  x1 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha32
  x1 += h0
  x1 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha32
  h0 -= x1
  x2 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha64
  x2 += h1
  x2 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha64
  h1 -= x2
  x3 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha96
  x3 += h2
  x3 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha96
  h2 -= x3
internal stacktop h0
  x0 += h0
internal stacktop h1
  x1 += h1
internal stacktop h2
  x2 += h2
internal stacktop h3
  x3 += h3
  h3 = *(float64 *) &r3
  h3 *= x0
  h2 = *(float64 *) &r2
  h2 *= x0
  h1 = *(float64 *) &r1
  h1 *= x0
  h0 = *(float64 *) &r0
  h0 *= x0
  r2x1 = *(float64 *) &r2
  r2x1 *= x1
  h3 += r2x1
  r1x1 = *(float64 *) &r1
  r1x1 *= x1
  h2 += r1x1
  r0x1 = *(float64 *) &r0
  r0x1 *= x1
  h1 += r0x1
  sr3x1 = *(float64 *) &sr3
  sr3x1 *= x1
internal stacktop sr3x1
  h0 += sr3x1
  r1x2 = *(float64 *) &r1
  r1x2 *= x2
  h3 += r1x2
  r0x2 = *(float64 *) &r0
  r0x2 *= x2
  h2 += r0x2
  sr3x2 = *(float64 *) &sr3
  sr3x2 *= x2
  h1 += sr3x2
  sr2x2 = *(float64 *) &sr2
  sr2x2 *= x2
internal stacktop sr2x2
  h0 += sr2x2
  r0x3 = *(float64 *) &r0
  r0x3 *= x3
  h3 += r0x3
  sr3x3 = *(float64 *) &sr3
  sr3x3 *= x3
  h2 += sr3x3
  sr2x3 = *(float64 *) &sr2
  sr2x3 *= x3
  h1 += sr2x3
  sr1x3 = *(float64 *) &sr1
  sr1x3 *= x3
internal stacktop sr1x3
  h0 += sr1x3
internal stacktop h2
internal stacktop h0
nomorebytes:
  x0 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha130
  x0 += h3
  x0 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha130
  h3 -= x0
  x0 *= *(float64 *) &crypto_onetimeauth_poly1305_amd64_scale
  x1 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha32
  x1 += h0
  x1 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha32
  h0 -= x1
  x2 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha64
  x2 += h1
  x2 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha64
  h1 -= x2
  x3 = *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha96
  x3 += h2
  x3 -= *(float64 *) &crypto_onetimeauth_poly1305_amd64_alpha96
  stacktop h2
  h2 -= x3
internal stacktop h0
  x0 += h0
internal stacktop h1
  x1 += h1
internal stacktop h2
  x2 += h2
internal stacktop h3
  x3 += h3
internal stacktop x0
  x0 += *(float64 *) &crypto_onetimeauth_poly1305_amd64_hoffset0
internal stacktop x1
  x1 += *(float64 *) &crypto_onetimeauth_poly1305_amd64_hoffset1
internal stacktop x2
  x2 += *(float64 *) &crypto_onetimeauth_poly1305_amd64_hoffset2
internal stacktop x3
  x3 += *(float64 *) &crypto_onetimeauth_poly1305_amd64_hoffset3
internal stacktop x0
  *(float64 *) &d0 = x0
  *(float64 *) &d1 = x1
  *(float64 *) &d2 = x2
  *(float64 *) &d3 = x3
int64 f0
int64 f1
int64 f2
int64 f3
int64 f4
int64 g0
int64 g1
int64 g2
int64 g3
int64 f
int64 notf
stack64 f1_stack
stack64 f2_stack
stack64 f3_stack
stack64 f4_stack
stack64 g0_stack
stack64 g1_stack
stack64 g2_stack
stack64 g3_stack
  g0 = top d0
  (uint32) g0 &= 63
  g1 = top d1
  (uint32) g1 &= 63
  g2 = top d2
  (uint32) g2 &= 63
  g3 = top d3
  (uint32) g3 &= 63
  f1 = bottom d1
  carry? (uint32) f1 += g0
  f1_stack = f1
  f2 = bottom d2
  carry? (uint32) f2 += g1 + carry
  f2_stack = f2
  f3 = bottom d3
  carry? (uint32) f3 += g2 + carry
  f3_stack = f3
  f4 = 0
  carry? (uint32) f4 += g3 + carry
  f4_stack = f4
  g0 = 5
  f0 = bottom d0
  carry? (uint32) g0 += f0
  g0_stack = g0
  g1 = 0
  f1 = f1_stack
  carry? (uint32) g1 += f1 + carry
  g1_stack = g1
  g2 = 0
  f2 = f2_stack
  carry? (uint32) g2 += f2 + carry
  g2_stack = g2
  g3 = 0
  f3 = f3_stack
  carry? (uint32) g3 += f3 + carry
  g3_stack = g3
  f = 0xfffffffc
  f4 = f4_stack
  carry? (uint32) f += f4 + carry
  (int32) f >>= 16
  notf = f
  (uint32) notf ^= 0xffffffff
  f0 &= f
  g0 = g0_stack
  g0 &= notf
  f0 |= g0
  f1 &= f
  g1 = g1_stack
  g1 &= notf
  f1 |= g1
  f2 &= f
  g2 = g2_stack
  g2 &= notf
  f2 |= g2
  f3 &= f
  g3 = g3_stack
  g3 &= notf
  f3 |= g3
  out = out_stack
  k = k_stack
  carry? (uint32) f0 += *(uint32 *) (k + 16)
  carry? (uint32) f1 += *(uint32 *) (k + 20) + carry
  carry? (uint32) f2 += *(uint32 *) (k + 24) + carry
  carry? (uint32) f3 += *(uint32 *) (k + 28) + carry
  *(uint32 *) (out + 0) = f0
  *(uint32 *) (out + 4) = f1
  *(uint32 *) (out + 8) = f2
  *(uint32 *) (out + 12) = f3
r11_caller = r11_stack
r12_caller = r12_stack
r13_caller = r13_stack
r14_caller = r14_stack
r15_caller = r15_stack
rbx_caller = rbx_stack
rbp_caller = rbp_stack
leave
