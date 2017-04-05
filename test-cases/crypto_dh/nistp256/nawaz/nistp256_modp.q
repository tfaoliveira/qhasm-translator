enter nistp256_modp
int64 r
int64 h
input r
input h
int64 constants
int64 constants_low
float64 scale32
float64 scale64
float64 scale160
float64 scale256
float64 x1
float64 x2
float64 x3
float64 x4
float64 x5
float64 x6
float64 x7
float64 x8
float64 alpha22
float64 alpha43
float64 alpha64
float64 alpha86
float64 alpha107
float64 alpha128
float64 alpha150
float64 alpha171
float64 alpha192
float64 alpha214
float64 alpha235
float64 alpha256
float64 alpha278
float64 alpha299
float64 alpha320
float64 alpha342
float64 alpha363
float64 alpha384
float64 alpha406
float64 alpha427
float64 alpha448
float64 alpha470
float64 alpha491
float64 h0
float64 h22
float64 h43
float64 h64
float64 h86
float64 h107
float64 h128
float64 h150
float64 h171
float64 h192
float64 h214
float64 h235
float64 h256
float64 h278
float64 h299
float64 h320
float64 h342
float64 h363
float64 h384
float64 h406
float64 h427
float64 h448
float64 h470
float64 closest22
float64 closest43
float64 closest64
float64 closest86
float64 closest107
float64 closest128
float64 closest150
float64 closest171
float64 closest192
float64 closest214
float64 closest235
float64 closest256
float64 closest278
float64 closest299
float64 closest320
float64 closest342
float64 closest363
float64 closest384
float64 closest406
float64 closest427
float64 closest448
float64 closest470
float64 closest491
constants = (nistp256_constants & 0xfffffc0000000000) >> 32
constants_low = nistp256_constants & 0xfffffc00
constants |= (nistp256_constants & 0x3ff00000000) >> 32
constants_low |= nistp256_constants & 0x3ff
constants <<= 32
constants |= constants_low
h470 = *(float64 *) (h + 176)
scale32 = *(float64 *)(constants + 144)
scale64 = *(float64 *)(constants + 152)
scale160 = *(float64 *)(constants + 160)
alpha491 = *(float64 *)(constants + 256)
				closest491 = h470 + alpha491
scale256 = *(float64 *)(constants + 168)
				closest491 -= alpha491
h448 = *(float64 *) (h + 168)
				x1 = closest491 * scale32
						h470 -= closest491
h427 = *(float64 *) (h + 160)
				x2 = closest491 * scale64
h320 = *(float64 *) (h + 120)
				x3 = closest491 * scale160
h235 = *(float64 *) (h + 88)
				x4 = closest491 * scale256
alpha470 = *(float64 *)(constants + 248)
				x5 = h470 * scale32
						h448 += x1
				x6 = h470 * scale64
						h427 -= x2
				x7 = h470 * scale160
						h320 -= x3
				x8 = h470 * scale256
						h235 += x4
h406 = *(float64 *) (h + 152)
				closest470 = h448 + alpha470
h299 = *(float64 *) (h + 112)
				closest470 -= alpha470
h214 = *(float64 *) (h + 80)
				h448 -= closest470
				x1 = closest470 * scale32
						h427 += x5
				x2 = closest470 * scale64
						h406 -= x6
				x3 = closest470 * scale160
						h299 -= x7
				x4 = closest470 * scale256
						h214 += x8
alpha448 = *(float64 *)(constants + 240)
				x5 = h448 * scale32
						h427 += x1
				x6 = h448 * scale64
						h406 -= x2
				x7 = h448 * scale160
						h299 -= x3
				x8 = h448 * scale256
						h214 += x4
h384 = *(float64 *) (h + 144)
				closest448 = h427 + alpha448
h278 = *(float64 *) (h + 104)
				closest448 -= alpha448
h192 = *(float64 *) (h + 72)
				h427 -= closest448
				x1 = closest448 * scale32
						h406 += x5
				x2 = closest448 * scale64
						h384 -= x6
				x3 = closest448 * scale160
						h278 -= x7
				x4 = closest448 * scale256
						h192 += x8
alpha427 = *(float64 *)(constants + 232)
				x5 = h427 * scale32
						h406 += x1
				x6 = h427 * scale64
						h384 -= x2
				x7 = h427 * scale160
						h278 -= x3
				x8 = h427 * scale256
						h192 += x4
