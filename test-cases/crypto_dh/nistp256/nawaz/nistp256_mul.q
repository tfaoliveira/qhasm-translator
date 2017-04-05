enter nistp256_mul
int64 h
int64 f
int64 g
input h
input f
input g
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
float64 g0
float64 g22
float64 g43
float64 g64
float64 g86
float64 g107
float64 g128
float64 g150
float64 g171
float64 g192
float64 g214
float64 g235
float64 f22g0
float64 f22g22
float64 f43g0
float64 f22g43
float64 f43g22
float64 f64g0
float64 f22g64
float64 f43g43
float64 f64g22
float64 f86g0
float64 f22g86
float64 f43g64
float64 f64g43
float64 f86g22
float64 f107g0
float64 f22g107
float64 f43g86
float64 f64g64
float64 f86g43
float64 f107g22
float64 f128g0
float64 f22g128
float64 f43g107
float64 f64g86
float64 f86g64
float64 f107g43
float64 f128g22
float64 f150g0
float64 f22g150
float64 f43g128
float64 f64g107
float64 f86g86
float64 f107g64
float64 f128g43
float64 f150g22
float64 f171g0
float64 f22g171
float64 f43g150
float64 f64g128
float64 f86g107
float64 f107g86
float64 f128g64
float64 f150g43
float64 f171g22
float64 f192g0
float64 f22g192
float64 f43g171
float64 f64g150
float64 f86g128
float64 f107g107
float64 f128g86
float64 f150g64
float64 f171g43
float64 f192g22
float64 f214g0
float64 f22g214
float64 f43g192
float64 f64g171
float64 f86g150
float64 f107g128
float64 f128g107
float64 f150g86
float64 f171g64
float64 f192g43
float64 f214g22
float64 f235g0
float64 f43g214
float64 f64g192
float64 f86g171
float64 f107g150
float64 f128g128
float64 f150g107
float64 f171g86
float64 f192g64
float64 f214g43
float64 f235g22
float64 f64g214
float64 f86g192
float64 f107g171
float64 f128g150
float64 f150g128
float64 f171g107
float64 f192g86
float64 f214g64
float64 f235g43
float64 f86g214
float64 f107g192
float64 f128g171
float64 f150g150
float64 f171g128
float64 f192g107
float64 f214g86
float64 f235g64
float64 f107g214
float64 f128g192
float64 f150g171
float64 f171g150
float64 f192g128
float64 f214g107
float64 f235g86
float64 f128g214
float64 f150g192
float64 f171g171
float64 f192g150
float64 f214g128
float64 f235g107
float64 f150g214
float64 f171g192
float64 f192g171
float64 f214g150
float64 f235g128
float64 f171g214
float64 f192g192
float64 f214g171
float64 f235g150
float64 f192g214
float64 f214g192
float64 f235g171
float64 f214g214
float64 f235g192
float64 f235g214
float64 i1
float64 i2
float64 i3
float64 i4
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
f0 = *(float64 *) (f + 0)
g0 = *(float64 *) (g + 0)
f22 = *(float64 *) (f + 8)
g22 = *(float64 *) (g + 8)
				h0 = f0 * g0
f43 = *(float64 *) (f + 16)
				h22 = f0 * g22
g43 = *(float64 *) (g + 16)
				f22g0 = f22 * g0
f64 = *(float64 *) (f + 24)
				h43 = f0 * g43
g64 = *(float64 *) (g + 24)
				f22g22 = f22 * g22
f86 = *(float64 *) (f + 32)
				f43g0 = f43 * g0
							*(float64 *) (h + 0) = h0
g86 = *(float64 *) (g + 32)
				h64 = f0 * g64
					h22 += f22g0
				f22g43 = f22 * g43
				f43g22 = f43 * g22
					h43 += f22g22
				f64g0 = f64 * g0
f107 = *(float64 *) (f + 40)
				h86 = f0 * g86
							*(float64 *) (h + 8) = h22
g107 = *(float64 *) (g + 40)
				f22g64 = f22 * g64
					h64 += f22g43
				f43g43 = f43 * g43
					h43 += f43g0
				f64g22 = f64 * g22
					i1 = f43g22 + f64g0
				f86g0 = f86 * g0
				h107 = f0 * g107
					h86 += f22g64
f128 = *(float64 *) (f + 48)
				f22g86 = f22 * g86
							*(float64 *) (h + 16) = h43
g128 = *(float64 *) (g + 48)
				f43g64 = f43 * g64
					h64 += i1
				f64g43 = f64 * g43
					i2 = f43g43 + f64g22
				f86g22 = f86 * g22
					h86 += f86g0
				f107g0 = f107 * g0
					h107 += f22g86
				h128 = f0 * g128
							*(float64 *) (h + 24) = h64
