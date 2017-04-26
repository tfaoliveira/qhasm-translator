
param u64 crypto_scalarmult_curve25519_amd64_51_REDMASK51 = 0x0007FFFFFFFFFFFF;

fn crypto_scalarmult_curve25519_amd64_51_fe25519_freeze(reg u64[5] rp){

	 reg bool eqf;
	 reg u64 loop;
	 reg u64 r0;
	 reg u64 r1;
	 reg u64 r2;
	 reg u64 r3;
	 reg u64 r4;
	 reg bool slf;
	 reg u64 t;
	 reg u64 two51minus1;
	 reg u64 two51minus19;

	r0 = rp[0];
	r1 = rp[1];
	r2 = rp[2];
	r3 = rp[3];
	r4 = rp[4];
	two51minus1 = crypto_scalarmult_curve25519_amd64_51_REDMASK51; 
	two51minus19 = two51minus1;
	two51minus19 -= 18;

	/*loop = 3;*/
	/*do{*/

  for loop in (0..2) {
	  t = r0;
	  t >>= 51;
	  r0 &= two51minus1;
	  r1 += t;
	  t = r1;
	  t >>= 51;
	  r1 &= two51minus1;
	  r2 += t;
	  t = r2;
	  t >>= 51;
	  r2 &= two51minus1;
	  r3 += t;
	  t = r3;
	  t >>= 51;
	  r3 &= two51minus1;
	  r4 += t;
	  t = r4;
	  t >>= 51;
	  r4 &= two51minus1;
	  t *= 19;
	  r0 += t;
  }
  loop = 0;

	/*}while((loop-=1) > 0);*/

	t = 1;
	slf = (r0 <s two51minus19);
	t = loop if slf;
	eqf = (r1 == two51minus1);
	t = loop if !eqf;
	eqf = (r2 == two51minus1);
	t = loop if !eqf;
	eqf = (r3 == two51minus1);
	t = loop if !eqf;
	eqf = (r4 == two51minus1);
	t = loop if !eqf;
	t = -t;
	two51minus1 &= t;
	two51minus19 &= t;
	r0 -= two51minus19;
	r1 -= two51minus1;
	r2 -= two51minus1;
	r3 -= two51minus1;
	r4 -= two51minus1;
	rp[0] = r0;
	rp[1] = r1;
	rp[2] = r2;
	rp[3] = r3;
	rp[4] = r4;
	return;
}


