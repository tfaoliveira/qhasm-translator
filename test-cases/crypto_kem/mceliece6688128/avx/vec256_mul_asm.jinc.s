	.att_syntax
	.text
	.p2align	5
	.globl	_vec256_mul_asm
	.globl	vec256_mul_asm
_vec256_mul_asm:
vec256_mul_asm:
	vmovdqu	(%rdx), %ymm0
	vmovdqu	384(%rsi), %ymm5
	vpand	%ymm0, %ymm5, %ymm3
	vpand	32(%rdx), %ymm5, %ymm11
	vpand	64(%rdx), %ymm5, %ymm10
	vpand	96(%rdx), %ymm5, %ymm12
	vpand	128(%rdx), %ymm5, %ymm14
	vpand	160(%rdx), %ymm5, %ymm1
	vpand	192(%rdx), %ymm5, %ymm2
	vpand	224(%rdx), %ymm5, %ymm4
	vpand	256(%rdx), %ymm5, %ymm6
	vpand	288(%rdx), %ymm5, %ymm7
	vpand	320(%rdx), %ymm5, %ymm8
	vpand	352(%rdx), %ymm5, %ymm9
	vpand	384(%rdx), %ymm5, %ymm5
	vpxor	%ymm5, %ymm12, %ymm13
	vpxor	%ymm5, %ymm10, %ymm12
	vpxor	%ymm5, %ymm3, %ymm15
	vmovdqu	352(%rsi), %ymm10
	vpand	%ymm0, %ymm10, %ymm3
	vpxor	%ymm3, %ymm5, %ymm3
	vpand	32(%rdx), %ymm10, %ymm5
	vpxor	%ymm5, %ymm15, %ymm5
	vpand	64(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	96(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	128(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	160(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	192(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	224(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	256(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	288(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	320(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	352(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	384(%rdx), %ymm10, %ymm10
	vpxor	%ymm10, %ymm9, %ymm9
	vpxor	%ymm9, %ymm12, %ymm12
	vpxor	%ymm9, %ymm11, %ymm11
	vpxor	%ymm9, %ymm3, %ymm15
	vmovdqu	320(%rsi), %ymm10
	vpand	%ymm0, %ymm10, %ymm3
	vpxor	%ymm3, %ymm9, %ymm3
	vpand	32(%rdx), %ymm10, %ymm9
	vpxor	%ymm9, %ymm15, %ymm9
	vpand	64(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	96(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	128(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	160(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	192(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	224(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	256(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	288(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	320(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	352(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	384(%rdx), %ymm10, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpxor	%ymm8, %ymm11, %ymm11
	vpxor	%ymm8, %ymm5, %ymm10
	vpxor	%ymm8, %ymm3, %ymm5
	vmovdqu	%ymm8, %ymm3
	vmovdqu	288(%rsi), %ymm8
	vpand	%ymm0, %ymm8, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	32(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	64(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	96(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	128(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	160(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	192(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	224(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	256(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	288(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	320(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	352(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	384(%rdx), %ymm8, %ymm8
	vpxor	%ymm8, %ymm7, %ymm7
	vpxor	%ymm7, %ymm10, %ymm10
	vpxor	%ymm7, %ymm9, %ymm9
	vpxor	%ymm7, %ymm3, %ymm15
	vmovdqu	256(%rsi), %ymm8
	vpand	%ymm0, %ymm8, %ymm3
	vpxor	%ymm3, %ymm7, %ymm3
	vpand	32(%rdx), %ymm8, %ymm7
	vpxor	%ymm7, %ymm15, %ymm7
	vpand	64(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	96(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	128(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	160(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	192(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	224(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	256(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	288(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	320(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	352(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	384(%rdx), %ymm8, %ymm8
	vpxor	%ymm8, %ymm6, %ymm6
	vpxor	%ymm6, %ymm9, %ymm9
	vpxor	%ymm6, %ymm5, %ymm8
	vpxor	%ymm6, %ymm3, %ymm15
	vmovdqu	224(%rsi), %ymm5
	vpand	%ymm0, %ymm5, %ymm3
	vpxor	%ymm3, %ymm6, %ymm3
	vpand	32(%rdx), %ymm5, %ymm6
	vpxor	%ymm6, %ymm15, %ymm6
	vpand	64(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	96(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	128(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	160(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	192(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	224(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	256(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	288(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	320(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	352(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	384(%rdx), %ymm5, %ymm5
	vpxor	%ymm5, %ymm4, %ymm4
	vpxor	%ymm4, %ymm8, %ymm8
	vpxor	%ymm4, %ymm7, %ymm7
	vpxor	%ymm4, %ymm3, %ymm5
	vmovdqu	192(%rsi), %ymm3
	vpand	%ymm0, %ymm3, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	32(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	64(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	96(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	128(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	160(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	192(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	224(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	256(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	288(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	320(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	352(%rdx), %ymm3, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	384(%rdx), %ymm3, %ymm3
	vpxor	%ymm3, %ymm2, %ymm15
	vpxor	%ymm15, %ymm7, %ymm2
	vpxor	%ymm15, %ymm6, %ymm3
	vpxor	%ymm15, %ymm4, %ymm7
	vmovdqu	160(%rsi), %ymm4
	vpand	%ymm0, %ymm4, %ymm6
	vpxor	%ymm6, %ymm15, %ymm6
	vpand	32(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	64(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	96(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	128(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	160(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	192(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	224(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	256(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	288(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	320(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	352(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	384(%rdx), %ymm4, %ymm4
	vpxor	%ymm4, %ymm1, %ymm4
	vpxor	%ymm4, %ymm3, %ymm1
	vpxor	%ymm4, %ymm5, %ymm3
	vpxor	%ymm4, %ymm6, %ymm6
	vmovdqu	%ymm4, %ymm5
	vmovdqu	128(%rsi), %ymm4
	vpand	%ymm0, %ymm4, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	32(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	64(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	96(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	128(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	160(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	192(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	224(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	256(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	288(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	320(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	352(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	384(%rdx), %ymm4, %ymm4
	vpxor	%ymm4, %ymm14, %ymm14
	vpxor	%ymm14, %ymm3, %ymm3
	vpxor	%ymm14, %ymm7, %ymm4
	vpxor	%ymm14, %ymm5, %ymm15
	vmovdqu	96(%rsi), %ymm5
	vpand	%ymm0, %ymm5, %ymm7
	vpxor	%ymm7, %ymm14, %ymm7
	vpand	32(%rdx), %ymm5, %ymm14
	vpxor	%ymm14, %ymm15, %ymm14
	vpand	64(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	96(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	128(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	160(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	192(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	224(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	256(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	288(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	320(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	352(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	384(%rdx), %ymm5, %ymm5
	vpxor	%ymm5, %ymm13, %ymm13
	vpxor	%ymm13, %ymm4, %ymm4
	vpxor	%ymm13, %ymm6, %ymm5
	vpxor	%ymm13, %ymm7, %ymm15
	vmovdqu	64(%rsi), %ymm6
	vpand	%ymm0, %ymm6, %ymm7
	vpxor	%ymm7, %ymm13, %ymm7
	vpand	32(%rdx), %ymm6, %ymm13
	vpxor	%ymm13, %ymm15, %ymm13
	vpand	64(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	96(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	128(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	160(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	192(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	224(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	256(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	288(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	320(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	352(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	384(%rdx), %ymm6, %ymm6
	vpxor	%ymm6, %ymm12, %ymm12
	vpxor	%ymm12, %ymm5, %ymm5
	vpxor	%ymm12, %ymm14, %ymm6
	vpxor	%ymm12, %ymm7, %ymm14
	vmovdqu	32(%rsi), %ymm7
	vpand	%ymm0, %ymm7, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	32(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	64(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	96(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	128(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	160(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	192(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	224(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	256(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	288(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	320(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	352(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	384(%rdx), %ymm7, %ymm7
	vpxor	%ymm7, %ymm11, %ymm11
	vpxor	%ymm11, %ymm6, %ymm6
	vpxor	%ymm11, %ymm13, %ymm7
	vpxor	%ymm11, %ymm12, %ymm12
	vmovdqu	%ymm11, %ymm13
	vmovdqu	(%rsi), %ymm11
	vpand	%ymm0, %ymm11, %ymm0
	vpxor	%ymm0, %ymm13, %ymm0
	vpand	32(%rdx), %ymm11, %ymm13
	vpxor	%ymm13, %ymm12, %ymm12
	vpand	64(%rdx), %ymm11, %ymm13
	vpxor	%ymm13, %ymm14, %ymm13
	vpand	96(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm7, %ymm7
	vpand	128(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm6, %ymm6
	vpand	160(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm5, %ymm5
	vpand	192(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm4, %ymm4
	vpand	224(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm3, %ymm3
	vpand	256(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm1, %ymm1
	vpand	288(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm2, %ymm2
	vpand	320(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm8, %ymm8
	vpand	352(%rdx), %ymm11, %ymm14
	vpxor	%ymm14, %ymm9, %ymm9
	vpand	384(%rdx), %ymm11, %ymm11
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 384(%rdi)
	vmovdqu	%ymm9, 352(%rdi)
	vmovdqu	%ymm8, 320(%rdi)
	vmovdqu	%ymm2, 288(%rdi)
	vmovdqu	%ymm1, 256(%rdi)
	vmovdqu	%ymm3, 224(%rdi)
	vmovdqu	%ymm4, 192(%rdi)
	vmovdqu	%ymm5, 160(%rdi)
	vmovdqu	%ymm6, 128(%rdi)
	vmovdqu	%ymm7, 96(%rdi)
	vmovdqu	%ymm13, 64(%rdi)
	vmovdqu	%ymm12, 32(%rdi)
	vmovdqu	%ymm0, (%rdi)
	ret 