h363 = *(float64 *) (h + 136)
				closest427 = h406 + alpha427
h256 = *(float64 *) (h + 96)
				closest427 -= alpha427
h171 = *(float64 *) (h + 64)
				h406 -= closest427
				x1 = closest427 * scale32
						h384 += x5
				x2 = closest427 * scale64
						h363 -= x6
				x3 = closest427 * scale160
						h256 -= x7
				x4 = closest427 * scale256
						h171 += x8
alpha406 = *(float64 *)(constants + 224)
				x5 = h406 * scale32
						h384 += x1
				x6 = h406 * scale64
						h363 -= x2
				x7 = h406 * scale160
						h256 -= x3
				x8 = h406 * scale256
						h171 += x4
h342 = *(float64 *) (h + 128)
				closest406 = h384 + alpha406
h150 = *(float64 *) (h + 56)
				closest406 -= alpha406
				h384 -= closest406
				x1 = closest406 * scale32
						h363 += x5
				x2 = closest406 * scale64
						h342 -= x6
				x3 = closest406 * scale160
						h235 -= x7
				x4 = closest406 * scale256
						h150 += x8
alpha384 = *(float64 *)(constants + 216)
				x5 = h384 * scale32
						h363 += x1
				x6 = h384 * scale64
						h342 -= x2
				x7 = h384 * scale160
						h235 -= x3
				x8 = h384 * scale256
						h150 += x4
				closest384 = h363 + alpha384
				closest384 -= alpha384
				h363 -= closest384
h128 = *(float64 *) (h + 48)
				x1 = closest384 * scale32
						h342 += x5
				x2= closest384 * scale64
						h320 -= x6
				x3 = closest384 * scale160
						h214 -= x7
				x4 = closest384 * scale256
						h128 += x8
alpha363 = *(float64 *)(constants + 208)
				x5 = h363 * scale32
						h342 += x1
				x6 = h363 * scale64
						h320 -= x2
				x7 = h363 * scale160
						h214 -= x3
				x8 = h363 * scale256
						h128 += x4
				closest363 = h342 + alpha363
				closest363 -= alpha363
				h342 -= closest363
h107 = *(float64 *) (h + 40)
				x1 = closest363 * scale32
						h320 += x5
				x2 = closest363 * scale64
						h299 -= x6
				x3 = closest363 * scale160
						h192 -= x7
				x4 = closest363 * scale256
						h107 += x8
alpha342 = *(float64 *)(constants + 200)
				x5 = h342 * scale32
						h320 += x1
				x6 = h342 * scale64
						h299 -= x2
				x7 = h342 * scale160
						h192 -= x3
				x8 = h342 * scale256
						h107 += x4
				closest342 = h320 + alpha342
				closest342 -= alpha342
				h320 -= closest342
h86 = *(float64 *) (h + 32)
				x1 = closest342 * scale32
						h299 += x5
				x2 = closest342 * scale64
						h278 -= x6
				x3 = closest342 * scale160
						h171 -= x7
				x4 = closest342 * scale256
						h86 += x8
alpha320 = *(float64 *)(constants + 192)
				x5 = h320 * scale32
						h299 += x1
				x6 = h320 * scale64
						h278 -= x2
				x7 = h320 * scale160
						h171 -= x3
				x8 = h320 * scale256
						h86 += x4
				closest320 = h299 + alpha320
				closest320 -= alpha320
h64 = *(float64 *) (h + 24)
				h299 -= closest320
				x1 = closest320 * scale32
						h278 += x5
				x2 = closest320 * scale64
						h256 -= x6
				x3 = closest320 * scale160
						h150 -= x7
				x4 = closest320 * scale256
						h64 += x8
alpha299 = *(float64 *)(constants + 184)
				x5 = h299 * scale32
						h278 += x1
				x6 = h299 * scale64
						h256 -= x2
				x7 = h299 * scale160
						h150 -= x3
				x8 = h299 * scale256
						h64 += x4
				closest299 = h278 + alpha299
				closest299 -= alpha299
h43 = *(float64 *) (h + 16)
				h278 -= closest299
				x1 = closest299 * scale32
						h256 += x5
				x2 = closest299 * scale64
						h235 -= x6
				x3 = closest299 * scale160
						h128 -= x7
				x4 = closest299 * scale256
						h43 += x8
