int64 A
int64 R
int64 C
int64 D
int64 T
int64 iotas

enter __KeccakF1600
	mov	[4][0](A),C[0]
	mov	[4][1](A),C[1]
	mov	[4][2](A),C[2]
	mov	[4][3](A),C[3]
	mov	[4][4](A),C[4]
	jmp	.Loop

.align	32
.Loop:
	mov	[0][0](A),D[0]
	mov	[1][1](A),D[1]
	mov	[2][2](A),D[2]
	mov	[3][3](A),D[3]

	xor	[0][2](A),C[2]
	xor	[0][3](A),C[3]
	xor	D[0],         C[0]
	xor	[0][1](A),C[1]
	 xor	[1][2](A),C[2]
	 xor	[1][0](A),C[0]
	mov	C[4],D[4]
	xor	[0][4](A),C[4]

	xor	D[2],         C[2]
	xor	[2][0](A),C[0]
	 xor	[1][3](A),C[3]
	 xor	D[1],         C[1]
	 xor	[1][4](A),C[4]

	xor	[3][2](A),C[2]
	xor	[3][0](A),C[0]
	 xor	[2][3](A),C[3]
	 xor	[2][1](A),C[1]
	 xor	[2][4](A),C[4]

	mov	C[2],T[0]
	rol	$1,C[2]
  # D[1] = ROL64(C[2], 1) ^ C[0]
	xor	C[0],C[2]
	 xor	D[3],         C[3]

	rol	$1,C[0]
  # D[4] = ROL64(C[0], 1) ^ C[3]
	xor	C[3],C[0]
	 xor	[3][1](A),C[1]

	rol	$1,C[3]
	# D[2] = ROL64(C[3], 1) ^ C[1]
	xor	C[1],C[3]
	 xor	[3][4](A),C[4]

	rol	$1,C[1]
  # D[0] = ROL64(C[1], 1) ^ C[4]
	xor	C[4],C[1]

	rol	$1,C[4]
  # D[3] = ROL64(C[4], 1) ^ C[2]
	xor	T[0],C[4]
	xor	C[2],D[1]
	xor	C[3],D[2]
	rol	$44,D[1]
	xor	C[4],D[3]
	xor	C[0],D[4]
	rol	$43,D[2]
	xor	C[1],D[0]
	 mov	D[1],T[0]
	rol	$21,D[3]
	 or	D[2],D[1]
  #           C[0] ^ ( C[1] | C[2])
	 xor	D[0],D[1]
	rol	$14,D[4]

	 xor	(iotas),D[1]
	 lea	8(iotas),iotas

	mov	D[4],T[1]
	and	D[3],D[4]
  # R[0][0] = C[0] ^ ( C[1] | C[2]) ^ iotas[i]
	 mov	D[1],[0][0](R)
  #           C[2] ^ ( C[4] & C[3])
	xor	D[2],D[4]
	not	D[2]
  # R[0][2] = C[2] ^ ( C[4] & C[3])
	mov	D[4],[0][2](R)

	or	D[3],D[2]
	  mov	[4][2](A),D[4]
  #           C[1] ^ (~C[2] | C[3])
	xor	T[0],D[2]
  # R[0][1] = C[1] ^ (~C[2] | C[3])
	mov	D[2],[0][1](R)

	and	D[0],T[0]
	  mov	[1][4](A),D[1]
  #           C[4] ^ ( C[1] & C[0])
	xor	T[1],T[0]
	  mov	[2][0](A),D[2]
  # R[0][4] = C[4] ^ ( C[1] & C[0])
	mov	T[0],[0][4](R)

	or	D[0],T[1]
	  mov	[0][3](A),D[0]
  #           C[3] ^ ( C[4] | C[0])
	xor	D[3],T[1]
	  mov	[3][1](A),D[3]
  # R[0][3] = C[3] ^ ( C[4] | C[0])
	mov	T[1],[0][3](R)


	xor	C[4],D[0]
	xor	C[3],D[4]
	rol	$28,D[0]
	xor	C[2],D[3]
	xor	C[0],D[1]
	rol	$61,D[4]
	rol	$45,D[3]
	xor	C[1],D[2]
	rol	$20,D[1]
	 mov	D[0],T[0]
	 or	D[4],D[0]
	rol	$3,D[2]

  #           C[3] ^ (C[0] |  C[4])
	xor	D[3],D[0]
  # R[1][3] = C[3] ^ (C[0] |  C[4])
	mov	D[0],[1][3](R)

	mov	D[1],T[1]
	and	T[0],D[1]
	  mov	[0][1](A),D[0]
  #           C[4] ^ (C[1] &  C[0])
	xor	D[4],D[1]
	not	D[4]
  # R[1][4] = C[4] ^ (C[1] &  C[0])
	mov	D[1],[1][4](R)

	or	D[3],D[4]
	  mov	[1][2](A),D[1]
  #           C[2] ^ (~C[4] | C[3])
	xor	D[2],D[4]
  # R[1][2] = C[2] ^ (~C[4] | C[3])
	mov	D[4],[1][2](R)

	and	D[2],D[3]
	  mov	[4][0](A),D[4]
  #           C[1] ^ (C[3] &  C[2])
	xor	T[1],D[3]
  # R[1][1] = C[1] ^ (C[3] &  C[2])
	mov	D[3],[1][1](R)

	or	D[2],T[1]
	  mov	[2][3](A),D[2]
  #           C[0] ^ (C[1] |  C[2])
	xor	T[0],T[1]
	  mov	[3][4](A),D[3]
  # R[1][0] = C[0] ^ (C[1] |  C[2])
	mov	T[1],[1][0](R)


	xor	C[4],D[2]
	xor	C[0],D[3]
	rol	$25,D[2]
	xor	C[3],D[1]
	rol	$8,D[3]
	xor	C[1],D[4]
	rol	$6,D[1]
	xor	C[2],D[0]
	rol	$18,D[4]
	 mov	D[2],T[0]
	 and	D[3],D[2]
	rol	$1,D[0]

	not	D[3]
  #            C[1] ^ ( C[2] & C[3])
	xor	D[1],D[2]
  # R[2][1] =  C[1] ^ ( C[2] & C[3])
	mov	D[2],[2][1](R)

	mov	D[4],T[1]
	and	D[3],D[4]
	  mov	[2][1](A),D[2]
  #            C[2] ^ ( C[4] & ~C[3])
	xor	T[0],D[4]
  # R[2][2] =  C[2] ^ ( C[4] & ~C[3])
	mov	D[4],[2][2](R)

	or	D[1],T[0]
	  mov	[4][3](A),D[4]
  #            C[0] ^ ( C[2] | C[1])
	xor	D[0],T[0]
  # R[2][0] =  C[0] ^ ( C[2] | C[1])
	mov	T[0],[2][0](R)

	and	D[0],D[1]
  #            C[4] ^ ( C[1] & C[0])
	xor	T[1],D[1]
  # R[2][4] =  C[4] ^ ( C[1] & C[0])
	mov	D[1],[2][4](R)

	or	D[0],T[1]
	  mov	[1][0](A),D[1]
  #           ~C[3] ^ ( C[0] | C[4])
	xor	D[3],T[1]
	  mov	[3][2](A),D[3]
  #           ~C[3] ^ ( C[0] | C[4])
	mov	T[1],[2][3](R)


	mov	[0][4](A),D[0]

	xor	C[2],D[2]
	xor	C[3],D[3]
	rol	$10,D[2]
	xor	C[1],D[1]
	rol	$15,D[3]
	xor	C[4],D[4]
	rol	$36,D[1]
	xor	C[0],D[0]
	rol	$56,D[4]
	 mov	D[2],T[0]
	 or	D[3],D[2]
	rol	$27,D[0]

	not	D[3]
  #            C[1] ^ ( C[2] | C[3])
	xor	D[1],D[2]
  # R[3][1] =  C[1] ^ ( C[2] | C[3])
	mov	D[2],[3][1](R)

	mov	D[4],T[1]
	or	D[3],D[4]
  #            C[2] ^ ( C[4] | ~C[3])
	xor	T[0],D[4]
  # R[3][2] =  C[2] ^ ( C[4] | ~C[3])
	mov	D[4],[3][2](R)

	and	D[1],T[0]
  #            C[0] ^ ( C[2] & C[1])
	xor	D[0],T[0]
  # R[3][0] =  C[0] ^ ( C[2] & C[1])
	mov	T[0],[3][0](R)

	or	D[0],D[1]
  #            C[4] ^ ( C[1] | C[0])
	xor	T[1],D[1]
  # R[3][4] =  C[4] ^ ( C[1] | C[0])
	mov	D[1],[3][4](R)

	and	T[1],D[0]
  #           ~C[3] ^ ( C[0] & C[4])
	xor	D[3],D[0]
  # R[3][3] = ~C[3] ^ ( C[0] & C[4])
	mov	D[0],[3][3](R)


	xor	[0][2](A),C[3]
	xor	[1][3](A),C[4]
	rol	$62,C[3]
	xor	[4][1](A),C[2]
	rol	$55,C[4]
	xor	[2][4](A),C[0]
	rol	$2,C[2]
	xor	[3][0](A),C[1]
	xchg	R,A
	rol	$39,C[0]
	rol	$41,C[1]
	mov	C[3],T[0]
	and	C[4],C[3]
	not	C[4]
  #            C[4] ^ ( C[0] & C[1])
	xor	C[2],C[3]
  # R[4][4] =  C[4] ^ ( C[0] & C[1])
	mov	C[3],[4][4](A)

	mov	C[0],T[1]
	and	C[4],C[0]
  #            C[0] ^ ( C[2] & ~C[1])
	xor	T[0],C[0]
  # R[4][0] =  C[0] ^ ( C[2] & ~C[1])
	mov	C[0],[4][0](A)

	or	C[2],T[0]
  #            C[3] ^ ( C[0] | C[4])
	xor	C[1],T[0]
  # R[4][3] =  C[3] ^ ( C[0] | C[4])
	mov	T[0],[4][3](A)

	and	C[1],C[2]
  #            C[2] ^ ( C[4] & C[3])
	xor	T[1],C[2]
  # R[4][2] =  C[2] ^ ( C[4] & C[3])
	mov	C[2],[4][2](A)

	or	T[1],C[1]
  #           ~C[1] ^ ( C[2] | C[3])
	xor	C[4],C[1]
  # R[4][1] = ~C[1] ^ ( C[2] | C[3])
	mov	C[1],[4][1](A)

  # harmonize with the loop top
	mov	C[3],C[4]
	mov	T[0],C[3]

	test	$255,iotas
	jnz	.Loop

  # rewind iotas
	lea	-192(iotas),iotas
leave