f150 = *(float64 *) (f + 56)
				f22g107 = f22 * g107
					i1 = f43g64 + f64g43
g150 = *(float64 *) (g + 56)
				f43g86 = f43 * g86
					h86 += i2
				f64g64 = f64 * g64
					i3 = f86g22 + f107g0		
				f86g43 = f86 * g43
				f107g22 = f107 * g22
					h107 += i1
				f128g0 = f128 * g0
					h128 += f22g107
							*(float64 *) (h + 32) = h86
				h150 = f0 * g150
					i2 = f43g86 + f64g64
				f22g128 = f22 * g128
				f43g107 = f43 * g107
					h107 += i3
f171 = *(float64 *) (f + 64)
				f64g86 = f64 * g86
					i1 = f86g43 + f107g22
g171 = *(float64 *) (g + 64)
				f86g64 = f86 * g64
					h128 += i2
				f107g43 = f107 * g43
					h150 += f22g128
				f128g22 = f128 * g22
				f150g0 = f150 * g0
					i1 += f128g0
							*(float64 *) (h + 40) = h107
				h171 = f0 * g171
					i3 = f43g107 + f64g86
				f22g150 = f22 * g150
					i2 = f86g64 + f107g43
				f43g128 = f43 * g128
					h150 += f128g22
f192 = *(float64 *) (f + 72)
				f64g107 = f64 * g107
					h128 += i1
g192 = *(float64 *) (g + 72)
				f86g86 = f86 * g86
					i3 += f150g0
				f107g64 = f107 * g64
					h171 += f22g150
				f128g43 = f128 * g43
					h150 += i2
				f150g22 = f150 * g22
					i1 = f43g128 + f64g107	
				f171g0 = f171 * g0
							*(float64 *) (h + 48) = h128
				h192 = f0 * g192
					i4 = f86g86 + f107g64  
				f22g171 = f22 * g171
					h150 += i3
				f43g150 = f43 * g150
					h171 += i1
				f64g128 = f64 * g128
					i2 = f128g43 + f150g22
f214 = *(float64 *) (f + 80)
				f86g107 = f86 * g107
					i4 += f171g0
g214 = *(float64 *) (g + 80)
				f107g86 = f107 * g86
					h192 += f22g171
							*(float64 *) (h + 56) = h150
				f128g64 = f128 * g64
				f150g43 = f150 * g43
					h171 += i2
				f171g22 = f171 * g22
					i1 = f43g150 + f64g128	
				f192g0 = f192 * g0
					h192 += f86g107
				h214 = f0 * g214
					i3 = f107g86 + f128g64
				f22g192 = f22 * g192
					h171 += i4
				f43g171 = f43 * g171
					i1 += f150g43
				f64g150 = f64 * g150
					h192 += f171g22
				f86g128 = f86 * g128
					i3 += f192g0
				f107g107 = f107 * g107
					h214 += f22g192	
							*(float64 *) (h + 64) = h171
f235 = *(float64 *) (f + 88)
				f128g86 = f128 * g86
g235 = *(float64 *) (g + 88)
				f150g64 = f150 * g64
					h192 += i1
f22 = *(float64 *) (f + 8)
				f171g43 = f171 * g43
					i2 = f43g171 + f64g150
f43 = *(float64 *) (f + 16)
				f192g22 = f192 * g22
					h214 += f86g128
g150 = *(float64 *) (g + 56)
				f214g0 = f214 * g0
					i4 = f107g107 + f128g86
g128 = *(float64 *) (g + 48)
				h235 = f0 * g235
					h192 += i3
f107 = *(float64 *) (f + 40)
				f22g214 = f22 * g214
					i2 += f150g64
g107 = *(float64 *) (g + 40)
				f43g192 = f43 * g192
					h214 += f171g43
f150 = *(float64 *) (f + 56)
				f64g171 = f64 * g171
					i4 += f192g22
				f86g150 = f86 * g150
							*(float64 *) (h + 72) = h192
				f107g128 = f107 * g128
					i2 += f214g0
				f128g107 = f128 * g107
					h235 += f22g214
g0 = *(float64 *) (g + 0)
				f150g86 = f150 * g86
					h214 += i4
f22 = *(float64 *) (f + 8)
				f171g64 = f171 * g64
					i1 = f43g192 + f64g171	
f43 = *(float64 *) (f + 16)
				f192g43 = f192 * g43
					i3 = f86g150 + f107g128
f107 = *(float64 *) (f + 40)
				f214g22 = f214 * g22
					h235 += f128g107
