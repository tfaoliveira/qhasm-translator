#define vec128_mul_asm CRYPTO_NAMESPACE(vec128_mul_asm)
#define _vec128_mul_asm _CRYPTO_NAMESPACE(vec128_mul_asm)
	.att_syntax
	.text
	.p2align	5
	.globl	_vec128_mul_asm
	.globl	vec128_mul_asm
_vec128_mul_asm:
vec128_mul_asm:
	movq	%rsp, %r10
	leaq	-608(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rsp, %rax
	movq	%rcx, %r8
	imulq	$12, %r8, %r8
	addq	%r8, %rdx
	vbroadcasti128	(%rdx), %ymm9
	subq	%rcx, %rdx
	vpxor	%ymm0, %ymm0, %ymm0
	vinserti128	$0, 96(%rsi), %ymm0, %ymm0
	vpand	%ymm0, %ymm9, %ymm1
	vmovdqu	%ymm1, 576(%rax)
	vinserti128	$0, 80(%rsi), %ymm2, %ymm1
	vinserti128	$1, 192(%rsi), %ymm1, %ymm1
	vpand	%ymm1, %ymm9, %ymm10
	vinserti128	$0, 64(%rsi), %ymm7, %ymm2
	vinserti128	$1, 176(%rsi), %ymm2, %ymm2
	vpand	%ymm2, %ymm9, %ymm11
	vinserti128	$0, 48(%rsi), %ymm3, %ymm3
	vinserti128	$1, 160(%rsi), %ymm3, %ymm3
	vpand	%ymm3, %ymm9, %ymm12
	vinserti128	$0, 32(%rsi), %ymm4, %ymm4
	vinserti128	$1, 144(%rsi), %ymm4, %ymm4
	vpand	%ymm4, %ymm9, %ymm7
	vinserti128	$0, 16(%rsi), %ymm5, %ymm5
	vinserti128	$1, 128(%rsi), %ymm5, %ymm5
	vpand	%ymm5, %ymm9, %ymm8
	vinserti128	$0, (%rsi), %ymm6, %ymm6
	vinserti128	$1, 112(%rsi), %ymm6, %ymm6
	vpand	%ymm6, %ymm9, %ymm9
	vbroadcasti128	(%rdx), %ymm14
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm14, %ymm13
	vpxor	%ymm13, %ymm10, %ymm10
	vmovdqu	%ymm10, 544(%rax)
	vpand	%ymm1, %ymm14, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm2, %ymm14, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm3, %ymm14, %ymm12
	vpxor	%ymm12, %ymm7, %ymm12
	vpand	%ymm4, %ymm14, %ymm7
	vpxor	%ymm7, %ymm8, %ymm13
	vpand	%ymm5, %ymm14, %ymm7
	vpxor	%ymm7, %ymm9, %ymm7
	vpand	%ymm6, %ymm14, %ymm8
	vbroadcasti128	(%rdx), %ymm9
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm9, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	%ymm10, 512(%rax)
	vpand	%ymm1, %ymm9, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm2, %ymm9, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm3, %ymm9, %ymm12
	vpxor	%ymm12, %ymm13, %ymm12
	vpand	%ymm4, %ymm9, %ymm13
	vpxor	%ymm13, %ymm7, %ymm13
	vpand	%ymm5, %ymm9, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpand	%ymm6, %ymm9, %ymm8
	vbroadcasti128	(%rdx), %ymm9
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm9, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	%ymm10, 480(%rax)
	vpand	%ymm1, %ymm9, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm2, %ymm9, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm3, %ymm9, %ymm12
	vpxor	%ymm12, %ymm13, %ymm12
	vpand	%ymm4, %ymm9, %ymm13
	vpxor	%ymm13, %ymm7, %ymm13
	vpand	%ymm5, %ymm9, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpand	%ymm6, %ymm9, %ymm8
	vbroadcasti128	(%rdx), %ymm9
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm9, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	%ymm10, 448(%rax)
	vpand	%ymm1, %ymm9, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm2, %ymm9, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm3, %ymm9, %ymm12
	vpxor	%ymm12, %ymm13, %ymm12
	vpand	%ymm4, %ymm9, %ymm13
	vpxor	%ymm13, %ymm7, %ymm13
	vpand	%ymm5, %ymm9, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpand	%ymm6, %ymm9, %ymm8
	vbroadcasti128	(%rdx), %ymm9
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm9, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%rax)
	vpand	%ymm1, %ymm9, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm2, %ymm9, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm3, %ymm9, %ymm12
	vpxor	%ymm12, %ymm13, %ymm12
	vpand	%ymm4, %ymm9, %ymm13
	vpxor	%ymm13, %ymm7, %ymm13
	vpand	%ymm5, %ymm9, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpand	%ymm6, %ymm9, %ymm8
	vbroadcasti128	(%rdx), %ymm9
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm9, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	%ymm10, 384(%rax)
	vpand	%ymm1, %ymm9, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm2, %ymm9, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm3, %ymm9, %ymm12
	vpxor	%ymm12, %ymm13, %ymm12
	vpand	%ymm4, %ymm9, %ymm13
	vpxor	%ymm13, %ymm7, %ymm7
	vpand	%ymm5, %ymm9, %ymm13
	vpxor	%ymm13, %ymm8, %ymm8
	vpand	%ymm6, %ymm9, %ymm9
	vbroadcasti128	(%rdx), %ymm13
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm13, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	%ymm10, 352(%rax)
	vpand	%ymm1, %ymm13, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm2, %ymm13, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm3, %ymm13, %ymm12
	vpxor	%ymm12, %ymm7, %ymm7
	vpand	%ymm4, %ymm13, %ymm12
	vpxor	%ymm12, %ymm8, %ymm8
	vpand	%ymm5, %ymm13, %ymm12
	vpxor	%ymm12, %ymm9, %ymm9
	vpand	%ymm6, %ymm13, %ymm12
	vbroadcasti128	(%rdx), %ymm13
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm13, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	%ymm10, 320(%rax)
	vpand	%ymm1, %ymm13, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm2, %ymm13, %ymm11
	vpxor	%ymm11, %ymm7, %ymm7
	vpand	%ymm3, %ymm13, %ymm11
	vpxor	%ymm11, %ymm8, %ymm8
	vpand	%ymm4, %ymm13, %ymm11
	vpxor	%ymm11, %ymm9, %ymm9
	vpand	%ymm5, %ymm13, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm6, %ymm13, %ymm12
	vbroadcasti128	(%rdx), %ymm13
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm13, %ymm14
	vpxor	%ymm14, %ymm10, %ymm10
	vmovdqu	%ymm10, 288(%rax)
	vpand	%ymm1, %ymm13, %ymm10
	vpxor	%ymm10, %ymm7, %ymm7
	vpand	%ymm2, %ymm13, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpand	%ymm3, %ymm13, %ymm10
	vpxor	%ymm10, %ymm9, %ymm9
	vpand	%ymm4, %ymm13, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm5, %ymm13, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm6, %ymm13, %ymm12
	vbroadcasti128	(%rdx), %ymm13
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm13, %ymm14
	vpxor	%ymm14, %ymm7, %ymm7
	vmovdqu	%ymm7, 256(%rax)
	vpand	%ymm1, %ymm13, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpand	%ymm2, %ymm13, %ymm8
	vpxor	%ymm8, %ymm9, %ymm8
	vpand	%ymm3, %ymm13, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpand	%ymm4, %ymm13, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm5, %ymm13, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm6, %ymm13, %ymm12
	vbroadcasti128	(%rdx), %ymm13
	subq	%rcx, %rdx
	vpand	%ymm0, %ymm13, %ymm14
	vpxor	%ymm14, %ymm7, %ymm7
	vmovdqu	%ymm7, 224(%rax)
	vpand	%ymm1, %ymm13, %ymm7
	vpxor	%ymm7, %ymm8, %ymm7
	vpand	%ymm2, %ymm13, %ymm8
	vpxor	%ymm8, %ymm9, %ymm8
	vpand	%ymm3, %ymm13, %ymm9
	vpxor	%ymm9, %ymm10, %ymm9
	vpand	%ymm4, %ymm13, %ymm10
	vpxor	%ymm10, %ymm11, %ymm10
	vpand	%ymm5, %ymm13, %ymm11
	vpxor	%ymm11, %ymm12, %ymm11
	vpand	%ymm6, %ymm13, %ymm12
	vbroadcasti128	(%rdx), %ymm13
	vpand	%ymm0, %ymm13, %ymm0
	vpxor	%ymm0, %ymm7, %ymm0
	vmovdqu	%ymm0, 192(%rax)
	vpand	%ymm1, %ymm13, %ymm0
	vpxor	%ymm0, %ymm8, %ymm0
	vpand	%ymm2, %ymm13, %ymm1
	vpxor	%ymm1, %ymm9, %ymm1
	vpand	%ymm3, %ymm13, %ymm2
	vpxor	%ymm2, %ymm10, %ymm2
	vpand	%ymm4, %ymm13, %ymm3
	vpxor	%ymm3, %ymm11, %ymm3
	vpand	%ymm5, %ymm13, %ymm4
	vpxor	%ymm4, %ymm12, %ymm4
	vpand	%ymm6, %ymm13, %ymm5
	vmovdqu	%ymm0, 160(%rax)
	vmovdqu	%ymm1, 128(%rax)
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	%ymm3, 64(%rax)
	vmovdqu	%ymm4, 32(%rax)
	vmovdqu	%ymm5, (%rax)
	vmovdqu	560(%rax), %xmm10
	vmovdqu	%xmm10, %xmm0
	vmovdqu	%xmm10, %xmm1
	vmovdqu	%xmm10, %xmm2
	vmovdqu	528(%rax), %xmm3
	vmovdqu	%xmm3, %xmm4
	vpxor	%xmm3, %xmm0, %xmm5
	vmovdqu	%xmm3, %xmm6
	vpxor	%xmm3, %xmm2, %xmm0
	vmovdqu	496(%rax), %xmm2
	vmovdqu	%xmm2, %xmm7
	vpxor	%xmm2, %xmm4, %xmm3
	vpxor	%xmm2, %xmm1, %xmm8
	vpxor	%xmm2, %xmm6, %xmm1
	vmovdqu	464(%rax), %xmm2
	vmovdqu	%xmm2, %xmm6
	vpxor	%xmm2, %xmm7, %xmm4
	vpxor	%xmm2, %xmm5, %xmm7
	vpxor	%xmm2, %xmm8, %xmm2
	vmovdqu	432(%rax), %xmm8
	vmovdqu	%xmm8, %xmm9
	vpxor	%xmm8, %xmm6, %xmm5
	vpxor	%xmm8, %xmm3, %xmm11
	vpxor	%xmm8, %xmm7, %xmm3
	vmovdqu	400(%rax), %xmm12
	vmovdqu	%xmm12, %xmm6
	vpxor	%xmm12, %xmm9, %xmm7
	vpxor	%xmm12, %xmm4, %xmm8
	vpxor	%xmm12, %xmm11, %xmm4
	vmovdqu	368(%rax), %xmm9
	vpxor	576(%rax), %xmm9, %xmm13
	vmovdqu	%xmm13, %xmm11
	vpxor	%xmm13, %xmm6, %xmm9
	vpxor	%xmm13, %xmm5, %xmm12
	vpxor	%xmm13, %xmm8, %xmm5
	vmovdqu	336(%rax), %xmm6
	vpxor	544(%rax), %xmm6, %xmm14
	vmovdqu	%xmm14, %xmm8
	vpxor	%xmm14, %xmm11, %xmm6
	vpxor	%xmm14, %xmm7, %xmm13
	vpxor	%xmm14, %xmm12, %xmm7
	vmovdqu	304(%rax), %xmm11
	vpxor	512(%rax), %xmm11, %xmm14
	vmovdqu	%xmm14, %xmm11
	vpxor	%xmm14, %xmm8, %xmm8
	vpxor	%xmm14, %xmm9, %xmm12
	vpxor	%xmm14, %xmm13, %xmm9
	vpxor	272(%rax), %xmm10, %xmm10
	vpxor	480(%rax), %xmm10, %xmm13
	vmovdqu	%xmm13, %xmm10
	vpxor	%xmm13, %xmm11, %xmm11
	vpxor	%xmm13, %xmm6, %xmm6
	vpxor	%xmm13, %xmm12, %xmm12
	vpxor	240(%rax), %xmm0, %xmm0
	vpxor	448(%rax), %xmm0, %xmm13
	vmovdqu	%xmm13, %xmm0
	vpxor	%xmm13, %xmm10, %xmm10
	vpxor	%xmm13, %xmm8, %xmm8
	vpxor	%xmm13, %xmm6, %xmm6
	vpxor	208(%rax), %xmm1, %xmm1
	vpxor	416(%rax), %xmm1, %xmm13
	vmovdqu	%xmm13, %xmm1
	vpxor	%xmm13, %xmm0, %xmm0
	vpxor	%xmm13, %xmm11, %xmm11
	vpxor	%xmm13, %xmm8, %xmm8
	vpxor	384(%rax), %xmm2, %xmm2
	vpxor	176(%rax), %xmm2, %xmm2
	vmovdqu	%xmm2, 192(%rdi)
	vpxor	352(%rax), %xmm3, %xmm2
	vpxor	144(%rax), %xmm2, %xmm2
	vmovdqu	%xmm2, 176(%rdi)
	vpxor	320(%rax), %xmm4, %xmm2
	vpxor	112(%rax), %xmm2, %xmm2
	vmovdqu	%xmm2, 160(%rdi)
	vpxor	288(%rax), %xmm5, %xmm2
	vpxor	80(%rax), %xmm2, %xmm2
	vmovdqu	%xmm2, 144(%rdi)
	vpxor	256(%rax), %xmm7, %xmm2
	vpxor	48(%rax), %xmm2, %xmm2
	vmovdqu	%xmm2, 128(%rdi)
	vpxor	224(%rax), %xmm9, %xmm2
	vpxor	16(%rax), %xmm2, %xmm2
	vmovdqu	%xmm2, 112(%rdi)
	vpxor	192(%rax), %xmm12, %xmm2
	vmovdqu	%xmm2, 96(%rdi)
	vpxor	160(%rax), %xmm6, %xmm2
	vmovdqu	%xmm2, 80(%rdi)
	vpxor	128(%rax), %xmm8, %xmm2
	vmovdqu	%xmm2, 64(%rdi)
	vpxor	96(%rax), %xmm11, %xmm2
	vmovdqu	%xmm2, 48(%rdi)
	vpxor	64(%rax), %xmm10, %xmm2
	vmovdqu	%xmm2, 32(%rdi)
	vpxor	32(%rax), %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rdi)
	vpxor	(%rax), %xmm1, %xmm0
	vmovdqu	%xmm0, (%rdi)
	movq	%r10, %rsp
	ret 
