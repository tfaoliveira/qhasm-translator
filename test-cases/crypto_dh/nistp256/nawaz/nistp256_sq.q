enter nistp256_sq
int64 h
int64 f
input h
input f
int64 constants
int64 constants_low
float64 two
float64 f0
float64 f22
float64 f43
float64 f64
float64 f86
float64 f107
float64 f128
float64 f150
float64 f171
float64 f192
float64 f214
float64 f235
float64 2f0
float64 2f22
float64 2f43
float64 2f64
float64 2f86
float64 2f107
float64 2f128
float64 2f150
float64 2f171
float64 2f192
float64 2f214
float64 r
float64 s
float64 t
float64 u
float64 v
float64 w
float64 x
float64 y
float64 z
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
constants = (nistp256_constants & 0xfffffc0000000000) >> 32
constants_low = nistp256_constants & 0xfffffc00
constants |= (nistp256_constants & 0x3ff00000000) >> 32
constants_low |= nistp256_constants & 0x3ff
constants <<= 32
constants |= constants_low
two = *(float64 *) (constants + 0)
f0 = *(float64 *) (f + 0)
f22 = *(float64 *) (f + 8)
f43 = *(float64 *) (f + 16)
					h0 = f0 * f0
								*(float64 *) (h + 0) = h0
f64 = *(float64 *) (f + 24)
					2f0 = two * f0
f86 = *(float64 *) (f + 32)
					2f22 = two * f22
f107 = *(float64 *) (f + 40)
					2f43 = two * f43
f128 = *(float64 *) (f + 48)
					2f64 = two * f64
f150 = *(float64 *) (f + 56)
					h22 = 2f0 * f22
								*(float64 *) (h + 8) = h22
f171 = *(float64 *) (f + 64)
					h43 = 2f0 * f43
f192 = *(float64 *) (f + 72)
					x = f22 * f22
f214 = *(float64 *) (f + 80)
					h64 = 2f0 * f64
f235 = *(float64 *) (f + 88)
					y = 2f22 * f43
					2f86 = two * f86
					2f107 = two * f107
						h43 += x
					2f128 = two * f128
					2f150 = two * f150
						h64 += y
					2f171 = two * f171
								*(float64 *) (h + 16) = h43
					h86 = 2f0 * f86
					x = 2f22 * f64
					y = f43 * f43
								*(float64 *) (h + 24) = h64
					2f192 = two * f192
					2f214 = two * f214
						h86 += x
					h107 = 2f0 * f107
					z = 2f22 * f86
					w = 2f43 * f64
						h86 += y
					h128 = 2f0 * f128
								*(float64 *) (h + 32) = h86
					x = 2f22 * f107
					y = 2f43 * f86
						h107 += z
					v = f64 * f64
					h150 = 2f0 * f150
						h128 += x
					u = 2f22 * f128
					z = 2f43 * f107
						h107 += w
					t = 2f64 * f86
						y += v
					h171 = 2f0 * f171
					x = 2f22 * f150
						h150 += u
					s = 2f43 * f128
								*(float64 *) (h + 40) = h107
					v = 2f64 * f107
						h128 += y
					w = f86 * f86
						z += t
					h192 = 2f0 * f192
						h171 += x
					u = 2f22 * f171
					y = 2f43 * f150
						s += v
								*(float64 *) (h + 48) = h128
					t = 2f64 * f128
						h150 += z
					x = 2f86 * f107
						h171 += w
					h214 = 2f0 * f214
						h192 += u
					v = 2f22 * f192
					z = 2f43 * f171
						y += t
								*(float64 *) (h + 56) = h150
					w = 2f64 * f150
						h171 += s
					u = 2f86 * f128
						h192 += x
					r = f107 * f107
						h214 += v
					h235 = 2f0 * f235
					t = 2f22 * f214
						z += w
								*(float64 *) (h + 64) = h171
					s = 2f43 * f192
						h192 += y
					x = 2f64 * f171
						u += r
					v = 2f86 * f150
					w = 2f107 * f128
						h214 += z
					h256 = 2f22 * f235
						h235 += t
								*(float64 *) (h + 72) = h192
					r = 2f43 * f214
						s += x
					y = 2f64 * f192
					z = 2f86 * f171
						h214 += u
					t = 2f107 * f150
						v += w
					x = f128 * f128
						h235 += s
					h278 = 2f43 * f235
						h256 += r
					u = 2f64 * f214
						y += z
								*(float64 *) (h + 80) = h214
					w = 2f86 * f192
					s = 2f107 * f171
						h235 += v
					r = 2f128 * f150
						t += x
					h299 = 2f64 * f235
						h256 += y
					z = 2f86 * f214
						h278 += u
					v = 2f107 * f192
						w += s
								*(float64 *) (h + 88) = h235
					x = 2f128 * f171
					y = f150 * f150
						h256 += t
					h320 = 2f86 * f235
						h278 += r
					u = 2f107 * f214
						h299 += z
					s = 2f128 * f192
						v += x
					t = 2f150 * f171
								*(float64 *) (h + 96) = h256
					h342 = 2f107 * f235
						h278 += w
					r = 2f128 * f214
						h299 += y
					z = 2f150 * f192
						h320 += u
					x = f171 * f171
						s += t
					h363 = 2f128 * f235
								*(float64 *) (h + 104) = h278
					w = 2f150 * f214
						h299 += v
					y = 2f171 * f192
						h342 += r
					h384 = 2f150 * f235
						h320 += s
					u = 2f171 * f214
						z += x
					t = f192 * f192
						h363 += w
								*(float64 *) (h + 112) = h299
					h406 = 2f171 * f235
					s = 2f192 * f214
								*(float64 *) (h + 120) = h320
					h427 = 2f192 * f235
						h342 += z
					x = f214 * f214
						h363 += y
					h448 = 2f214 * f235
						h384 += u
					h470 = f235 * f235
						h406 += s
								*(float64 *) (h + 128) = h342
						h384 += t
								*(float64 *) (h + 136) = h363
						h427 += x
								*(float64 *) (h + 168) = h448
								*(float64 *) (h + 152) = h406
								*(float64 *) (h + 144) = h384
								*(float64 *) (h + 160) = h427
								*(float64 *) (h + 176) = h470
leave