g107 = *(float64 *) (g + 40)
				f235g0 = f235 * g0
					h214 += i2
				h256 = f22 * g235
					i1 += f150g86
				f43g214 = f43 * g214
					i3 += f171g64
				f64g192 = f64 * g192
					h235 += f192g43
				f86g171 = f86 * g171
					i4 = f214g22 + f235g0
							*(float64 *) (h + 80) = h214
				f107g150 = f107 * g150
                                f128g128 = f128 * g128
					i1 += i3
                                f150g107 = f150 * g107
					h256 += f43g214
                                f171g86 = f171 * g86
					h235 += i4
                                f192g64 = f192 * g64
					i2 = f64g192 + f86g171
				f214g43 = f214 * g43
					i3 = f107g150 + f128g128	
				f235g22 = f235 * g22
					h256 += f150g107
				h278 = f43 * g235
					h235 += i1
				f64g214 = f64 * g214
					i2 += f171g86
				f86g192 = f86 * g192
					i3 += f192g64
				f107g171 = f107 * g171
					h256 += f214g43
				f128g150 = f128 * g150
							*(float64 *) (h + 88) = h235
				f150g128 = f150 * g128
					i2 += f235g22
				f171g107 = f171 * g107
					h278 += f64g214
				f192g86 = f192 * g86
					h256 += i3
				f214g64 = f214 * g64
					i1 = f86g192 + f107g171	
				f235g43 = f235 * g43
					i4 = f128g150 + f150g128
				h299 = f64 * g235
					h278 += f171g107
				f86g214 = f86 * g214
					h256 += i2
				f107g192 = f107 * g192
					i1 += f192g86
				f128g171 = f128 * g171
					i4 += f214g64
				f150g150 = f150 * g150
					h278 += f235g43
				f171g128 = f171 * g128
					h299 += f86g214
							*(float64 *) (h + 96) = h256
				f192g107 = f192 * g107
				f214g86 = f214 * g86
					i1 += i4
				f235g64 = f235 * g64
					i3 = f107g192 + f128g171
				h320 = f86 * g235
					h299 += f150g150
				f107g214 = f107 * g214
					i2 = f171g128 + f192g107
				f128g192 = f128 * g192
					h278 += i1
				f150g171 = f150 * g171
					i3 += f214g86
				f171g150 = f171 * g150
					h299 += f235g64
				f192g128 = f192 * g128
					h320 += f107g214
				f214g107 = f214 * g107
							*(float64 *) (h + 104) = h278
				f235g86 = f235 * g86
					i2 += i3
				h342 = f107 * g235
					i1 = f128g192 + f150g171
				f128g214 = f128 * g214
					h320 += f171g150
				f150g192 = f150 * g192
					i4 = f192g128 + f214g107
				f171g171 = f171 * g171
					h299 += i2
				f192g150 = f192 * g150
					i1 += f235g86
				f214g128 = f214 * g128
					h342 += f128g214
				f235g107 = f235 * g107
					h320 += i4
				h363 = f128 * g235
					i2 = f150g192 + f171g171
							*(float64 *) (h + 112) = h299
				f150g214 = f150 * g214
					i3 = f192g150 + f214g128
				f171g192 = f171 * g192
					h342 += f235g107
				f192g171 = f192 * g171
					h320 += i1
				f214g150 = f214 * g150
				f235g128 = f235 * g128
					i2 += i3
				h384 = f150 * g235
					h363 += f150g214
				f171g214 = f171 * g214
					i1 = f171g192 + f192g171
							*(float64 *) (h + 120) = h320
				f192g192 = f192 * g192
				f214g171 = f214 * g171
					h342 += i2
				f235g150 = f235 * g150
					h363 += f214g150
				h406 = f171 * g235
					i1 += f235g128
				f192g214 = f192 * g214
					h384 += f171g214
				f214g192 = f214 * g192
					i3 = f192g192 + f214g171
							*(float64 *) (h + 128) = h342
				f235g171 = f235 * g171
				h427 = f192 * g235
					h363 += i1
				f214g214 = f214 * g214
					h384 += f235g150
				f235g192 = f235 * g192
					h406 += f192g214
				h448 = f214 * g235
					i2 = f214g192 + f235g171
				f235g214 = f235 * g214
							*(float64 *) (h + 136) = h363
				h470 = f235 * g235
					h384 += i3
					h427 += f214g214
					h406 += i2
					h427 += f235g192
							*(float64 *) (h + 176) = h470
					h448 += f235g214
							*(float64 *) (h + 144) = h384
							*(float64 *) (h + 144) = h384
							*(float64 *) (h + 152) = h406
							*(float64 *) (h + 160) = h427
							*(float64 *) (h + 168) = h448
leave
