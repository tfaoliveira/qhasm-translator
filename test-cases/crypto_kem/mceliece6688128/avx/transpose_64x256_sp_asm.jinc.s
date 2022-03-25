	.att_syntax
	.text
	.p2align	5
	.globl	_transpose_64x256_sp_asm
	.globl	transpose_64x256_sp_asm
_transpose_64x256_sp_asm:
transpose_64x256_sp_asm:
	vmovdqu	glob_data + 32(%rip), %ymm0
	vmovdqu	glob_data + 0(%rip), %ymm1
	vmovdqu	glob_data + 96(%rip), %ymm2
	vmovdqu	glob_data + 64(%rip), %ymm3
	vmovdqu	glob_data + 160(%rip), %ymm4
	vmovdqu	glob_data + 128(%rip), %ymm5
	vmovdqu	(%rdi), %ymm6
	vmovdqu	256(%rdi), %ymm7
	vmovdqu	512(%rdi), %ymm8
	vmovdqu	768(%rdi), %ymm9
	vmovdqu	1024(%rdi), %ymm13
	vmovdqu	1280(%rdi), %ymm12
	vmovdqu	1536(%rdi), %ymm14
	vmovdqu	1792(%rdi), %ymm10
	vpand	%ymm0, %ymm6, %ymm11
	vpsllq	$32, %ymm13, %ymm15
	vpsrlq	$32, %ymm6, %ymm6
	vpand	%ymm1, %ymm13, %ymm13
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm13, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm13
	vpsllq	$32, %ymm12, %ymm15
	vpsrlq	$32, %ymm7, %ymm7
	vpand	%ymm1, %ymm12, %ymm12
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm12, %ymm7, %ymm7
	vpand	%ymm0, %ymm8, %ymm12
	vpsllq	$32, %ymm14, %ymm15
	vpsrlq	$32, %ymm8, %ymm8
	vpand	%ymm1, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm8, %ymm8
	vpand	%ymm0, %ymm9, %ymm14
	vpsllq	$32, %ymm10, %ymm15
	vpsrlq	$32, %ymm9, %ymm9
	vpand	%ymm1, %ymm10, %ymm10
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm10, %ymm9, %ymm9
	vpand	%ymm2, %ymm11, %ymm10
	vpslld	$16, %ymm12, %ymm15
	vpsrld	$16, %ymm11, %ymm11
	vpand	%ymm3, %ymm12, %ymm12
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm2, %ymm13, %ymm12
	vpslld	$16, %ymm14, %ymm15
	vpsrld	$16, %ymm13, %ymm13
	vpand	%ymm3, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm13, %ymm13
	vpand	%ymm2, %ymm6, %ymm14
	vpslld	$16, %ymm8, %ymm15
	vpsrld	$16, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpslld	$16, %ymm9, %ymm15
	vpsrld	$16, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpsllw	$8, %ymm12, %ymm15
	vpsrlw	$8, %ymm10, %ymm10
	vpand	%ymm5, %ymm12, %ymm12
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm12, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm12
	vpsllw	$8, %ymm13, %ymm15
	vpsrlw	$8, %ymm11, %ymm11
	vpand	%ymm5, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm13, %ymm11, %ymm11
	vpand	%ymm4, %ymm14, %ymm13
	vpsllw	$8, %ymm8, %ymm15
	vpsrlw	$8, %ymm14, %ymm14
	vpand	%ymm5, %ymm8, %ymm8
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm14, %ymm8
	vpand	%ymm4, %ymm6, %ymm14
	vpsllw	$8, %ymm7, %ymm15
	vpsrlw	$8, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, (%rdi)
	vmovdqu	%ymm10, 256(%rdi)
	vmovdqu	%ymm12, 512(%rdi)
	vmovdqu	%ymm11, 768(%rdi)
	vmovdqu	%ymm13, 1024(%rdi)
	vmovdqu	%ymm8, 1280(%rdi)
	vmovdqu	%ymm14, 1536(%rdi)
	vmovdqu	%ymm6, 1792(%rdi)
	vmovdqu	32(%rdi), %ymm6
	vmovdqu	288(%rdi), %ymm7
	vmovdqu	544(%rdi), %ymm8
	vmovdqu	800(%rdi), %ymm9
	vmovdqu	1056(%rdi), %ymm13
	vmovdqu	1312(%rdi), %ymm12
	vmovdqu	1568(%rdi), %ymm14
	vmovdqu	1824(%rdi), %ymm10
	vpand	%ymm0, %ymm6, %ymm11
	vpsllq	$32, %ymm13, %ymm15
	vpsrlq	$32, %ymm6, %ymm6
	vpand	%ymm1, %ymm13, %ymm13
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm13, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm13
	vpsllq	$32, %ymm12, %ymm15
	vpsrlq	$32, %ymm7, %ymm7
	vpand	%ymm1, %ymm12, %ymm12
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm12, %ymm7, %ymm7
	vpand	%ymm0, %ymm8, %ymm12
	vpsllq	$32, %ymm14, %ymm15
	vpsrlq	$32, %ymm8, %ymm8
	vpand	%ymm1, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm8, %ymm8
	vpand	%ymm0, %ymm9, %ymm14
	vpsllq	$32, %ymm10, %ymm15
	vpsrlq	$32, %ymm9, %ymm9
	vpand	%ymm1, %ymm10, %ymm10
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm10, %ymm9, %ymm9
	vpand	%ymm2, %ymm11, %ymm10
	vpslld	$16, %ymm12, %ymm15
	vpsrld	$16, %ymm11, %ymm11
	vpand	%ymm3, %ymm12, %ymm12
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm2, %ymm13, %ymm12
	vpslld	$16, %ymm14, %ymm15
	vpsrld	$16, %ymm13, %ymm13
	vpand	%ymm3, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm13, %ymm13
	vpand	%ymm2, %ymm6, %ymm14
	vpslld	$16, %ymm8, %ymm15
	vpsrld	$16, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpslld	$16, %ymm9, %ymm15
	vpsrld	$16, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpsllw	$8, %ymm12, %ymm15
	vpsrlw	$8, %ymm10, %ymm10
	vpand	%ymm5, %ymm12, %ymm12
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm12, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm12
	vpsllw	$8, %ymm13, %ymm15
	vpsrlw	$8, %ymm11, %ymm11
	vpand	%ymm5, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm13, %ymm11, %ymm11
	vpand	%ymm4, %ymm14, %ymm13
	vpsllw	$8, %ymm8, %ymm15
	vpsrlw	$8, %ymm14, %ymm14
	vpand	%ymm5, %ymm8, %ymm8
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm14, %ymm8
	vpand	%ymm4, %ymm6, %ymm14
	vpsllw	$8, %ymm7, %ymm15
	vpsrlw	$8, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 32(%rdi)
	vmovdqu	%ymm10, 288(%rdi)
	vmovdqu	%ymm12, 544(%rdi)
	vmovdqu	%ymm11, 800(%rdi)
	vmovdqu	%ymm13, 1056(%rdi)
	vmovdqu	%ymm8, 1312(%rdi)
	vmovdqu	%ymm14, 1568(%rdi)
	vmovdqu	%ymm6, 1824(%rdi)
	vmovdqu	64(%rdi), %ymm6
	vmovdqu	320(%rdi), %ymm7
	vmovdqu	576(%rdi), %ymm8
	vmovdqu	832(%rdi), %ymm9
	vmovdqu	1088(%rdi), %ymm13
	vmovdqu	1344(%rdi), %ymm12
	vmovdqu	1600(%rdi), %ymm14
	vmovdqu	1856(%rdi), %ymm10
	vpand	%ymm0, %ymm6, %ymm11
	vpsllq	$32, %ymm13, %ymm15
	vpsrlq	$32, %ymm6, %ymm6
	vpand	%ymm1, %ymm13, %ymm13
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm13, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm13
	vpsllq	$32, %ymm12, %ymm15
	vpsrlq	$32, %ymm7, %ymm7
	vpand	%ymm1, %ymm12, %ymm12
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm12, %ymm7, %ymm7
	vpand	%ymm0, %ymm8, %ymm12
	vpsllq	$32, %ymm14, %ymm15
	vpsrlq	$32, %ymm8, %ymm8
	vpand	%ymm1, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm8, %ymm8
	vpand	%ymm0, %ymm9, %ymm14
	vpsllq	$32, %ymm10, %ymm15
	vpsrlq	$32, %ymm9, %ymm9
	vpand	%ymm1, %ymm10, %ymm10
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm10, %ymm9, %ymm9
	vpand	%ymm2, %ymm11, %ymm10
	vpslld	$16, %ymm12, %ymm15
	vpsrld	$16, %ymm11, %ymm11
	vpand	%ymm3, %ymm12, %ymm12
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm2, %ymm13, %ymm12
	vpslld	$16, %ymm14, %ymm15
	vpsrld	$16, %ymm13, %ymm13
	vpand	%ymm3, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm13, %ymm13
	vpand	%ymm2, %ymm6, %ymm14
	vpslld	$16, %ymm8, %ymm15
	vpsrld	$16, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpslld	$16, %ymm9, %ymm15
	vpsrld	$16, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpsllw	$8, %ymm12, %ymm15
	vpsrlw	$8, %ymm10, %ymm10
	vpand	%ymm5, %ymm12, %ymm12
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm12, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm12
	vpsllw	$8, %ymm13, %ymm15
	vpsrlw	$8, %ymm11, %ymm11
	vpand	%ymm5, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm13, %ymm11, %ymm11
	vpand	%ymm4, %ymm14, %ymm13
	vpsllw	$8, %ymm8, %ymm15
	vpsrlw	$8, %ymm14, %ymm14
	vpand	%ymm5, %ymm8, %ymm8
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm14, %ymm8
	vpand	%ymm4, %ymm6, %ymm14
	vpsllw	$8, %ymm7, %ymm15
	vpsrlw	$8, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 64(%rdi)
	vmovdqu	%ymm10, 320(%rdi)
	vmovdqu	%ymm12, 576(%rdi)
	vmovdqu	%ymm11, 832(%rdi)
	vmovdqu	%ymm13, 1088(%rdi)
	vmovdqu	%ymm8, 1344(%rdi)
	vmovdqu	%ymm14, 1600(%rdi)
	vmovdqu	%ymm6, 1856(%rdi)
	vmovdqu	96(%rdi), %ymm6
	vmovdqu	352(%rdi), %ymm7
	vmovdqu	608(%rdi), %ymm8
	vmovdqu	864(%rdi), %ymm9
	vmovdqu	1120(%rdi), %ymm13
	vmovdqu	1376(%rdi), %ymm12
	vmovdqu	1632(%rdi), %ymm14
	vmovdqu	1888(%rdi), %ymm10
	vpand	%ymm0, %ymm6, %ymm11
	vpsllq	$32, %ymm13, %ymm15
	vpsrlq	$32, %ymm6, %ymm6
	vpand	%ymm1, %ymm13, %ymm13
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm13, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm13
	vpsllq	$32, %ymm12, %ymm15
	vpsrlq	$32, %ymm7, %ymm7
	vpand	%ymm1, %ymm12, %ymm12
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm12, %ymm7, %ymm7
	vpand	%ymm0, %ymm8, %ymm12
	vpsllq	$32, %ymm14, %ymm15
	vpsrlq	$32, %ymm8, %ymm8
	vpand	%ymm1, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm8, %ymm8
	vpand	%ymm0, %ymm9, %ymm14
	vpsllq	$32, %ymm10, %ymm15
	vpsrlq	$32, %ymm9, %ymm9
	vpand	%ymm1, %ymm10, %ymm10
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm10, %ymm9, %ymm9
	vpand	%ymm2, %ymm11, %ymm10
	vpslld	$16, %ymm12, %ymm15
	vpsrld	$16, %ymm11, %ymm11
	vpand	%ymm3, %ymm12, %ymm12
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm2, %ymm13, %ymm12
	vpslld	$16, %ymm14, %ymm15
	vpsrld	$16, %ymm13, %ymm13
	vpand	%ymm3, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm13, %ymm13
	vpand	%ymm2, %ymm6, %ymm14
	vpslld	$16, %ymm8, %ymm15
	vpsrld	$16, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpslld	$16, %ymm9, %ymm15
	vpsrld	$16, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpsllw	$8, %ymm12, %ymm15
	vpsrlw	$8, %ymm10, %ymm10
	vpand	%ymm5, %ymm12, %ymm12
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm12, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm12
	vpsllw	$8, %ymm13, %ymm15
	vpsrlw	$8, %ymm11, %ymm11
	vpand	%ymm5, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm13, %ymm11, %ymm11
	vpand	%ymm4, %ymm14, %ymm13
	vpsllw	$8, %ymm8, %ymm15
	vpsrlw	$8, %ymm14, %ymm14
	vpand	%ymm5, %ymm8, %ymm8
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm14, %ymm8
	vpand	%ymm4, %ymm6, %ymm14
	vpsllw	$8, %ymm7, %ymm15
	vpsrlw	$8, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 96(%rdi)
	vmovdqu	%ymm10, 352(%rdi)
	vmovdqu	%ymm12, 608(%rdi)
	vmovdqu	%ymm11, 864(%rdi)
	vmovdqu	%ymm13, 1120(%rdi)
	vmovdqu	%ymm8, 1376(%rdi)
	vmovdqu	%ymm14, 1632(%rdi)
	vmovdqu	%ymm6, 1888(%rdi)
	vmovdqu	128(%rdi), %ymm6
	vmovdqu	384(%rdi), %ymm7
	vmovdqu	640(%rdi), %ymm8
	vmovdqu	896(%rdi), %ymm9
	vmovdqu	1152(%rdi), %ymm13
	vmovdqu	1408(%rdi), %ymm12
	vmovdqu	1664(%rdi), %ymm14
	vmovdqu	1920(%rdi), %ymm10
	vpand	%ymm0, %ymm6, %ymm11
	vpsllq	$32, %ymm13, %ymm15
	vpsrlq	$32, %ymm6, %ymm6
	vpand	%ymm1, %ymm13, %ymm13
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm13, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm13
	vpsllq	$32, %ymm12, %ymm15
	vpsrlq	$32, %ymm7, %ymm7
	vpand	%ymm1, %ymm12, %ymm12
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm12, %ymm7, %ymm7
	vpand	%ymm0, %ymm8, %ymm12
	vpsllq	$32, %ymm14, %ymm15
	vpsrlq	$32, %ymm8, %ymm8
	vpand	%ymm1, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm8, %ymm8
	vpand	%ymm0, %ymm9, %ymm14
	vpsllq	$32, %ymm10, %ymm15
	vpsrlq	$32, %ymm9, %ymm9
	vpand	%ymm1, %ymm10, %ymm10
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm10, %ymm9, %ymm9
	vpand	%ymm2, %ymm11, %ymm10
	vpslld	$16, %ymm12, %ymm15
	vpsrld	$16, %ymm11, %ymm11
	vpand	%ymm3, %ymm12, %ymm12
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm2, %ymm13, %ymm12
	vpslld	$16, %ymm14, %ymm15
	vpsrld	$16, %ymm13, %ymm13
	vpand	%ymm3, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm13, %ymm13
	vpand	%ymm2, %ymm6, %ymm14
	vpslld	$16, %ymm8, %ymm15
	vpsrld	$16, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpslld	$16, %ymm9, %ymm15
	vpsrld	$16, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpsllw	$8, %ymm12, %ymm15
	vpsrlw	$8, %ymm10, %ymm10
	vpand	%ymm5, %ymm12, %ymm12
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm12, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm12
	vpsllw	$8, %ymm13, %ymm15
	vpsrlw	$8, %ymm11, %ymm11
	vpand	%ymm5, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm13, %ymm11, %ymm11
	vpand	%ymm4, %ymm14, %ymm13
	vpsllw	$8, %ymm8, %ymm15
	vpsrlw	$8, %ymm14, %ymm14
	vpand	%ymm5, %ymm8, %ymm8
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm14, %ymm8
	vpand	%ymm4, %ymm6, %ymm14
	vpsllw	$8, %ymm7, %ymm15
	vpsrlw	$8, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 128(%rdi)
	vmovdqu	%ymm10, 384(%rdi)
	vmovdqu	%ymm12, 640(%rdi)
	vmovdqu	%ymm11, 896(%rdi)
	vmovdqu	%ymm13, 1152(%rdi)
	vmovdqu	%ymm8, 1408(%rdi)
	vmovdqu	%ymm14, 1664(%rdi)
	vmovdqu	%ymm6, 1920(%rdi)
	vmovdqu	160(%rdi), %ymm6
	vmovdqu	416(%rdi), %ymm7
	vmovdqu	672(%rdi), %ymm8
	vmovdqu	928(%rdi), %ymm9
	vmovdqu	1184(%rdi), %ymm13
	vmovdqu	1440(%rdi), %ymm12
	vmovdqu	1696(%rdi), %ymm14
	vmovdqu	1952(%rdi), %ymm10
	vpand	%ymm0, %ymm6, %ymm11
	vpsllq	$32, %ymm13, %ymm15
	vpsrlq	$32, %ymm6, %ymm6
	vpand	%ymm1, %ymm13, %ymm13
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm13, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm13
	vpsllq	$32, %ymm12, %ymm15
	vpsrlq	$32, %ymm7, %ymm7
	vpand	%ymm1, %ymm12, %ymm12
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm12, %ymm7, %ymm7
	vpand	%ymm0, %ymm8, %ymm12
	vpsllq	$32, %ymm14, %ymm15
	vpsrlq	$32, %ymm8, %ymm8
	vpand	%ymm1, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm8, %ymm8
	vpand	%ymm0, %ymm9, %ymm14
	vpsllq	$32, %ymm10, %ymm15
	vpsrlq	$32, %ymm9, %ymm9
	vpand	%ymm1, %ymm10, %ymm10
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm10, %ymm9, %ymm9
	vpand	%ymm2, %ymm11, %ymm10
	vpslld	$16, %ymm12, %ymm15
	vpsrld	$16, %ymm11, %ymm11
	vpand	%ymm3, %ymm12, %ymm12
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm2, %ymm13, %ymm12
	vpslld	$16, %ymm14, %ymm15
	vpsrld	$16, %ymm13, %ymm13
	vpand	%ymm3, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm13, %ymm13
	vpand	%ymm2, %ymm6, %ymm14
	vpslld	$16, %ymm8, %ymm15
	vpsrld	$16, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpslld	$16, %ymm9, %ymm15
	vpsrld	$16, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpsllw	$8, %ymm12, %ymm15
	vpsrlw	$8, %ymm10, %ymm10
	vpand	%ymm5, %ymm12, %ymm12
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm12, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm12
	vpsllw	$8, %ymm13, %ymm15
	vpsrlw	$8, %ymm11, %ymm11
	vpand	%ymm5, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm13, %ymm11, %ymm11
	vpand	%ymm4, %ymm14, %ymm13
	vpsllw	$8, %ymm8, %ymm15
	vpsrlw	$8, %ymm14, %ymm14
	vpand	%ymm5, %ymm8, %ymm8
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm14, %ymm8
	vpand	%ymm4, %ymm6, %ymm14
	vpsllw	$8, %ymm7, %ymm15
	vpsrlw	$8, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 160(%rdi)
	vmovdqu	%ymm10, 416(%rdi)
	vmovdqu	%ymm12, 672(%rdi)
	vmovdqu	%ymm11, 928(%rdi)
	vmovdqu	%ymm13, 1184(%rdi)
	vmovdqu	%ymm8, 1440(%rdi)
	vmovdqu	%ymm14, 1696(%rdi)
	vmovdqu	%ymm6, 1952(%rdi)
	vmovdqu	192(%rdi), %ymm6
	vmovdqu	448(%rdi), %ymm7
	vmovdqu	704(%rdi), %ymm8
	vmovdqu	960(%rdi), %ymm9
	vmovdqu	1216(%rdi), %ymm13
	vmovdqu	1472(%rdi), %ymm12
	vmovdqu	1728(%rdi), %ymm14
	vmovdqu	1984(%rdi), %ymm10
	vpand	%ymm0, %ymm6, %ymm11
	vpsllq	$32, %ymm13, %ymm15
	vpsrlq	$32, %ymm6, %ymm6
	vpand	%ymm1, %ymm13, %ymm13
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm13, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm13
	vpsllq	$32, %ymm12, %ymm15
	vpsrlq	$32, %ymm7, %ymm7
	vpand	%ymm1, %ymm12, %ymm12
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm12, %ymm7, %ymm7
	vpand	%ymm0, %ymm8, %ymm12
	vpsllq	$32, %ymm14, %ymm15
	vpsrlq	$32, %ymm8, %ymm8
	vpand	%ymm1, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm8, %ymm8
	vpand	%ymm0, %ymm9, %ymm14
	vpsllq	$32, %ymm10, %ymm15
	vpsrlq	$32, %ymm9, %ymm9
	vpand	%ymm1, %ymm10, %ymm10
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm10, %ymm9, %ymm9
	vpand	%ymm2, %ymm11, %ymm10
	vpslld	$16, %ymm12, %ymm15
	vpsrld	$16, %ymm11, %ymm11
	vpand	%ymm3, %ymm12, %ymm12
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm2, %ymm13, %ymm12
	vpslld	$16, %ymm14, %ymm15
	vpsrld	$16, %ymm13, %ymm13
	vpand	%ymm3, %ymm14, %ymm14
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm14, %ymm13, %ymm13
	vpand	%ymm2, %ymm6, %ymm14
	vpslld	$16, %ymm8, %ymm15
	vpsrld	$16, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpslld	$16, %ymm9, %ymm15
	vpsrld	$16, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpsllw	$8, %ymm12, %ymm15
	vpsrlw	$8, %ymm10, %ymm10
	vpand	%ymm5, %ymm12, %ymm12
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm12, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm12
	vpsllw	$8, %ymm13, %ymm15
	vpsrlw	$8, %ymm11, %ymm11
	vpand	%ymm5, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm13, %ymm11, %ymm11
	vpand	%ymm4, %ymm14, %ymm13
	vpsllw	$8, %ymm8, %ymm15
	vpsrlw	$8, %ymm14, %ymm14
	vpand	%ymm5, %ymm8, %ymm8
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm14, %ymm8
	vpand	%ymm4, %ymm6, %ymm14
	vpsllw	$8, %ymm7, %ymm15
	vpsrlw	$8, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 192(%rdi)
	vmovdqu	%ymm10, 448(%rdi)
	vmovdqu	%ymm12, 704(%rdi)
	vmovdqu	%ymm11, 960(%rdi)
	vmovdqu	%ymm13, 1216(%rdi)
	vmovdqu	%ymm8, 1472(%rdi)
	vmovdqu	%ymm14, 1728(%rdi)
	vmovdqu	%ymm6, 1984(%rdi)
	vmovdqu	224(%rdi), %ymm11
	vmovdqu	480(%rdi), %ymm12
	vmovdqu	736(%rdi), %ymm6
	vmovdqu	992(%rdi), %ymm7
	vmovdqu	1248(%rdi), %ymm14
	vmovdqu	1504(%rdi), %ymm13
	vmovdqu	1760(%rdi), %ymm8
	vmovdqu	2016(%rdi), %ymm9
	vpand	%ymm0, %ymm11, %ymm10
	vpsllq	$32, %ymm14, %ymm15
	vpsrlq	$32, %ymm11, %ymm11
	vpand	%ymm1, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm14, %ymm11, %ymm11
	vpand	%ymm0, %ymm12, %ymm14
	vpsllq	$32, %ymm13, %ymm15
	vpsrlq	$32, %ymm12, %ymm12
	vpand	%ymm1, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm13, %ymm12, %ymm12
	vpand	%ymm0, %ymm6, %ymm13
	vpsllq	$32, %ymm8, %ymm15
	vpsrlq	$32, %ymm6, %ymm6
	vpand	%ymm1, %ymm8, %ymm8
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm0
	vpsllq	$32, %ymm9, %ymm8
	vpsrlq	$32, %ymm7, %ymm7
	vpand	%ymm1, %ymm9, %ymm1
	vpor	%ymm8, %ymm0, %ymm8
	vpor	%ymm1, %ymm7, %ymm0
	vpand	%ymm2, %ymm10, %ymm1
	vpslld	$16, %ymm13, %ymm7
	vpsrld	$16, %ymm10, %ymm9
	vpand	%ymm3, %ymm13, %ymm10
	vpor	%ymm7, %ymm1, %ymm1
	vpor	%ymm10, %ymm9, %ymm7
	vpand	%ymm2, %ymm14, %ymm9
	vpslld	$16, %ymm8, %ymm10
	vpsrld	$16, %ymm14, %ymm13
	vpand	%ymm3, %ymm8, %ymm8
	vpor	%ymm10, %ymm9, %ymm10
	vpor	%ymm8, %ymm13, %ymm8
	vpand	%ymm2, %ymm11, %ymm9
	vpslld	$16, %ymm6, %ymm13
	vpsrld	$16, %ymm11, %ymm11
	vpand	%ymm3, %ymm6, %ymm14
	vpor	%ymm13, %ymm9, %ymm6
	vpor	%ymm14, %ymm11, %ymm9
	vpand	%ymm2, %ymm12, %ymm2
	vpslld	$16, %ymm0, %ymm11
	vpsrld	$16, %ymm12, %ymm12
	vpand	%ymm3, %ymm0, %ymm3
	vpor	%ymm11, %ymm2, %ymm0
	vpor	%ymm3, %ymm12, %ymm2
	vpand	%ymm4, %ymm1, %ymm3
	vpsllw	$8, %ymm10, %ymm11
	vpsrlw	$8, %ymm1, %ymm12
	vpand	%ymm5, %ymm10, %ymm10
	vpor	%ymm11, %ymm3, %ymm1
	vpor	%ymm10, %ymm12, %ymm3
	vpand	%ymm4, %ymm7, %ymm10
	vpsllw	$8, %ymm8, %ymm11
	vpsrlw	$8, %ymm7, %ymm12
	vpand	%ymm5, %ymm8, %ymm8
	vpor	%ymm11, %ymm10, %ymm7
	vpor	%ymm8, %ymm12, %ymm8
	vpand	%ymm4, %ymm6, %ymm10
	vpsllw	$8, %ymm0, %ymm11
	vpsrlw	$8, %ymm6, %ymm6
	vpand	%ymm5, %ymm0, %ymm12
	vpor	%ymm11, %ymm10, %ymm0
	vpor	%ymm12, %ymm6, %ymm6
	vpand	%ymm4, %ymm9, %ymm4
	vpsllw	$8, %ymm2, %ymm10
	vpsrlw	$8, %ymm9, %ymm9
	vpand	%ymm5, %ymm2, %ymm2
	vpor	%ymm10, %ymm4, %ymm4
	vpor	%ymm2, %ymm9, %ymm2
	vmovdqu	%ymm1, 224(%rdi)
	vmovdqu	%ymm3, 480(%rdi)
	vmovdqu	%ymm7, 736(%rdi)
	vmovdqu	%ymm8, 992(%rdi)
	vmovdqu	%ymm0, 1248(%rdi)
	vmovdqu	%ymm6, 1504(%rdi)
	vmovdqu	%ymm4, 1760(%rdi)
	vmovdqu	%ymm2, 2016(%rdi)
	vmovdqu	glob_data + 224(%rip), %ymm0
	vmovdqu	glob_data + 192(%rip), %ymm1
	vmovdqu	glob_data + 288(%rip), %ymm2
	vmovdqu	glob_data + 256(%rip), %ymm3
	vmovdqu	glob_data + 352(%rip), %ymm4
	vmovdqu	glob_data + 320(%rip), %ymm5
	vmovdqu	(%rdi), %ymm13
	vmovdqu	32(%rdi), %ymm11
	vmovdqu	64(%rdi), %ymm12
	vmovdqu	96(%rdi), %ymm10
	vmovdqu	128(%rdi), %ymm6
	vmovdqu	160(%rdi), %ymm7
	vmovdqu	192(%rdi), %ymm8
	vmovdqu	224(%rdi), %ymm9
	vpand	%ymm0, %ymm13, %ymm14
	vpand	%ymm0, %ymm6, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm13, %ymm13
	vpand	%ymm1, %ymm6, %ymm6
	vpsrlq	$4, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm6, %ymm13, %ymm6
	vpand	%ymm0, %ymm11, %ymm13
	vpand	%ymm0, %ymm7, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm11, %ymm11
	vpand	%ymm1, %ymm7, %ymm7
	vpsrlq	$4, %ymm11, %ymm11
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm11, %ymm7
	vpand	%ymm0, %ymm12, %ymm11
	vpand	%ymm0, %ymm8, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm12, %ymm12
	vpand	%ymm1, %ymm8, %ymm8
	vpsrlq	$4, %ymm12, %ymm12
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm8, %ymm12, %ymm8
	vpand	%ymm0, %ymm10, %ymm12
	vpand	%ymm0, %ymm9, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm10, %ymm10
	vpand	%ymm1, %ymm9, %ymm9
	vpsrlq	$4, %ymm10, %ymm10
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm9, %ymm10, %ymm9
	vpand	%ymm2, %ymm14, %ymm10
	vpand	%ymm2, %ymm11, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm14, %ymm14
	vpand	%ymm3, %ymm11, %ymm11
	vpsrlq	$2, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm11, %ymm14, %ymm11
	vpand	%ymm2, %ymm13, %ymm14
	vpand	%ymm2, %ymm12, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm13, %ymm13
	vpand	%ymm3, %ymm12, %ymm12
	vpsrlq	$2, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm13, %ymm12
	vpand	%ymm2, %ymm6, %ymm13
	vpand	%ymm2, %ymm8, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpsrlq	$2, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpand	%ymm2, %ymm9, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpsrlq	$2, %ymm7, %ymm7
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpand	%ymm4, %ymm14, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm10, %ymm10
	vpand	%ymm5, %ymm14, %ymm14
	vpsrlq	$1, %ymm10, %ymm10
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm14, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm14
	vpand	%ymm4, %ymm12, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm11, %ymm11
	vpand	%ymm5, %ymm12, %ymm12
	vpsrlq	$1, %ymm11, %ymm11
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm4, %ymm13, %ymm12
	vpand	%ymm4, %ymm8, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm13, %ymm13
	vpand	%ymm5, %ymm8, %ymm8
	vpsrlq	$1, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm8, %ymm13, %ymm8
	vpand	%ymm4, %ymm6, %ymm13
	vpand	%ymm4, %ymm7, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpsrlq	$1, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, (%rdi)
	vmovdqu	%ymm10, 32(%rdi)
	vmovdqu	%ymm14, 64(%rdi)
	vmovdqu	%ymm11, 96(%rdi)
	vmovdqu	%ymm12, 128(%rdi)
	vmovdqu	%ymm8, 160(%rdi)
	vmovdqu	%ymm13, 192(%rdi)
	vmovdqu	%ymm6, 224(%rdi)
	vmovdqu	256(%rdi), %ymm13
	vmovdqu	288(%rdi), %ymm11
	vmovdqu	320(%rdi), %ymm12
	vmovdqu	352(%rdi), %ymm10
	vmovdqu	384(%rdi), %ymm6
	vmovdqu	416(%rdi), %ymm7
	vmovdqu	448(%rdi), %ymm8
	vmovdqu	480(%rdi), %ymm9
	vpand	%ymm0, %ymm13, %ymm14
	vpand	%ymm0, %ymm6, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm13, %ymm13
	vpand	%ymm1, %ymm6, %ymm6
	vpsrlq	$4, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm6, %ymm13, %ymm6
	vpand	%ymm0, %ymm11, %ymm13
	vpand	%ymm0, %ymm7, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm11, %ymm11
	vpand	%ymm1, %ymm7, %ymm7
	vpsrlq	$4, %ymm11, %ymm11
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm11, %ymm7
	vpand	%ymm0, %ymm12, %ymm11
	vpand	%ymm0, %ymm8, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm12, %ymm12
	vpand	%ymm1, %ymm8, %ymm8
	vpsrlq	$4, %ymm12, %ymm12
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm8, %ymm12, %ymm8
	vpand	%ymm0, %ymm10, %ymm12
	vpand	%ymm0, %ymm9, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm10, %ymm10
	vpand	%ymm1, %ymm9, %ymm9
	vpsrlq	$4, %ymm10, %ymm10
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm9, %ymm10, %ymm9
	vpand	%ymm2, %ymm14, %ymm10
	vpand	%ymm2, %ymm11, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm14, %ymm14
	vpand	%ymm3, %ymm11, %ymm11
	vpsrlq	$2, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm11, %ymm14, %ymm11
	vpand	%ymm2, %ymm13, %ymm14
	vpand	%ymm2, %ymm12, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm13, %ymm13
	vpand	%ymm3, %ymm12, %ymm12
	vpsrlq	$2, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm13, %ymm12
	vpand	%ymm2, %ymm6, %ymm13
	vpand	%ymm2, %ymm8, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpsrlq	$2, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpand	%ymm2, %ymm9, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpsrlq	$2, %ymm7, %ymm7
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpand	%ymm4, %ymm14, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm10, %ymm10
	vpand	%ymm5, %ymm14, %ymm14
	vpsrlq	$1, %ymm10, %ymm10
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm14, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm14
	vpand	%ymm4, %ymm12, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm11, %ymm11
	vpand	%ymm5, %ymm12, %ymm12
	vpsrlq	$1, %ymm11, %ymm11
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm4, %ymm13, %ymm12
	vpand	%ymm4, %ymm8, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm13, %ymm13
	vpand	%ymm5, %ymm8, %ymm8
	vpsrlq	$1, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm8, %ymm13, %ymm8
	vpand	%ymm4, %ymm6, %ymm13
	vpand	%ymm4, %ymm7, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpsrlq	$1, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 256(%rdi)
	vmovdqu	%ymm10, 288(%rdi)
	vmovdqu	%ymm14, 320(%rdi)
	vmovdqu	%ymm11, 352(%rdi)
	vmovdqu	%ymm12, 384(%rdi)
	vmovdqu	%ymm8, 416(%rdi)
	vmovdqu	%ymm13, 448(%rdi)
	vmovdqu	%ymm6, 480(%rdi)
	vmovdqu	512(%rdi), %ymm13
	vmovdqu	544(%rdi), %ymm11
	vmovdqu	576(%rdi), %ymm12
	vmovdqu	608(%rdi), %ymm10
	vmovdqu	640(%rdi), %ymm6
	vmovdqu	672(%rdi), %ymm7
	vmovdqu	704(%rdi), %ymm8
	vmovdqu	736(%rdi), %ymm9
	vpand	%ymm0, %ymm13, %ymm14
	vpand	%ymm0, %ymm6, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm13, %ymm13
	vpand	%ymm1, %ymm6, %ymm6
	vpsrlq	$4, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm6, %ymm13, %ymm6
	vpand	%ymm0, %ymm11, %ymm13
	vpand	%ymm0, %ymm7, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm11, %ymm11
	vpand	%ymm1, %ymm7, %ymm7
	vpsrlq	$4, %ymm11, %ymm11
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm11, %ymm7
	vpand	%ymm0, %ymm12, %ymm11
	vpand	%ymm0, %ymm8, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm12, %ymm12
	vpand	%ymm1, %ymm8, %ymm8
	vpsrlq	$4, %ymm12, %ymm12
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm8, %ymm12, %ymm8
	vpand	%ymm0, %ymm10, %ymm12
	vpand	%ymm0, %ymm9, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm10, %ymm10
	vpand	%ymm1, %ymm9, %ymm9
	vpsrlq	$4, %ymm10, %ymm10
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm9, %ymm10, %ymm9
	vpand	%ymm2, %ymm14, %ymm10
	vpand	%ymm2, %ymm11, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm14, %ymm14
	vpand	%ymm3, %ymm11, %ymm11
	vpsrlq	$2, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm11, %ymm14, %ymm11
	vpand	%ymm2, %ymm13, %ymm14
	vpand	%ymm2, %ymm12, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm13, %ymm13
	vpand	%ymm3, %ymm12, %ymm12
	vpsrlq	$2, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm13, %ymm12
	vpand	%ymm2, %ymm6, %ymm13
	vpand	%ymm2, %ymm8, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpsrlq	$2, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpand	%ymm2, %ymm9, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpsrlq	$2, %ymm7, %ymm7
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpand	%ymm4, %ymm14, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm10, %ymm10
	vpand	%ymm5, %ymm14, %ymm14
	vpsrlq	$1, %ymm10, %ymm10
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm14, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm14
	vpand	%ymm4, %ymm12, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm11, %ymm11
	vpand	%ymm5, %ymm12, %ymm12
	vpsrlq	$1, %ymm11, %ymm11
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm4, %ymm13, %ymm12
	vpand	%ymm4, %ymm8, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm13, %ymm13
	vpand	%ymm5, %ymm8, %ymm8
	vpsrlq	$1, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm8, %ymm13, %ymm8
	vpand	%ymm4, %ymm6, %ymm13
	vpand	%ymm4, %ymm7, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpsrlq	$1, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 512(%rdi)
	vmovdqu	%ymm10, 544(%rdi)
	vmovdqu	%ymm14, 576(%rdi)
	vmovdqu	%ymm11, 608(%rdi)
	vmovdqu	%ymm12, 640(%rdi)
	vmovdqu	%ymm8, 672(%rdi)
	vmovdqu	%ymm13, 704(%rdi)
	vmovdqu	%ymm6, 736(%rdi)
	vmovdqu	768(%rdi), %ymm13
	vmovdqu	800(%rdi), %ymm11
	vmovdqu	832(%rdi), %ymm12
	vmovdqu	864(%rdi), %ymm10
	vmovdqu	896(%rdi), %ymm6
	vmovdqu	928(%rdi), %ymm7
	vmovdqu	960(%rdi), %ymm8
	vmovdqu	992(%rdi), %ymm9
	vpand	%ymm0, %ymm13, %ymm14
	vpand	%ymm0, %ymm6, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm13, %ymm13
	vpand	%ymm1, %ymm6, %ymm6
	vpsrlq	$4, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm6, %ymm13, %ymm6
	vpand	%ymm0, %ymm11, %ymm13
	vpand	%ymm0, %ymm7, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm11, %ymm11
	vpand	%ymm1, %ymm7, %ymm7
	vpsrlq	$4, %ymm11, %ymm11
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm11, %ymm7
	vpand	%ymm0, %ymm12, %ymm11
	vpand	%ymm0, %ymm8, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm12, %ymm12
	vpand	%ymm1, %ymm8, %ymm8
	vpsrlq	$4, %ymm12, %ymm12
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm8, %ymm12, %ymm8
	vpand	%ymm0, %ymm10, %ymm12
	vpand	%ymm0, %ymm9, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm10, %ymm10
	vpand	%ymm1, %ymm9, %ymm9
	vpsrlq	$4, %ymm10, %ymm10
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm9, %ymm10, %ymm9
	vpand	%ymm2, %ymm14, %ymm10
	vpand	%ymm2, %ymm11, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm14, %ymm14
	vpand	%ymm3, %ymm11, %ymm11
	vpsrlq	$2, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm11, %ymm14, %ymm11
	vpand	%ymm2, %ymm13, %ymm14
	vpand	%ymm2, %ymm12, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm13, %ymm13
	vpand	%ymm3, %ymm12, %ymm12
	vpsrlq	$2, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm13, %ymm12
	vpand	%ymm2, %ymm6, %ymm13
	vpand	%ymm2, %ymm8, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpsrlq	$2, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpand	%ymm2, %ymm9, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpsrlq	$2, %ymm7, %ymm7
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpand	%ymm4, %ymm14, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm10, %ymm10
	vpand	%ymm5, %ymm14, %ymm14
	vpsrlq	$1, %ymm10, %ymm10
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm14, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm14
	vpand	%ymm4, %ymm12, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm11, %ymm11
	vpand	%ymm5, %ymm12, %ymm12
	vpsrlq	$1, %ymm11, %ymm11
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm4, %ymm13, %ymm12
	vpand	%ymm4, %ymm8, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm13, %ymm13
	vpand	%ymm5, %ymm8, %ymm8
	vpsrlq	$1, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm8, %ymm13, %ymm8
	vpand	%ymm4, %ymm6, %ymm13
	vpand	%ymm4, %ymm7, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpsrlq	$1, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 768(%rdi)
	vmovdqu	%ymm10, 800(%rdi)
	vmovdqu	%ymm14, 832(%rdi)
	vmovdqu	%ymm11, 864(%rdi)
	vmovdqu	%ymm12, 896(%rdi)
	vmovdqu	%ymm8, 928(%rdi)
	vmovdqu	%ymm13, 960(%rdi)
	vmovdqu	%ymm6, 992(%rdi)
	vmovdqu	1024(%rdi), %ymm13
	vmovdqu	1056(%rdi), %ymm11
	vmovdqu	1088(%rdi), %ymm12
	vmovdqu	1120(%rdi), %ymm10
	vmovdqu	1152(%rdi), %ymm6
	vmovdqu	1184(%rdi), %ymm7
	vmovdqu	1216(%rdi), %ymm8
	vmovdqu	1248(%rdi), %ymm9
	vpand	%ymm0, %ymm13, %ymm14
	vpand	%ymm0, %ymm6, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm13, %ymm13
	vpand	%ymm1, %ymm6, %ymm6
	vpsrlq	$4, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm6, %ymm13, %ymm6
	vpand	%ymm0, %ymm11, %ymm13
	vpand	%ymm0, %ymm7, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm11, %ymm11
	vpand	%ymm1, %ymm7, %ymm7
	vpsrlq	$4, %ymm11, %ymm11
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm11, %ymm7
	vpand	%ymm0, %ymm12, %ymm11
	vpand	%ymm0, %ymm8, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm12, %ymm12
	vpand	%ymm1, %ymm8, %ymm8
	vpsrlq	$4, %ymm12, %ymm12
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm8, %ymm12, %ymm8
	vpand	%ymm0, %ymm10, %ymm12
	vpand	%ymm0, %ymm9, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm10, %ymm10
	vpand	%ymm1, %ymm9, %ymm9
	vpsrlq	$4, %ymm10, %ymm10
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm9, %ymm10, %ymm9
	vpand	%ymm2, %ymm14, %ymm10
	vpand	%ymm2, %ymm11, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm14, %ymm14
	vpand	%ymm3, %ymm11, %ymm11
	vpsrlq	$2, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm11, %ymm14, %ymm11
	vpand	%ymm2, %ymm13, %ymm14
	vpand	%ymm2, %ymm12, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm13, %ymm13
	vpand	%ymm3, %ymm12, %ymm12
	vpsrlq	$2, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm13, %ymm12
	vpand	%ymm2, %ymm6, %ymm13
	vpand	%ymm2, %ymm8, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpsrlq	$2, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpand	%ymm2, %ymm9, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpsrlq	$2, %ymm7, %ymm7
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpand	%ymm4, %ymm14, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm10, %ymm10
	vpand	%ymm5, %ymm14, %ymm14
	vpsrlq	$1, %ymm10, %ymm10
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm14, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm14
	vpand	%ymm4, %ymm12, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm11, %ymm11
	vpand	%ymm5, %ymm12, %ymm12
	vpsrlq	$1, %ymm11, %ymm11
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm4, %ymm13, %ymm12
	vpand	%ymm4, %ymm8, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm13, %ymm13
	vpand	%ymm5, %ymm8, %ymm8
	vpsrlq	$1, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm8, %ymm13, %ymm8
	vpand	%ymm4, %ymm6, %ymm13
	vpand	%ymm4, %ymm7, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpsrlq	$1, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 1024(%rdi)
	vmovdqu	%ymm10, 1056(%rdi)
	vmovdqu	%ymm14, 1088(%rdi)
	vmovdqu	%ymm11, 1120(%rdi)
	vmovdqu	%ymm12, 1152(%rdi)
	vmovdqu	%ymm8, 1184(%rdi)
	vmovdqu	%ymm13, 1216(%rdi)
	vmovdqu	%ymm6, 1248(%rdi)
	vmovdqu	1280(%rdi), %ymm13
	vmovdqu	1312(%rdi), %ymm11
	vmovdqu	1344(%rdi), %ymm12
	vmovdqu	1376(%rdi), %ymm10
	vmovdqu	1408(%rdi), %ymm6
	vmovdqu	1440(%rdi), %ymm7
	vmovdqu	1472(%rdi), %ymm8
	vmovdqu	1504(%rdi), %ymm9
	vpand	%ymm0, %ymm13, %ymm14
	vpand	%ymm0, %ymm6, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm13, %ymm13
	vpand	%ymm1, %ymm6, %ymm6
	vpsrlq	$4, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm6, %ymm13, %ymm6
	vpand	%ymm0, %ymm11, %ymm13
	vpand	%ymm0, %ymm7, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm11, %ymm11
	vpand	%ymm1, %ymm7, %ymm7
	vpsrlq	$4, %ymm11, %ymm11
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm11, %ymm7
	vpand	%ymm0, %ymm12, %ymm11
	vpand	%ymm0, %ymm8, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm12, %ymm12
	vpand	%ymm1, %ymm8, %ymm8
	vpsrlq	$4, %ymm12, %ymm12
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm8, %ymm12, %ymm8
	vpand	%ymm0, %ymm10, %ymm12
	vpand	%ymm0, %ymm9, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm10, %ymm10
	vpand	%ymm1, %ymm9, %ymm9
	vpsrlq	$4, %ymm10, %ymm10
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm9, %ymm10, %ymm9
	vpand	%ymm2, %ymm14, %ymm10
	vpand	%ymm2, %ymm11, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm14, %ymm14
	vpand	%ymm3, %ymm11, %ymm11
	vpsrlq	$2, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm11, %ymm14, %ymm11
	vpand	%ymm2, %ymm13, %ymm14
	vpand	%ymm2, %ymm12, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm13, %ymm13
	vpand	%ymm3, %ymm12, %ymm12
	vpsrlq	$2, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm13, %ymm12
	vpand	%ymm2, %ymm6, %ymm13
	vpand	%ymm2, %ymm8, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpsrlq	$2, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpand	%ymm2, %ymm9, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpsrlq	$2, %ymm7, %ymm7
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpand	%ymm4, %ymm14, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm10, %ymm10
	vpand	%ymm5, %ymm14, %ymm14
	vpsrlq	$1, %ymm10, %ymm10
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm14, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm14
	vpand	%ymm4, %ymm12, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm11, %ymm11
	vpand	%ymm5, %ymm12, %ymm12
	vpsrlq	$1, %ymm11, %ymm11
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm4, %ymm13, %ymm12
	vpand	%ymm4, %ymm8, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm13, %ymm13
	vpand	%ymm5, %ymm8, %ymm8
	vpsrlq	$1, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm8, %ymm13, %ymm8
	vpand	%ymm4, %ymm6, %ymm13
	vpand	%ymm4, %ymm7, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpsrlq	$1, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 1280(%rdi)
	vmovdqu	%ymm10, 1312(%rdi)
	vmovdqu	%ymm14, 1344(%rdi)
	vmovdqu	%ymm11, 1376(%rdi)
	vmovdqu	%ymm12, 1408(%rdi)
	vmovdqu	%ymm8, 1440(%rdi)
	vmovdqu	%ymm13, 1472(%rdi)
	vmovdqu	%ymm6, 1504(%rdi)
	vmovdqu	1536(%rdi), %ymm13
	vmovdqu	1568(%rdi), %ymm11
	vmovdqu	1600(%rdi), %ymm12
	vmovdqu	1632(%rdi), %ymm10
	vmovdqu	1664(%rdi), %ymm6
	vmovdqu	1696(%rdi), %ymm7
	vmovdqu	1728(%rdi), %ymm8
	vmovdqu	1760(%rdi), %ymm9
	vpand	%ymm0, %ymm13, %ymm14
	vpand	%ymm0, %ymm6, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm13, %ymm13
	vpand	%ymm1, %ymm6, %ymm6
	vpsrlq	$4, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm6, %ymm13, %ymm6
	vpand	%ymm0, %ymm11, %ymm13
	vpand	%ymm0, %ymm7, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm11, %ymm11
	vpand	%ymm1, %ymm7, %ymm7
	vpsrlq	$4, %ymm11, %ymm11
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm11, %ymm7
	vpand	%ymm0, %ymm12, %ymm11
	vpand	%ymm0, %ymm8, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm12, %ymm12
	vpand	%ymm1, %ymm8, %ymm8
	vpsrlq	$4, %ymm12, %ymm12
	vpor	%ymm15, %ymm11, %ymm11
	vpor	%ymm8, %ymm12, %ymm8
	vpand	%ymm0, %ymm10, %ymm12
	vpand	%ymm0, %ymm9, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm10, %ymm10
	vpand	%ymm1, %ymm9, %ymm9
	vpsrlq	$4, %ymm10, %ymm10
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm9, %ymm10, %ymm9
	vpand	%ymm2, %ymm14, %ymm10
	vpand	%ymm2, %ymm11, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm14, %ymm14
	vpand	%ymm3, %ymm11, %ymm11
	vpsrlq	$2, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm11, %ymm14, %ymm11
	vpand	%ymm2, %ymm13, %ymm14
	vpand	%ymm2, %ymm12, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm13, %ymm13
	vpand	%ymm3, %ymm12, %ymm12
	vpsrlq	$2, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm13, %ymm12
	vpand	%ymm2, %ymm6, %ymm13
	vpand	%ymm2, %ymm8, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm6, %ymm6
	vpand	%ymm3, %ymm8, %ymm8
	vpsrlq	$2, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm2, %ymm7, %ymm8
	vpand	%ymm2, %ymm9, %ymm15
	vpsllq	$2, %ymm15, %ymm15
	vpand	%ymm3, %ymm7, %ymm7
	vpand	%ymm3, %ymm9, %ymm9
	vpsrlq	$2, %ymm7, %ymm7
	vpor	%ymm15, %ymm8, %ymm8
	vpor	%ymm9, %ymm7, %ymm7
	vpand	%ymm4, %ymm10, %ymm9
	vpand	%ymm4, %ymm14, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm10, %ymm10
	vpand	%ymm5, %ymm14, %ymm14
	vpsrlq	$1, %ymm10, %ymm10
	vpor	%ymm15, %ymm9, %ymm9
	vpor	%ymm14, %ymm10, %ymm10
	vpand	%ymm4, %ymm11, %ymm14
	vpand	%ymm4, %ymm12, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm11, %ymm11
	vpand	%ymm5, %ymm12, %ymm12
	vpsrlq	$1, %ymm11, %ymm11
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm11, %ymm11
	vpand	%ymm4, %ymm13, %ymm12
	vpand	%ymm4, %ymm8, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm13, %ymm13
	vpand	%ymm5, %ymm8, %ymm8
	vpsrlq	$1, %ymm13, %ymm13
	vpor	%ymm15, %ymm12, %ymm12
	vpor	%ymm8, %ymm13, %ymm8
	vpand	%ymm4, %ymm6, %ymm13
	vpand	%ymm4, %ymm7, %ymm15
	vpsllq	$1, %ymm15, %ymm15
	vpand	%ymm5, %ymm6, %ymm6
	vpand	%ymm5, %ymm7, %ymm7
	vpsrlq	$1, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm7, %ymm6, %ymm6
	vmovdqu	%ymm9, 1536(%rdi)
	vmovdqu	%ymm10, 1568(%rdi)
	vmovdqu	%ymm14, 1600(%rdi)
	vmovdqu	%ymm11, 1632(%rdi)
	vmovdqu	%ymm12, 1664(%rdi)
	vmovdqu	%ymm8, 1696(%rdi)
	vmovdqu	%ymm13, 1728(%rdi)
	vmovdqu	%ymm6, 1760(%rdi)
	vmovdqu	1792(%rdi), %ymm14
	vmovdqu	1824(%rdi), %ymm13
	vmovdqu	1856(%rdi), %ymm6
	vmovdqu	1888(%rdi), %ymm7
	vmovdqu	1920(%rdi), %ymm11
	vmovdqu	1952(%rdi), %ymm12
	vmovdqu	1984(%rdi), %ymm8
	vmovdqu	2016(%rdi), %ymm9
	vpand	%ymm0, %ymm14, %ymm10
	vpand	%ymm0, %ymm11, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm14, %ymm14
	vpand	%ymm1, %ymm11, %ymm11
	vpsrlq	$4, %ymm14, %ymm14
	vpor	%ymm15, %ymm10, %ymm10
	vpor	%ymm11, %ymm14, %ymm11
	vpand	%ymm0, %ymm13, %ymm14
	vpand	%ymm0, %ymm12, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm13, %ymm13
	vpand	%ymm1, %ymm12, %ymm12
	vpsrlq	$4, %ymm13, %ymm13
	vpor	%ymm15, %ymm14, %ymm14
	vpor	%ymm12, %ymm13, %ymm12
	vpand	%ymm0, %ymm6, %ymm13
	vpand	%ymm0, %ymm8, %ymm15
	vpsllq	$4, %ymm15, %ymm15
	vpand	%ymm1, %ymm6, %ymm6
	vpand	%ymm1, %ymm8, %ymm8
	vpsrlq	$4, %ymm6, %ymm6
	vpor	%ymm15, %ymm13, %ymm13
	vpor	%ymm8, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm8
	vpand	%ymm0, %ymm9, %ymm0
	vpsllq	$4, %ymm0, %ymm0
	vpand	%ymm1, %ymm7, %ymm7
	vpand	%ymm1, %ymm9, %ymm9
	vpsrlq	$4, %ymm7, %ymm7
	vpor	%ymm0, %ymm8, %ymm1
	vpor	%ymm9, %ymm7, %ymm0
	vpand	%ymm2, %ymm10, %ymm7
	vpand	%ymm2, %ymm13, %ymm8
	vpsllq	$2, %ymm8, %ymm8
	vpand	%ymm3, %ymm10, %ymm9
	vpand	%ymm3, %ymm13, %ymm10
	vpsrlq	$2, %ymm9, %ymm9
	vpor	%ymm8, %ymm7, %ymm7
	vpor	%ymm10, %ymm9, %ymm8
	vpand	%ymm2, %ymm14, %ymm9
	vpand	%ymm2, %ymm1, %ymm10
	vpsllq	$2, %ymm10, %ymm10
	vpand	%ymm3, %ymm14, %ymm13
	vpand	%ymm3, %ymm1, %ymm14
	vpsrlq	$2, %ymm13, %ymm13
	vpor	%ymm10, %ymm9, %ymm1
	vpor	%ymm14, %ymm13, %ymm9
	vpand	%ymm2, %ymm11, %ymm10
	vpand	%ymm2, %ymm6, %ymm13
	vpsllq	$2, %ymm13, %ymm13
	vpand	%ymm3, %ymm11, %ymm11
	vpand	%ymm3, %ymm6, %ymm14
	vpsrlq	$2, %ymm11, %ymm11
	vpor	%ymm13, %ymm10, %ymm6
	vpor	%ymm14, %ymm11, %ymm10
	vpand	%ymm2, %ymm12, %ymm11
	vpand	%ymm2, %ymm0, %ymm2
	vpsllq	$2, %ymm2, %ymm2
	vpand	%ymm3, %ymm12, %ymm12
	vpand	%ymm3, %ymm0, %ymm3
	vpsrlq	$2, %ymm12, %ymm12
	vpor	%ymm2, %ymm11, %ymm0
	vpor	%ymm3, %ymm12, %ymm2
	vpand	%ymm4, %ymm7, %ymm3
	vpand	%ymm4, %ymm1, %ymm11
	vpsllq	$1, %ymm11, %ymm11
	vpand	%ymm5, %ymm7, %ymm7
	vpand	%ymm5, %ymm1, %ymm12
	vpsrlq	$1, %ymm7, %ymm7
	vpor	%ymm11, %ymm3, %ymm1
	vpor	%ymm12, %ymm7, %ymm3
	vpand	%ymm4, %ymm8, %ymm7
	vpand	%ymm4, %ymm9, %ymm11
	vpsllq	$1, %ymm11, %ymm11
	vpand	%ymm5, %ymm8, %ymm8
	vpand	%ymm5, %ymm9, %ymm9
	vpsrlq	$1, %ymm8, %ymm8
	vpor	%ymm11, %ymm7, %ymm7
	vpor	%ymm9, %ymm8, %ymm8
	vpand	%ymm4, %ymm6, %ymm9
	vpand	%ymm4, %ymm0, %ymm11
	vpsllq	$1, %ymm11, %ymm11
	vpand	%ymm5, %ymm6, %ymm6
	vpand	%ymm5, %ymm0, %ymm12
	vpsrlq	$1, %ymm6, %ymm6
	vpor	%ymm11, %ymm9, %ymm0
	vpor	%ymm12, %ymm6, %ymm6
	vpand	%ymm4, %ymm10, %ymm9
	vpand	%ymm4, %ymm2, %ymm4
	vpsllq	$1, %ymm4, %ymm4
	vpand	%ymm5, %ymm10, %ymm10
	vpand	%ymm5, %ymm2, %ymm2
	vpsrlq	$1, %ymm10, %ymm5
	vpor	%ymm4, %ymm9, %ymm4
	vpor	%ymm2, %ymm5, %ymm2
	vmovdqu	%ymm1, 1792(%rdi)
	vmovdqu	%ymm3, 1824(%rdi)
	vmovdqu	%ymm7, 1856(%rdi)
	vmovdqu	%ymm8, 1888(%rdi)
	vmovdqu	%ymm0, 1920(%rdi)
	vmovdqu	%ymm6, 1952(%rdi)
	vmovdqu	%ymm4, 1984(%rdi)
	vmovdqu	%ymm2, 2016(%rdi)
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
