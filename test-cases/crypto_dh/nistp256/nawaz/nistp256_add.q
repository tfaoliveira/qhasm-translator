enter nistp256_add
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
f0 = *(float64 *) (f + 0)
g0 = *(float64 *) (g + 0)
f22 = *(float64 *) (f + 8)
g22 = *(float64 *) (g + 8)
				h0 = f0 + g0
f43 = *(float64 *) (f + 16)
g43 = *(float64 *) (g + 16)
				h22 = f22 + g22
f64 = *(float64 *) (f + 24)
g64 = *(float64 *) (g + 24)
				h43 = f43 + g43
						*(float64 *) (h + 0) = h0
f86 = *(float64 *) (f + 32)
g86 = *(float64 *) (g + 32)
				h64 = f64 + g64
						*(float64 *) (h + 8) = h22
f107 = *(float64 *) (f + 40)
g107 = *(float64 *) (g + 40)
				h86 = f86 + g86
						*(float64 *) (h + 16) = h43
f128 = *(float64 *) (f + 48)
g128 = *(float64 *) (g + 48)
				h107 = f107 + g107
						*(float64 *) (h + 24) = h64
f150 = *(float64 *) (f + 56)
g150 = *(float64 *) (g + 56)
				h128 = f128 + g128
						*(float64 *) (h + 32) = h86
f171 = *(float64 *) (f + 64)
g171 = *(float64 *) (g + 64)
				h150 = f150 + g150
						*(float64 *) (h + 40) = h107
f192 = *(float64 *) (f + 72)
g192 = *(float64 *) (g + 72)
				h171 = f171 + g171
						*(float64 *) (h + 48) = h128
f214 = *(float64 *) (f + 80)
g214 = *(float64 *) (g + 80)
				h192 = f192 + g192
						*(float64 *) (h + 56) = h150
f235 = *(float64 *) (f + 88)
g235 = *(float64 *) (g + 88)
				h214 = f214 + g214
						*(float64 *) (h + 64) = h171
*(float64 *) (h + 72) = h192
*(float64 *) (h + 80) = h214
				h235 = f235 + g235
*(float64 *) (h + 88) = h235
leave
