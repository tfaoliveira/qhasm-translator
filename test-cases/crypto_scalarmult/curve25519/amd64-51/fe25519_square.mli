
param u64 crypto_scalarmult_curve25519_amd64_51_REDMASK51 = 0x0007FFFFFFFFFFFF;

fn crypto_scalarmult_curve25519_amd64_51_fe25519_square(reg u64[5] rp, reg u64[5] xp){

	 reg bool cf;
	 reg u64 r0;
	 reg u64 r1;
	 reg u64 r2;
	 reg u64 r3;
	 reg u64 r4;
	 reg u64 squarer01;
	 reg u64 squarer11;
	 reg u64 squarer21;
	 reg u64 squarer31;
	 reg u64 squarer41;
	 reg u64 squarerax;
	 reg u64 squarerdx;
	 reg u64 squareredmask;
	 reg u64 squaret;

	squarerax = xp[0];
	squarerdx, squarerax = squarerax * xp[0];
	r0 = squarerax;
	squarer01 = squarerdx;
	squarerax = xp[0];
	squarerax <<= 1;
	squarerdx, squarerax = squarerax * xp[1];
	r1 = squarerax;
	squarer11 = squarerdx;
	squarerax = xp[0];
	squarerax <<= 1;
	squarerdx, squarerax = squarerax * xp[2];
	r2 = squarerax;
	squarer21 = squarerdx;
	squarerax = xp[0];
	squarerax <<= 1;
	squarerdx, squarerax = squarerax * xp[3];
	r3 = squarerax;
	squarer31 = squarerdx;
	squarerax = xp[0];
	squarerax <<= 1;
	squarerdx, squarerax = squarerax * xp[4];
	r4 = squarerax;
	squarer41 = squarerdx;
	squarerax = xp[1];
	squarerdx, squarerax = squarerax * xp[1];
	cf, r2 += squarerax;
	squarer21 += squarerdx + cf; 
	squarerax = xp[1];
	squarerax <<= 1;
	squarerdx, squarerax = squarerax * xp[2];
	cf, r3 += squarerax;
	squarer31 += squarerdx + cf; 
	squarerax = xp[1];
	squarerax <<= 1;
	squarerdx, squarerax = squarerax * xp[3];
	cf, r4 += squarerax;
	squarer41 += squarerdx + cf; 
	squarerax = xp[1];
	squarerax *= 38;
	squarerdx, squarerax = squarerax * xp[4];
	cf, r0 += squarerax;
	squarer01 += squarerdx + cf; 
	squarerax = xp[2];
	squarerdx, squarerax = squarerax * xp[2];
	cf, r4 += squarerax;
	squarer41 += squarerdx + cf; 
	squarerax = xp[2];
	squarerax *= 38;
	squarerdx, squarerax = squarerax * xp[3];
	cf, r0 += squarerax;
	squarer01 += squarerdx + cf; 
	squarerax = xp[2];
	squarerax *= 38;
	squarerdx, squarerax = squarerax * xp[4];
	cf, r1 += squarerax;
	squarer11 += squarerdx + cf; 
	squarerax = xp[3];
	squarerax *= 19;
	squarerdx, squarerax = squarerax * xp[3];
	cf, r1 += squarerax;
	squarer11 += squarerdx + cf; 
	squarerax = xp[3];
	squarerax *= 38;
	squarerdx, squarerax = squarerax * xp[4];
	cf, r2 += squarerax;
	squarer21 += squarerdx + cf; 
	squarerax = xp[4];
	squarerax *= 19;
	squarerdx, squarerax = squarerax * xp[4];
	cf, r3 += squarerax;
	squarer31 += squarerdx + cf; 
	squareredmask = crypto_scalarmult_curve25519_amd64_51_REDMASK51; 
	squarer01 = (squarer01, r0) << 13;
	r0 &= squareredmask;
	squarer11 = (squarer11, r1) << 13;
	r1 &= squareredmask;
	r1 += squarer01;
	squarer21 = (squarer21, r2) << 13;
	r2 &= squareredmask;
	r2 += squarer11;
	squarer31 = (squarer31, r3) << 13;
	r3 &= squareredmask;
	r3 += squarer21;
	squarer41 = (squarer41, r4) << 13;
	r4 &= squareredmask;
	r4 += squarer31;
	squarer41 = squarer41 * 19;
	r0 += squarer41;
	squaret = r0;
	squaret >>= 51;
	squaret += r1;
	r0 &= squareredmask;
	r1 = squaret;
	squaret >>= 51;
	squaret += r2;
	r1 &= squareredmask;
	r2 = squaret;
	squaret >>= 51;
	squaret += r3;
	r2 &= squareredmask;
	r3 = squaret;
	squaret >>= 51;
	squaret += r4;
	r3 &= squareredmask;
	r4 = squaret;
	squaret >>= 51;
	squaret *= 19;
	r0 += squaret;
	r4 &= squareredmask;
	rp[0] = r0;
	rp[1] = r1;
	rp[2] = r2;
	rp[3] = r3;
	rp[4] = r4;
	return;
}


