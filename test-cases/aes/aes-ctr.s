	.file	"aes-ctr.c"
	.text
	.p2align 4,,15
	.globl	ECRYPT_process_bytes
	.type	ECRYPT_process_bytes, @function
ECRYPT_process_bytes:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$448, %esp
	.cfi_def_cfa_offset 468
	movl	484(%esp), %eax
	testl	%eax, %eax
	je	.L1
	movl	472(%esp), %ecx
	movl	472(%esp), %edx
	movl	%ecx, %esi
	movl	4(%ecx), %ebx
	movl	16(%esi), %edi
	movl	(%edx), %edx
	movl	20(%esi), %ebp
	movl	8(%ecx), %ecx
	movl	%edi, 224(%esp)
	xorl	%ebx, %edi
	movl	%edi, 152(%esp)
	movl	%edx, 308(%esp)
	movl	12(%esi), %edx
	movl	152(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, 156(%esp)
	movl	%ebp, 232(%esp)
	xorl	%edx, %edi
	xorl	%ebp, %esi
	movl	%esi, 160(%esp)
	movl	160(%esp), %ebp
	xorl	156(%esp), %esi
	movl	%edi, 228(%esp)
	movl	%esi, 164(%esp)
	xorl	%edi, %esi
	movl	472(%esp), %edi
	movl	%esi, 236(%esp)
	movl	24(%edi), %edi
	xorl	%edi, %ebp
	movl	%ebp, 168(%esp)
	xorl	164(%esp), %ebp
	movl	%edi, 240(%esp)
	movl	168(%esp), %edi
	movl	%ebp, 172(%esp)
	xorl	%esi, %ebp
	movl	472(%esp), %esi
	movl	%ebp, 244(%esp)
	movl	28(%esi), %esi
	xorl	%esi, %edi
	movl	%edi, 176(%esp)
	xorl	172(%esp), %edi
	movl	%esi, 248(%esp)
	movl	%edi, 180(%esp)
	xorl	%ebp, %edi
	movl	472(%esp), %ebp
	movl	176(%esp), %esi
	movl	%edi, 252(%esp)
	movl	32(%ebp), %ebp
	xorl	%ebp, %esi
	movl	%esi, 184(%esp)
	xorl	180(%esp), %esi
	movl	%ebp, 256(%esp)
	movl	184(%esp), %ebp
	movl	%esi, 188(%esp)
	xorl	%edi, %esi
	movl	472(%esp), %edi
	movl	%esi, 260(%esp)
	movl	36(%edi), %edi
	xorl	%edi, %ebp
	movl	%ebp, 192(%esp)
	xorl	188(%esp), %ebp
	movl	%edi, 264(%esp)
	movl	192(%esp), %edi
	movl	%ebp, 196(%esp)
	xorl	%esi, %ebp
	movl	472(%esp), %esi
	movl	%ebp, 268(%esp)
	movl	40(%esi), %esi
	xorl	%esi, %edi
	movl	%edi, 200(%esp)
	xorl	196(%esp), %edi
	movl	%esi, 272(%esp)
	movl	200(%esp), %esi
	movl	%edi, 204(%esp)
	xorl	%ebp, %edi
	movl	472(%esp), %ebp
	movl	%edi, 276(%esp)
	movl	44(%ebp), %ebp
	xorl	%ebp, %esi
	movl	%esi, 208(%esp)
	xorl	204(%esp), %esi
	movl	%ebp, 280(%esp)
	movl	%esi, 212(%esp)
	xorl	%edi, %esi
	movl	472(%esp), %edi
	movl	%esi, 284(%esp)
	movl	48(%edi), %edi
	movl	%edi, 288(%esp)
	movl	208(%esp), %ebp
	xorl	%edi, %ebp
	movl	%ebp, 216(%esp)
	movl	216(%esp), %edi
	xorl	212(%esp), %ebp
	movl	%ebp, 220(%esp)
	xorl	%esi, %ebp
	movl	472(%esp), %esi
	movl	%ebp, 292(%esp)
	movl	52(%esi), %esi
	xorl	%esi, %edi
	movl	%edi, 300(%esp)
	xorl	220(%esp), %edi
	movl	%esi, 296(%esp)
	movl	472(%esp), %esi
	movl	%edi, 304(%esp)
	xorl	%ebp, %edi
	movl	472(%esp), %ebp
	movl	%edi, 312(%esp)
	movl	472(%esp), %edi
	movl	60(%esi), %esi
	movl	56(%ebp), %ebp
	movl	64(%edi), %edi
	xorl	%esi, %ebx
	movl	%esi, 436(%esp)
	movl	%ebp, 108(%esp)
	movl	472(%esp), %ebp
	xorl	%edi, %ecx
	movl	%edi, 440(%esp)
	movl	68(%ebp), %ebp
	xorl	%ebp, %edx
	movzbl	%bl, %esi
	sall	$3, %esi
	movl	%esi, 128(%esp)
	addl	$1, %esi
	movl	128(%esp), %edi
	movl	%esi, 316(%esp)
	movl	128(%esp), %esi
	movl	%ebp, 444(%esp)
	addl	$3, %edi
	addl	$2, %esi
	movl	%esi, 320(%esp)
	movzbl	%bh, %esi
	sall	$3, %esi
	movl	%esi, 132(%esp)
	movl	132(%esp), %ebp
	addl	$1, %esi
	movl	%edi, 324(%esp)
	movl	%ebx, %edi
	shrl	$24, %ebx
	sall	$3, %ebx
	addl	$2, %ebp
	shrl	$13, %edi
	andl	$2040, %edi
	movl	%esi, 328(%esp)
	movl	%ebp, 332(%esp)
	movl	132(%esp), %esi
	movl	%ebx, 352(%esp)
	movzbl	%cl, %ebx
	movl	%edi, 112(%esp)
	sall	$3, %ebx
	movl	112(%esp), %ebp
	movl	%ebx, 136(%esp)
	addl	$1, %edi
	addl	$1, %ebx
	movl	%edi, 340(%esp)
	movl	136(%esp), %edi
	addl	$3, %esi
	movl	%ebx, 356(%esp)
	movzbl	%ch, %ebx
	sall	$3, %ebx
	addl	$2, %ebp
	movl	%ebx, 140(%esp)
	addl	$1, %ebx
	movl	%esi, 336(%esp)
	movl	112(%esp), %esi
	addl	$2, %edi
	movl	%ebp, 344(%esp)
	movl	136(%esp), %ebp
	movl	%ebx, 368(%esp)
	movl	140(%esp), %ebx
	movl	%edi, 360(%esp)
	movl	%ecx, %edi
	shrl	$13, %edi
	addl	$3, %esi
	addl	$3, %ebp
	andl	$2040, %edi
	addl	$2, %ebx
	movl	%edi, 116(%esp)
	shrl	$24, %ecx
	addl	$1, %edi
	movl	%esi, 348(%esp)
	movl	140(%esp), %esi
	sall	$3, %ecx
	movl	%ebp, 364(%esp)
	movl	116(%esp), %ebp
	movl	%ebx, 372(%esp)
	movl	116(%esp), %ebx
	movl	%ecx, 392(%esp)
	movzbl	%dl, %ecx
	addl	$3, %esi
	addl	$2, %ebp
	addl	$3, %ebx
	sall	$3, %ecx
	movl	%ecx, 144(%esp)
	addl	$1, %ecx
	movl	%esi, 376(%esp)
	movl	144(%esp), %esi
	movl	%edi, 380(%esp)
	movl	144(%esp), %edi
	movl	%ecx, 396(%esp)
	movzbl	%dh, %ecx
	sall	$3, %ecx
	addl	$2, %esi
	addl	$3, %edi
	movl	%ebp, 384(%esp)
	movl	%ebx, 388(%esp)
	movl	%edx, %ebx
	movl	%esi, 400(%esp)
	shrl	$13, %ebx
	movl	%edi, 404(%esp)
	andl	$2040, %ebx
	movl	%ecx, 148(%esp)
	movl	148(%esp), %ebp
	addl	$1, %ecx
	movl	%ebx, 120(%esp)
	movl	120(%esp), %esi
	shrl	$24, %edx
	movl	%ecx, 408(%esp)
	movl	120(%esp), %edi
	sall	$3, %edx
	movl	148(%esp), %ecx
	addl	$1, %ebx
	addl	$2, %ebp
	movl	%ebp, 412(%esp)
	movl	480(%esp), %ebp
	addl	$2, %esi
	movl	%eax, 104(%esp)
	movl	476(%esp), %eax
	addl	$3, %edi
	addl	$3, %ecx
	movl	%edi, 428(%esp)
	movl	%edx, %edi
	movl	%ecx, 416(%esp)
	movl	%ebx, 420(%esp)
	movl	%esi, 424(%esp)
	movl	%edx, 432(%esp)
	movl	%ebp, 80(%esp)
	movl	%eax, 100(%esp)
	jmp	.L7
	.p2align 4,,7
	.p2align 3
.L8:
	movl	432(%esp), %edi
	movl	%eax, 104(%esp)
.L7:
	movl	108(%esp), %edx
	xorl	308(%esp), %edx
	movl	aes_table3, %ebp
	movl	aes_table1, %eax
	movl	%edx, 4(%esp)
	movl	4(%esp), %esi
	movzbl	4(%esp), %ecx
	movl	aes_table0, %edx
	shrl	$16, %esi
	andl	$255, %esi
	movl	%ecx, %ebx
	movl	%esi, 32(%esp)
	sall	$3, %esi
	movl	%esi, 24(%esp)
	movl	224(%esp), %esi
	sall	$3, %ebx
	xorl	0(%ebp,%edi), %esi
	movl	132(%esp), %edi
	movl	328(%esp), %ebp
	movl	%ecx, 12(%esp)
	movl	4(%esp), %ecx
	movzbl	(%eax,%edi), %edi
	movzbl	%ch, %ecx
	movl	%ecx, 28(%esp)
	sall	$3, %ecx
	movl	%edi, 8(%esp)
	movzbl	(%eax,%ebp), %edi
	movl	332(%esp), %ebp
	movl	%ecx, 16(%esp)
	movl	aes_table2, %ecx
	sall	$8, %edi
	addl	8(%esp), %edi
	movl	%edi, 8(%esp)
	movzbl	(%eax,%ebp), %edi
	movl	336(%esp), %ebp
	sall	$16, %edi
	addl	8(%esp), %edi
	movl	%edi, 8(%esp)
	movzbl	(%eax,%ebp), %edi
	sall	$24, %edi
	addl	8(%esp), %edi
	xorl	%edi, %esi
	movl	116(%esp), %edi
	movzbl	(%ecx,%edi), %edi
	movl	%edi, 8(%esp)
	movl	380(%esp), %ebp
	movzbl	(%ecx,%ebp), %edi
	movl	384(%esp), %ebp
	sall	$8, %edi
	addl	8(%esp), %edi
	movl	%edi, 8(%esp)
	movzbl	(%ecx,%ebp), %edi
	movl	388(%esp), %ebp
	sall	$16, %edi
	addl	8(%esp), %edi
	movl	%edi, 8(%esp)
	movzbl	(%ecx,%ebp), %edi
	sall	$24, %edi
	addl	8(%esp), %edi
	xorl	%edi, %esi
	movl	12(%esp), %edi
	movzbl	(%edx,%edi,8), %ebp
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%edx,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%edx,%ebx), %ebp
	sall	$24, %ebp
	addl	%ebp, %edi
	movl	128(%esp), %ebp
	xorl	%edi, %esi
	movzbl	(%edx,%ebp), %edi
	movl	316(%esp), %ebp
	movzbl	(%edx,%ebp), %ebx
	movl	320(%esp), %ebp
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	(%edx,%ebp), %ebx
	movl	324(%esp), %ebp
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	(%edx,%ebp), %ebx
	movl	140(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	152(%esp), %edi
	xorl	%edi, %ebx
	movzbl	(%eax,%ebp), %edi
	movl	368(%esp), %ebp
	movl	%ebx, 12(%esp)
	movzbl	(%eax,%ebp), %ebx
	movl	372(%esp), %ebp
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	(%eax,%ebp), %ebx
	movl	376(%esp), %ebp
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	(%eax,%ebp), %ebx
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	120(%esp), %ebx
	movl	420(%esp), %ebp
	movzbl	(%ecx,%ebx), %edi
	movzbl	(%ecx,%ebp), %ebx
	movl	424(%esp), %ebp
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	(%ecx,%ebp), %ebx
	movl	428(%esp), %ebp
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	(%ecx,%ebp), %ebx
	movl	aes_table3, %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 12(%esp)
	movl	4(%esp), %ebx
	shrl	$24, %ebx
	movl	(%edi,%ebx,8), %edi
	xorl	%edi, 12(%esp)
	movl	352(%esp), %edi
	movl	156(%esp), %ebx
	xorl	0(%ebp,%edi), %ebx
	movl	356(%esp), %ebp
	movl	%ebx, 8(%esp)
	movl	136(%esp), %ebx
	movzbl	(%edx,%ebx), %edi
	movzbl	(%edx,%ebp), %ebx
	movl	360(%esp), %ebp
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	(%edx,%ebp), %ebx
	movl	364(%esp), %ebp
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	(%edx,%ebp), %ebx
	movl	408(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	148(%esp), %ebx
	movzbl	(%eax,%ebx), %edi
	movzbl	(%eax,%ebp), %ebx
	movl	412(%esp), %ebp
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	(%eax,%ebp), %ebx
	movl	416(%esp), %ebp
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	(%eax,%ebp), %ebx
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	24(%esp), %ebp
	movl	32(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%ecx,%ebp), %ebx
	movl	aes_table3, %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	392(%esp), %edi
	xorl	%ebx, 8(%esp)
	movl	228(%esp), %ebx
	xorl	0(%ebp,%edi), %ebx
	movl	144(%esp), %edi
	movl	396(%esp), %ebp
	movl	%ebx, 20(%esp)
	movzbl	(%edx,%edi), %ebx
	movzbl	(%edx,%ebp), %edi
	movl	400(%esp), %ebp
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	(%edx,%ebp), %edi
	movl	404(%esp), %ebp
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	(%edx,%ebp), %edi
	movl	340(%esp), %ebp
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	112(%esp), %edi
	movzbl	(%ecx,%edi), %ebx
	movzbl	(%ecx,%ebp), %edi
	movl	344(%esp), %ebp
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	(%ecx,%ebp), %edi
	movl	348(%esp), %ebp
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	(%ecx,%ebp), %edi
	movl	16(%esp), %ebp
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	28(%esp), %edi
	movzbl	(%eax,%edi,8), %ebx
	movzbl	1(%eax,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%eax,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%eax,%ebp), %edi
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	%esi, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%edx,%edi,8), %edi
	movzbl	3(%edx,%ebx), %ebp
	movl	%edi, 16(%esp)
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	16(%esp), %edi
	movl	%edi, 16(%esp)
	movzbl	2(%edx,%ebx), %edi
	movl	%esi, %ebx
	sall	$16, %edi
	addl	16(%esp), %edi
	shrl	$16, %ebx
	movl	%ebx, 16(%esp)
	sall	$24, %ebp
	movl	%esi, %ebx
	addl	%edi, %ebp
	movzbl	%bh, %edi
	movl	%ebp, 84(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 4(%esp)
	movl	4(%esp), %ebx
	shrl	$24, %esi
	movzbl	(%eax,%edi,8), %ebp
	movl	%esi, 96(%esp)
	movzbl	12(%esp), %esi
	movzbl	1(%eax,%ebx), %edi
	movl	%esi, 48(%esp)
	sall	$3, %esi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%ebx), %ebp
	sall	$24, %ebp
	addl	%edi, %ebp
	movzbl	16(%esp), %edi
	movl	%ebp, 88(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 4(%esp)
	movl	4(%esp), %ebx
	movzbl	(%ecx,%edi,8), %ebp
	movl	%esi, 4(%esp)
	movzbl	1(%ecx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%ecx,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%ecx,%ebx), %ebp
	movl	12(%esp), %ebx
	sall	$24, %ebp
	addl	%edi, %ebp
	movzbl	%bh, %esi
	movl	%ebp, 92(%esp)
	movl	%ebx, %ebp
	shrl	$16, %ebp
	andl	$255, %ebp
	movl	%ebp, 52(%esp)
	sall	$3, %ebp
	movl	%ebp, 16(%esp)
	movzbl	8(%esp), %ebp
	leal	0(,%esi,8), %edi
	movl	%ebp, 56(%esp)
	sall	$3, %ebp
	movl	8(%esp), %ebx
	movl	%ebp, 24(%esp)
	movl	8(%esp), %ebp
	movzbl	%bh, %ebx
	shrl	$16, %ebp
	andl	$255, %ebp
	movl	%ebp, 64(%esp)
	sall	$3, %ebp
	movl	%ebp, 32(%esp)
	movzbl	20(%esp), %ebp
	movl	%ebx, 60(%esp)
	sall	$3, %ebx
	movl	%ebx, 28(%esp)
	movl	20(%esp), %ebx
	movl	%ebp, 68(%esp)
	sall	$3, %ebp
	movl	%ebp, 36(%esp)
	movl	20(%esp), %ebp
	movzbl	%bh, %ebx
	movl	%ebx, 72(%esp)
	sall	$3, %ebx
	movl	%ebx, 40(%esp)
	movl	20(%esp), %ebx
	shrl	$16, %ebp
	andl	$255, %ebp
	movl	%ebp, 76(%esp)
	sall	$3, %ebp
	movl	%ebp, 44(%esp)
	movzbl	(%eax,%esi,8), %ebp
	shrl	$24, %ebx
	movzbl	1(%eax,%edi), %esi
	sall	$8, %esi
	addl	%esi, %ebp
	movzbl	2(%eax,%edi), %esi
	sall	$16, %esi
	addl	%esi, %ebp
	movzbl	3(%eax,%edi), %esi
	movl	aes_table3, %edi
	sall	$24, %esi
	addl	%ebp, %esi
	movl	64(%esp), %ebp
	xorl	(%edi,%ebx,8), %esi
	xorl	232(%esp), %esi
	xorl	84(%esp), %esi
	movzbl	(%ecx,%ebp,8), %edi
	movl	32(%esp), %ebp
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	4(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, %esi
	movl	48(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	aes_table3, %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	96(%esp), %edi
	movl	0(%ebp,%edi,8), %edi
	movl	160(%esp), %ebp
	xorl	%edi, %ebx
	xorl	%ebp, %ebx
	movl	%ebx, 4(%esp)
	movl	28(%esp), %ebp
	movl	60(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	movl	44(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 4(%esp)
	movl	76(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%ecx,%ebp), %ebx
	movl	12(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 4(%esp)
	shrl	$24, %ebp
	movl	164(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	92(%esp), %ebp
	xorl	%ebp, %ebx
	movl	24(%esp), %ebp
	movl	%ebx, 12(%esp)
	movl	56(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%edx,%ebp), %ebx
	movl	40(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	72(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	16(%esp), %ebp
	movl	52(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%edi, %ebx
	movzbl	2(%ecx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	aes_table3, %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	8(%esp), %edi
	shrl	$24, %edi
	movl	0(%ebp,%edi,8), %ebp
	movl	236(%esp), %edi
	xorl	%ebp, %ebx
	movl	88(%esp), %ebp
	xorl	%edi, %ebx
	movl	68(%esp), %edi
	xorl	%ebp, %ebx
	movl	36(%esp), %ebp
	movl	%ebx, 20(%esp)
	movzbl	(%edx,%edi,8), %ebx
	movzbl	1(%edx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%edx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	%esi, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%edx,%edi,8), %edi
	movl	%edi, 16(%esp)
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	16(%esp), %edi
	movl	%edi, 16(%esp)
	movzbl	2(%edx,%ebx), %edi
	sall	$16, %edi
	addl	16(%esp), %edi
	movl	%edi, 16(%esp)
	movzbl	3(%edx,%ebx), %edi
	movl	%esi, %ebx
	shrl	$16, %ebx
	sall	$24, %edi
	addl	16(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	shrl	$24, %esi
	movl	%edi, 84(%esp)
	movzbl	%bh, %edi
	leal	0(,%edi,8), %ebp
	movl	%ebp, 8(%esp)
	movl	8(%esp), %ebx
	movzbl	(%eax,%edi,8), %ebp
	movl	%esi, 96(%esp)
	movzbl	4(%esp), %esi
	movzbl	1(%eax,%ebx), %edi
	movl	%esi, 48(%esp)
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%edi, %ebp
	movzbl	3(%eax,%ebx), %edi
	sall	$24, %edi
	addl	%ebp, %edi
	movl	%edi, 88(%esp)
	movzbl	16(%esp), %edi
	leal	0(,%edi,8), %ebp
	movl	%ebp, 8(%esp)
	movl	8(%esp), %ebx
	movzbl	(%ecx,%edi,8), %ebp
	movzbl	1(%ecx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%ecx,%ebx), %edi
	sall	$16, %edi
	addl	%edi, %ebp
	movzbl	3(%ecx,%ebx), %edi
	movl	4(%esp), %ebx
	sall	$24, %edi
	addl	%ebp, %edi
	sall	$3, %esi
	movl	%esi, 16(%esp)
	movl	%ebx, %esi
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 52(%esp)
	sall	$3, %esi
	movl	%esi, 24(%esp)
	movzbl	12(%esp), %esi
	movl	%edi, 92(%esp)
	movzbl	%bh, %edi
	movl	12(%esp), %ebx
	leal	0(,%edi,8), %ebp
	movl	%esi, 56(%esp)
	sall	$3, %esi
	movl	%esi, 28(%esp)
	movl	12(%esp), %esi
	movzbl	%bh, %ebx
	movl	%ebx, 60(%esp)
	sall	$3, %ebx
	movl	%ebx, 32(%esp)
	movl	20(%esp), %ebx
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 64(%esp)
	sall	$3, %esi
	movzbl	%bh, %ebx
	movl	%esi, 8(%esp)
	movzbl	20(%esp), %esi
	movl	%esi, 68(%esp)
	sall	$3, %esi
	movl	%esi, 36(%esp)
	movl	%ebx, 72(%esp)
	movl	20(%esp), %esi
	sall	$3, %ebx
	movl	%ebx, 40(%esp)
	movl	aes_table3, %ebx
	movzbl	(%eax,%edi,8), %edi
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 76(%esp)
	sall	$3, %esi
	movl	%esi, 44(%esp)
	movl	20(%esp), %esi
	shrl	$24, %esi
	movl	(%ebx,%esi,8), %esi
	movzbl	1(%eax,%ebp), %ebx
	xorl	240(%esp), %esi
	xorl	84(%esp), %esi
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	movl	64(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movzbl	(%ecx,%ebp,8), %edi
	movl	8(%esp), %ebp
	xorl	%ebx, %esi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	aes_table3, %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	96(%esp), %edi
	xorl	%ebx, %esi
	movl	168(%esp), %ebx
	xorl	0(%ebp,%edi,8), %ebx
	movl	16(%esp), %ebp
	movl	%ebx, 8(%esp)
	movl	48(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	44(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	76(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	32(%esp), %ebp
	movl	60(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%eax,%ebp), %edi
	movl	4(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 8(%esp)
	shrl	$24, %ebp
	movl	172(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	92(%esp), %ebp
	xorl	%ebp, %ebx
	movl	28(%esp), %ebp
	movl	%ebx, 4(%esp)
	movl	56(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%edx,%ebp), %ebx
	movl	40(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 4(%esp)
	movl	72(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	movl	12(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 4(%esp)
	shrl	$24, %ebp
	movl	244(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	%ebx, 20(%esp)
	movl	68(%esp), %ebp
	movzbl	(%edx,%ebp,8), %ebx
	movl	36(%esp), %ebp
	movzbl	1(%edx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%edx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	24(%esp), %ebp
	sall	$24, %edi
	addl	%ebx, %edi
	movl	88(%esp), %ebx
	xorl	%edi, 20(%esp)
	movl	52(%esp), %edi
	xorl	%ebx, 20(%esp)
	movzbl	(%ecx,%edi,8), %ebx
	movzbl	1(%ecx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%ecx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	%esi, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%edx,%edi,8), %edi
	movl	%edi, 16(%esp)
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	16(%esp), %edi
	movl	%edi, 16(%esp)
	movzbl	2(%edx,%ebx), %edi
	sall	$16, %edi
	addl	16(%esp), %edi
	movl	%edi, 16(%esp)
	movzbl	3(%edx,%ebx), %edi
	movl	%esi, %ebx
	shrl	$16, %ebx
	sall	$24, %edi
	addl	16(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	movl	%edi, 92(%esp)
	movzbl	%bh, %edi
	leal	0(,%edi,8), %ebp
	movl	%ebp, 12(%esp)
	movl	12(%esp), %ebx
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%edi, %ebp
	movzbl	3(%eax,%ebx), %edi
	shrl	$24, %esi
	sall	$24, %edi
	addl	%ebp, %edi
	movl	%edi, 96(%esp)
	movl	8(%esp), %ebx
	movl	%esi, 124(%esp)
	movzbl	8(%esp), %ebp
	movzbl	16(%esp), %edi
	movl	%ebx, %esi
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 60(%esp)
	sall	$3, %esi
	movl	%esi, 28(%esp)
	movzbl	4(%esp), %esi
	movl	%ebp, 56(%esp)
	sall	$3, %ebp
	movl	%ebp, 24(%esp)
	movzbl	%bh, %ebp
	movl	4(%esp), %ebx
	movl	%edi, 52(%esp)
	sall	$3, %edi
	movl	%esi, 64(%esp)
	sall	$3, %esi
	movl	%esi, 32(%esp)
	movl	4(%esp), %esi
	movzbl	%bh, %ebx
	movl	%ebx, 68(%esp)
	sall	$3, %ebx
	movl	%ebx, 36(%esp)
	movl	20(%esp), %ebx
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 72(%esp)
	sall	$3, %esi
	movl	%esi, 12(%esp)
	movzbl	20(%esp), %esi
	movzbl	%bh, %ebx
	movl	%ebx, 84(%esp)
	sall	$3, %ebx
	movl	%ebx, 44(%esp)
	movl	aes_table3, %ebx
	movl	%edi, 16(%esp)
	leal	0(,%ebp,8), %edi
	movzbl	(%eax,%ebp,8), %ebp
	movl	%esi, 76(%esp)
	sall	$3, %esi
	movl	%esi, 40(%esp)
	movl	20(%esp), %esi
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 88(%esp)
	sall	$3, %esi
	movl	%esi, 48(%esp)
	movl	20(%esp), %esi
	shrl	$24, %esi
	movl	(%ebx,%esi,8), %esi
	movzbl	1(%eax,%edi), %ebx
	xorl	248(%esp), %esi
	xorl	92(%esp), %esi
	sall	$8, %ebx
	addl	%ebx, %ebp
	movzbl	2(%eax,%edi), %ebx
	sall	$16, %ebx
	addl	%ebx, %ebp
	movzbl	3(%eax,%edi), %ebx
	sall	$24, %ebx
	addl	%ebp, %ebx
	movl	72(%esp), %ebp
	xorl	%ebx, %esi
	movzbl	(%ecx,%ebp,8), %edi
	movl	12(%esp), %ebp
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	aes_table3, %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	124(%esp), %edi
	xorl	%ebx, %esi
	movl	176(%esp), %ebx
	xorl	0(%ebp,%edi,8), %ebx
	movl	%ebx, 12(%esp)
	movl	24(%esp), %ebp
	movl	56(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	48(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	88(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	36(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	68(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%eax,%ebp), %edi
	movl	8(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 12(%esp)
	shrl	$24, %ebp
	movl	180(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	64(%esp), %ebp
	movl	%ebx, 8(%esp)
	movzbl	(%edx,%ebp,8), %edi
	movl	32(%esp), %ebp
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%edx,%ebp), %ebx
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	44(%esp), %ebp
	movl	84(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	movl	16(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	52(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%ecx,%ebp), %ebx
	movl	4(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 8(%esp)
	shrl	$24, %ebp
	movl	252(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	76(%esp), %ebp
	movl	%ebx, 20(%esp)
	movzbl	(%edx,%ebp,8), %ebx
	movl	40(%esp), %ebp
	movzbl	1(%edx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%edx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	28(%esp), %ebp
	sall	$24, %edi
	addl	%ebx, %edi
	movl	96(%esp), %ebx
	xorl	%edi, 20(%esp)
	movl	60(%esp), %edi
	xorl	%ebx, 20(%esp)
	movzbl	(%ecx,%edi,8), %ebx
	movzbl	1(%ecx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%ecx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	%esi, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%edx,%edi,8), %edi
	movzbl	3(%edx,%ebx), %ebp
	movl	%edi, 16(%esp)
	movzbl	1(%edx,%ebx), %edi
	sall	$24, %ebp
	sall	$8, %edi
	addl	16(%esp), %edi
	movl	%edi, 16(%esp)
	movzbl	2(%edx,%ebx), %edi
	movl	%esi, %ebx
	shrl	$16, %ebx
	sall	$16, %edi
	addl	16(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	shrl	$24, %esi
	addl	%edi, %ebp
	movzbl	%bh, %edi
	movl	%ebp, 84(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 4(%esp)
	movl	4(%esp), %ebx
	movzbl	(%eax,%edi,8), %ebp
	movl	%esi, 96(%esp)
	movzbl	12(%esp), %esi
	movzbl	1(%eax,%ebx), %edi
	movl	%esi, 48(%esp)
	sall	$3, %esi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%ebx), %ebp
	sall	$24, %ebp
	addl	%edi, %ebp
	movzbl	16(%esp), %edi
	movl	%ebp, 88(%esp)
	movl	%esi, 16(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 4(%esp)
	movl	4(%esp), %ebx
	movzbl	(%ecx,%edi,8), %ebp
	movzbl	1(%ecx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%ecx,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%ecx,%ebx), %ebp
	movl	12(%esp), %ebx
	sall	$24, %ebp
	movl	%ebx, %esi
	addl	%edi, %ebp
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 52(%esp)
	sall	$3, %esi
	movl	%esi, 24(%esp)
	movzbl	8(%esp), %esi
	movl	%ebp, 92(%esp)
	movzbl	%bh, %ebp
	leal	0(,%ebp,8), %edi
	movl	%esi, 56(%esp)
	sall	$3, %esi
	movl	8(%esp), %ebx
	movl	%esi, 28(%esp)
	movl	8(%esp), %esi
	movzbl	(%eax,%ebp,8), %ebp
	movzbl	%bh, %ebx
	movl	%ebx, 60(%esp)
	sall	$3, %ebx
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 64(%esp)
	sall	$3, %esi
	movl	%esi, 4(%esp)
	movzbl	20(%esp), %esi
	movl	%ebx, 32(%esp)
	movl	20(%esp), %ebx
	movl	%esi, 68(%esp)
	sall	$3, %esi
	movl	%esi, 36(%esp)
	movl	20(%esp), %esi
	movzbl	%bh, %ebx
	movl	%ebx, 72(%esp)
	sall	$3, %ebx
	movl	%ebx, 40(%esp)
	movl	aes_table3, %ebx
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 76(%esp)
	sall	$3, %esi
	movl	%esi, 44(%esp)
	movl	20(%esp), %esi
	shrl	$24, %esi
	movl	(%ebx,%esi,8), %esi
	movzbl	1(%eax,%edi), %ebx
	xorl	256(%esp), %esi
	xorl	84(%esp), %esi
	sall	$8, %ebx
	addl	%ebx, %ebp
	movzbl	2(%eax,%edi), %ebx
	sall	$16, %ebx
	addl	%ebx, %ebp
	movzbl	3(%eax,%edi), %ebx
	sall	$24, %ebx
	addl	%ebp, %ebx
	movl	64(%esp), %ebp
	xorl	%ebx, %esi
	movzbl	(%ecx,%ebp,8), %edi
	movl	4(%esp), %ebp
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	aes_table3, %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	96(%esp), %edi
	xorl	%ebx, %esi
	movl	184(%esp), %ebx
	xorl	0(%ebp,%edi,8), %ebx
	movl	%ebx, 4(%esp)
	movl	16(%esp), %ebp
	movl	48(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	32(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 4(%esp)
	movl	60(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%eax,%ebp), %edi
	movl	44(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 4(%esp)
	movl	76(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	12(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 4(%esp)
	shrl	$24, %ebp
	movl	188(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	56(%esp), %ebp
	movl	%ebx, 12(%esp)
	movzbl	(%edx,%ebp,8), %edi
	movl	28(%esp), %ebp
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%edx,%ebp), %ebx
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	72(%esp), %ebp
	movl	92(%esp), %ebx
	xorl	%ebx, 12(%esp)
	movzbl	(%eax,%ebp,8), %edi
	movl	40(%esp), %ebp
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	movl	8(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 12(%esp)
	shrl	$24, %ebp
	movl	260(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	88(%esp), %ebp
	movl	52(%esp), %edi
	xorl	%ebp, %ebx
	movl	24(%esp), %ebp
	movl	%ebx, 20(%esp)
	movzbl	(%ecx,%edi,8), %ebx
	movzbl	1(%ecx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%ecx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	36(%esp), %ebp
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	68(%esp), %edi
	movzbl	(%edx,%edi,8), %ebx
	movzbl	1(%edx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%edx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	%esi, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%edx,%edi,8), %edi
	movl	%edi, 16(%esp)
	movzbl	1(%edx,%ebx), %edi
	movzbl	3(%edx,%ebx), %ebp
	sall	$8, %edi
	addl	16(%esp), %edi
	sall	$24, %ebp
	movl	%edi, 16(%esp)
	movzbl	2(%edx,%ebx), %edi
	movl	%esi, %ebx
	shrl	$16, %ebx
	sall	$16, %edi
	addl	16(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	addl	%edi, %ebp
	movzbl	%bh, %edi
	movl	%ebp, 84(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 8(%esp)
	movl	8(%esp), %ebx
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%ebx), %ebp
	sall	$24, %ebp
	addl	%edi, %ebp
	movzbl	16(%esp), %edi
	movl	%ebp, 88(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 8(%esp)
	movl	8(%esp), %ebx
	movzbl	(%ecx,%edi,8), %ebp
	movzbl	1(%ecx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%ecx,%ebx), %edi
	shrl	$24, %esi
	movl	%esi, 96(%esp)
	movzbl	4(%esp), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%ecx,%ebx), %ebp
	movl	4(%esp), %ebx
	movl	%esi, 48(%esp)
	sall	$3, %esi
	movl	%esi, 16(%esp)
	sall	$24, %ebp
	movl	%ebx, %esi
	addl	%edi, %ebp
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 52(%esp)
	sall	$3, %esi
	movl	%ebp, 92(%esp)
	movzbl	%bh, %ebp
	movl	12(%esp), %ebx
	movl	%esi, 24(%esp)
	movzbl	12(%esp), %esi
	leal	0(,%ebp,8), %edi
	movzbl	%bh, %ebx
	movl	%esi, 56(%esp)
	sall	$3, %esi
	movl	%esi, 28(%esp)
	movl	%ebx, 60(%esp)
	movl	12(%esp), %esi
	sall	$3, %ebx
	movl	%ebx, 32(%esp)
	movl	20(%esp), %ebx
	movzbl	(%eax,%ebp,8), %ebp
	shrl	$16, %esi
	andl	$255, %esi
	movzbl	%bh, %ebx
	movl	%esi, 64(%esp)
	sall	$3, %esi
	movl	%esi, 8(%esp)
	movzbl	20(%esp), %esi
	movl	%ebx, 72(%esp)
	sall	$3, %ebx
	movl	%ebx, 40(%esp)
	movl	aes_table3, %ebx
	movl	%esi, 68(%esp)
	sall	$3, %esi
	movl	%esi, 36(%esp)
	movl	20(%esp), %esi
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 76(%esp)
	sall	$3, %esi
	movl	%esi, 44(%esp)
	movl	20(%esp), %esi
	shrl	$24, %esi
	movl	(%ebx,%esi,8), %esi
	movzbl	1(%eax,%edi), %ebx
	xorl	264(%esp), %esi
	xorl	84(%esp), %esi
	sall	$8, %ebx
	addl	%ebx, %ebp
	movzbl	2(%eax,%edi), %ebx
	sall	$16, %ebx
	addl	%ebp, %ebx
	movzbl	3(%eax,%edi), %ebp
	sall	$24, %ebp
	addl	%ebp, %ebx
	movl	64(%esp), %ebp
	xorl	%ebx, %esi
	movzbl	(%ecx,%ebp,8), %edi
	movl	8(%esp), %ebp
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	aes_table3, %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	96(%esp), %edi
	xorl	%ebx, %esi
	movl	192(%esp), %ebx
	xorl	0(%ebp,%edi,8), %ebx
	movl	16(%esp), %ebp
	movl	%ebx, 8(%esp)
	movl	48(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	32(%esp), %ebp
	movl	60(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%eax,%ebp), %edi
	movl	44(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	76(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	4(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 8(%esp)
	shrl	$24, %ebp
	movl	196(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	92(%esp), %ebp
	xorl	%ebp, %ebx
	movl	28(%esp), %ebp
	movl	%ebx, 4(%esp)
	movl	56(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%edx,%ebp), %ebx
	movl	40(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 4(%esp)
	movl	72(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 4(%esp)
	movl	12(%esp), %ebp
	movl	aes_table3, %edi
	movl	268(%esp), %ebx
	shrl	$24, %ebp
	xorl	(%edi,%ebp,8), %ebx
	movl	88(%esp), %ebp
	movl	52(%esp), %edi
	xorl	%ebp, %ebx
	movl	24(%esp), %ebp
	movl	%ebx, 20(%esp)
	movzbl	(%ecx,%edi,8), %ebx
	movzbl	1(%ecx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%ecx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	36(%esp), %ebp
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	68(%esp), %edi
	movzbl	(%edx,%edi,8), %ebx
	movzbl	1(%edx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%edx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	%esi, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%edx,%edi,8), %edi
	movzbl	3(%edx,%ebx), %ebp
	movl	%edi, 16(%esp)
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	16(%esp), %edi
	movl	%edi, 16(%esp)
	movzbl	2(%edx,%ebx), %edi
	movl	%esi, %ebx
	sall	$16, %edi
	addl	16(%esp), %edi
	shrl	$16, %ebx
	sall	$24, %ebp
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	addl	%edi, %ebp
	movzbl	%bh, %edi
	movl	%ebp, 84(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 12(%esp)
	movl	12(%esp), %ebx
	shrl	$24, %esi
	movzbl	(%eax,%edi,8), %ebp
	movl	%esi, 96(%esp)
	movzbl	8(%esp), %esi
	movzbl	1(%eax,%ebx), %edi
	movl	%esi, 48(%esp)
	sall	$3, %esi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%ebx), %ebp
	sall	$24, %ebp
	addl	%edi, %ebp
	movzbl	16(%esp), %edi
	movl	%ebp, 88(%esp)
	movl	%esi, 16(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 12(%esp)
	movl	12(%esp), %ebx
	movzbl	(%ecx,%edi,8), %ebp
	movzbl	1(%ecx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%ecx,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%ecx,%ebx), %ebp
	movl	8(%esp), %ebx
	sall	$24, %ebp
	movl	%ebx, %esi
	addl	%edi, %ebp
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 52(%esp)
	sall	$3, %esi
	movl	%esi, 24(%esp)
	movzbl	4(%esp), %esi
	movl	%ebp, 92(%esp)
	movzbl	%bh, %ebp
	movl	4(%esp), %ebx
	leal	0(,%ebp,8), %edi
	movl	%esi, 56(%esp)
	sall	$3, %esi
	movl	%esi, 28(%esp)
	movl	4(%esp), %esi
	movzbl	%bh, %ebx
	movl	%ebx, 60(%esp)
	sall	$3, %ebx
	movl	%ebx, 32(%esp)
	movl	20(%esp), %ebx
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 64(%esp)
	sall	$3, %esi
	movzbl	%bh, %ebx
	movl	%esi, 12(%esp)
	movzbl	20(%esp), %esi
	movl	%esi, 68(%esp)
	sall	$3, %esi
	movl	%esi, 36(%esp)
	movl	%ebx, 72(%esp)
	movl	20(%esp), %esi
	sall	$3, %ebx
	movl	%ebx, 40(%esp)
	movl	aes_table3, %ebx
	movzbl	(%eax,%ebp,8), %ebp
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 76(%esp)
	sall	$3, %esi
	movl	%esi, 44(%esp)
	movl	20(%esp), %esi
	shrl	$24, %esi
	movl	(%ebx,%esi,8), %esi
	movzbl	1(%eax,%edi), %ebx
	xorl	272(%esp), %esi
	xorl	84(%esp), %esi
	sall	$8, %ebx
	addl	%ebx, %ebp
	movzbl	2(%eax,%edi), %ebx
	sall	$16, %ebx
	addl	%ebx, %ebp
	movzbl	3(%eax,%edi), %ebx
	sall	$24, %ebx
	addl	%ebp, %ebx
	movl	64(%esp), %ebp
	xorl	%ebx, %esi
	movzbl	(%ecx,%ebp,8), %edi
	movl	12(%esp), %ebp
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	aes_table3, %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	96(%esp), %edi
	xorl	%ebx, %esi
	movl	200(%esp), %ebx
	xorl	0(%ebp,%edi,8), %ebx
	movl	16(%esp), %ebp
	movl	%ebx, 12(%esp)
	movl	48(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	32(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	60(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%eax,%ebp), %edi
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	44(%esp), %ebp
	movl	76(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	8(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 12(%esp)
	shrl	$24, %ebp
	movl	204(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	92(%esp), %ebp
	xorl	%ebp, %ebx
	movl	28(%esp), %ebp
	movl	%ebx, 8(%esp)
	movl	56(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%edx,%ebp), %ebx
	movl	40(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 8(%esp)
	movl	72(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	movl	4(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 8(%esp)
	shrl	$24, %ebp
	movl	276(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	88(%esp), %ebp
	xorl	%ebp, %ebx
	movl	%ebx, 20(%esp)
	movl	36(%esp), %ebp
	movl	68(%esp), %edi
	movzbl	(%edx,%edi,8), %ebx
	movzbl	1(%edx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%edx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	24(%esp), %ebp
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	52(%esp), %edi
	movzbl	(%ecx,%edi,8), %ebx
	movzbl	1(%ecx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%ecx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	%esi, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%edx,%edi,8), %edi
	movzbl	3(%edx,%ebx), %ebp
	movl	%edi, 16(%esp)
	movzbl	1(%edx,%ebx), %edi
	sall	$24, %ebp
	sall	$8, %edi
	addl	16(%esp), %edi
	movl	%edi, 16(%esp)
	movzbl	2(%edx,%ebx), %edi
	movl	%esi, %ebx
	shrl	$16, %ebx
	sall	$16, %edi
	addl	16(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	shrl	$24, %esi
	addl	%edi, %ebp
	movzbl	%bh, %edi
	movl	%ebp, 84(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 4(%esp)
	movl	4(%esp), %ebx
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%ebx), %ebp
	sall	$24, %ebp
	addl	%edi, %ebp
	movzbl	16(%esp), %edi
	movl	%ebp, 88(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 4(%esp)
	movl	4(%esp), %ebx
	movzbl	(%ecx,%edi,8), %ebp
	movl	%esi, 96(%esp)
	movzbl	12(%esp), %esi
	movzbl	1(%ecx,%ebx), %edi
	movl	%esi, 48(%esp)
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%ecx,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%ecx,%ebx), %ebp
	movl	12(%esp), %ebx
	sall	$24, %ebp
	addl	%edi, %ebp
	sall	$3, %esi
	movl	%esi, 16(%esp)
	movl	%ebx, %esi
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 52(%esp)
	sall	$3, %esi
	movl	%esi, 24(%esp)
	movzbl	8(%esp), %esi
	movl	%ebp, 92(%esp)
	movzbl	%bh, %ebp
	movl	8(%esp), %ebx
	leal	0(,%ebp,8), %edi
	movzbl	(%eax,%ebp,8), %ebp
	movl	%esi, 56(%esp)
	sall	$3, %esi
	movl	%esi, 28(%esp)
	movl	8(%esp), %esi
	movzbl	%bh, %ebx
	movl	%ebx, 60(%esp)
	sall	$3, %ebx
	movl	%ebx, 32(%esp)
	movl	20(%esp), %ebx
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 64(%esp)
	sall	$3, %esi
	movzbl	%bh, %ebx
	movl	%esi, 4(%esp)
	movzbl	20(%esp), %esi
	movl	%ebx, 72(%esp)
	sall	$3, %ebx
	movl	%ebx, 40(%esp)
	movl	aes_table3, %ebx
	movl	%esi, 68(%esp)
	sall	$3, %esi
	movl	%esi, 36(%esp)
	movl	20(%esp), %esi
	shrl	$16, %esi
	andl	$255, %esi
	movl	%esi, 76(%esp)
	sall	$3, %esi
	movl	%esi, 44(%esp)
	movl	20(%esp), %esi
	shrl	$24, %esi
	movl	(%ebx,%esi,8), %esi
	movzbl	1(%eax,%edi), %ebx
	xorl	280(%esp), %esi
	xorl	84(%esp), %esi
	sall	$8, %ebx
	addl	%ebx, %ebp
	movzbl	2(%eax,%edi), %ebx
	sall	$16, %ebx
	addl	%ebp, %ebx
	movzbl	3(%eax,%edi), %ebp
	sall	$24, %ebp
	addl	%ebp, %ebx
	movl	64(%esp), %ebp
	xorl	%ebx, %esi
	movzbl	(%ecx,%ebp,8), %edi
	movl	4(%esp), %ebp
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	aes_table3, %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	96(%esp), %edi
	xorl	%ebx, %esi
	movl	208(%esp), %ebx
	xorl	0(%ebp,%edi,8), %ebx
	movl	%ebx, 4(%esp)
	movl	16(%esp), %ebp
	movl	48(%esp), %ebx
	movzbl	(%edx,%ebx,8), %edi
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	movl	32(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 4(%esp)
	movl	60(%esp), %ebx
	movzbl	(%eax,%ebx,8), %edi
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%eax,%ebp), %edi
	movl	44(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	xorl	%ebx, 4(%esp)
	movl	76(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %edi
	movzbl	1(%ecx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%ecx,%ebp), %ebx
	sall	$16, %ebx
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	12(%esp), %ebp
	sall	$24, %edi
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 4(%esp)
	shrl	$24, %ebp
	movl	212(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	56(%esp), %ebp
	movl	%ebx, 12(%esp)
	movzbl	(%edx,%ebp,8), %edi
	movl	28(%esp), %ebp
	movzbl	1(%edx,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%edx,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%edx,%ebp), %ebx
	sall	$24, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	72(%esp), %ebp
	movl	92(%esp), %ebx
	xorl	%ebx, 12(%esp)
	movzbl	(%eax,%ebp,8), %edi
	movl	40(%esp), %ebp
	movzbl	1(%eax,%ebp), %ebx
	sall	$8, %ebx
	addl	%ebx, %edi
	movzbl	2(%eax,%ebp), %ebx
	sall	$16, %ebx
	addl	%ebx, %edi
	movzbl	3(%eax,%ebp), %ebx
	movl	8(%esp), %ebp
	sall	$24, %ebx
	addl	%edi, %ebx
	movl	aes_table3, %edi
	xorl	%ebx, 12(%esp)
	shrl	$24, %ebp
	movl	284(%esp), %ebx
	xorl	(%edi,%ebp,8), %ebx
	movl	88(%esp), %ebp
	movl	52(%esp), %edi
	xorl	%ebp, %ebx
	movl	24(%esp), %ebp
	movl	%ebx, 20(%esp)
	movzbl	(%ecx,%edi,8), %ebx
	movzbl	1(%ecx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%ecx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%ecx,%ebp), %edi
	movl	36(%esp), %ebp
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	68(%esp), %edi
	movzbl	(%edx,%edi,8), %ebx
	movzbl	1(%edx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%edx,%ebp), %edi
	sall	$16, %edi
	addl	%edi, %ebx
	movzbl	3(%edx,%ebp), %edi
	sall	$24, %edi
	addl	%ebx, %edi
	xorl	%edi, 20(%esp)
	movl	%esi, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%edx,%edi,8), %edi
	movl	%edi, 16(%esp)
	movzbl	1(%edx,%ebx), %edi
	movzbl	3(%edx,%ebx), %ebp
	sall	$8, %edi
	addl	16(%esp), %edi
	sall	$24, %ebp
	movl	%edi, 16(%esp)
	movzbl	2(%edx,%ebx), %edi
	movl	%esi, %ebx
	shrl	$16, %ebx
	sall	$16, %edi
	addl	16(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	%esi, %ebx
	addl	%edi, %ebp
	movzbl	%bh, %edi
	movl	%ebp, 84(%esp)
	leal	0(,%edi,8), %ebp
	movl	%ebp, 8(%esp)
	movl	8(%esp), %ebx
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%ebx), %ebp
	shrl	$24, %esi
	movl	%esi, 96(%esp)
	movzbl	4(%esp), %esi
	sall	$24, %ebp
	addl	%edi, %ebp
	movzbl	16(%esp), %edi
	movl	%ebp, 88(%esp)
	movl	%esi, 48(%esp)
	sall	$3, %esi
	leal	0(,%edi,8), %ebp
	movl	%ebp, 8(%esp)
	movl	8(%esp), %ebx
	movzbl	(%ecx,%edi,8), %ebp
	movl	%esi, 8(%esp)
	movzbl	1(%ecx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%ecx,%ebx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%ecx,%ebx), %ebp
	movl	4(%esp), %ebx
	sall	$24, %ebp
	addl	%edi, %ebp
	movzbl	12(%esp), %edi
	movzbl	%bh, %ebx
	movl	%ebp, 92(%esp)
	movl	4(%esp), %ebp
	movl	%ebx, %esi
	movl	%ebx, (%esp)
	sall	$3, %esi
	shrl	$16, %ebp
	andl	$255, %ebp
	movl	%ebp, 52(%esp)
	sall	$3, %ebp
	movl	%ebp, 16(%esp)
	movl	%edi, 56(%esp)
	movl	12(%esp), %ebp
	sall	$3, %edi
	movl	12(%esp), %ebx
	movl	%edi, 24(%esp)
	movzbl	20(%esp), %edi
	shrl	$16, %ebp
	andl	$255, %ebp
	movzbl	%bh, %ebx
	movl	%ebp, 64(%esp)
	sall	$3, %ebp
	movl	%ebp, 32(%esp)
	movl	20(%esp), %ebp
	movl	%ebx, 60(%esp)
	sall	$3, %ebx
	movl	%ebx, 28(%esp)
	movl	20(%esp), %ebx
	movl	%edi, 68(%esp)
	sall	$3, %edi
	shrl	$16, %ebp
	andl	$255, %ebp
	movl	%edi, 36(%esp)
	movl	20(%esp), %edi
	movzbl	%bh, %ebx
	movl	%ebp, 76(%esp)
	sall	$3, %ebp
	movl	%ebp, 44(%esp)
	movl	aes_table3, %ebp
	movl	%ebx, 72(%esp)
	sall	$3, %ebx
	shrl	$24, %edi
	movl	%ebx, 40(%esp)
	movl	288(%esp), %ebx
	xorl	0(%ebp,%edi,8), %ebx
	movl	84(%esp), %edi
	xorl	%edi, %ebx
	movzbl	1(%eax,%esi), %edi
	movl	%ebx, 124(%esp)
	movl	(%esp), %ebx
	sall	$8, %edi
	movzbl	(%eax,%ebx,8), %ebp
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%esi), %ebp
	movl	64(%esp), %esi
	sall	$24, %ebp
	addl	%ebp, %edi
	movl	32(%esp), %ebp
	xorl	%edi, 124(%esp)
	movzbl	(%ecx,%esi,8), %edi
	movzbl	1(%ecx,%ebp), %esi
	sall	$8, %esi
	addl	%esi, %edi
	movzbl	2(%ecx,%ebp), %esi
	sall	$16, %esi
	addl	%edi, %esi
	movzbl	3(%ecx,%ebp), %edi
	sall	$24, %edi
	addl	%edi, %esi
	xorl	%esi, 124(%esp)
	movl	96(%esp), %ebx
	movl	aes_table3, %edi
	movl	48(%esp), %ebp
	movl	216(%esp), %esi
	xorl	(%edi,%ebx,8), %esi
	movzbl	(%edx,%ebp,8), %ebx
	movl	8(%esp), %ebp
	movzbl	1(%edx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%edx,%ebp), %edi
	movzbl	3(%edx,%ebp), %ebp
	sall	$16, %edi
	addl	%edi, %ebx
	sall	$24, %ebp
	leal	(%ebx,%ebp), %edi
	movl	28(%esp), %ebp
	xorl	%edi, %esi
	movl	60(%esp), %edi
	movzbl	(%eax,%edi,8), %ebx
	movzbl	1(%eax,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%eax,%ebp), %edi
	movzbl	3(%eax,%ebp), %ebp
	sall	$16, %edi
	addl	%edi, %ebx
	sall	$24, %ebp
	leal	(%ebx,%ebp), %edi
	movl	44(%esp), %ebp
	xorl	%edi, %esi
	movl	76(%esp), %edi
	movzbl	(%ecx,%edi,8), %ebx
	movzbl	1(%ecx,%ebp), %edi
	sall	$8, %edi
	addl	%edi, %ebx
	movzbl	2(%ecx,%ebp), %edi
	movzbl	3(%ecx,%ebp), %ebp
	sall	$16, %edi
	addl	%edi, %ebx
	sall	$24, %ebp
	leal	(%ebx,%ebp), %edi
	movl	aes_table3, %ebp
	xorl	%edi, %esi
	movl	4(%esp), %edi
	movl	220(%esp), %ebx
	shrl	$24, %edi
	xorl	0(%ebp,%edi,8), %ebx
	movl	92(%esp), %edi
	xorl	%edi, %ebx
	movl	%ebx, 4(%esp)
	movl	56(%esp), %ebx
	movzbl	(%edx,%ebx,8), %ebp
	movl	24(%esp), %ebx
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%edx,%ebx), %edi
	sall	$16, %edi
	addl	%edi, %ebp
	movzbl	3(%edx,%ebx), %edi
	sall	$24, %edi
	addl	%ebp, %edi
	xorl	%edi, 4(%esp)
	movl	40(%esp), %ebx
	movl	72(%esp), %edi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	sall	$16, %edi
	addl	%edi, %ebp
	movzbl	3(%eax,%ebx), %edi
	movl	292(%esp), %ebx
	sall	$24, %edi
	addl	%ebp, %edi
	movl	aes_table3, %ebp
	xorl	%edi, 4(%esp)
	movl	12(%esp), %edi
	shrl	$24, %edi
	xorl	0(%ebp,%edi,8), %ebx
	movl	88(%esp), %edi
	xorl	%edi, %ebx
	movl	%ebx, 20(%esp)
	movl	52(%esp), %ebx
	movzbl	(%ecx,%ebx,8), %ebp
	movl	16(%esp), %ebx
	movzbl	1(%ecx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%ecx,%ebx), %edi
	sall	$16, %edi
	addl	%edi, %ebp
	movzbl	3(%ecx,%ebx), %edi
	movl	36(%esp), %ebx
	sall	$24, %edi
	addl	%ebp, %edi
	xorl	%edi, 20(%esp)
	movl	68(%esp), %edi
	movzbl	(%edx,%edi,8), %ebp
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%edx,%ebx), %edi
	sall	$16, %edi
	addl	%edi, %ebp
	movzbl	3(%edx,%ebx), %edi
	sall	$24, %edi
	addl	%ebp, %edi
	xorl	%edi, 20(%esp)
	movzbl	124(%esp), %edi
	movzbl	(%ecx,%edi,8), %edi
	movl	%edi, 12(%esp)
	movl	124(%esp), %ebx
	movzbl	%bh, %edi
	movl	aes_tablex, %ebx
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	sall	$8, %edi
	addl	%ebp, %edi
	movl	%edi, 36(%esp)
	movl	124(%esp), %edi
	shrl	$16, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebp
	movl	%ebp, 16(%esp)
	movl	16(%esp), %ebx
	movzbl	(%edx,%edi,8), %ebp
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%edx,%ebx), %edi
	movl	124(%esp), %ebx
	sall	$16, %edi
	addl	%ebp, %edi
	shrl	$24, %ebx
	andl	$16711680, %edi
	movl	%edi, 16(%esp)
	leal	0(,%ebx,8), %edi
	movzbl	(%eax,%ebx,8), %ebp
	movzbl	1(%eax,%edi), %ebx
	sall	$8, %ebx
	addl	%ebx, %ebp
	movzbl	2(%eax,%edi), %ebx
	sall	$16, %ebx
	addl	%ebp, %ebx
	movzbl	3(%eax,%edi), %ebp
	movl	296(%esp), %edi
	xorl	%edi, 12(%esp)
	movl	aes_tablex, %edi
	sall	$24, %ebp
	addl	%ebx, %ebp
	movl	%esi, %ebx
	andl	$-16777216, %ebp
	movzbl	%bh, %ebx
	movl	%ebp, 24(%esp)
	movl	%esi, %ebp
	movzbl	(%edi,%ebx,8), %edi
	andl	$255, %ebp
	movl	%ebp, 40(%esp)
	movl	aes_tablex, %ebp
	movzbl	1(%ebp,%ebx,8), %ebx
	sall	$8, %ebx
	addl	%edi, %ebx
	xorl	%ebx, 12(%esp)
	movl	%esi, %ebx
	shrl	$16, %ebx
	andl	$255, %ebx
	leal	0(,%ebx,8), %edi
	movzbl	(%edx,%ebx,8), %ebp
	movzbl	1(%edx,%edi), %ebx
	shrl	$24, %esi
	sall	$8, %ebx
	addl	%ebp, %ebx
	movzbl	2(%edx,%edi), %ebp
	movzbl	(%eax,%esi,8), %edi
	sall	$16, %ebp
	addl	%ebx, %ebp
	leal	0(,%esi,8), %ebx
	movzbl	1(%eax,%ebx), %esi
	movl	%ebp, 28(%esp)
	sall	$8, %esi
	addl	%esi, %edi
	movzbl	2(%eax,%ebx), %esi
	sall	$16, %esi
	addl	%edi, %esi
	movzbl	3(%eax,%ebx), %edi
	sall	$24, %edi
	addl	%esi, %edi
	movl	%edi, 32(%esp)
	movzbl	4(%esp), %ebx
	movl	40(%esp), %edi
	movl	300(%esp), %ebp
	andl	$16711680, 28(%esp)
	movl	%ebx, 44(%esp)
	movl	4(%esp), %ebx
	movzbl	(%ecx,%edi,8), %edi
	movzbl	%bh, %esi
	movl	aes_tablex, %ebx
	xorl	%ebp, %edi
	movl	%edi, 8(%esp)
	movzbl	(%ebx,%esi,8), %edi
	movzbl	1(%ebx,%esi,8), %esi
	movl	20(%esp), %ebx
	sall	$8, %esi
	addl	%edi, %esi
	xorl	%esi, 8(%esp)
	movl	24(%esp), %esi
	xorl	%esi, 8(%esp)
	movl	4(%esp), %esi
	shrl	$16, %esi
	andl	$255, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	sall	$8, %esi
	addl	%ebp, %esi
	movzbl	2(%edx,%edi), %ebp
	movl	4(%esp), %edi
	sall	$16, %ebp
	shrl	$24, %edi
	addl	%ebp, %esi
	andl	$16711680, %esi
	movzbl	(%eax,%edi,8), %ebp
	xorl	%esi, 12(%esp)
	leal	0(,%edi,8), %esi
	movzbl	1(%eax,%esi), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%esi), %ebp
	movzbl	20(%esp), %esi
	sall	$24, %ebp
	movzbl	(%ecx,%esi,8), %esi
	addl	%ebp, %edi
	xorl	312(%esp), %esi
	andl	$-16777216, %edi
	xorl	36(%esp), %esi
	xorl	28(%esp), %esi
	movl	44(%esp), %ebp
	xorl	%edi, %esi
	movzbl	%bh, %edi
	movl	aes_tablex, %ebx
	movzbl	(%ecx,%ebp,8), %ecx
	xorl	304(%esp), %ecx
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	xorl	%ebp, %ecx
	xorl	16(%esp), %ecx
	andl	$-16777216, 32(%esp)
	movl	20(%esp), %edi
	xorl	32(%esp), %ecx
	shrl	$16, %edi
	andl	$255, %edi
	leal	0(,%edi,8), %ebp
	movl	%ebp, 4(%esp)
	movl	4(%esp), %ebx
	movzbl	(%edx,%edi,8), %ebp
	movzbl	1(%edx,%ebx), %edi
	sall	$8, %edi
	addl	%ebp, %edi
	movzbl	2(%edx,%ebx), %ebp
	sall	$16, %ebp
	addl	%ebp, %edi
	andl	$16711680, %edi
	xorl	%edi, 8(%esp)
	movl	20(%esp), %edi
	shrl	$24, %edi
	leal	0(,%edi,8), %edx
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%edx), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%edx), %edi
	sall	$16, %edi
	addl	%ebp, %edi
	movzbl	3(%eax,%edx), %ebp
	sall	$24, %ebp
	addl	%ebp, %edi
	andl	$-16777216, %edi
	xorl	%edi, 12(%esp)
	cmpl	$15, 104(%esp)
	jbe	.L10
.L6:
	movl	100(%esp), %eax
	movl	12(%esp), %edx
	movl	80(%esp), %edi
	movl	8(%esp), %ebx
	movl	12(%eax), %ebp
	xorl	(%eax), %edx
	xorl	4(%eax), %ebx
	xorl	8(%eax), %ecx
	addl	$16, %eax
	xorl	%esi, %ebp
	movl	80(%esp), %esi
	movl	%eax, 100(%esp)
	addl	$1, 108(%esp)
	movb	%dl, (%esi)
	movzbl	%dh, %esi
	movl	%esi, %eax
	movl	%edx, %esi
	shrl	$24, %edx
	movb	%dl, 3(%edi)
	movzbl	%bh, %edx
	movb	%dl, 5(%edi)
	movl	%ebx, %edx
	shrl	$16, %edx
	shrl	$16, %esi
	movb	%al, 1(%edi)
	movl	%esi, %eax
	movb	%dl, 6(%edi)
	movzbl	%ch, %edx
	movb	%al, 2(%edi)
	movl	%ebp, %eax
	movb	%dl, 9(%edi)
	movl	%ecx, %edx
	shrl	$16, %edx
	shrl	$24, %eax
	movb	%cl, 8(%edi)
	shrl	$24, %ecx
	movb	%dl, 10(%edi)
	movl	%ebp, %edx
	movb	%cl, 11(%edi)
	movl	%ebp, %ecx
	movb	%al, 15(%edi)
	movl	104(%esp), %eax
	movb	%dl, 12(%edi)
	movzbl	%ch, %edx
	movb	%dl, 13(%edi)
	movl	%ebp, %edx
	movb	%bl, 4(%edi)
	shrl	$16, %edx
	shrl	$24, %ebx
	movb	%bl, 7(%edi)
	movb	%dl, 14(%edi)
	addl	$16, %edi
	subl	$16, %eax
	movl	%edi, 80(%esp)
	jne	.L8
.L5:
	movl	472(%esp), %ebx
	movl	108(%esp), %esi
	movl	436(%esp), %edi
	movl	440(%esp), %ebp
	movl	444(%esp), %eax
	movl	%esi, 56(%ebx)
	movl	%edi, 60(%ebx)
	movl	%ebp, 64(%ebx)
	movl	%eax, 68(%ebx)
.L1:
	addl	$448, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.p2align 4,,7
	.p2align 3
.L10:
	.cfi_restore_state
	movl	100(%esp), %edi
	movl	80(%esp), %ebp
	movl	8(%esp), %ebx
	movzbl	(%edi), %eax
	xorl	12(%esp), %eax
	cmpl	$1, 104(%esp)
	movb	%al, 0(%ebp)
	jbe	.L4
	movl	(%edi), %eax
	movl	12(%esp), %edx
	movzbl	%ah, %eax
	shrl	$8, %edx
	xorl	%edx, %eax
	cmpl	$2, 104(%esp)
	movb	%al, 1(%ebp)
	je	.L4
	movl	12(%esp), %edx
	movzbl	2(%edi), %eax
	shrl	$16, %edx
	xorl	%edx, %eax
	cmpl	$3, 104(%esp)
	movb	%al, 2(%ebp)
	je	.L4
	movl	12(%esp), %eax
	xorl	(%edi), %eax
	shrl	$24, %eax
	cmpl	$4, 104(%esp)
	movb	%al, 3(%ebp)
	je	.L4
	movzbl	4(%edi), %eax
	xorl	%ebx, %eax
	cmpl	$5, 104(%esp)
	movb	%al, 4(%ebp)
	je	.L4
	movzbl	5(%edi), %eax
	movl	%ebx, %edx
	shrl	$8, %edx
	xorl	%edx, %eax
	cmpl	$6, 104(%esp)
	movb	%al, 5(%ebp)
	je	.L4
	movzbl	6(%edi), %eax
	movl	%ebx, %edx
	shrl	$16, %edx
	xorl	%edx, %eax
	cmpl	$7, 104(%esp)
	movb	%al, 6(%ebp)
	je	.L4
	movzbl	7(%edi), %eax
	shrl	$24, %ebx
	xorl	%eax, %ebx
	cmpl	$8, 104(%esp)
	movb	%bl, 7(%ebp)
	je	.L4
	movzbl	8(%edi), %eax
	xorl	%ecx, %eax
	cmpl	$9, 104(%esp)
	movb	%al, 8(%ebp)
	je	.L4
	movl	8(%edi), %eax
	movl	%ecx, %edx
	shrl	$8, %edx
	movzbl	%ah, %eax
	xorl	%edx, %eax
	cmpl	$10, 104(%esp)
	movb	%al, 9(%ebp)
	je	.L4
	movzbl	10(%edi), %eax
	movl	%ecx, %edx
	shrl	$16, %edx
	xorl	%edx, %eax
	cmpl	$11, 104(%esp)
	movb	%al, 10(%ebp)
	je	.L4
	movzbl	11(%edi), %eax
	shrl	$24, %ecx
	xorl	%eax, %ecx
	cmpl	$12, 104(%esp)
	movb	%cl, 11(%ebp)
	je	.L4
	movl	12(%edi), %eax
	andl	$255, %eax
	xorl	%esi, %eax
	cmpl	$13, 104(%esp)
	movb	%al, 12(%ebp)
	je	.L4
	movl	12(%edi), %eax
	movl	%esi, %edx
	shrl	$8, %edx
	movzbl	%ah, %eax
	xorl	%edx, %eax
	cmpl	$15, 104(%esp)
	movb	%al, 13(%ebp)
	jne	.L4
	movzbl	14(%edi), %eax
	shrl	$16, %esi
	xorl	%esi, %eax
	movb	%al, 14(%ebp)
	.p2align 4,,7
	.p2align 3
.L4:
	addl	$1, 108(%esp)
	jmp	.L5
	.cfi_endproc
.LFE0:
	.size	ECRYPT_process_bytes, .-ECRYPT_process_bytes
	.p2align 4,,15
	.globl	ECRYPT_keysetup
	.type	ECRYPT_keysetup, @function
ECRYPT_keysetup:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	aes_table2, %ebp
	movl	52(%esp), %eax
	movl	48(%esp), %esi
	movl	8(%eax), %ebx
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%ebx, 16(%esp)
	movl	12(%eax), %ebx
	movl	16(%esp), %edi
	movl	%edx, (%esi)
	movl	%ecx, 4(%esi)
	movzbl	%bh, %eax
	movl	%edi, 8(%esi)
	movl	%ebx, 12(%esi)
	movzbl	0(%ebp,%eax,8), %eax
	movl	%ecx, 12(%esp)
	movzbl	%bl, %ecx
	movl	%edx, 8(%esp)
	leal	0(,%ecx,8), %edx
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	roll	$16, %eax
	movl	%eax, 20(%esp)
	movl	aes_table1, %eax
	movzbl	(%eax,%ecx,8), %esi
	movzbl	1(%eax,%edx), %ecx
	sall	$8, %ecx
	addl	%ecx, %esi
	movzbl	2(%eax,%edx), %ecx
	sall	$16, %ecx
	addl	%esi, %ecx
	movzbl	3(%eax,%edx), %esi
	movl	aes_table0, %edx
	sall	$24, %esi
	addl	%ecx, %esi
	movl	20(%esp), %ecx
	movl	%esi, 4(%esp)
	movzbl	%ch, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %ecx
	sall	$8, %ecx
	addl	%ebp, %ecx
	movzbl	2(%edx,%edi), %ebp
	sall	$16, %ebp
	addl	%ecx, %ebp
	movl	%ebp, (%esp)
	movzbl	20(%esp), %esi
	movl	aes_tablex, %edi
	movl	aes_tablex, %ebp
	movl	8(%esp), %ecx
	andl	$-16777216, 4(%esp)
	movzbl	(%edi,%esi,8), %edi
	andl	$16711680, (%esp)
	xorl	$1, %ecx
	xorl	24(%esp), %ecx
	movl	%edi, 8(%esp)
	movzbl	1(%ebp,%esi,8), %edi
	movl	48(%esp), %esi
	movl	aes_table2, %ebp
	sall	$8, %edi
	addl	8(%esp), %edi
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	xorl	4(%esp), %ecx
	xorl	(%esp), %ecx
	xorl	%ecx, %edi
	movl	%edi, 12(%esp)
	xorl	16(%esp), %edi
	movl	%ecx, 16(%esi)
	xorl	%edi, %ebx
	movzbl	%bh, %esi
	movl	%ebx, 4(%esp)
	movzbl	0(%ebp,%esi,8), %esi
	roll	$16, %ebx
	movl	%edi, 16(%esp)
	movzbl	4(%esp), %edi
	movl	%esi, 24(%esp)
	leal	0(,%edi,8), %esi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%esi), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	movzbl	3(%eax,%esi), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	sall	$24, %esi
	addl	%edi, %esi
	xorl	$2, %ecx
	movl	%esi, 8(%esp)
	movzbl	%bh, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	movzbl	2(%edx,%edi), %edi
	xorl	24(%esp), %ecx
	sall	$8, %esi
	addl	%ebp, %esi
	sall	$16, %edi
	addl	%edi, %esi
	movzbl	%bl, %edi
	movl	aes_tablex, %ebx
	andl	$16711680, %esi
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	andl	$-16777216, 8(%esp)
	movl	4(%esp), %ebx
	sall	$8, %edi
	addl	%ebp, %edi
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	xorl	8(%esp), %ecx
	xorl	%esi, %ecx
	movl	48(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, 12(%esp)
	xorl	16(%esp), %edi
	movl	%ecx, 20(%esi)
	xorl	$4, %ecx
	xorl	%edi, %ebx
	movl	%edi, 16(%esp)
	movl	aes_table2, %edi
	movzbl	%bh, %esi
	movl	%ebx, 4(%esp)
	roll	$16, %ebx
	movzbl	(%edi,%esi,8), %esi
	movzbl	4(%esp), %edi
	movl	%esi, 24(%esp)
	leal	0(,%edi,8), %esi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%esi), %edi
	xorl	24(%esp), %ecx
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	movzbl	3(%eax,%esi), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	sall	$24, %esi
	addl	%edi, %esi
	movl	%esi, 8(%esp)
	movzbl	%bh, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	sall	$8, %esi
	addl	%ebp, %esi
	movzbl	2(%edx,%edi), %ebp
	movzbl	%bl, %edi
	movl	aes_tablex, %ebx
	sall	$16, %ebp
	addl	%ebp, %esi
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	sall	$8, %edi
	andl	$16711680, %esi
	addl	%ebp, %edi
	andl	$-16777216, 8(%esp)
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	xorl	8(%esp), %ecx
	xorl	%esi, %ecx
	movl	48(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, 12(%esp)
	xorl	16(%esp), %edi
	movl	%ecx, 24(%esi)
	xorl	$8, %ecx
	movl	%edi, 16(%esp)
	movl	4(%esp), %ebx
	xorl	%edi, %ebx
	movl	aes_table2, %edi
	movzbl	%bh, %esi
	movl	%ebx, 4(%esp)
	roll	$16, %ebx
	movzbl	(%edi,%esi,8), %esi
	movzbl	4(%esp), %edi
	movl	%esi, 24(%esp)
	leal	0(,%edi,8), %esi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%esi), %edi
	xorl	24(%esp), %ecx
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	movzbl	3(%eax,%esi), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	sall	$24, %esi
	addl	%edi, %esi
	movl	%esi, 8(%esp)
	movzbl	%bh, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	movzbl	2(%edx,%edi), %edi
	andl	$-16777216, 8(%esp)
	sall	$8, %esi
	addl	%ebp, %esi
	sall	$16, %edi
	addl	%edi, %esi
	movzbl	%bl, %edi
	movl	aes_tablex, %ebx
	andl	$16711680, %esi
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	movl	4(%esp), %ebx
	sall	$8, %edi
	addl	%ebp, %edi
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	xorl	8(%esp), %ecx
	xorl	%esi, %ecx
	movl	48(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, 12(%esp)
	xorl	16(%esp), %edi
	movl	%ecx, 28(%esi)
	xorl	$16, %ecx
	xorl	%edi, %ebx
	movl	%edi, 16(%esp)
	movl	aes_table2, %edi
	movzbl	%bh, %esi
	movl	%ebx, 4(%esp)
	roll	$16, %ebx
	movzbl	(%edi,%esi,8), %esi
	movzbl	4(%esp), %edi
	movl	%esi, 24(%esp)
	leal	0(,%edi,8), %esi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%esi), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	movzbl	3(%eax,%esi), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	sall	$24, %esi
	addl	%edi, %esi
	movl	%esi, 8(%esp)
	movzbl	%bh, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	xorl	24(%esp), %ecx
	andl	$-16777216, 8(%esp)
	sall	$8, %esi
	addl	%ebp, %esi
	movzbl	2(%edx,%edi), %ebp
	movzbl	%bl, %edi
	movl	aes_tablex, %ebx
	sall	$16, %ebp
	addl	%ebp, %esi
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	andl	$16711680, %esi
	movl	4(%esp), %ebx
	sall	$8, %edi
	addl	%ebp, %edi
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	xorl	8(%esp), %ecx
	xorl	%esi, %ecx
	movl	48(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, 12(%esp)
	xorl	16(%esp), %edi
	movl	%ecx, 32(%esi)
	xorl	%edi, %ebx
	movl	%edi, 16(%esp)
	movl	aes_table2, %edi
	movzbl	%bh, %esi
	movl	%ebx, 4(%esp)
	roll	$16, %ebx
	movzbl	(%edi,%esi,8), %esi
	movzbl	4(%esp), %edi
	movl	%esi, 24(%esp)
	leal	0(,%edi,8), %esi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%esi), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	movzbl	3(%eax,%esi), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	sall	$24, %esi
	xorl	$32, %ecx
	addl	%edi, %esi
	movl	%esi, 8(%esp)
	movzbl	%bh, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	movzbl	2(%edx,%edi), %edi
	xorl	24(%esp), %ecx
	sall	$8, %esi
	addl	%ebp, %esi
	sall	$16, %edi
	addl	%edi, %esi
	movzbl	%bl, %edi
	movl	aes_tablex, %ebx
	andl	$16711680, %esi
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	andl	$-16777216, 8(%esp)
	movl	4(%esp), %ebx
	sall	$8, %edi
	addl	%ebp, %edi
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	xorl	8(%esp), %ecx
	xorl	%esi, %ecx
	movl	48(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, 12(%esp)
	xorl	16(%esp), %edi
	movl	%ecx, 36(%esi)
	xorl	$64, %ecx
	xorl	%edi, %ebx
	movl	%edi, 16(%esp)
	movl	aes_table2, %edi
	movzbl	%bh, %esi
	movl	%ebx, 4(%esp)
	roll	$16, %ebx
	movzbl	(%edi,%esi,8), %esi
	movzbl	4(%esp), %edi
	movl	%esi, 24(%esp)
	leal	0(,%edi,8), %esi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%esi), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	movzbl	3(%eax,%esi), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	sall	$24, %esi
	addl	%edi, %esi
	movl	%esi, 8(%esp)
	movzbl	%bh, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	sall	$8, %esi
	addl	%ebp, %esi
	movzbl	2(%edx,%edi), %ebp
	movzbl	%bl, %edi
	movl	aes_tablex, %ebx
	sall	$16, %ebp
	addl	%ebp, %esi
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	xorl	24(%esp), %ecx
	andl	$16711680, %esi
	andl	$-16777216, 8(%esp)
	sall	$8, %edi
	addl	%ebp, %edi
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	xorl	8(%esp), %ecx
	xorl	%esi, %ecx
	movl	48(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, 12(%esp)
	xorl	16(%esp), %edi
	movl	%ecx, 40(%esi)
	xorb	$-128, %cl
	movl	%edi, 16(%esp)
	movl	4(%esp), %ebx
	xorl	%edi, %ebx
	movl	aes_table2, %edi
	movzbl	%bh, %esi
	movl	%ebx, 4(%esp)
	roll	$16, %ebx
	movzbl	(%edi,%esi,8), %esi
	movzbl	4(%esp), %edi
	movl	%esi, 24(%esp)
	leal	0(,%edi,8), %esi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%esi), %edi
	xorl	24(%esp), %ecx
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	movzbl	3(%eax,%esi), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	sall	$24, %esi
	addl	%edi, %esi
	movl	%esi, 8(%esp)
	movzbl	%bh, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	movzbl	2(%edx,%edi), %edi
	andl	$-16777216, 8(%esp)
	sall	$8, %esi
	addl	%ebp, %esi
	sall	$16, %edi
	addl	%edi, %esi
	movzbl	%bl, %edi
	movl	aes_tablex, %ebx
	andl	$16711680, %esi
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	movl	4(%esp), %ebx
	sall	$8, %edi
	addl	%ebp, %edi
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	xorl	8(%esp), %ecx
	xorl	%esi, %ecx
	movl	48(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, 12(%esp)
	xorl	16(%esp), %edi
	movl	%ecx, 44(%esi)
	xorl	$27, %ecx
	xorl	%edi, %ebx
	movl	%edi, 16(%esp)
	movl	aes_table2, %edi
	movzbl	%bh, %esi
	movl	%ebx, 4(%esp)
	roll	$16, %ebx
	movzbl	(%edi,%esi,8), %esi
	movzbl	4(%esp), %edi
	movl	%esi, 24(%esp)
	leal	0(,%edi,8), %esi
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%esi), %edi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%esi), %edi
	movzbl	3(%eax,%esi), %esi
	sall	$16, %edi
	addl	%ebp, %edi
	sall	$24, %esi
	addl	%edi, %esi
	movl	%esi, 8(%esp)
	movzbl	%bh, %esi
	leal	0(,%esi,8), %edi
	movzbl	(%edx,%esi,8), %ebp
	movzbl	1(%edx,%edi), %esi
	xorl	24(%esp), %ecx
	andl	$-16777216, 8(%esp)
	sall	$8, %esi
	addl	%ebp, %esi
	movzbl	2(%edx,%edi), %ebp
	movzbl	%bl, %edi
	movl	aes_tablex, %ebx
	sall	$16, %ebp
	addl	%ebp, %esi
	movzbl	(%ebx,%edi,8), %ebp
	movzbl	1(%ebx,%edi,8), %edi
	andl	$16711680, %esi
	sall	$8, %edi
	addl	%ebp, %edi
	movl	aes_table2, %ebp
	xorl	%edi, %ecx
	movl	16(%esp), %edi
	xorl	8(%esp), %ecx
	xorl	12(%esp), %edi
	xorl	4(%esp), %edi
	xorl	%esi, %ecx
	movl	48(%esp), %esi
	xorl	%ecx, %edi
	movl	%edi, %ebx
	movl	%ecx, 48(%esi)
	movzbl	%bh, %esi
	movzbl	0(%ebp,%esi,8), %esi
	movl	%esi, 12(%esp)
	movl	%edi, %esi
	andl	$255, %edi
	leal	0(,%edi,8), %ebx
	movzbl	(%eax,%edi,8), %ebp
	movzbl	1(%eax,%ebx), %edi
	roll	$16, %esi
	sall	$8, %edi
	addl	%edi, %ebp
	movzbl	2(%eax,%ebx), %edi
	movzbl	3(%eax,%ebx), %eax
	sall	$16, %edi
	addl	%ebp, %edi
	xorl	$54, %ecx
	sall	$24, %eax
	addl	%edi, %eax
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	andl	$255, %esi
	movzbl	%ah, %ebx
	leal	0(,%ebx,8), %edi
	movzbl	(%edx,%ebx,8), %ebp
	movzbl	1(%edx,%edi), %ebx
	xorl	12(%esp), %ecx
	andl	$-16777216, 8(%esp)
	sall	$8, %ebx
	addl	%ebp, %ebx
	movzbl	2(%edx,%edi), %ebp
	movl	aes_tablex, %edi
	sall	$16, %ebp
	movzbl	(%edi,%esi,8), %edx
	addl	%ebp, %ebx
	movzbl	1(%edi,%esi,8), %esi
	andl	$16711680, %ebx
	movl	48(%esp), %ebp
	sall	$8, %esi
	addl	%esi, %edx
	xorl	%edx, %ecx
	xorl	8(%esp), %ecx
	xorl	%ebx, %ecx
	movl	%ecx, 52(%ebp)
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_restore 3
	popl	%esi
	.cfi_def_cfa_offset 12
	.cfi_restore 6
	popl	%edi
	.cfi_def_cfa_offset 8
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa_offset 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE1:
	.size	ECRYPT_keysetup, .-ECRYPT_keysetup
	.p2align 4,,15
	.globl	ECRYPT_ivsetup
	.type	ECRYPT_ivsetup, @function
ECRYPT_ivsetup:
.LFB2:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	16(%esp), %edx
	movl	%ebx, (%esp)
	movl	12(%esp), %eax
	movl	%esi, 4(%esp)
	movl	4(%edx), %ebx
	.cfi_offset 6, -8
	.cfi_offset 3, -12
	movl	(%edx), %esi
	movl	8(%edx), %ecx
	movl	12(%edx), %edx
	movl	%ebx, 60(%eax)
	movl	(%esp), %ebx
	movl	%esi, 56(%eax)
	movl	4(%esp), %esi
	movl	%ecx, 64(%eax)
	movl	%edx, 68(%eax)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE2:
	.size	ECRYPT_ivsetup, .-ECRYPT_ivsetup
	.p2align 4,,15
	.globl	ECRYPT_init
	.type	ECRYPT_init, @function
ECRYPT_init:
.LFB3:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE3:
	.size	ECRYPT_init, .-ECRYPT_init
	.globl	lr_table1
	.data
	.align 4
	.type	lr_table1, @object
	.size	lr_table1, 4
lr_table1:
	.long	aes_full+2052
	.globl	lr_table0
	.align 4
	.type	lr_table0, @object
	.size	lr_table0, 4
lr_table0:
	.long	aes_full+2048
	.globl	aes_table3
	.align 4
	.type	aes_table3, @object
	.size	aes_table3, 4
aes_table3:
	.long	aes_full+4
	.globl	aes_table0
	.align 4
	.type	aes_table0, @object
	.size	aes_table0, 4
aes_table0:
	.long	aes_full+3
	.globl	aes_table1
	.align 4
	.type	aes_table1, @object
	.size	aes_table1, 4
aes_table1:
	.long	aes_full+2
	.globl	aes_table2
	.align 4
	.type	aes_table2, @object
	.size	aes_table2, 4
aes_table2:
	.long	aes_full+1
	.globl	aes_tablex
	.align 4
	.type	aes_tablex, @object
	.size	aes_tablex, 4
aes_tablex:
	.long	aes_full
	.globl	aes_full
	.align 32
	.type	aes_full, @object
	.size	aes_full, 4096
aes_full:
	.long	-962239744
	.long	-962239645
	.long	-125535232
	.long	-125535108
	.long	-291932416
	.long	-291932297
	.long	-158500096
	.long	-158499973
	.long	-15863296
	.long	-15863054
	.long	-692229376
	.long	-692229269
	.long	-558797056
	.long	-558796945
	.long	-1856715520
	.long	-1856715323
	.long	1615867904
	.long	1615867952
	.long	33751296
	.long	33751297
	.long	-827758848
	.long	-827758745
	.long	1451043584
	.long	1451043627
	.long	-417726976
	.long	-417726722
	.long	-1251813632
	.long	-1251813417
	.long	1306962688
	.long	1306962859
	.long	-325421568
	.long	-325421450
	.long	-1891251712
	.long	-1891251510
	.long	530416128
	.long	530416258
	.long	-1992242944
	.long	-1992242743
	.long	-91783936
	.long	-91783811
	.long	-283772416
	.long	-283772166
	.long	-1293199104
	.long	-1293199015
	.long	-1899411712
	.long	-1899411641
	.long	-83103744
	.long	-83103504
	.long	1106029824
	.long	1106029997
	.long	-1285041152
	.long	-1285040940
	.long	1610457600
	.long	1610457762
	.long	1173008128
	.long	1173008303
	.long	599759872
	.long	599760028
	.long	1408738304
	.long	1408738468
	.long	-459902464
	.long	-459902350
	.long	-1688485888
	.long	-1688485696
	.long	1975695104
	.long	1975695287
	.long	-518193920
	.long	-518193667
	.long	1034851072
	.long	1034851219
	.long	1282024960
	.long	1282024998
	.long	1817851392
	.long	1817851446
	.long	2118205184
	.long	2118205247
	.long	-184355072
	.long	-184354825
	.long	-2091922432
	.long	-2091922228
	.long	1750873088
	.long	1750873140
	.long	1374987520
	.long	1374987685
	.long	-785062656
	.long	-785062427
	.long	-116854528
	.long	-116854287
	.long	-493653760
	.long	-493653647
	.long	-1418471424
	.long	-1418471208
	.long	1649619200
	.long	1649619249
	.long	708777216
	.long	708777237
	.long	135005184
	.long	135005188
	.long	-1789737216
	.long	-1789737017
	.long	1181033216
	.long	1181033251
	.long	-1654734080
	.long	-1654733885
	.long	807933952
	.long	807933976
	.long	933336576
	.long	933336726
	.long	168756480
	.long	168756485
	.long	800430592
	.long	800430746
	.long	235472640
	.long	235472647
	.long	607523328
	.long	607523346
	.long	463175680
	.long	463175808
	.long	-549592576
	.long	-549592350
	.long	-853087488
	.long	-853087253
	.long	1315514112
	.long	1315514151
	.long	2144186880
	.long	2144187058
	.long	-358648576
	.long	-358648459
	.long	303761664
	.long	303761673
	.long	496927488
	.long	496927619
	.long	1484008448
	.long	1484008492
	.long	875436544
	.long	875436570
	.long	908925696
	.long	908925723
	.long	-592286208
	.long	-592286098
	.long	-1259447808
	.long	-1259447718
	.long	1543217152
	.long	1543217312
	.long	-1527361024
	.long	-1527360942
	.long	1984772864
	.long	1984772923
	.long	-1218324992
	.long	-1218324778
	.long	2110698240
	.long	2110698419
	.long	1383803136
	.long	1383803177
	.long	-583081216
	.long	-583080989
	.long	1584475904
	.long	1584475951
	.long	328696832
	.long	328696964
	.long	-1493871872
	.long	-1493871789
	.long	-1184313088
	.long	-1184312879
	.long	0
	.long	0
	.long	-1054020352
	.long	-1054020115
	.long	1080041472
	.long	1080041504
	.long	-484443136
	.long	-484442884
	.long	2043195648
	.long	2043195825
	.long	-1225958656
	.long	-1225958565
	.long	-725718528
	.long	-725718422
	.long	-1924740352
	.long	-1924740149
	.long	1742323200
	.long	1742323390
	.long	1917532416
	.long	1917532473
	.long	-1797371392
	.long	-1797371318
	.long	-1730917376
	.long	-1730917300
	.long	-1326950400
	.long	-1326950312
	.long	-2058694912
	.long	-2058694705
	.long	-1150562304
	.long	-1150562096
	.long	-987042048
	.long	-987041809
	.long	1340451328
	.long	1340451498
	.long	-317261056
	.long	-317260805
	.long	-2033892608
	.long	-2033892541
	.long	-1697166080
	.long	-1697166003
	.long	1716859648
	.long	1716859699
	.long	294946048
	.long	294946181
	.long	-1966127872
	.long	-1966127803
	.long	-384763648
	.long	-384763399
	.long	67502592
	.long	67502594
	.long	-25067776
	.long	-25067649
	.long	-1594863616
	.long	-1594863536
	.long	2017737728
	.long	2017737788
	.long	632987392
	.long	632987551
	.long	1273210880
	.long	1273211048
	.long	-1561112320
	.long	-1561112239
	.long	1576968960
	.long	1576969123
	.long	-2134884352
	.long	-2134884288
	.long	92966656
	.long	92966799
	.long	1068339712
	.long	1068339858
	.long	566009088
	.long	566009245
	.long	1883781120
	.long	1883781176
	.long	-251333376
	.long	-251333131
	.long	1675607040
	.long	1675607228
	.long	2009183744
	.long	2009183926
	.long	-1351230976
	.long	-1351230758
	.long	1113792768
	.long	1113792801
	.long	540020736
	.long	540020752
	.long	-451215616
	.long	-451215361
	.long	-49351936
	.long	-49351693
	.long	-1083321856
	.long	-1083321646
	.long	-2125673216
	.long	-2125673011
	.long	403966976
	.long	403966988
	.long	641012480
	.long	641012499
	.long	-1020269568
	.long	-1020269332
	.long	-1092526336
	.long	-1092526241
	.long	899847936
	.long	899848087
	.long	-1999879168
	.long	-1999879100
	.long	775493376
	.long	775493399
	.long	-1822964736
	.long	-1822964540
	.long	1441965824
	.long	1441965991
	.long	-58556928
	.long	-58556802
	.long	2051489024
	.long	2051489085
	.long	-928226304
	.long	-928226204
	.long	-1159242496
	.long	-1159242403
	.long	841685248
	.long	841685273
	.long	-426413312
	.long	-426413197
	.long	-1063231488
	.long	-1063231392
	.long	429424896
	.long	429425025
	.long	-1630449920
	.long	-1630449841
	.long	-1551901696
	.long	-1551901476
	.long	1147544064
	.long	1147544098
	.long	1417554432
	.long	1417554474
	.long	1001099264
	.long	1001099408
	.long	193169408
	.long	193169544
	.long	-1932900864
	.long	-1932900794
	.long	-953553408
	.long	-953553170
	.long	1809037312
	.long	1809037496
	.long	675025920
	.long	675025940
	.long	-1485185536
	.long	-1485185314
	.long	-1126015488
	.long	-1126015394
	.long	371002112
	.long	371002123
	.long	-1384719616
	.long	-1384719397
	.long	-616833024
	.long	-616832800
	.long	1683370496
	.long	1683370546
	.long	1951283712
	.long	1951283770
	.long	337512960
	.long	337512970
	.long	-1831122688
	.long	-1831122615
	.long	201983488
	.long	201983494
	.long	1215046656
	.long	1215046692
	.long	-1192993792
	.long	-1192993700
	.long	-1621245440
	.long	-1621245246
	.long	-1116810496
	.long	-1116810285
	.long	1139780608
	.long	1139780780
	.long	-995728896
	.long	-995728798
	.long	967348480
	.long	967348625
	.long	832869632
	.long	832869781
	.long	-751311872
	.long	-751311644
	.long	-225740544
	.long	-225740423
	.long	-718084352
	.long	-718084121
	.long	-1958492160
	.long	-1958491960
	.long	1851340544
	.long	1851340599
	.long	-625513216
	.long	-625513107
	.long	25988352
	.long	25988493
	.long	-1318791936
	.long	-1318791723
	.long	-1663939072
	.long	-1663938994
	.long	1239460096
	.long	1239460265
	.long	-659264512
	.long	-659264404
	.long	-1392880128
	.long	-1392880042
	.long	-217582592
	.long	-217582348
	.long	-819598848
	.long	-819598614
	.long	-894475008
	.long	-894474907
	.long	-191989248
	.long	-191989126
	.long	1206496768
	.long	1206496942
	.long	270010368
	.long	270010376
	.long	1876277760
	.long	1876277946
	.long	-259491840
	.long	-259491720
	.long	1248797952
	.long	1248797989
	.long	1550986752
	.long	1550986798
	.long	941890560
	.long	941890588
	.long	1475454464
	.long	1475454630
	.long	1942467584
	.long	1942467764
	.long	-1756248576
	.long	-1756248378
	.long	-886839296
	.long	-886839064
	.long	-1585652480
	.long	-1585652259
	.long	-392399872
	.long	-392399756
	.long	1042358016
	.long	1042358047
	.long	-1763882240
	.long	-1763882165
	.long	1641856256
	.long	1641856445
	.long	226921216
	.long	226921355
	.long	260409856
	.long	260409994
	.long	-527405056
	.long	-527404944
	.long	2084716032
	.long	2084716094
	.long	1908716800
	.long	1908716981
	.long	-861248000
	.long	-861247898
	.long	-1864873984
	.long	-1864873912
	.long	100991744
	.long	100991747
	.long	-150866432
	.long	-150866186
	.long	470945280
	.long	470945294
	.long	-1029480192
	.long	-1029480095
	.long	1784624384
	.long	1784624437
	.long	-1359390976
	.long	-1359390889
	.long	1775286528
	.long	1775286713
	.long	395412992
	.long	395413126
	.long	-1722236672
	.long	-1722236479
	.long	975641856
	.long	975641885
	.long	666476032
	.long	666476190
	.long	-650583808
	.long	-650583583
	.long	-351012864
	.long	-351012616
	.long	733190144
	.long	733190296
	.long	573772032
	.long	573772049
	.long	-759469824
	.long	-759469719
	.long	-1452222208
	.long	-1452221991
	.long	126455296
	.long	126455438
	.long	866620416
	.long	866620564
	.long	766941952
	.long	766942107
	.long	1008868864
	.long	1008868894
	.long	361924352
	.long	361924487
	.long	-920590080
	.long	-920589847
	.long	-2025206272
	.long	-2025206066
	.long	-1426107136
	.long	-1426107051
	.long	1350051840
	.long	1350051880
	.long	-1518674176
	.long	-1518673953
	.long	59739136
	.long	59739276
	.long	1509466368
	.long	1509466529
	.long	159418624
	.long	159418761
	.long	437718272
	.long	437718285
	.long	1708834560
	.long	1708834751
	.long	-684595712
	.long	-684595482
	.long	-2067381760
	.long	-2067381694
	.long	-793221120
	.long	-793221016
	.long	-2101133056
	.long	-2101132991
	.long	699439360
	.long	699439513
	.long	1517759744
	.long	1517759789
	.long	504434432
	.long	504434447
	.long	2076946432
	.long	2076946608
	.long	-1459858432
	.long	-1459858348
	.long	1842789120
	.long	1842789307
	.long	742004224
	.long	742004246
	.long	6488064
	.long	1660944384
	.long	8126464
	.long	2080374784
	.long	7798784
	.long	1996488704
	.long	8060928
	.long	2063597568
	.long	15859712
	.long	-234881024
	.long	7012352
	.long	1795162112
	.long	7274496
	.long	1862270976
	.long	12910592
	.long	-989855744
	.long	3145728
	.long	805306368
	.long	65536
	.long	16777216
	.long	6750208
	.long	1728053248
	.long	2818048
	.long	721420288
	.long	16646144
	.long	-33554432
	.long	14090240
	.long	-687865856
	.long	11206656
	.long	-1426063360
	.long	7733248
	.long	1979711488
	.long	13238272
	.long	-905969664
	.long	8519680
	.long	-2113929216
	.long	13172736
	.long	-922746880
	.long	8192000
	.long	2097152000
	.long	16384000
	.long	-100663296
	.long	5832704
	.long	1493172224
	.long	4653056
	.long	1191182336
	.long	15728640
	.long	-268435456
	.long	11337728
	.long	-1392508928
	.long	13893632
	.long	-738197504
	.long	10616832
	.long	-1577058304
	.long	11468800
	.long	-1358954496
	.long	10223616
	.long	-1677721600
	.long	10747904
	.long	-1543503872
	.long	7471104
	.long	1912602624
	.long	12582912
	.long	-1073741824
	.long	11993088
	.long	-1224736768
	.long	16580608
	.long	-50331648
	.long	9633792
	.long	-1828716544
	.long	2490368
	.long	637534208
	.long	3538944
	.long	905969664
	.long	4128768
	.long	1056964608
	.long	16187392
	.long	-150994944
	.long	13369344
	.long	-872415232
	.long	3407872
	.long	872415232
	.long	10813440
	.long	-1526726656
	.long	15007744
	.long	-452984832
	.long	15794176
	.long	-251658240
	.long	7405568
	.long	1895825408
	.long	14155776
	.long	-671088640
	.long	3211264
	.long	822083584
	.long	1376256
	.long	352321536
	.long	262144
	.long	67108864
	.long	13041664
	.long	-956301312
	.long	2293760
	.long	587202560
	.long	12779520
	.long	-1023410176
	.long	1572864
	.long	402653184
	.long	9830400
	.long	-1778384896
	.long	327680
	.long	83886080
	.long	10092544
	.long	-1711276032
	.long	458752
	.long	117440512
	.long	1179648
	.long	301989888
	.long	8388608
	.long	-2147483648
	.long	14811136
	.long	-503316480
	.long	15400960
	.long	-352321536
	.long	2555904
	.long	654311424
	.long	11665408
	.long	-1308622848
	.long	7667712
	.long	1962934272
	.long	589824
	.long	150994944
	.long	8585216
	.long	-2097152000
	.long	2883584
	.long	738197504
	.long	1703936
	.long	436207616
	.long	1769472
	.long	452984832
	.long	7208960
	.long	1845493760
	.long	5898240
	.long	1509949440
	.long	10485760
	.long	-1610612736
	.long	5373952
	.long	1375731712
	.long	3866624
	.long	989855744
	.long	14024704
	.long	-704643072
	.long	11730944
	.long	-1291845632
	.long	2686976
	.long	687865856
	.long	14876672
	.long	-486539264
	.long	3080192
	.long	788529152
	.long	8650752
	.long	-2080374784
	.long	5439488
	.long	1392508928
	.long	13697024
	.long	-788529152
	.long	0
	.long	0
	.long	15532032
	.long	-318767104
	.long	2097152
	.long	536870912
	.long	16515072
	.long	-67108864
	.long	11599872
	.long	-1325400064
	.long	5963776
	.long	1526726656
	.long	6946816
	.long	1778384896
	.long	13303808
	.long	-889192448
	.long	12451840
	.long	-1107296256
	.long	3735552
	.long	956301312
	.long	4849664
	.long	1241513984
	.long	4980736
	.long	1275068416
	.long	5767168
	.long	1476395008
	.long	13565952
	.long	-822083584
	.long	13631488
	.long	-805306368
	.long	15663104
	.long	-285212672
	.long	11141120
	.long	-1442840576
	.long	16449536
	.long	-83886080
	.long	4390912
	.long	1124073472
	.long	5046272
	.long	1291845632
	.long	3342336
	.long	855638016
	.long	8716288
	.long	-2063597568
	.long	4521984
	.long	1157627904
	.long	16318464
	.long	-117440512
	.long	131072
	.long	33554432
	.long	8323072
	.long	2130706432
	.long	5242880
	.long	1342177280
	.long	3932160
	.long	1006632960
	.long	10420224
	.long	-1627389952
	.long	11010048
	.long	-1476395008
	.long	5308416
	.long	1358954496
	.long	10682368
	.long	-1560281088
	.long	4194304
	.long	1073741824
	.long	9371648
	.long	-1895825408
	.long	9568256
	.long	-1845493760
	.long	10289152
	.long	-1660944384
	.long	3670016
	.long	939524096
	.long	16056320
	.long	-184549376
	.long	12320768
	.long	-1140850688
	.long	11927552
	.long	-1241513984
	.long	14286848
	.long	-637534208
	.long	2162688
	.long	553648128
	.long	1048576
	.long	268435456
	.long	16711680
	.long	-16777216
	.long	15925248
	.long	-218103808
	.long	13762560
	.long	-771751936
	.long	13434880
	.long	-855638016
	.long	786432
	.long	201326592
	.long	1245184
	.long	318767104
	.long	15466496
	.long	-335544320
	.long	6225920
	.long	1593835520
	.long	9895936
	.long	-1761607680
	.long	4456448
	.long	1140850688
	.long	1507328
	.long	385875968
	.long	12845056
	.long	-1006632960
	.long	10944512
	.long	-1493172224
	.long	8257536
	.long	2113929216
	.long	3997696
	.long	1023410176
	.long	6553600
	.long	1677721600
	.long	6094848
	.long	1560281088
	.long	1638400
	.long	419430400
	.long	7536640
	.long	1929379840
	.long	6291456
	.long	1610612736
	.long	8454144
	.long	-2130706432
	.long	5177344
	.long	1325400064
	.long	14417920
	.long	-603979776
	.long	2228224
	.long	570425344
	.long	2752512
	.long	704643072
	.long	9437184
	.long	-1879048192
	.long	8912896
	.long	-2013265920
	.long	4587520
	.long	1174405120
	.long	15597568
	.long	-301989888
	.long	12058624
	.long	-1207959552
	.long	1310720
	.long	335544320
	.long	14548992
	.long	-570425344
	.long	6160384
	.long	1577058304
	.long	720896
	.long	184549376
	.long	14352384
	.long	-620756992
	.long	14680064
	.long	-536870912
	.long	3276800
	.long	838860800
	.long	3801088
	.long	973078528
	.long	655360
	.long	167772160
	.long	4784128
	.long	1224736768
	.long	393216
	.long	100663296
	.long	2359296
	.long	603979776
	.long	6029312
	.long	1543503872
	.long	12713984
	.long	-1040187392
	.long	13828096
	.long	-754974720
	.long	11272192
	.long	-1409286144
	.long	6422528
	.long	1644167168
	.long	9502720
	.long	-1862270976
	.long	9764864
	.long	-1795162112
	.long	14942208
	.long	-469762048
	.long	7929856
	.long	2030043136
	.long	15138816
	.long	-419430400
	.long	13107200
	.long	-939524096
	.long	3604480
	.long	922746880
	.long	7143424
	.long	1828716544
	.long	9240576
	.long	-1929379840
	.long	13959168
	.long	-721420288
	.long	5111808
	.long	1308622848
	.long	11075584
	.long	-1459617792
	.long	7077888
	.long	1811939328
	.long	5636096
	.long	1442840576
	.long	15990784
	.long	-201326592
	.long	15335424
	.long	-369098752
	.long	6619136
	.long	1694498816
	.long	7995392
	.long	2046820352
	.long	11403264
	.long	-1375731712
	.long	524288
	.long	134217728
	.long	12189696
	.long	-1174405120
	.long	7864320
	.long	2013265920
	.long	2424832
	.long	620756992
	.long	3014656
	.long	771751936
	.long	1835008
	.long	469762048
	.long	10878976
	.long	-1509949440
	.long	11796480
	.long	-1275068416
	.long	12976128
	.long	-973078528
	.long	15204352
	.long	-402653184
	.long	14483456
	.long	-587202560
	.long	7602176
	.long	1946157056
	.long	2031616
	.long	520093696
	.long	4915200
	.long	1258291200
	.long	12386304
	.long	-1124073472
	.long	9109504
	.long	-1962934272
	.long	9043968
	.long	-1979711488
	.long	7340032
	.long	1879048192
	.long	4063232
	.long	1040187392
	.long	11862016
	.long	-1258291200
	.long	6684672
	.long	1711276032
	.long	4718592
	.long	1207959552
	.long	196608
	.long	50331648
	.long	16121856
	.long	-167772160
	.long	917504
	.long	234881024
	.long	6356992
	.long	1627389952
	.long	3473408
	.long	889192448
	.long	5701632
	.long	1459617792
	.long	12124160
	.long	-1191182336
	.long	8781824
	.long	-2046820352
	.long	12648448
	.long	-1056964608
	.long	1900544
	.long	486539264
	.long	10354688
	.long	-1644167168
	.long	14745600
	.long	-520093696
	.long	16252928
	.long	-134217728
	.long	9961472
	.long	-1744830464
	.long	1114112
	.long	285212672
	.long	6881280
	.long	1761607680
	.long	14221312
	.long	-654311424
	.long	9306112
	.long	-1912602624
	.long	9699328
	.long	-1811939328
	.long	10158080
	.long	-1694498816
	.long	1966080
	.long	503316480
	.long	8847360
	.long	-2030043136
	.long	15269888
	.long	-385875968
	.long	13500416
	.long	-838860800
	.long	5570560
	.long	1426063360
	.long	2621440
	.long	671088640
	.long	14614528
	.long	-553648128
	.long	9175040
	.long	-1946157056
	.long	10551296
	.long	-1593835520
	.long	8978432
	.long	-1996488704
	.long	851968
	.long	218103808
	.long	12517376
	.long	-1090519040
	.long	15073280
	.long	-436207616
	.long	4325376
	.long	1107296256
	.long	6815744
	.long	1744830464
	.long	4259840
	.long	1090519040
	.long	10027008
	.long	-1728053248
	.long	2949120
	.long	754974720
	.long	983040
	.long	251658240
	.long	11534336
	.long	-1342177280
	.long	5505024
	.long	1409286144
	.long	12255232
	.long	-1157627904
	.long	1441792
	.long	369098752
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
