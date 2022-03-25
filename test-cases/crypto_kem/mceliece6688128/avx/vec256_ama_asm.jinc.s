	.att_syntax
	.text
	.p2align	5
	.globl	_vec256_ama_asm
	.globl	vec256_ama_asm
_vec256_ama_asm:
vec256_ama_asm:
	vmovdqu	(%rdx), %ymm0
	vmovdqu	384(%rdi), %ymm1
	vpxor	384(%rsi), %ymm1, %ymm11
	vmovdqu	%ymm11, 384(%rdi)
	vpand	%ymm0, %ymm11, %ymm4
	vpand	32(%rdx), %ymm11, %ymm5
	vpand	64(%rdx), %ymm11, %ymm13
	vpand	96(%rdx), %ymm11, %ymm14
	vpand	128(%rdx), %ymm11, %ymm1
	vpand	160(%rdx), %ymm11, %ymm2
	vpand	192(%rdx), %ymm11, %ymm3
	vpand	224(%rdx), %ymm11, %ymm6
	vpand	256(%rdx), %ymm11, %ymm7
	vpand	288(%rdx), %ymm11, %ymm8
	vpand	320(%rdx), %ymm11, %ymm9
	vpand	352(%rdx), %ymm11, %ymm10
	vpand	384(%rdx), %ymm11, %ymm12
	vpxor	%ymm12, %ymm14, %ymm14
	vpxor	%ymm12, %ymm13, %ymm13
	vpxor	%ymm12, %ymm4, %ymm11
	vmovdqu	%ymm12, %ymm4
	vmovdqu	352(%rdi), %ymm12
	vpxor	352(%rsi), %ymm12, %ymm12
	vmovdqu	%ymm12, 352(%rdi)
	vpand	%ymm0, %ymm12, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	32(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	64(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	96(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	128(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	160(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	192(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	224(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	256(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	288(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	320(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	352(%rdx), %ymm12, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	384(%rdx), %ymm12, %ymm12
	vpxor	%ymm12, %ymm10, %ymm10
	vpxor	%ymm10, %ymm13, %ymm13
	vpxor	%ymm10, %ymm5, %ymm12
	vpxor	%ymm10, %ymm4, %ymm5
	vmovdqu	%ymm10, %ymm4
	vmovdqu	320(%rdi), %ymm10
	vpxor	320(%rsi), %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rdi)
	vpand	%ymm0, %ymm10, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	32(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
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
	vpxor	%ymm15, %ymm3, %ymm3
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
	vpxor	%ymm9, %ymm4, %ymm15
	vmovdqu	288(%rdi), %ymm4
	vpxor	288(%rsi), %ymm4, %ymm10
	vmovdqu	%ymm10, 288(%rdi)
	vpand	%ymm0, %ymm10, %ymm4
	vpxor	%ymm4, %ymm9, %ymm4
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
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	320(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	352(%rdx), %ymm10, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	384(%rdx), %ymm10, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpxor	%ymm8, %ymm11, %ymm11
	vpxor	%ymm8, %ymm5, %ymm10
	vpxor	%ymm8, %ymm4, %ymm5
	vmovdqu	%ymm8, %ymm4
	vmovdqu	256(%rdi), %ymm8
	vpxor	256(%rsi), %ymm8, %ymm8
	vmovdqu	%ymm8, 256(%rdi)
	vpand	%ymm0, %ymm8, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
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
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	352(%rdx), %ymm8, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	384(%rdx), %ymm8, %ymm8
	vpxor	%ymm8, %ymm7, %ymm7
	vpxor	%ymm7, %ymm10, %ymm10
	vpxor	%ymm7, %ymm9, %ymm9
	vpxor	%ymm7, %ymm4, %ymm15
	vmovdqu	224(%rdi), %ymm4
	vpxor	224(%rsi), %ymm4, %ymm8
	vmovdqu	%ymm8, 224(%rdi)
	vpand	%ymm0, %ymm8, %ymm4
	vpxor	%ymm4, %ymm7, %ymm4
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
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	384(%rdx), %ymm8, %ymm8
	vpxor	%ymm8, %ymm6, %ymm6
	vpxor	%ymm6, %ymm9, %ymm9
	vpxor	%ymm6, %ymm5, %ymm8
	vpxor	%ymm6, %ymm4, %ymm15
	vmovdqu	192(%rdi), %ymm4
	vpxor	192(%rsi), %ymm4, %ymm4
	vmovdqu	%ymm4, 192(%rdi)
	vpand	%ymm0, %ymm4, %ymm5
	vpxor	%ymm5, %ymm6, %ymm5
	vpand	32(%rdx), %ymm4, %ymm6
	vpxor	%ymm6, %ymm15, %ymm6
	vpand	64(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	96(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	128(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	160(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	192(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	224(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	256(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	288(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	320(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	352(%rdx), %ymm4, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	384(%rdx), %ymm4, %ymm4
	vpxor	%ymm4, %ymm3, %ymm15
	vpxor	%ymm15, %ymm8, %ymm3
	vpxor	%ymm15, %ymm7, %ymm4
	vpxor	%ymm15, %ymm5, %ymm8
	vmovdqu	160(%rdi), %ymm5
	vpxor	160(%rsi), %ymm5, %ymm5
	vmovdqu	%ymm5, 160(%rdi)
	vpand	%ymm0, %ymm5, %ymm7
	vpxor	%ymm7, %ymm15, %ymm7
	vpand	32(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	64(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	96(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	128(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	160(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	192(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	224(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	256(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	288(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	320(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	352(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	384(%rdx), %ymm5, %ymm5
	vpxor	%ymm5, %ymm2, %ymm5
	vpxor	%ymm5, %ymm4, %ymm2
	vpxor	%ymm5, %ymm6, %ymm4
	vpxor	%ymm5, %ymm7, %ymm7
	vmovdqu	%ymm5, %ymm6
	vmovdqu	128(%rdi), %ymm5
	vpxor	128(%rsi), %ymm5, %ymm5
	vmovdqu	%ymm5, 128(%rdi)
	vpand	%ymm0, %ymm5, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	32(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	64(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	96(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	128(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	160(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	192(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	224(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	256(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	288(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	320(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	352(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	384(%rdx), %ymm5, %ymm5
	vpxor	%ymm5, %ymm1, %ymm5
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm5, %ymm8, %ymm4
	vpxor	%ymm5, %ymm6, %ymm8
	vmovdqu	%ymm5, %ymm6
	vmovdqu	96(%rdi), %ymm5
	vpxor	96(%rsi), %ymm5, %ymm5
	vmovdqu	%ymm5, 96(%rdi)
	vpand	%ymm0, %ymm5, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	32(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	64(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm7, %ymm7
	vpand	96(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	128(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	160(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	192(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	224(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	256(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	288(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	320(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	352(%rdx), %ymm5, %ymm15
	vpxor	%ymm15, %ymm13, %ymm13
	vpand	384(%rdx), %ymm5, %ymm5
	vpxor	%ymm5, %ymm14, %ymm14
	vpxor	%ymm14, %ymm4, %ymm4
	vpxor	%ymm14, %ymm7, %ymm5
	vpxor	%ymm14, %ymm6, %ymm15
	vmovdqu	64(%rdi), %ymm6
	vpxor	64(%rsi), %ymm6, %ymm6
	vmovdqu	%ymm6, 64(%rdi)
	vpand	%ymm0, %ymm6, %ymm7
	vpxor	%ymm7, %ymm14, %ymm7
	vpand	32(%rdx), %ymm6, %ymm14
	vpxor	%ymm14, %ymm15, %ymm14
	vpand	64(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm8, %ymm8
	vpand	96(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	128(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	160(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	192(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	224(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	256(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	288(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	320(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	352(%rdx), %ymm6, %ymm15
	vpxor	%ymm15, %ymm12, %ymm12
	vpand	384(%rdx), %ymm6, %ymm6
	vpxor	%ymm6, %ymm13, %ymm13
	vpxor	%ymm13, %ymm5, %ymm5
	vpxor	%ymm13, %ymm8, %ymm6
	vpxor	%ymm13, %ymm7, %ymm15
	vmovdqu	32(%rdi), %ymm7
	vpxor	32(%rsi), %ymm7, %ymm7
	vmovdqu	%ymm7, 32(%rdi)
	vpand	%ymm0, %ymm7, %ymm8
	vpxor	%ymm8, %ymm13, %ymm8
	vpand	32(%rdx), %ymm7, %ymm13
	vpxor	%ymm13, %ymm15, %ymm13
	vpand	64(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm14, %ymm14
	vpand	96(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm6, %ymm6
	vpand	128(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm5, %ymm5
	vpand	160(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm4, %ymm4
	vpand	192(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm1, %ymm1
	vpand	224(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	256(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm3, %ymm3
	vpand	288(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm9, %ymm9
	vpand	320(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm10, %ymm10
	vpand	352(%rdx), %ymm7, %ymm15
	vpxor	%ymm15, %ymm11, %ymm11
	vpand	384(%rdx), %ymm7, %ymm7
	vpxor	%ymm7, %ymm12, %ymm12
	vpxor	%ymm12, %ymm6, %ymm6
	vpxor	%ymm12, %ymm14, %ymm7
	vpxor	%ymm12, %ymm8, %ymm14
	vmovdqu	(%rdi), %ymm8
	vpxor	(%rsi), %ymm8, %ymm8
	vmovdqu	%ymm8, (%rdi)
	vpand	%ymm0, %ymm8, %ymm0
	vpxor	%ymm0, %ymm12, %ymm0
	vpand	32(%rdx), %ymm8, %ymm12
	vpxor	%ymm12, %ymm14, %ymm12
	vpand	64(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm13, %ymm13
	vpand	96(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm7, %ymm7
	vpand	128(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm6, %ymm6
	vpand	160(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm5, %ymm5
	vpand	192(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm4, %ymm4
	vpand	224(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm1, %ymm1
	vpand	256(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm2, %ymm2
	vpand	288(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm3, %ymm3
	vpand	320(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm9, %ymm9
	vpand	352(%rdx), %ymm8, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vpand	384(%rdx), %ymm8, %ymm8
	vpxor	%ymm8, %ymm11, %ymm8
	vpxor	384(%rsi), %ymm8, %ymm8
	vmovdqu	%ymm8, 384(%rsi)
	vpxor	352(%rsi), %ymm10, %ymm8
	vmovdqu	%ymm8, 352(%rsi)
	vpxor	320(%rsi), %ymm9, %ymm8
	vmovdqu	%ymm8, 320(%rsi)
	vpxor	288(%rsi), %ymm3, %ymm3
	vmovdqu	%ymm3, 288(%rsi)
	vpxor	256(%rsi), %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rsi)
	vpxor	224(%rsi), %ymm1, %ymm1
	vmovdqu	%ymm1, 224(%rsi)
	vpxor	192(%rsi), %ymm4, %ymm1
	vmovdqu	%ymm1, 192(%rsi)
	vpxor	160(%rsi), %ymm5, %ymm1
	vmovdqu	%ymm1, 160(%rsi)
	vpxor	128(%rsi), %ymm6, %ymm1
	vmovdqu	%ymm1, 128(%rsi)
	vpxor	96(%rsi), %ymm7, %ymm1
	vmovdqu	%ymm1, 96(%rsi)
	vpxor	64(%rsi), %ymm13, %ymm1
	vmovdqu	%ymm1, 64(%rsi)
	vpxor	32(%rsi), %ymm12, %ymm1
	vmovdqu	%ymm1, 32(%rsi)
	vpxor	(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rsi)
	ret 
