vec128 retp
vec128 ainp
input retp
input ainp
vec128 zero
vec128 a0
vec128 a1
vec128 a2
vec128 a3
vec128 a4
vec128 a5
vec128 a6
vec128 a7
vec128 a8
vec128 a9
vec128 a10
vec128 a11
vec128 a12
vec128 a13
vec128 a14
vec128 a15
vec128 a16
vec128 a17
vec128 a18
vec128 a19
vec128 a03
vec128 a47
vec128 a811
vec128 a1215
vec128 a1619
vec128 a2023
vec128 a2427
vec128 a2831
vec128 a3235
vec128 a3638
vec128 a03s11
vec128 a47s11
vec128 a811s11
vec128 a1215s11
vec128 a1619s11
vec128 a03s12
vec128 a47s12
vec128 a811s12
vec128 a1215s12
vec128 a1619s12
vec128 a03s13
vec128 a47s13
vec128 a811s13
vec128 a1215s13
vec128 a1619s13
vec128 a03s20
vec128 a47s20
vec128 a811s20
vec128 a1215s20
vec128 a1619s20
vec128 a03s21
vec128 a47s21
vec128 a811s21
vec128 a1215s21
vec128 a1619s21
vec128 a03s22
vec128 a47s22
vec128 a811s22
vec128 a1215s22
vec128 a1619s22
vec128 a03s23
vec128 a47s23
vec128 a811s23
vec128 a1215s23
vec128 a1619s23
vec128 r03
vec128 r14
vec128 r25
vec128 r36
vec128 r47
vec128 r58
vec128 r69
vec128 r710
vec128 r811
vec128 r912
vec128 r1013
vec128 r1114
vec128 r1215
vec128 r1316
vec128 r1417
vec128 r1518
vec128 r1619
vec128 r1720
vec128 r1821
vec128 r1922
vec128 r2023
vec128 r2124
vec128 r2225
vec128 r2326
vec128 r2427
vec128 r2528
vec128 r2629
vec128 r2730
vec128 r2831
vec128 r2932
vec128 r3033
vec128 r3134
vec128 r3235
vec128 r3336
vec128 r3437
vec128 r3538
vec128 r3639
vec128 tmp0
vec128 tmp1
vec128 tmp10
vec128 tmp11
vec128 tmp12
vec128 tmp13
vec128 tmp14
vec128 tmp15
vec128 tmp16
vec128 tmp17
vec128 tmp18
vec128 tmp19
vec128 tmp20
vec128 tmp21
vec128 tmp22
vec128 tmp23
vec128 tmp24
vec128 tmp25
vec128 tmp26
vec128 tmp27
vec128 tmp28
vec128 tmp29
vec128 tmp30
vec128 tmp31
vec128 tmp32
vec128 tmp33
vec128 tmp34
vec128 tmp35
vec128 tmp36
vec128 tmp37
vec128 tmp38
vec128 tmp39
vec128 carry
vec128 carry0
vec128 carry1
vec128 carry2
vec128 carry3
vec128 carry4
vec128 red
vec128 red0
vec128 red1
vec128 red2
vec128 red3
vec128 red4
vec128 sel0
vec128 sel1
vec128 sel2
vec128 sel3
vec128 sel4
vec128 sel5
vec128 sel6
vec128 sel7
vec128 selL
vec128 selH
vec128 sel01
vec128 sel12
vec128 sel23
vec128 sel30
vec128 comb13
vec128 comb22
vec128 comb31
vec128 redcoeffmask
vec128 redcoeffmaskend
vec128 redcoeffmaskveryend
vec128 vec19
vec128 shlw0001
vec128 shlw0011
vec128 shlw0111
vec128 shlw1111
vec128 shlw1112
vec128 shlw1122
vec128 shlw1222
vec128 call0
vec128 call1
vec128 call2
vec128 call3
vec128 call4
vec128 call5
vec128 call6
vec128 call7
vec128 call8
vec128 call9
vec128 call10
vec128 call11
vec128 call12
vec128 call13
vec128 call14
vec128 call15
vec128 call16
vec128 call17
vec128 call18
vec128 call19
vec128 call20
vec128 call21
vec128 call22
vec128 call23
vec128 call24
vec128 call25
vec128 call26
vec128 call27
vec128 call28
vec128 call29
vec128 call30
vec128 call31
vec128 call32
vec128 call33
vec128 call34
vec128 call35
vec128 call36
vec128 call37
vec128 call38
vec128 call39
vec128 call40
vec128 call41
vec128 call42
vec128 call43
vec128 call44
vec128 call45
vec128 call46
vec128 call47
caller call0
caller call1
caller call2
caller call3
caller call4
caller call5
caller call6
caller call7
caller call8
caller call9
caller call10
caller call11
caller call12
caller call13
caller call14
caller call15
caller call16
caller call17
caller call18
caller call19
caller call20
caller call21
caller call22
caller call23
caller call24
caller call25
caller call26
caller call27
caller call28
caller call29
caller call30
caller call31
caller call32
caller call33
caller call34
caller call35
caller call36
caller call37
caller call38
caller call39
caller call40
caller call41
caller call42
caller call43
caller call44
caller call45
caller call46
caller call47
stack128 call0_stack
stack128 call1_stack
stack128 call2_stack
stack128 call3_stack
stack128 call4_stack
stack128 call5_stack
stack128 call6_stack
stack128 call7_stack
stack128 call8_stack
stack128 call9_stack
enter square
a03 = *(vec128 *) ((ainp + 0) & ~15)
int32323232 zero = 0
shlw0001 = extern(_shlw0001)
nop
shlw0011 = extern(_shlw0011)
shlw0111 = extern(_shlw0111)
a47 = *(vec128 *) ((ainp + 16) & ~15)
a811 = *(vec128 *) ((ainp + 32) & ~15)
a1215 = *(vec128 *) ((ainp + 48) & ~15)
int32323232 a03s11 = a03 << shlw0001
a1619 = *(vec128 *) ((ainp + 64) & ~15)
int32323232 a03s12 = a03 << shlw0011
shlw1111 = extern(_shlw1111)
int32323232 a03s13 = a03 << shlw0111
shlw1112 = extern(_shlw1112)
int32323232 a47s11 = a47 << shlw0001
shlw1122 = extern(_shlw1122)
int32323232 a47s12 = a47 << shlw0011
shlw1222 = extern(_shlw1222)
int32323232 a47s13 = a47 << shlw0111
sel1 = extern(select1)
int32323232 a811s11 = a811 << shlw0001
sel3 = extern(select3)
int32323232 a811s12 = a811 << shlw0011
sel5 = extern(select5)
int32323232 a811s13 = a811 << shlw0111
sel7 = extern(select7)
int32323232 a1215s11 = a1215 << shlw0001
sel01 = extern(select01)
int32323232 a1215s12 = a1215 << shlw0011
sel12 = extern(select12)
int32323232 a1215s13 = a1215 << shlw0111
sel23 = extern(select23)
int32323232 a1619s11 = a1619 << shlw0001
sel30 = extern(select30)
int32323232 a1619s12 = a1619 << shlw0011
redcoeffmask = extern(redCoeffMask)
int32323232 a1619s13 = a1619 << shlw0111
a1 = select bytes from a03 by sel3
int32323232 a03s20 = a03 << shlw1111
redcoeffmaskend = extern(redCoeffMaskEnd)
int32323232 a03s21 = a03 << shlw1112
redcoeffmaskveryend = extern(redCoeffMaskVeryEnd)
int32323232 a03s22 = a03 << shlw1122
call0_stack = call0
int32323232 a03s23 = a03 << shlw1222
call1_stack = call1
int32323232 a47s20 = a47 << shlw1111
call2_stack = call2
int32323232 a47s21 = a47 << shlw1112
a0 = select bytes from a03 by sel1
int32323232 a47s22 = a47 << shlw1122
a2 = select bytes from a03 by sel5
int32323232 a47s23 = a47 << shlw1222
a3 = select bytes from a03 by sel7
int32323232 a811s20 = a811 << shlw1111
a4 = select bytes from a47 by sel1
int32323232 a811s21 = a811 << shlw1112
a5 = select bytes from a47 by sel3
int32323232 a811s22 = a811 << shlw1122
a6 = select bytes from a47 by sel5
int32323232 a811s23 = a811 << shlw1222
a7 = select bytes from a47 by sel7
int32323232 a1215s20 = a1215 << shlw1111
a8 = select bytes from a811 by sel1
int32323232 a1215s21 = a1215 << shlw1112
a9 = select bytes from a811 by sel3
int32323232 a1215s22 = a1215 << shlw1122
a10 = select bytes from a811 by sel5
int32323232 a1215s23 = a1215 << shlw1222
a11 = select bytes from a811 by sel7
int32323232 a1619s20 = a1619 << shlw1111
a12 = select bytes from a1215 by sel1
int32323232 a1619s21 = a1619 << shlw1112
a13 = select bytes from a1215 by sel3
int32323232 a1619s22 = a1619 << shlw1122
a14 = select bytes from a1215 by sel5
int32323232 a1619s23 = a1619 << shlw1222
a15 = select bytes from a1215 by sel7
int32323232 r03    = (a0  & 0xffff) * (a03   & 0xffff)
a16 = select bytes from a1619 by sel1
int32323232 r47    = (a0  & 0xffff) * (a47s20   & 0xffff)
a17 = select bytes from a1619 by sel3
int32323232 r811   = (a0  & 0xffff) * (a811s20  & 0xffff)
a18 = select bytes from a1619 by sel5
int32323232 r1215  = (a0  & 0xffff) * (a1215s20 & 0xffff)
a19 = select bytes from a1619 by sel7
int32323232 r1619  = (a0  & 0xffff) * (a1619s20 & 0xffff)
comb13 = extern(combine13)
int32323232 r14    = (a1  & 0xffff) * (a03s11   & 0xffff)
comb22 = extern(combine22)
int32323232 r58    = (a1  & 0xffff) * (a47s21   & 0xffff)
comb31 = extern(combine31)
int32323232 r912   = (a1  & 0xffff) * (a811s21  & 0xffff)
comb31 = extern(combine31)
int32323232 r1316  = (a1  & 0xffff) * (a1215s21 & 0xffff)
vec19 = extern(_vec19)
int32323232 r1720  = (a1  & 0xffff) * (a1619s21 & 0xffff)
call3_stack = call3
int32323232 r25    = (a2  & 0xffff) * (a03s12   & 0xffff)
int32323232 r69    = (a2  & 0xffff) * (a47s22   & 0xffff)
int32323232 r1013  = (a2  & 0xffff) * (a811s22  & 0xffff)
int32323232 r1417  = (a2  & 0xffff) * (a1215s22 & 0xffff)
int32323232 r1821  = (a2  & 0xffff) * (a1619s22 & 0xffff)
int32323232 r36    = (a3  & 0xffff) * (a03s13   & 0xffff)
int32323232 r710   = (a3  & 0xffff) * (a47s23   & 0xffff)
int32323232 r1114  = (a3  & 0xffff) * (a811s23  & 0xffff)
int32323232 r1518  = (a3  & 0xffff) * (a1215s23 & 0xffff)
int32323232 r1922  = (a3  & 0xffff) * (a1619s23 & 0xffff)
int32323232 r811  += (a4  & 0xffff) * (a47   & 0xffff)
int32323232 r1215 += (a4  & 0xffff) * (a811s20  & 0xffff)
int32323232 r1619 += (a4  & 0xffff) * (a1215s20 & 0xffff)
int32323232 r2023  = (a4  & 0xffff) * (a1619s20 & 0xffff)
int32323232 r912  += (a5  & 0xffff) * (a47s11   & 0xffff)
int32323232 r1316 += (a5  & 0xffff) * (a811s21  & 0xffff)
int32323232 r1720 += (a5  & 0xffff) * (a1215s21 & 0xffff)
int32323232 r2124  = (a5  & 0xffff) * (a1619s21 & 0xffff)
int32323232 r1013 += (a6  & 0xffff) * (a47s12   & 0xffff)
int32323232 r1417 += (a6  & 0xffff) * (a811s22  & 0xffff)
int32323232 r1821 += (a6  & 0xffff) * (a1215s22 & 0xffff)
int32323232 r2225  = (a6  & 0xffff) * (a1619s22 & 0xffff)
int32323232 r1114 += (a7  & 0xffff) * (a47s13   & 0xffff)
int32323232 r1518 += (a7  & 0xffff) * (a811s23  & 0xffff)
int32323232 r1922 += (a7  & 0xffff) * (a1215s23 & 0xffff)
int32323232 r2326  = (a7  & 0xffff) * (a1619s23 & 0xffff)
int32323232 r1619 += (a8  & 0xffff) * (a811  & 0xffff)
int32323232 r2023 += (a8  & 0xffff) * (a1215s20 & 0xffff)
int32323232 r2427  = (a8  & 0xffff) * (a1619s20 & 0xffff)
int32323232 r1720 += (a9  & 0xffff) * (a811s11  & 0xffff)
int32323232 r2124 += (a9  & 0xffff) * (a1215s21 & 0xffff)
int32323232 r2528  = (a9  & 0xffff) * (a1619s21 & 0xffff)
int32323232 r1821 += (a10 & 0xffff) * (a811s12  & 0xffff)
tmp10 = combine zero  and r14   by comb13
int32323232 r2225 += (a10 & 0xffff) * (a1215s22 & 0xffff)
tmp20 = combine zero  and r25   by comb22
int32323232 r2629  = (a10 & 0xffff) * (a1619s22 & 0xffff)
tmp30 = combine zero  and r36   by comb31
int32323232 r1922 += (a11 & 0xffff) * (a811s13  & 0xffff)
tmp11 = combine r14   and r58   by comb13
int32323232 r2326 += (a11 & 0xffff) * (a1215s23 & 0xffff)
tmp21 = combine r25   and r69   by comb22
int32323232 r2730  = (a11 & 0xffff) * (a1619s23 & 0xffff)
tmp31 = combine r36   and r710  by comb31
int32323232 r2427 += (a12 & 0xffff) * (a1215 & 0xffff)
tmp12 = combine r58   and r912  by comb13
int32323232 r2831  = (a12 & 0xffff) * (a1619s20 & 0xffff)
tmp22 = combine r69   and r1013 by comb22
int32323232 r2528 += (a13 & 0xffff) * (a1215s11 & 0xffff)
tmp32 = combine r710  and r1114 by comb31
int32323232 r2932  = (a13 & 0xffff) * (a1619s21 & 0xffff)
tmp13 = combine r912  and r1316 by comb13
int32323232 r2629 += (a14 & 0xffff) * (a1215s12 & 0xffff)
tmp23 = combine r1013 and r1417 by comb22
int32323232 r3033  = (a14 & 0xffff) * (a1619s22 & 0xffff)
tmp33 = combine r1114 and r1518 by comb31
int32323232 r2730 += (a15 & 0xffff) * (a1215s13 & 0xffff)
tmp14 = combine r1316 and r1720 by comb13
int32323232 r3134  = (a15 & 0xffff) * (a1619s23 & 0xffff)
tmp24 = combine r1417 and r1821 by comb22
int32323232 r3235  = (a16 & 0xffff) * (a1619 & 0xffff)
tmp34 = combine r1518 and r1922 by comb31
int32323232 r3336  = (a17 & 0xffff) * (a1619s11 & 0xffff)
tmp15 = combine r1720 and r2124 by comb13
int32323232 r3437  = (a18 & 0xffff) * (a1619s12 & 0xffff)
tmp25 = combine r1821 and r2225 by comb22
int32323232 r3538  = (a19 & 0xffff) * (a1619s13 & 0xffff)
tmp35 = combine r1922 and r2326 by comb31
int32323232 r03   += tmp10
tmp16 = combine r2124 and r2528 by comb13
int32323232 r47   += tmp11
tmp17 = combine r2528 and r2932 by comb13
int32323232 r03   += tmp20
tmp26 = combine r2225 and r2629 by comb22
int32323232 r47   += tmp21
tmp27 = combine r2629 and r3033 by comb22
int32323232 r03   += tmp30
tmp36 = combine r2326 and r2730 by comb31
int32323232 r47   += tmp31
tmp37 = combine r2730 and r3134 by comb31
int32323232 r811  += tmp12
tmp18 = combine r2932 and r3336 by comb13
int32323232 r1215 += tmp13
r3639 = combine r3336 and zero  by comb13
int32323232 r811  += tmp22
tmp28 = combine r3033 and r3437 by comb22
int32323232 r1215 += tmp23
tmp29 = combine r3437 and zero  by comb22
int32323232 r811  += tmp32
tmp38 = combine r3134 and r3538 by comb31
int32323232 r1215 += tmp33
tmp39 = combine r3538 and zero  by comb31
int32323232 r1619 += tmp14
int32323232 r2023 += tmp15
int32323232 r1619 += tmp24
int32323232 r2023 += tmp25
int32323232 r1619 += tmp34
int32323232 r2023 += tmp35
int32323232 r2427 += tmp16
int32323232 r2831 += tmp17
int32323232 r2427 += tmp26
int32323232 r2831 += tmp27
int32323232 r2427 += tmp36
int32323232 r2831 += tmp37
int32323232 r3235 += tmp18
int32323232 r3639 += tmp29
int32323232 r3235 += tmp28
int32323232 r3639 += tmp39
int32323232 r3235 += tmp38
carry0 = select bytes from r2023 by sel01
carry1 = select bytes from r2427 by sel01
carry2 = select bytes from r2831 by sel01
carry3 = select bytes from r3235 by sel01
uint32323232 carry0 >>= 13
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
int32323232 r2023 += carry0
int32323232 r2427 += carry1
int32323232 r2831 += carry2
int32323232 r3235 += carry3
carry0 = select bytes from r2023 by sel12
carry1 = select bytes from r2427 by sel12
carry2 = select bytes from r2831 by sel12
carry3 = select bytes from r3235 by sel12
uint32323232 carry0 >>= 13
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
int32323232 r2023 += carry0
int32323232 r2427 += carry1
int32323232 r2831 += carry2
int32323232 r3235 += carry3
carry0 = select bytes from r2023 by sel23
carry1 = select bytes from r2427 by sel23
carry2 = select bytes from r2831 by sel23
carry3 = select bytes from r3235 by sel23
uint32323232 carry0 >>= 13
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
int32323232 r2023 += carry0
int32323232 r2427 += carry1
int32323232 r2831 += carry2
int32323232 r3235 += carry3
carry0 = select bytes from r2023 by sel30
carry1 = select bytes from r2427 by sel30
carry2 = select bytes from r2831 by sel30
carry3 = select bytes from r3235 by sel30
uint32323232 carry0 >>= 12
uint32323232 carry1 >>= 12
uint32323232 carry2 >>= 12
uint32323232 carry3 >>= 12
r2023 &= redcoeffmask
r2427 &= redcoeffmask
r2831 &= redcoeffmask
r3235 &= redcoeffmask
int32323232 r2427 += carry0
int32323232 r2831 += carry1
int32323232 r3235 += carry2
int32323232 r3639 += carry3
carry1 = select bytes from r2427 by sel01
carry2 = select bytes from r2831 by sel01
carry3 = select bytes from r3235 by sel01
carry4 = select bytes from r3639 by sel01
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
uint32323232 carry4 >>= 13
int32323232 r2427 += carry1
int32323232 r2831 += carry2
int32323232 r3235 += carry3
int32323232 r3639 += carry4
carry1 = select bytes from r2427 by sel12
carry2 = select bytes from r2831 by sel12
carry3 = select bytes from r3235 by sel12
carry4 = select bytes from r3639 by sel12
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
uint32323232 carry4 >>= 13
int32323232 r2427 += carry1
int32323232 r2831 += carry2
int32323232 r3235 += carry3
int32323232 r3639 += carry4
carry1 = select bytes from r2427 by sel23
carry2 = select bytes from r2831 by sel23
carry3 = select bytes from r3235 by sel23
carry4 = select bytes from r3639 by sel23
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
uint32323232 carry4 >>= 13
int32323232 r2427 += carry1
int32323232 r2831 += carry2
int32323232 r3235 += carry3
int32323232 r3639 += carry4
carry1 = select bytes from r2427 by sel30
carry2 = select bytes from r2831 by sel30
carry3 = select bytes from r3235 by sel30
uint32323232 carry1 >>= 12
uint32323232 carry2 >>= 12
uint32323232 carry3 >>= 12
r2427 &= redcoeffmask
r2831 &= redcoeffmask
r3235 &= redcoeffmask
r3639 &= redcoeffmaskend
int32323232 r2831 += carry1
int32323232 r3235 += carry2
int32323232 r3639 += carry3
int32323232 r03   += (r2023 & 0xffff) * (vec19 & 0xffff)
int32323232 r1619 += (r3639 & 0xffff) * (vec19 & 0xffff)
int32323232 r47   += (r2427 & 0xffff) * (vec19 & 0xffff)
int32323232 r811  += (r2831 & 0xffff) * (vec19 & 0xffff)
int32323232 r1215 += (r3235 & 0xffff) * (vec19 & 0xffff)
lnop
carry = select bytes from r1619 by sel01
uint32323232 carry >>= 13
int32323232 r1619 += carry
carry = select bytes from r1619 by sel12
uint32323232 carry >>= 13
int32323232 r1619 += carry
carry = select bytes from r1619 by sel23
uint32323232 carry >>= 13
int32323232 r1619 += carry
carry = select bytes from r1619 by sel30
uint32323232 carry >>= 12
int32323232 red = carry << 4
int32323232 red = red + carry 
int32323232 red = red + carry 
int32323232 red = red + carry 
int32323232 r03 += red
r1619 &= redcoeffmask
carry0 = select bytes from r03 by sel01
carry1 = select bytes from r47 by sel01
carry2 = select bytes from r811 by sel01
carry3 = select bytes from r1215 by sel01
uint32323232 carry0 >>= 13
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
int32323232 r03 += carry0
int32323232 r47 += carry1
int32323232 r811 += carry2
int32323232 r1215 += carry3
carry0 = select bytes from r03 by sel12
carry1 = select bytes from r47 by sel12
carry2 = select bytes from r811 by sel12
carry3 = select bytes from r1215 by sel12
uint32323232 carry0 >>= 13
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
int32323232 r03 += carry0
int32323232 r47 += carry1
int32323232 r811 += carry2
int32323232 r1215 += carry3
carry0 = select bytes from r03 by sel23
carry1 = select bytes from r47 by sel23
carry2 = select bytes from r811 by sel23
carry3 = select bytes from r1215 by sel23
uint32323232 carry0 >>= 13
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
int32323232 r03 += carry0
int32323232 r47 += carry1
int32323232 r811 += carry2
int32323232 r1215 += carry3
carry0 = select bytes from r03 by sel30
carry1 = select bytes from r47 by sel30
carry2 = select bytes from r811 by sel30
carry3 = select bytes from r1215 by sel30
uint32323232 carry0 >>= 12
uint32323232 carry1 >>= 12
uint32323232 carry2 >>= 12
uint32323232 carry3 >>= 12
r03 &= redcoeffmask
r47 &= redcoeffmask
r811 &= redcoeffmask
r1215 &= redcoeffmask
int32323232 r47 += carry0
int32323232 r811 += carry1
int32323232 r1215 += carry2
int32323232 r1619 += carry3
carry1 = select bytes from r47 by sel01
carry2 = select bytes from r811 by sel01
carry3 = select bytes from r1215 by sel01
carry4 = select bytes from r1619 by sel01
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
uint32323232 carry4 >>= 13
int32323232 r47 += carry1
int32323232 r811 += carry2
int32323232 r1215 += carry3
int32323232 r1619 += carry4
carry1 = select bytes from r47 by sel12
carry2 = select bytes from r811 by sel12
carry3 = select bytes from r1215 by sel12
carry4 = select bytes from r1619 by sel12
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
uint32323232 carry4 >>= 13
int32323232 r47 += carry1
int32323232 r811 += carry2
int32323232 r1215 += carry3
int32323232 r1619 += carry4
carry1 = select bytes from r47 by sel23
carry2 = select bytes from r811 by sel23
carry3 = select bytes from r1215 by sel23
carry4 = select bytes from r1619 by sel23
uint32323232 carry1 >>= 13
uint32323232 carry2 >>= 13
uint32323232 carry3 >>= 13
uint32323232 carry4 >>= 13
int32323232 r47 += carry1
int32323232 r811 += carry2
int32323232 r1215 += carry3
int32323232 r1619 += carry4
r47 &= redcoeffmaskveryend
r811 &= redcoeffmaskveryend
r1215 &= redcoeffmaskveryend
r1619 &= redcoeffmaskveryend
*(vec128 *) ((retp + 0) & ~15) = r03
*(vec128 *) ((retp + 16) & ~15) = r47
*(vec128 *) ((retp + 32) & ~15) = r811
*(vec128 *) ((retp + 48) & ~15) = r1215
*(vec128 *) ((retp + 64) & ~15) = r1619
call0 = call0_stack
call1 = call1_stack
call2 = call2_stack
call3 = call3_stack
leave
