#define transpose_64x128_sp_asm CRYPTO_NAMESPACE(transpose_64x128_sp_asm)
#define _transpose_64x128_sp_asm _CRYPTO_NAMESPACE(transpose_64x128_sp_asm)
	.att_syntax
	.text
	.p2align	5
	.globl	_transpose_64x128_sp_asm
	.globl	transpose_64x128_sp_asm
_transpose_64x128_sp_asm:
transpose_64x128_sp_asm:
	vmovdqu	glob_data + 16(%rip), %xmm0
	vmovdqu	glob_data + 0(%rip), %xmm1
	vmovdqu	glob_data + 48(%rip), %xmm2
	vmovdqu	glob_data + 32(%rip), %xmm3
	vmovdqu	glob_data + 80(%rip), %xmm4
	vmovdqu	glob_data + 64(%rip), %xmm5
	vmovdqu	(%rdi), %xmm6
	vmovdqu	128(%rdi), %xmm7
	vmovdqu	256(%rdi), %xmm8
	vmovdqu	384(%rdi), %xmm9
	vmovdqu	512(%rdi), %xmm13
	vmovdqu	640(%rdi), %xmm12
	vmovdqu	768(%rdi), %xmm14
	vmovdqu	896(%rdi), %xmm10
	vpand	%xmm0, %xmm6, %xmm11
	vpsllq	$32, %xmm13, %xmm15
	vpsrlq	$32, %xmm6, %xmm6
	vpand	%xmm1, %xmm13, %xmm13
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm13, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm13
	vpsllq	$32, %xmm12, %xmm15
	vpsrlq	$32, %xmm7, %xmm7
	vpand	%xmm1, %xmm12, %xmm12
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm12, %xmm7, %xmm7
	vpand	%xmm0, %xmm8, %xmm12
	vpsllq	$32, %xmm14, %xmm15
	vpsrlq	$32, %xmm8, %xmm8
	vpand	%xmm1, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm8, %xmm8
	vpand	%xmm0, %xmm9, %xmm14
	vpsllq	$32, %xmm10, %xmm15
	vpsrlq	$32, %xmm9, %xmm9
	vpand	%xmm1, %xmm10, %xmm10
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm10, %xmm9, %xmm9
	vpand	%xmm2, %xmm11, %xmm10
	vpslld	$16, %xmm12, %xmm15
	vpsrld	$16, %xmm11, %xmm11
	vpand	%xmm3, %xmm12, %xmm12
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm2, %xmm13, %xmm12
	vpslld	$16, %xmm14, %xmm15
	vpsrld	$16, %xmm13, %xmm13
	vpand	%xmm3, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm13, %xmm13
	vpand	%xmm2, %xmm6, %xmm14
	vpslld	$16, %xmm8, %xmm15
	vpsrld	$16, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpslld	$16, %xmm9, %xmm15
	vpsrld	$16, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpsllw	$8, %xmm12, %xmm15
	vpsrlw	$8, %xmm10, %xmm10
	vpand	%xmm5, %xmm12, %xmm12
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm12, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm12
	vpsllw	$8, %xmm13, %xmm15
	vpsrlw	$8, %xmm11, %xmm11
	vpand	%xmm5, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm13, %xmm11, %xmm11
	vpand	%xmm4, %xmm14, %xmm13
	vpsllw	$8, %xmm8, %xmm15
	vpsrlw	$8, %xmm14, %xmm14
	vpand	%xmm5, %xmm8, %xmm8
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm14, %xmm8
	vpand	%xmm4, %xmm6, %xmm14
	vpsllw	$8, %xmm7, %xmm15
	vpsrlw	$8, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, (%rdi)
	vmovdqu	%xmm10, 128(%rdi)
	vmovdqu	%xmm12, 256(%rdi)
	vmovdqu	%xmm11, 384(%rdi)
	vmovdqu	%xmm13, 512(%rdi)
	vmovdqu	%xmm8, 640(%rdi)
	vmovdqu	%xmm14, 768(%rdi)
	vmovdqu	%xmm6, 896(%rdi)
	vmovdqu	16(%rdi), %xmm6
	vmovdqu	144(%rdi), %xmm7
	vmovdqu	272(%rdi), %xmm8
	vmovdqu	400(%rdi), %xmm9
	vmovdqu	528(%rdi), %xmm13
	vmovdqu	656(%rdi), %xmm12
	vmovdqu	784(%rdi), %xmm14
	vmovdqu	912(%rdi), %xmm10
	vpand	%xmm0, %xmm6, %xmm11
	vpsllq	$32, %xmm13, %xmm15
	vpsrlq	$32, %xmm6, %xmm6
	vpand	%xmm1, %xmm13, %xmm13
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm13, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm13
	vpsllq	$32, %xmm12, %xmm15
	vpsrlq	$32, %xmm7, %xmm7
	vpand	%xmm1, %xmm12, %xmm12
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm12, %xmm7, %xmm7
	vpand	%xmm0, %xmm8, %xmm12
	vpsllq	$32, %xmm14, %xmm15
	vpsrlq	$32, %xmm8, %xmm8
	vpand	%xmm1, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm8, %xmm8
	vpand	%xmm0, %xmm9, %xmm14
	vpsllq	$32, %xmm10, %xmm15
	vpsrlq	$32, %xmm9, %xmm9
	vpand	%xmm1, %xmm10, %xmm10
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm10, %xmm9, %xmm9
	vpand	%xmm2, %xmm11, %xmm10
	vpslld	$16, %xmm12, %xmm15
	vpsrld	$16, %xmm11, %xmm11
	vpand	%xmm3, %xmm12, %xmm12
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm2, %xmm13, %xmm12
	vpslld	$16, %xmm14, %xmm15
	vpsrld	$16, %xmm13, %xmm13
	vpand	%xmm3, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm13, %xmm13
	vpand	%xmm2, %xmm6, %xmm14
	vpslld	$16, %xmm8, %xmm15
	vpsrld	$16, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpslld	$16, %xmm9, %xmm15
	vpsrld	$16, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpsllw	$8, %xmm12, %xmm15
	vpsrlw	$8, %xmm10, %xmm10
	vpand	%xmm5, %xmm12, %xmm12
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm12, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm12
	vpsllw	$8, %xmm13, %xmm15
	vpsrlw	$8, %xmm11, %xmm11
	vpand	%xmm5, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm13, %xmm11, %xmm11
	vpand	%xmm4, %xmm14, %xmm13
	vpsllw	$8, %xmm8, %xmm15
	vpsrlw	$8, %xmm14, %xmm14
	vpand	%xmm5, %xmm8, %xmm8
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm14, %xmm8
	vpand	%xmm4, %xmm6, %xmm14
	vpsllw	$8, %xmm7, %xmm15
	vpsrlw	$8, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 16(%rdi)
	vmovdqu	%xmm10, 144(%rdi)
	vmovdqu	%xmm12, 272(%rdi)
	vmovdqu	%xmm11, 400(%rdi)
	vmovdqu	%xmm13, 528(%rdi)
	vmovdqu	%xmm8, 656(%rdi)
	vmovdqu	%xmm14, 784(%rdi)
	vmovdqu	%xmm6, 912(%rdi)
	vmovdqu	32(%rdi), %xmm6
	vmovdqu	160(%rdi), %xmm7
	vmovdqu	288(%rdi), %xmm8
	vmovdqu	416(%rdi), %xmm9
	vmovdqu	544(%rdi), %xmm13
	vmovdqu	672(%rdi), %xmm12
	vmovdqu	800(%rdi), %xmm14
	vmovdqu	928(%rdi), %xmm10
	vpand	%xmm0, %xmm6, %xmm11
	vpsllq	$32, %xmm13, %xmm15
	vpsrlq	$32, %xmm6, %xmm6
	vpand	%xmm1, %xmm13, %xmm13
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm13, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm13
	vpsllq	$32, %xmm12, %xmm15
	vpsrlq	$32, %xmm7, %xmm7
	vpand	%xmm1, %xmm12, %xmm12
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm12, %xmm7, %xmm7
	vpand	%xmm0, %xmm8, %xmm12
	vpsllq	$32, %xmm14, %xmm15
	vpsrlq	$32, %xmm8, %xmm8
	vpand	%xmm1, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm8, %xmm8
	vpand	%xmm0, %xmm9, %xmm14
	vpsllq	$32, %xmm10, %xmm15
	vpsrlq	$32, %xmm9, %xmm9
	vpand	%xmm1, %xmm10, %xmm10
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm10, %xmm9, %xmm9
	vpand	%xmm2, %xmm11, %xmm10
	vpslld	$16, %xmm12, %xmm15
	vpsrld	$16, %xmm11, %xmm11
	vpand	%xmm3, %xmm12, %xmm12
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm2, %xmm13, %xmm12
	vpslld	$16, %xmm14, %xmm15
	vpsrld	$16, %xmm13, %xmm13
	vpand	%xmm3, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm13, %xmm13
	vpand	%xmm2, %xmm6, %xmm14
	vpslld	$16, %xmm8, %xmm15
	vpsrld	$16, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpslld	$16, %xmm9, %xmm15
	vpsrld	$16, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpsllw	$8, %xmm12, %xmm15
	vpsrlw	$8, %xmm10, %xmm10
	vpand	%xmm5, %xmm12, %xmm12
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm12, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm12
	vpsllw	$8, %xmm13, %xmm15
	vpsrlw	$8, %xmm11, %xmm11
	vpand	%xmm5, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm13, %xmm11, %xmm11
	vpand	%xmm4, %xmm14, %xmm13
	vpsllw	$8, %xmm8, %xmm15
	vpsrlw	$8, %xmm14, %xmm14
	vpand	%xmm5, %xmm8, %xmm8
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm14, %xmm8
	vpand	%xmm4, %xmm6, %xmm14
	vpsllw	$8, %xmm7, %xmm15
	vpsrlw	$8, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 32(%rdi)
	vmovdqu	%xmm10, 160(%rdi)
	vmovdqu	%xmm12, 288(%rdi)
	vmovdqu	%xmm11, 416(%rdi)
	vmovdqu	%xmm13, 544(%rdi)
	vmovdqu	%xmm8, 672(%rdi)
	vmovdqu	%xmm14, 800(%rdi)
	vmovdqu	%xmm6, 928(%rdi)
	vmovdqu	48(%rdi), %xmm6
	vmovdqu	176(%rdi), %xmm7
	vmovdqu	304(%rdi), %xmm8
	vmovdqu	432(%rdi), %xmm9
	vmovdqu	560(%rdi), %xmm13
	vmovdqu	688(%rdi), %xmm12
	vmovdqu	816(%rdi), %xmm14
	vmovdqu	944(%rdi), %xmm10
	vpand	%xmm0, %xmm6, %xmm11
	vpsllq	$32, %xmm13, %xmm15
	vpsrlq	$32, %xmm6, %xmm6
	vpand	%xmm1, %xmm13, %xmm13
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm13, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm13
	vpsllq	$32, %xmm12, %xmm15
	vpsrlq	$32, %xmm7, %xmm7
	vpand	%xmm1, %xmm12, %xmm12
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm12, %xmm7, %xmm7
	vpand	%xmm0, %xmm8, %xmm12
	vpsllq	$32, %xmm14, %xmm15
	vpsrlq	$32, %xmm8, %xmm8
	vpand	%xmm1, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm8, %xmm8
	vpand	%xmm0, %xmm9, %xmm14
	vpsllq	$32, %xmm10, %xmm15
	vpsrlq	$32, %xmm9, %xmm9
	vpand	%xmm1, %xmm10, %xmm10
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm10, %xmm9, %xmm9
	vpand	%xmm2, %xmm11, %xmm10
	vpslld	$16, %xmm12, %xmm15
	vpsrld	$16, %xmm11, %xmm11
	vpand	%xmm3, %xmm12, %xmm12
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm2, %xmm13, %xmm12
	vpslld	$16, %xmm14, %xmm15
	vpsrld	$16, %xmm13, %xmm13
	vpand	%xmm3, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm13, %xmm13
	vpand	%xmm2, %xmm6, %xmm14
	vpslld	$16, %xmm8, %xmm15
	vpsrld	$16, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpslld	$16, %xmm9, %xmm15
	vpsrld	$16, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpsllw	$8, %xmm12, %xmm15
	vpsrlw	$8, %xmm10, %xmm10
	vpand	%xmm5, %xmm12, %xmm12
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm12, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm12
	vpsllw	$8, %xmm13, %xmm15
	vpsrlw	$8, %xmm11, %xmm11
	vpand	%xmm5, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm13, %xmm11, %xmm11
	vpand	%xmm4, %xmm14, %xmm13
	vpsllw	$8, %xmm8, %xmm15
	vpsrlw	$8, %xmm14, %xmm14
	vpand	%xmm5, %xmm8, %xmm8
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm14, %xmm8
	vpand	%xmm4, %xmm6, %xmm14
	vpsllw	$8, %xmm7, %xmm15
	vpsrlw	$8, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 48(%rdi)
	vmovdqu	%xmm10, 176(%rdi)
	vmovdqu	%xmm12, 304(%rdi)
	vmovdqu	%xmm11, 432(%rdi)
	vmovdqu	%xmm13, 560(%rdi)
	vmovdqu	%xmm8, 688(%rdi)
	vmovdqu	%xmm14, 816(%rdi)
	vmovdqu	%xmm6, 944(%rdi)
	vmovdqu	64(%rdi), %xmm6
	vmovdqu	192(%rdi), %xmm7
	vmovdqu	320(%rdi), %xmm8
	vmovdqu	448(%rdi), %xmm9
	vmovdqu	576(%rdi), %xmm13
	vmovdqu	704(%rdi), %xmm12
	vmovdqu	832(%rdi), %xmm14
	vmovdqu	960(%rdi), %xmm10
	vpand	%xmm0, %xmm6, %xmm11
	vpsllq	$32, %xmm13, %xmm15
	vpsrlq	$32, %xmm6, %xmm6
	vpand	%xmm1, %xmm13, %xmm13
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm13, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm13
	vpsllq	$32, %xmm12, %xmm15
	vpsrlq	$32, %xmm7, %xmm7
	vpand	%xmm1, %xmm12, %xmm12
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm12, %xmm7, %xmm7
	vpand	%xmm0, %xmm8, %xmm12
	vpsllq	$32, %xmm14, %xmm15
	vpsrlq	$32, %xmm8, %xmm8
	vpand	%xmm1, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm8, %xmm8
	vpand	%xmm0, %xmm9, %xmm14
	vpsllq	$32, %xmm10, %xmm15
	vpsrlq	$32, %xmm9, %xmm9
	vpand	%xmm1, %xmm10, %xmm10
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm10, %xmm9, %xmm9
	vpand	%xmm2, %xmm11, %xmm10
	vpslld	$16, %xmm12, %xmm15
	vpsrld	$16, %xmm11, %xmm11
	vpand	%xmm3, %xmm12, %xmm12
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm2, %xmm13, %xmm12
	vpslld	$16, %xmm14, %xmm15
	vpsrld	$16, %xmm13, %xmm13
	vpand	%xmm3, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm13, %xmm13
	vpand	%xmm2, %xmm6, %xmm14
	vpslld	$16, %xmm8, %xmm15
	vpsrld	$16, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpslld	$16, %xmm9, %xmm15
	vpsrld	$16, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpsllw	$8, %xmm12, %xmm15
	vpsrlw	$8, %xmm10, %xmm10
	vpand	%xmm5, %xmm12, %xmm12
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm12, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm12
	vpsllw	$8, %xmm13, %xmm15
	vpsrlw	$8, %xmm11, %xmm11
	vpand	%xmm5, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm13, %xmm11, %xmm11
	vpand	%xmm4, %xmm14, %xmm13
	vpsllw	$8, %xmm8, %xmm15
	vpsrlw	$8, %xmm14, %xmm14
	vpand	%xmm5, %xmm8, %xmm8
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm14, %xmm8
	vpand	%xmm4, %xmm6, %xmm14
	vpsllw	$8, %xmm7, %xmm15
	vpsrlw	$8, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 64(%rdi)
	vmovdqu	%xmm10, 192(%rdi)
	vmovdqu	%xmm12, 320(%rdi)
	vmovdqu	%xmm11, 448(%rdi)
	vmovdqu	%xmm13, 576(%rdi)
	vmovdqu	%xmm8, 704(%rdi)
	vmovdqu	%xmm14, 832(%rdi)
	vmovdqu	%xmm6, 960(%rdi)
	vmovdqu	80(%rdi), %xmm6
	vmovdqu	208(%rdi), %xmm7
	vmovdqu	336(%rdi), %xmm8
	vmovdqu	464(%rdi), %xmm9
	vmovdqu	592(%rdi), %xmm13
	vmovdqu	720(%rdi), %xmm12
	vmovdqu	848(%rdi), %xmm14
	vmovdqu	976(%rdi), %xmm10
	vpand	%xmm0, %xmm6, %xmm11
	vpsllq	$32, %xmm13, %xmm15
	vpsrlq	$32, %xmm6, %xmm6
	vpand	%xmm1, %xmm13, %xmm13
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm13, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm13
	vpsllq	$32, %xmm12, %xmm15
	vpsrlq	$32, %xmm7, %xmm7
	vpand	%xmm1, %xmm12, %xmm12
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm12, %xmm7, %xmm7
	vpand	%xmm0, %xmm8, %xmm12
	vpsllq	$32, %xmm14, %xmm15
	vpsrlq	$32, %xmm8, %xmm8
	vpand	%xmm1, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm8, %xmm8
	vpand	%xmm0, %xmm9, %xmm14
	vpsllq	$32, %xmm10, %xmm15
	vpsrlq	$32, %xmm9, %xmm9
	vpand	%xmm1, %xmm10, %xmm10
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm10, %xmm9, %xmm9
	vpand	%xmm2, %xmm11, %xmm10
	vpslld	$16, %xmm12, %xmm15
	vpsrld	$16, %xmm11, %xmm11
	vpand	%xmm3, %xmm12, %xmm12
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm2, %xmm13, %xmm12
	vpslld	$16, %xmm14, %xmm15
	vpsrld	$16, %xmm13, %xmm13
	vpand	%xmm3, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm13, %xmm13
	vpand	%xmm2, %xmm6, %xmm14
	vpslld	$16, %xmm8, %xmm15
	vpsrld	$16, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpslld	$16, %xmm9, %xmm15
	vpsrld	$16, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpsllw	$8, %xmm12, %xmm15
	vpsrlw	$8, %xmm10, %xmm10
	vpand	%xmm5, %xmm12, %xmm12
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm12, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm12
	vpsllw	$8, %xmm13, %xmm15
	vpsrlw	$8, %xmm11, %xmm11
	vpand	%xmm5, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm13, %xmm11, %xmm11
	vpand	%xmm4, %xmm14, %xmm13
	vpsllw	$8, %xmm8, %xmm15
	vpsrlw	$8, %xmm14, %xmm14
	vpand	%xmm5, %xmm8, %xmm8
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm14, %xmm8
	vpand	%xmm4, %xmm6, %xmm14
	vpsllw	$8, %xmm7, %xmm15
	vpsrlw	$8, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 80(%rdi)
	vmovdqu	%xmm10, 208(%rdi)
	vmovdqu	%xmm12, 336(%rdi)
	vmovdqu	%xmm11, 464(%rdi)
	vmovdqu	%xmm13, 592(%rdi)
	vmovdqu	%xmm8, 720(%rdi)
	vmovdqu	%xmm14, 848(%rdi)
	vmovdqu	%xmm6, 976(%rdi)
	vmovdqu	96(%rdi), %xmm6
	vmovdqu	224(%rdi), %xmm7
	vmovdqu	352(%rdi), %xmm8
	vmovdqu	480(%rdi), %xmm9
	vmovdqu	608(%rdi), %xmm13
	vmovdqu	736(%rdi), %xmm12
	vmovdqu	864(%rdi), %xmm14
	vmovdqu	992(%rdi), %xmm10
	vpand	%xmm0, %xmm6, %xmm11
	vpsllq	$32, %xmm13, %xmm15
	vpsrlq	$32, %xmm6, %xmm6
	vpand	%xmm1, %xmm13, %xmm13
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm13, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm13
	vpsllq	$32, %xmm12, %xmm15
	vpsrlq	$32, %xmm7, %xmm7
	vpand	%xmm1, %xmm12, %xmm12
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm12, %xmm7, %xmm7
	vpand	%xmm0, %xmm8, %xmm12
	vpsllq	$32, %xmm14, %xmm15
	vpsrlq	$32, %xmm8, %xmm8
	vpand	%xmm1, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm8, %xmm8
	vpand	%xmm0, %xmm9, %xmm14
	vpsllq	$32, %xmm10, %xmm15
	vpsrlq	$32, %xmm9, %xmm9
	vpand	%xmm1, %xmm10, %xmm10
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm10, %xmm9, %xmm9
	vpand	%xmm2, %xmm11, %xmm10
	vpslld	$16, %xmm12, %xmm15
	vpsrld	$16, %xmm11, %xmm11
	vpand	%xmm3, %xmm12, %xmm12
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm2, %xmm13, %xmm12
	vpslld	$16, %xmm14, %xmm15
	vpsrld	$16, %xmm13, %xmm13
	vpand	%xmm3, %xmm14, %xmm14
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm14, %xmm13, %xmm13
	vpand	%xmm2, %xmm6, %xmm14
	vpslld	$16, %xmm8, %xmm15
	vpsrld	$16, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpslld	$16, %xmm9, %xmm15
	vpsrld	$16, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpsllw	$8, %xmm12, %xmm15
	vpsrlw	$8, %xmm10, %xmm10
	vpand	%xmm5, %xmm12, %xmm12
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm12, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm12
	vpsllw	$8, %xmm13, %xmm15
	vpsrlw	$8, %xmm11, %xmm11
	vpand	%xmm5, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm13, %xmm11, %xmm11
	vpand	%xmm4, %xmm14, %xmm13
	vpsllw	$8, %xmm8, %xmm15
	vpsrlw	$8, %xmm14, %xmm14
	vpand	%xmm5, %xmm8, %xmm8
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm14, %xmm8
	vpand	%xmm4, %xmm6, %xmm14
	vpsllw	$8, %xmm7, %xmm15
	vpsrlw	$8, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 96(%rdi)
	vmovdqu	%xmm10, 224(%rdi)
	vmovdqu	%xmm12, 352(%rdi)
	vmovdqu	%xmm11, 480(%rdi)
	vmovdqu	%xmm13, 608(%rdi)
	vmovdqu	%xmm8, 736(%rdi)
	vmovdqu	%xmm14, 864(%rdi)
	vmovdqu	%xmm6, 992(%rdi)
	vmovdqu	112(%rdi), %xmm11
	vmovdqu	240(%rdi), %xmm12
	vmovdqu	368(%rdi), %xmm6
	vmovdqu	496(%rdi), %xmm7
	vmovdqu	624(%rdi), %xmm14
	vmovdqu	752(%rdi), %xmm13
	vmovdqu	880(%rdi), %xmm8
	vmovdqu	1008(%rdi), %xmm9
	vpand	%xmm0, %xmm11, %xmm10
	vpsllq	$32, %xmm14, %xmm15
	vpsrlq	$32, %xmm11, %xmm11
	vpand	%xmm1, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm14, %xmm11, %xmm11
	vpand	%xmm0, %xmm12, %xmm14
	vpsllq	$32, %xmm13, %xmm15
	vpsrlq	$32, %xmm12, %xmm12
	vpand	%xmm1, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm13, %xmm12, %xmm12
	vpand	%xmm0, %xmm6, %xmm13
	vpsllq	$32, %xmm8, %xmm15
	vpsrlq	$32, %xmm6, %xmm6
	vpand	%xmm1, %xmm8, %xmm8
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm0
	vpsllq	$32, %xmm9, %xmm8
	vpsrlq	$32, %xmm7, %xmm7
	vpand	%xmm1, %xmm9, %xmm1
	vpor	%xmm8, %xmm0, %xmm8
	vpor	%xmm1, %xmm7, %xmm0
	vpand	%xmm2, %xmm10, %xmm1
	vpslld	$16, %xmm13, %xmm7
	vpsrld	$16, %xmm10, %xmm9
	vpand	%xmm3, %xmm13, %xmm10
	vpor	%xmm7, %xmm1, %xmm1
	vpor	%xmm10, %xmm9, %xmm7
	vpand	%xmm2, %xmm14, %xmm9
	vpslld	$16, %xmm8, %xmm10
	vpsrld	$16, %xmm14, %xmm13
	vpand	%xmm3, %xmm8, %xmm8
	vpor	%xmm10, %xmm9, %xmm10
	vpor	%xmm8, %xmm13, %xmm8
	vpand	%xmm2, %xmm11, %xmm9
	vpslld	$16, %xmm6, %xmm13
	vpsrld	$16, %xmm11, %xmm11
	vpand	%xmm3, %xmm6, %xmm14
	vpor	%xmm13, %xmm9, %xmm6
	vpor	%xmm14, %xmm11, %xmm9
	vpand	%xmm2, %xmm12, %xmm2
	vpslld	$16, %xmm0, %xmm11
	vpsrld	$16, %xmm12, %xmm12
	vpand	%xmm3, %xmm0, %xmm3
	vpor	%xmm11, %xmm2, %xmm0
	vpor	%xmm3, %xmm12, %xmm2
	vpand	%xmm4, %xmm1, %xmm3
	vpsllw	$8, %xmm10, %xmm11
	vpsrlw	$8, %xmm1, %xmm12
	vpand	%xmm5, %xmm10, %xmm10
	vpor	%xmm11, %xmm3, %xmm1
	vpor	%xmm10, %xmm12, %xmm3
	vpand	%xmm4, %xmm7, %xmm10
	vpsllw	$8, %xmm8, %xmm11
	vpsrlw	$8, %xmm7, %xmm12
	vpand	%xmm5, %xmm8, %xmm8
	vpor	%xmm11, %xmm10, %xmm7
	vpor	%xmm8, %xmm12, %xmm8
	vpand	%xmm4, %xmm6, %xmm10
	vpsllw	$8, %xmm0, %xmm11
	vpsrlw	$8, %xmm6, %xmm6
	vpand	%xmm5, %xmm0, %xmm12
	vpor	%xmm11, %xmm10, %xmm0
	vpor	%xmm12, %xmm6, %xmm6
	vpand	%xmm4, %xmm9, %xmm4
	vpsllw	$8, %xmm2, %xmm10
	vpsrlw	$8, %xmm9, %xmm9
	vpand	%xmm5, %xmm2, %xmm2
	vpor	%xmm10, %xmm4, %xmm4
	vpor	%xmm2, %xmm9, %xmm2
	vmovdqu	%xmm1, 112(%rdi)
	vmovdqu	%xmm3, 240(%rdi)
	vmovdqu	%xmm7, 368(%rdi)
	vmovdqu	%xmm8, 496(%rdi)
	vmovdqu	%xmm0, 624(%rdi)
	vmovdqu	%xmm6, 752(%rdi)
	vmovdqu	%xmm4, 880(%rdi)
	vmovdqu	%xmm2, 1008(%rdi)
	vmovdqu	glob_data + 112(%rip), %xmm0
	vmovdqu	glob_data + 96(%rip), %xmm1
	vmovdqu	glob_data + 144(%rip), %xmm2
	vmovdqu	glob_data + 128(%rip), %xmm3
	vmovdqu	glob_data + 176(%rip), %xmm4
	vmovdqu	glob_data + 160(%rip), %xmm5
	vmovdqu	(%rdi), %xmm13
	vmovdqu	16(%rdi), %xmm11
	vmovdqu	32(%rdi), %xmm12
	vmovdqu	48(%rdi), %xmm10
	vmovdqu	64(%rdi), %xmm6
	vmovdqu	80(%rdi), %xmm7
	vmovdqu	96(%rdi), %xmm8
	vmovdqu	112(%rdi), %xmm9
	vpand	%xmm0, %xmm13, %xmm14
	vpand	%xmm0, %xmm6, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm13, %xmm13
	vpand	%xmm1, %xmm6, %xmm6
	vpsrlq	$4, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm6, %xmm13, %xmm6
	vpand	%xmm0, %xmm11, %xmm13
	vpand	%xmm0, %xmm7, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm11, %xmm11
	vpand	%xmm1, %xmm7, %xmm7
	vpsrlq	$4, %xmm11, %xmm11
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm11, %xmm7
	vpand	%xmm0, %xmm12, %xmm11
	vpand	%xmm0, %xmm8, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm12, %xmm12
	vpand	%xmm1, %xmm8, %xmm8
	vpsrlq	$4, %xmm12, %xmm12
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm8, %xmm12, %xmm8
	vpand	%xmm0, %xmm10, %xmm12
	vpand	%xmm0, %xmm9, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm10, %xmm10
	vpand	%xmm1, %xmm9, %xmm9
	vpsrlq	$4, %xmm10, %xmm10
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm9, %xmm10, %xmm9
	vpand	%xmm2, %xmm14, %xmm10
	vpand	%xmm2, %xmm11, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm14, %xmm14
	vpand	%xmm3, %xmm11, %xmm11
	vpsrlq	$2, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm11, %xmm14, %xmm11
	vpand	%xmm2, %xmm13, %xmm14
	vpand	%xmm2, %xmm12, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm13, %xmm13
	vpand	%xmm3, %xmm12, %xmm12
	vpsrlq	$2, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm13, %xmm12
	vpand	%xmm2, %xmm6, %xmm13
	vpand	%xmm2, %xmm8, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpsrlq	$2, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpand	%xmm2, %xmm9, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpsrlq	$2, %xmm7, %xmm7
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpand	%xmm4, %xmm14, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm10, %xmm10
	vpand	%xmm5, %xmm14, %xmm14
	vpsrlq	$1, %xmm10, %xmm10
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm14, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm14
	vpand	%xmm4, %xmm12, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm11, %xmm11
	vpand	%xmm5, %xmm12, %xmm12
	vpsrlq	$1, %xmm11, %xmm11
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm4, %xmm13, %xmm12
	vpand	%xmm4, %xmm8, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm13, %xmm13
	vpand	%xmm5, %xmm8, %xmm8
	vpsrlq	$1, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm8, %xmm13, %xmm8
	vpand	%xmm4, %xmm6, %xmm13
	vpand	%xmm4, %xmm7, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpsrlq	$1, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, (%rdi)
	vmovdqu	%xmm10, 16(%rdi)
	vmovdqu	%xmm14, 32(%rdi)
	vmovdqu	%xmm11, 48(%rdi)
	vmovdqu	%xmm12, 64(%rdi)
	vmovdqu	%xmm8, 80(%rdi)
	vmovdqu	%xmm13, 96(%rdi)
	vmovdqu	%xmm6, 112(%rdi)
	vmovdqu	128(%rdi), %xmm13
	vmovdqu	144(%rdi), %xmm11
	vmovdqu	160(%rdi), %xmm12
	vmovdqu	176(%rdi), %xmm10
	vmovdqu	192(%rdi), %xmm6
	vmovdqu	208(%rdi), %xmm7
	vmovdqu	224(%rdi), %xmm8
	vmovdqu	240(%rdi), %xmm9
	vpand	%xmm0, %xmm13, %xmm14
	vpand	%xmm0, %xmm6, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm13, %xmm13
	vpand	%xmm1, %xmm6, %xmm6
	vpsrlq	$4, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm6, %xmm13, %xmm6
	vpand	%xmm0, %xmm11, %xmm13
	vpand	%xmm0, %xmm7, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm11, %xmm11
	vpand	%xmm1, %xmm7, %xmm7
	vpsrlq	$4, %xmm11, %xmm11
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm11, %xmm7
	vpand	%xmm0, %xmm12, %xmm11
	vpand	%xmm0, %xmm8, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm12, %xmm12
	vpand	%xmm1, %xmm8, %xmm8
	vpsrlq	$4, %xmm12, %xmm12
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm8, %xmm12, %xmm8
	vpand	%xmm0, %xmm10, %xmm12
	vpand	%xmm0, %xmm9, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm10, %xmm10
	vpand	%xmm1, %xmm9, %xmm9
	vpsrlq	$4, %xmm10, %xmm10
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm9, %xmm10, %xmm9
	vpand	%xmm2, %xmm14, %xmm10
	vpand	%xmm2, %xmm11, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm14, %xmm14
	vpand	%xmm3, %xmm11, %xmm11
	vpsrlq	$2, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm11, %xmm14, %xmm11
	vpand	%xmm2, %xmm13, %xmm14
	vpand	%xmm2, %xmm12, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm13, %xmm13
	vpand	%xmm3, %xmm12, %xmm12
	vpsrlq	$2, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm13, %xmm12
	vpand	%xmm2, %xmm6, %xmm13
	vpand	%xmm2, %xmm8, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpsrlq	$2, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpand	%xmm2, %xmm9, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpsrlq	$2, %xmm7, %xmm7
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpand	%xmm4, %xmm14, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm10, %xmm10
	vpand	%xmm5, %xmm14, %xmm14
	vpsrlq	$1, %xmm10, %xmm10
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm14, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm14
	vpand	%xmm4, %xmm12, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm11, %xmm11
	vpand	%xmm5, %xmm12, %xmm12
	vpsrlq	$1, %xmm11, %xmm11
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm4, %xmm13, %xmm12
	vpand	%xmm4, %xmm8, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm13, %xmm13
	vpand	%xmm5, %xmm8, %xmm8
	vpsrlq	$1, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm8, %xmm13, %xmm8
	vpand	%xmm4, %xmm6, %xmm13
	vpand	%xmm4, %xmm7, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpsrlq	$1, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 128(%rdi)
	vmovdqu	%xmm10, 144(%rdi)
	vmovdqu	%xmm14, 160(%rdi)
	vmovdqu	%xmm11, 176(%rdi)
	vmovdqu	%xmm12, 192(%rdi)
	vmovdqu	%xmm8, 208(%rdi)
	vmovdqu	%xmm13, 224(%rdi)
	vmovdqu	%xmm6, 240(%rdi)
	vmovdqu	256(%rdi), %xmm13
	vmovdqu	272(%rdi), %xmm11
	vmovdqu	288(%rdi), %xmm12
	vmovdqu	304(%rdi), %xmm10
	vmovdqu	320(%rdi), %xmm6
	vmovdqu	336(%rdi), %xmm7
	vmovdqu	352(%rdi), %xmm8
	vmovdqu	368(%rdi), %xmm9
	vpand	%xmm0, %xmm13, %xmm14
	vpand	%xmm0, %xmm6, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm13, %xmm13
	vpand	%xmm1, %xmm6, %xmm6
	vpsrlq	$4, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm6, %xmm13, %xmm6
	vpand	%xmm0, %xmm11, %xmm13
	vpand	%xmm0, %xmm7, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm11, %xmm11
	vpand	%xmm1, %xmm7, %xmm7
	vpsrlq	$4, %xmm11, %xmm11
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm11, %xmm7
	vpand	%xmm0, %xmm12, %xmm11
	vpand	%xmm0, %xmm8, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm12, %xmm12
	vpand	%xmm1, %xmm8, %xmm8
	vpsrlq	$4, %xmm12, %xmm12
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm8, %xmm12, %xmm8
	vpand	%xmm0, %xmm10, %xmm12
	vpand	%xmm0, %xmm9, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm10, %xmm10
	vpand	%xmm1, %xmm9, %xmm9
	vpsrlq	$4, %xmm10, %xmm10
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm9, %xmm10, %xmm9
	vpand	%xmm2, %xmm14, %xmm10
	vpand	%xmm2, %xmm11, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm14, %xmm14
	vpand	%xmm3, %xmm11, %xmm11
	vpsrlq	$2, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm11, %xmm14, %xmm11
	vpand	%xmm2, %xmm13, %xmm14
	vpand	%xmm2, %xmm12, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm13, %xmm13
	vpand	%xmm3, %xmm12, %xmm12
	vpsrlq	$2, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm13, %xmm12
	vpand	%xmm2, %xmm6, %xmm13
	vpand	%xmm2, %xmm8, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpsrlq	$2, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpand	%xmm2, %xmm9, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpsrlq	$2, %xmm7, %xmm7
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpand	%xmm4, %xmm14, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm10, %xmm10
	vpand	%xmm5, %xmm14, %xmm14
	vpsrlq	$1, %xmm10, %xmm10
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm14, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm14
	vpand	%xmm4, %xmm12, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm11, %xmm11
	vpand	%xmm5, %xmm12, %xmm12
	vpsrlq	$1, %xmm11, %xmm11
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm4, %xmm13, %xmm12
	vpand	%xmm4, %xmm8, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm13, %xmm13
	vpand	%xmm5, %xmm8, %xmm8
	vpsrlq	$1, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm8, %xmm13, %xmm8
	vpand	%xmm4, %xmm6, %xmm13
	vpand	%xmm4, %xmm7, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpsrlq	$1, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 256(%rdi)
	vmovdqu	%xmm10, 272(%rdi)
	vmovdqu	%xmm14, 288(%rdi)
	vmovdqu	%xmm11, 304(%rdi)
	vmovdqu	%xmm12, 320(%rdi)
	vmovdqu	%xmm8, 336(%rdi)
	vmovdqu	%xmm13, 352(%rdi)
	vmovdqu	%xmm6, 368(%rdi)
	vmovdqu	384(%rdi), %xmm13
	vmovdqu	400(%rdi), %xmm11
	vmovdqu	416(%rdi), %xmm12
	vmovdqu	432(%rdi), %xmm10
	vmovdqu	448(%rdi), %xmm6
	vmovdqu	464(%rdi), %xmm7
	vmovdqu	480(%rdi), %xmm8
	vmovdqu	496(%rdi), %xmm9
	vpand	%xmm0, %xmm13, %xmm14
	vpand	%xmm0, %xmm6, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm13, %xmm13
	vpand	%xmm1, %xmm6, %xmm6
	vpsrlq	$4, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm6, %xmm13, %xmm6
	vpand	%xmm0, %xmm11, %xmm13
	vpand	%xmm0, %xmm7, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm11, %xmm11
	vpand	%xmm1, %xmm7, %xmm7
	vpsrlq	$4, %xmm11, %xmm11
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm11, %xmm7
	vpand	%xmm0, %xmm12, %xmm11
	vpand	%xmm0, %xmm8, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm12, %xmm12
	vpand	%xmm1, %xmm8, %xmm8
	vpsrlq	$4, %xmm12, %xmm12
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm8, %xmm12, %xmm8
	vpand	%xmm0, %xmm10, %xmm12
	vpand	%xmm0, %xmm9, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm10, %xmm10
	vpand	%xmm1, %xmm9, %xmm9
	vpsrlq	$4, %xmm10, %xmm10
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm9, %xmm10, %xmm9
	vpand	%xmm2, %xmm14, %xmm10
	vpand	%xmm2, %xmm11, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm14, %xmm14
	vpand	%xmm3, %xmm11, %xmm11
	vpsrlq	$2, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm11, %xmm14, %xmm11
	vpand	%xmm2, %xmm13, %xmm14
	vpand	%xmm2, %xmm12, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm13, %xmm13
	vpand	%xmm3, %xmm12, %xmm12
	vpsrlq	$2, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm13, %xmm12
	vpand	%xmm2, %xmm6, %xmm13
	vpand	%xmm2, %xmm8, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpsrlq	$2, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpand	%xmm2, %xmm9, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpsrlq	$2, %xmm7, %xmm7
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpand	%xmm4, %xmm14, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm10, %xmm10
	vpand	%xmm5, %xmm14, %xmm14
	vpsrlq	$1, %xmm10, %xmm10
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm14, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm14
	vpand	%xmm4, %xmm12, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm11, %xmm11
	vpand	%xmm5, %xmm12, %xmm12
	vpsrlq	$1, %xmm11, %xmm11
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm4, %xmm13, %xmm12
	vpand	%xmm4, %xmm8, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm13, %xmm13
	vpand	%xmm5, %xmm8, %xmm8
	vpsrlq	$1, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm8, %xmm13, %xmm8
	vpand	%xmm4, %xmm6, %xmm13
	vpand	%xmm4, %xmm7, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpsrlq	$1, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 384(%rdi)
	vmovdqu	%xmm10, 400(%rdi)
	vmovdqu	%xmm14, 416(%rdi)
	vmovdqu	%xmm11, 432(%rdi)
	vmovdqu	%xmm12, 448(%rdi)
	vmovdqu	%xmm8, 464(%rdi)
	vmovdqu	%xmm13, 480(%rdi)
	vmovdqu	%xmm6, 496(%rdi)
	vmovdqu	512(%rdi), %xmm13
	vmovdqu	528(%rdi), %xmm11
	vmovdqu	544(%rdi), %xmm12
	vmovdqu	560(%rdi), %xmm10
	vmovdqu	576(%rdi), %xmm6
	vmovdqu	592(%rdi), %xmm7
	vmovdqu	608(%rdi), %xmm8
	vmovdqu	624(%rdi), %xmm9
	vpand	%xmm0, %xmm13, %xmm14
	vpand	%xmm0, %xmm6, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm13, %xmm13
	vpand	%xmm1, %xmm6, %xmm6
	vpsrlq	$4, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm6, %xmm13, %xmm6
	vpand	%xmm0, %xmm11, %xmm13
	vpand	%xmm0, %xmm7, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm11, %xmm11
	vpand	%xmm1, %xmm7, %xmm7
	vpsrlq	$4, %xmm11, %xmm11
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm11, %xmm7
	vpand	%xmm0, %xmm12, %xmm11
	vpand	%xmm0, %xmm8, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm12, %xmm12
	vpand	%xmm1, %xmm8, %xmm8
	vpsrlq	$4, %xmm12, %xmm12
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm8, %xmm12, %xmm8
	vpand	%xmm0, %xmm10, %xmm12
	vpand	%xmm0, %xmm9, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm10, %xmm10
	vpand	%xmm1, %xmm9, %xmm9
	vpsrlq	$4, %xmm10, %xmm10
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm9, %xmm10, %xmm9
	vpand	%xmm2, %xmm14, %xmm10
	vpand	%xmm2, %xmm11, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm14, %xmm14
	vpand	%xmm3, %xmm11, %xmm11
	vpsrlq	$2, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm11, %xmm14, %xmm11
	vpand	%xmm2, %xmm13, %xmm14
	vpand	%xmm2, %xmm12, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm13, %xmm13
	vpand	%xmm3, %xmm12, %xmm12
	vpsrlq	$2, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm13, %xmm12
	vpand	%xmm2, %xmm6, %xmm13
	vpand	%xmm2, %xmm8, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpsrlq	$2, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpand	%xmm2, %xmm9, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpsrlq	$2, %xmm7, %xmm7
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpand	%xmm4, %xmm14, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm10, %xmm10
	vpand	%xmm5, %xmm14, %xmm14
	vpsrlq	$1, %xmm10, %xmm10
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm14, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm14
	vpand	%xmm4, %xmm12, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm11, %xmm11
	vpand	%xmm5, %xmm12, %xmm12
	vpsrlq	$1, %xmm11, %xmm11
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm4, %xmm13, %xmm12
	vpand	%xmm4, %xmm8, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm13, %xmm13
	vpand	%xmm5, %xmm8, %xmm8
	vpsrlq	$1, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm8, %xmm13, %xmm8
	vpand	%xmm4, %xmm6, %xmm13
	vpand	%xmm4, %xmm7, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpsrlq	$1, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 512(%rdi)
	vmovdqu	%xmm10, 528(%rdi)
	vmovdqu	%xmm14, 544(%rdi)
	vmovdqu	%xmm11, 560(%rdi)
	vmovdqu	%xmm12, 576(%rdi)
	vmovdqu	%xmm8, 592(%rdi)
	vmovdqu	%xmm13, 608(%rdi)
	vmovdqu	%xmm6, 624(%rdi)
	vmovdqu	640(%rdi), %xmm13
	vmovdqu	656(%rdi), %xmm11
	vmovdqu	672(%rdi), %xmm12
	vmovdqu	688(%rdi), %xmm10
	vmovdqu	704(%rdi), %xmm6
	vmovdqu	720(%rdi), %xmm7
	vmovdqu	736(%rdi), %xmm8
	vmovdqu	752(%rdi), %xmm9
	vpand	%xmm0, %xmm13, %xmm14
	vpand	%xmm0, %xmm6, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm13, %xmm13
	vpand	%xmm1, %xmm6, %xmm6
	vpsrlq	$4, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm6, %xmm13, %xmm6
	vpand	%xmm0, %xmm11, %xmm13
	vpand	%xmm0, %xmm7, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm11, %xmm11
	vpand	%xmm1, %xmm7, %xmm7
	vpsrlq	$4, %xmm11, %xmm11
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm11, %xmm7
	vpand	%xmm0, %xmm12, %xmm11
	vpand	%xmm0, %xmm8, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm12, %xmm12
	vpand	%xmm1, %xmm8, %xmm8
	vpsrlq	$4, %xmm12, %xmm12
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm8, %xmm12, %xmm8
	vpand	%xmm0, %xmm10, %xmm12
	vpand	%xmm0, %xmm9, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm10, %xmm10
	vpand	%xmm1, %xmm9, %xmm9
	vpsrlq	$4, %xmm10, %xmm10
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm9, %xmm10, %xmm9
	vpand	%xmm2, %xmm14, %xmm10
	vpand	%xmm2, %xmm11, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm14, %xmm14
	vpand	%xmm3, %xmm11, %xmm11
	vpsrlq	$2, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm11, %xmm14, %xmm11
	vpand	%xmm2, %xmm13, %xmm14
	vpand	%xmm2, %xmm12, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm13, %xmm13
	vpand	%xmm3, %xmm12, %xmm12
	vpsrlq	$2, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm13, %xmm12
	vpand	%xmm2, %xmm6, %xmm13
	vpand	%xmm2, %xmm8, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpsrlq	$2, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpand	%xmm2, %xmm9, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpsrlq	$2, %xmm7, %xmm7
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpand	%xmm4, %xmm14, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm10, %xmm10
	vpand	%xmm5, %xmm14, %xmm14
	vpsrlq	$1, %xmm10, %xmm10
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm14, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm14
	vpand	%xmm4, %xmm12, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm11, %xmm11
	vpand	%xmm5, %xmm12, %xmm12
	vpsrlq	$1, %xmm11, %xmm11
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm4, %xmm13, %xmm12
	vpand	%xmm4, %xmm8, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm13, %xmm13
	vpand	%xmm5, %xmm8, %xmm8
	vpsrlq	$1, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm8, %xmm13, %xmm8
	vpand	%xmm4, %xmm6, %xmm13
	vpand	%xmm4, %xmm7, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpsrlq	$1, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 640(%rdi)
	vmovdqu	%xmm10, 656(%rdi)
	vmovdqu	%xmm14, 672(%rdi)
	vmovdqu	%xmm11, 688(%rdi)
	vmovdqu	%xmm12, 704(%rdi)
	vmovdqu	%xmm8, 720(%rdi)
	vmovdqu	%xmm13, 736(%rdi)
	vmovdqu	%xmm6, 752(%rdi)
	vmovdqu	768(%rdi), %xmm13
	vmovdqu	784(%rdi), %xmm11
	vmovdqu	800(%rdi), %xmm12
	vmovdqu	816(%rdi), %xmm10
	vmovdqu	832(%rdi), %xmm6
	vmovdqu	848(%rdi), %xmm7
	vmovdqu	864(%rdi), %xmm8
	vmovdqu	880(%rdi), %xmm9
	vpand	%xmm0, %xmm13, %xmm14
	vpand	%xmm0, %xmm6, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm13, %xmm13
	vpand	%xmm1, %xmm6, %xmm6
	vpsrlq	$4, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm6, %xmm13, %xmm6
	vpand	%xmm0, %xmm11, %xmm13
	vpand	%xmm0, %xmm7, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm11, %xmm11
	vpand	%xmm1, %xmm7, %xmm7
	vpsrlq	$4, %xmm11, %xmm11
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm11, %xmm7
	vpand	%xmm0, %xmm12, %xmm11
	vpand	%xmm0, %xmm8, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm12, %xmm12
	vpand	%xmm1, %xmm8, %xmm8
	vpsrlq	$4, %xmm12, %xmm12
	vpor	%xmm15, %xmm11, %xmm11
	vpor	%xmm8, %xmm12, %xmm8
	vpand	%xmm0, %xmm10, %xmm12
	vpand	%xmm0, %xmm9, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm10, %xmm10
	vpand	%xmm1, %xmm9, %xmm9
	vpsrlq	$4, %xmm10, %xmm10
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm9, %xmm10, %xmm9
	vpand	%xmm2, %xmm14, %xmm10
	vpand	%xmm2, %xmm11, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm14, %xmm14
	vpand	%xmm3, %xmm11, %xmm11
	vpsrlq	$2, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm11, %xmm14, %xmm11
	vpand	%xmm2, %xmm13, %xmm14
	vpand	%xmm2, %xmm12, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm13, %xmm13
	vpand	%xmm3, %xmm12, %xmm12
	vpsrlq	$2, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm13, %xmm12
	vpand	%xmm2, %xmm6, %xmm13
	vpand	%xmm2, %xmm8, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm6, %xmm6
	vpand	%xmm3, %xmm8, %xmm8
	vpsrlq	$2, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm2, %xmm7, %xmm8
	vpand	%xmm2, %xmm9, %xmm15
	vpsllq	$2, %xmm15, %xmm15
	vpand	%xmm3, %xmm7, %xmm7
	vpand	%xmm3, %xmm9, %xmm9
	vpsrlq	$2, %xmm7, %xmm7
	vpor	%xmm15, %xmm8, %xmm8
	vpor	%xmm9, %xmm7, %xmm7
	vpand	%xmm4, %xmm10, %xmm9
	vpand	%xmm4, %xmm14, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm10, %xmm10
	vpand	%xmm5, %xmm14, %xmm14
	vpsrlq	$1, %xmm10, %xmm10
	vpor	%xmm15, %xmm9, %xmm9
	vpor	%xmm14, %xmm10, %xmm10
	vpand	%xmm4, %xmm11, %xmm14
	vpand	%xmm4, %xmm12, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm11, %xmm11
	vpand	%xmm5, %xmm12, %xmm12
	vpsrlq	$1, %xmm11, %xmm11
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm11, %xmm11
	vpand	%xmm4, %xmm13, %xmm12
	vpand	%xmm4, %xmm8, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm13, %xmm13
	vpand	%xmm5, %xmm8, %xmm8
	vpsrlq	$1, %xmm13, %xmm13
	vpor	%xmm15, %xmm12, %xmm12
	vpor	%xmm8, %xmm13, %xmm8
	vpand	%xmm4, %xmm6, %xmm13
	vpand	%xmm4, %xmm7, %xmm15
	vpsllq	$1, %xmm15, %xmm15
	vpand	%xmm5, %xmm6, %xmm6
	vpand	%xmm5, %xmm7, %xmm7
	vpsrlq	$1, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm7, %xmm6, %xmm6
	vmovdqu	%xmm9, 768(%rdi)
	vmovdqu	%xmm10, 784(%rdi)
	vmovdqu	%xmm14, 800(%rdi)
	vmovdqu	%xmm11, 816(%rdi)
	vmovdqu	%xmm12, 832(%rdi)
	vmovdqu	%xmm8, 848(%rdi)
	vmovdqu	%xmm13, 864(%rdi)
	vmovdqu	%xmm6, 880(%rdi)
	vmovdqu	896(%rdi), %xmm14
	vmovdqu	912(%rdi), %xmm13
	vmovdqu	928(%rdi), %xmm6
	vmovdqu	944(%rdi), %xmm7
	vmovdqu	960(%rdi), %xmm11
	vmovdqu	976(%rdi), %xmm12
	vmovdqu	992(%rdi), %xmm8
	vmovdqu	1008(%rdi), %xmm9
	vpand	%xmm0, %xmm14, %xmm10
	vpand	%xmm0, %xmm11, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm14, %xmm14
	vpand	%xmm1, %xmm11, %xmm11
	vpsrlq	$4, %xmm14, %xmm14
	vpor	%xmm15, %xmm10, %xmm10
	vpor	%xmm11, %xmm14, %xmm11
	vpand	%xmm0, %xmm13, %xmm14
	vpand	%xmm0, %xmm12, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm13, %xmm13
	vpand	%xmm1, %xmm12, %xmm12
	vpsrlq	$4, %xmm13, %xmm13
	vpor	%xmm15, %xmm14, %xmm14
	vpor	%xmm12, %xmm13, %xmm12
	vpand	%xmm0, %xmm6, %xmm13
	vpand	%xmm0, %xmm8, %xmm15
	vpsllq	$4, %xmm15, %xmm15
	vpand	%xmm1, %xmm6, %xmm6
	vpand	%xmm1, %xmm8, %xmm8
	vpsrlq	$4, %xmm6, %xmm6
	vpor	%xmm15, %xmm13, %xmm13
	vpor	%xmm8, %xmm6, %xmm6
	vpand	%xmm0, %xmm7, %xmm8
	vpand	%xmm0, %xmm9, %xmm0
	vpsllq	$4, %xmm0, %xmm0
	vpand	%xmm1, %xmm7, %xmm7
	vpand	%xmm1, %xmm9, %xmm9
	vpsrlq	$4, %xmm7, %xmm7
	vpor	%xmm0, %xmm8, %xmm1
	vpor	%xmm9, %xmm7, %xmm0
	vpand	%xmm2, %xmm10, %xmm7
	vpand	%xmm2, %xmm13, %xmm8
	vpsllq	$2, %xmm8, %xmm8
	vpand	%xmm3, %xmm10, %xmm9
	vpand	%xmm3, %xmm13, %xmm10
	vpsrlq	$2, %xmm9, %xmm9
	vpor	%xmm8, %xmm7, %xmm7
	vpor	%xmm10, %xmm9, %xmm8
	vpand	%xmm2, %xmm14, %xmm9
	vpand	%xmm2, %xmm1, %xmm10
	vpsllq	$2, %xmm10, %xmm10
	vpand	%xmm3, %xmm14, %xmm13
	vpand	%xmm3, %xmm1, %xmm14
	vpsrlq	$2, %xmm13, %xmm13
	vpor	%xmm10, %xmm9, %xmm1
	vpor	%xmm14, %xmm13, %xmm9
	vpand	%xmm2, %xmm11, %xmm10
	vpand	%xmm2, %xmm6, %xmm13
	vpsllq	$2, %xmm13, %xmm13
	vpand	%xmm3, %xmm11, %xmm11
	vpand	%xmm3, %xmm6, %xmm14
	vpsrlq	$2, %xmm11, %xmm11
	vpor	%xmm13, %xmm10, %xmm6
	vpor	%xmm14, %xmm11, %xmm10
	vpand	%xmm2, %xmm12, %xmm11
	vpand	%xmm2, %xmm0, %xmm2
	vpsllq	$2, %xmm2, %xmm2
	vpand	%xmm3, %xmm12, %xmm12
	vpand	%xmm3, %xmm0, %xmm3
	vpsrlq	$2, %xmm12, %xmm12
	vpor	%xmm2, %xmm11, %xmm0
	vpor	%xmm3, %xmm12, %xmm2
	vpand	%xmm4, %xmm7, %xmm3
	vpand	%xmm4, %xmm1, %xmm11
	vpsllq	$1, %xmm11, %xmm11
	vpand	%xmm5, %xmm7, %xmm7
	vpand	%xmm5, %xmm1, %xmm12
	vpsrlq	$1, %xmm7, %xmm7
	vpor	%xmm11, %xmm3, %xmm1
	vpor	%xmm12, %xmm7, %xmm3
	vpand	%xmm4, %xmm8, %xmm7
	vpand	%xmm4, %xmm9, %xmm11
	vpsllq	$1, %xmm11, %xmm11
	vpand	%xmm5, %xmm8, %xmm8
	vpand	%xmm5, %xmm9, %xmm9
	vpsrlq	$1, %xmm8, %xmm8
	vpor	%xmm11, %xmm7, %xmm7
	vpor	%xmm9, %xmm8, %xmm8
	vpand	%xmm4, %xmm6, %xmm9
	vpand	%xmm4, %xmm0, %xmm11
	vpsllq	$1, %xmm11, %xmm11
	vpand	%xmm5, %xmm6, %xmm6
	vpand	%xmm5, %xmm0, %xmm12
	vpsrlq	$1, %xmm6, %xmm6
	vpor	%xmm11, %xmm9, %xmm0
	vpor	%xmm12, %xmm6, %xmm6
	vpand	%xmm4, %xmm10, %xmm9
	vpand	%xmm4, %xmm2, %xmm4
	vpsllq	$1, %xmm4, %xmm4
	vpand	%xmm5, %xmm10, %xmm10
	vpand	%xmm5, %xmm2, %xmm2
	vpsrlq	$1, %xmm10, %xmm5
	vpor	%xmm4, %xmm9, %xmm4
	vpor	%xmm2, %xmm5, %xmm2
	vmovdqu	%xmm1, 896(%rdi)
	vmovdqu	%xmm3, 912(%rdi)
	vmovdqu	%xmm7, 928(%rdi)
	vmovdqu	%xmm8, 944(%rdi)
	vmovdqu	%xmm0, 960(%rdi)
	vmovdqu	%xmm6, 976(%rdi)
	vmovdqu	%xmm4, 992(%rdi)
	vmovdqu	%xmm2, 1008(%rdi)
	ret 
	.data
	.p2align	5
_glob_data:
glob_data:
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte -1
      .byte -1
      .byte 0
      .byte 0
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -1
      .byte 0
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte -16
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte 15
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte -52
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte 51
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte -86
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
      .byte 85