alpha278 = *(float64 *)(constants + 176)
				x5 = h278 * scale32
						h256 += x1
				x6 = h278 * scale64
						h235 -= x2
				x7 = h278 * scale160
						h128 -= x3
				x8 = h278 * scale256
						h43 += x4
				closest278 = h256 + alpha278
				closest278 -= alpha278
h22 = *(float64 *) (h + 8)
				h256 -= closest278
				x1 = closest278 * scale32
						h235 += x5
				x2 = closest278 * scale64
						h214 -= x6
				x3 = closest278 * scale160
						h107 -= x7
				x4 = closest278 * scale256
						h22 += x8
				x5 = h256 * scale32
						h235 += x1
				x6 = h256 * scale64
						h214 -= x2
h0 = *(float64 *) (h + 0)
				x7 = h256 * scale160
						h107 -= x3
alpha22 = *(float64 *)(constants + 8)
				x8 = h256 * scale256
						h22 += x4
alpha43 = *(float64 *)(constants + 16)
						h192 -= x6
alpha64 = *(float64 *)(constants + 24)
						h86 -= x7
alpha86 = *(float64 *)(constants + 32)
						h214 += x5
						h0 += x8
closest22 = h0 + alpha22
closest22 -= alpha22
h0 -= closest22
h22 += closest22
closest43 = h22 + alpha43
closest43 -= alpha43
h22 -= closest43
h43 += closest43
closest64 = h43 + alpha64
closest64 -= alpha64
h43 -= closest64
h64 += closest64
alpha107 = *(float64 *)(constants + 40)
closest86 = h64 + alpha86
closest86 -= alpha86
h64 -= closest86
h86 += closest86
alpha128 = *(float64 *)(constants + 48)
closest107 = h86 + alpha107
closest107 -= alpha107
h86 -= closest107
h107 += closest107
alpha150 = *(float64 *)(constants + 56)
closest128 = h107 + alpha128
closest128 -= alpha128
h107 -= closest128
h128 += closest128
alpha171 = *(float64 *)(constants + 64)
closest150 = h128 + alpha150
closest150 -= alpha150
h128 -= closest150
h150 += closest150
alpha192 = *(float64 *)(constants + 72)
closest171 = h150 + alpha171
closest171 -= alpha171
h150 -= closest171
h171 += closest171
alpha214 = *(float64 *)(constants + 80)
closest192 = h171 + alpha192
closest192 -= alpha192
h171 -= closest192
h192 += closest192
alpha235 = *(float64 *)(constants + 88)
closest214 = h192 + alpha214
closest214 -= alpha214
h192 -= closest214
h214 += closest214
alpha256 = *(float64 *)(constants + 96)
closest235 = h214 + alpha235
closest235 -= alpha235
h214 -= closest235
h235 += closest235
closest256 = h235 + alpha256
closest256 -= alpha256
h235 -= closest256
alpha22 = *(float64 *)(constants + 8)
				x4 = closest256 * scale256
alpha107 = *(float64 *)(constants + 40)
				x3 = closest256 * scale160
alpha214 = *(float64 *)(constants + 80)
				x2 = closest256 * scale64
alpha235 = *(float64 *)(constants + 88)
				x1 = closest256 * scale32
                                                 h0 += x4
							*(float64 *) (r + 16) = h43
                                                 h86 -= x3
							*(float64 *) (r + 24) = h64
                                                 h192 -= x2
							*(float64 *) (r + 48) = h128
                                                 h214 += x1
							*(float64 *) (r + 56) = h150
closest22 = h0 + alpha22
							*(float64 *) (r + 64) = h171
closest107 = h86 + alpha107
closest214 = h192 + alpha214
closest22 -= alpha22
closest107 -= alpha107
closest214 -= alpha214
h0 -= closest22
h86 -= closest107
h192 -= closest214
h22 += closest22
h107 += closest107
							*(float64 *) (r + 0) = h0
h214 += closest214
							*(float64 *) (r + 32) = h86
closest235 = h214 + alpha235
							*(float64 *) (r + 72) = h192
closest235 -= alpha235
							*(float64 *) (r + 8) = h22
h214 -= closest235
							*(float64 *) (r + 40) = h107
h235 += closest235
						*(float64 *) (r + 80) = h214
						*(float64 *) (r + 88) = h235
leave
