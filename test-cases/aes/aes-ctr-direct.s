	.file	"aes-ctr-direct.c"
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
	subl	$284, %esp
	.cfi_def_cfa_offset 304
	movl	320(%esp), %edi
	testl	%edi, %edi
	je	.L1
	movl	308(%esp), %edx
	movl	308(%esp), %eax
	movl	%edx, %ebx
	movl	4(%edx), %ecx
	movl	16(%ebx), %ebp
	movl	(%eax), %eax
	movl	12(%ebx), %esi
	movl	8(%edx), %edx
	movl	%ebp, 132(%esp)
	xorl	%ecx, %ebp
	movl	%ebp, 60(%esp)
	movl	%eax, 216(%esp)
	movl	20(%ebx), %eax
	movl	60(%esp), %ebx
	xorl	%edx, %ebp
	movl	%ebp, 64(%esp)
	xorl	%esi, %ebp
	movl	%ebp, 136(%esp)
	movl	%eax, 140(%esp)
	xorl	%eax, %ebx
	movl	%ebx, 68(%esp)
	movl	68(%esp), %eax
	xorl	64(%esp), %ebx
	movl	%ebx, 72(%esp)
	xorl	%ebp, %ebx
	movl	308(%esp), %ebp
	movl	%ebx, 144(%esp)
	movl	24(%ebp), %ebp
	xorl	%ebp, %eax
	movl	%eax, 76(%esp)
	xorl	72(%esp), %eax
	movl	%ebp, 148(%esp)
	movl	76(%esp), %ebp
	movl	%eax, 80(%esp)
	xorl	%ebx, %eax
	movl	308(%esp), %ebx
	movl	%eax, 152(%esp)
	movl	28(%ebx), %ebx
	xorl	%ebx, %ebp
	movl	%ebp, 84(%esp)
	xorl	80(%esp), %ebp
	movl	%ebx, 156(%esp)
	movl	%ebp, 88(%esp)
	xorl	%eax, %ebp
	movl	308(%esp), %eax
	movl	84(%esp), %ebx
	movl	%ebp, 160(%esp)
	movl	32(%eax), %eax
	xorl	%eax, %ebx
	movl	%ebx, 92(%esp)
	xorl	88(%esp), %ebx
	movl	%eax, 164(%esp)
	movl	92(%esp), %eax
	movl	%ebx, 96(%esp)
	xorl	%ebp, %ebx
	movl	308(%esp), %ebp
	movl	%ebx, 168(%esp)
	movl	36(%ebp), %ebp
	xorl	%ebp, %eax
	movl	%eax, 100(%esp)
	xorl	96(%esp), %eax
	movl	%ebp, 172(%esp)
	movl	100(%esp), %ebp
	movl	%eax, 104(%esp)
	xorl	%ebx, %eax
	movl	308(%esp), %ebx
	movl	%eax, 176(%esp)
	movl	40(%ebx), %ebx
	xorl	%ebx, %ebp
	movl	%ebp, 108(%esp)
	xorl	104(%esp), %ebp
	movl	%ebx, 180(%esp)
	movl	108(%esp), %ebx
	movl	%ebp, 112(%esp)
	xorl	%eax, %ebp
	movl	308(%esp), %eax
	movl	%ebp, 184(%esp)
	movl	44(%eax), %eax
	xorl	%eax, %ebx
	movl	%ebx, 116(%esp)
	xorl	112(%esp), %ebx
	movl	%eax, 188(%esp)
	movl	%ebx, 120(%esp)
	xorl	%ebp, %ebx
	movl	308(%esp), %ebp
	movl	%ebx, 192(%esp)
	movl	48(%ebp), %ebp
	movl	%ebp, 196(%esp)
	movl	116(%esp), %eax
	xorl	%ebp, %eax
	movl	%eax, 124(%esp)
	movl	124(%esp), %ebp
	xorl	120(%esp), %eax
	movl	%eax, 128(%esp)
	xorl	%ebx, %eax
	movl	308(%esp), %ebx
	movl	%eax, 200(%esp)
	movl	52(%ebx), %ebx
	xorl	%ebx, %ebp
	movl	%ebp, 208(%esp)
	xorl	128(%esp), %ebp
	movl	%ebx, 204(%esp)
	movl	308(%esp), %ebx
	movl	%ebp, 212(%esp)
	xorl	%eax, %ebp
	movl	308(%esp), %eax
	movl	%ebp, 220(%esp)
	movl	308(%esp), %ebp
	movl	60(%ebx), %ebx
	movl	56(%eax), %eax
	movl	64(%ebp), %ebp
	xorl	%ebx, %ecx
	movl	%ebx, 272(%esp)
	movl	aes_table1, %ebx
	movl	%eax, 56(%esp)
	movl	308(%esp), %eax
	xorl	%ebp, %edx
	movl	%ebp, 276(%esp)
	movl	aes_table2, %ebp
	movl	%ebx, 12(%esp)
	movl	aes_table3, %ebx
	movl	68(%eax), %eax
	movl	%ebp, 16(%esp)
	movl	12(%esp), %ebp
	movl	%ebx, 20(%esp)
	xorl	%eax, %esi
	movzbl	%cl, %ebx
	movl	%eax, 280(%esp)
	movl	aes_table0, %eax
	leal	(%eax,%ebx,8), %ebx
	movl	%ebx, 224(%esp)
	movzbl	%ch, %ebx
	leal	0(%ebp,%ebx,8), %ebx
	movl	%ebx, 228(%esp)
	movl	%ecx, %ebx
	shrl	$13, %ebx
	andl	$2040, %ebx
	addl	16(%esp), %ebx
	shrl	$24, %ecx
	movl	%edi, 48(%esp)
	movl	312(%esp), %edi
	movl	%ebx, 232(%esp)
	movl	20(%esp), %ebx
	movl	%edi, 36(%esp)
	leal	(%ebx,%ecx,8), %ecx
	movl	%ecx, 236(%esp)
	movzbl	%dl, %ecx
	leal	(%eax,%ecx,8), %ecx
	movl	%ecx, 240(%esp)
	movzbl	%dh, %ecx
	leal	0(%ebp,%ecx,8), %ecx
	movl	%ecx, 244(%esp)
	movl	%edx, %ecx
	shrl	$13, %ecx
	shrl	$24, %edx
	andl	$2040, %ecx
	leal	(%ebx,%edx,8), %edx
	addl	16(%esp), %ecx
	movl	%edx, 252(%esp)
	movl	%esi, %edx
	andl	$255, %edx
	leal	(%eax,%edx,8), %edx
	movl	%ecx, 248(%esp)
	movl	%esi, %ecx
	movl	%edx, 256(%esp)
	movzbl	%ch, %edx
	leal	0(%ebp,%edx,8), %edx
	movl	%edx, 260(%esp)
	movl	%esi, %edx
	shrl	$24, %esi
	leal	(%ebx,%esi,8), %esi
	movl	aes_tablex, %ebx
	shrl	$13, %edx
	movl	%esi, 268(%esp)
	movl	316(%esp), %esi
	andl	$2040, %edx
	addl	16(%esp), %edx
	movl	%ebx, 44(%esp)
	movl	%edx, 264(%esp)
	movl	%esi, 40(%esp)
	jmp	.L7
	.p2align 4,,7
	.p2align 3
.L8:
	movl	%edx, 48(%esp)
.L7:
	movl	228(%esp), %ebp
	movl	56(%esp), %edx
	xorl	216(%esp), %edx
	movl	248(%esp), %edi
	movl	0(%ebp), %ecx
	movl	268(%esp), %ebp
	movzbl	%dl, %ebx
	movl	%edx, %esi
	shrl	$16, %esi
	xorl	(%edi), %ecx
	andl	$255, %esi
	xorl	132(%esp), %ecx
	xorl	0(%ebp), %ecx
	xorl	(%eax,%ebx,8), %ecx
	movl	224(%esp), %ebx
	movl	244(%esp), %ebp
	movl	60(%esp), %edi
	xorl	(%ebx), %edi
	movl	264(%esp), %ebx
	xorl	0(%ebp), %edi
	movl	20(%esp), %ebp
	xorl	(%ebx), %edi
	movl	%edx, %ebx
	shrl	$24, %ebx
	movzbl	%dh, %edx
	xorl	0(%ebp,%ebx,8), %edi
	movl	240(%esp), %ebp
	movl	64(%esp), %ebx
	xorl	0(%ebp), %ebx
	movl	236(%esp), %ebp
	movl	0(%ebp), %ebp
	xorl	%ebp, %ebx
	movl	260(%esp), %ebp
	movl	0(%ebp), %ebp
	xorl	%ebp, %ebx
	movl	16(%esp), %ebp
	movl	0(%ebp,%esi,8), %ebp
	movl	136(%esp), %esi
	xorl	%ebp, %ebx
	movl	232(%esp), %ebp
	movl	%ebx, 52(%esp)
	movl	256(%esp), %ebx
	xorl	(%ebx), %esi
	movl	252(%esp), %ebx
	xorl	0(%ebp), %esi
	movl	12(%esp), %ebp
	xorl	(%ebx), %esi
	movl	%ecx, %ebx
	shrl	$16, %ebx
	xorl	0(%ebp,%edx,8), %esi
	movzbl	%cl, %edx
	movl	%edx, 4(%esp)
	movzbl	%ch, %edx
	movl	0(%ebp,%edx,8), %edx
	movzbl	%bl, %ebp
	movl	16(%esp), %ebx
	shrl	$24, %ecx
	movl	(%ebx,%ebp,8), %ebx
	movl	20(%esp), %ebp
	movl	%ebx, 8(%esp)
	movl	%edi, %ebx
	movl	0(%ebp,%ecx,8), %ecx
	shrl	$16, %ebx
	movl	52(%esp), %ebp
	movl	%ebx, 24(%esp)
	movl	%esi, %ebx
	shrl	$16, %ebx
	movl	%ebx, 32(%esp)
	movl	140(%esp), %ebx
	shrl	$16, %ebp
	movl	%ebp, 28(%esp)
	movl	4(%esp), %ebp
	xorl	(%eax,%ebp,8), %ebx
	movl	%ebx, 4(%esp)
	movl	%edi, %ebx
	movzbl	%bh, %ebp
	movl	12(%esp), %ebx
	movl	(%ebx,%ebp,8), %ebx
	xorl	%ebx, 4(%esp)
	movzbl	28(%esp), %ebp
	movl	16(%esp), %ebx
	movl	(%ebx,%ebp,8), %ebx
	movl	%esi, %ebp
	xorl	%ebx, 4(%esp)
	movl	20(%esp), %ebx
	shrl	$24, %ebp
	movl	(%ebx,%ebp,8), %ebx
	movl	%edi, %ebp
	xorl	%ebx, 4(%esp)
	andl	$255, %ebp
	movl	52(%esp), %ebx
	shrl	$24, %edi
	xorl	(%eax,%ebp,8), %ecx
	xorl	68(%esp), %ecx
	movzbl	%bh, %ebp
	movl	12(%esp), %ebx
	xorl	(%ebx,%ebp,8), %ecx
	movzbl	32(%esp), %ebp
	movl	16(%esp), %ebx
	xorl	(%ebx,%ebp,8), %ecx
	movzbl	52(%esp), %ebp
	movl	(%eax,%ebp,8), %ebx
	xorl	%ebx, 8(%esp)
	movl	20(%esp), %ebx
	movl	72(%esp), %ebp
	xorl	%ebp, 8(%esp)
	movl	12(%esp), %ebp
	movl	(%ebx,%edi,8), %ebx
	xorl	%ebx, 8(%esp)
	movl	%esi, %ebx
	andl	$255, %esi
	movzbl	%bh, %edi
	movl	16(%esp), %ebx
	xorl	(%eax,%esi,8), %edx
	movzbl	24(%esp), %esi
	xorl	144(%esp), %edx
	movl	0(%ebp,%edi,8), %ebp
	xorl	%ebp, 8(%esp)
	xorl	(%ebx,%esi,8), %edx
	movl	52(%esp), %ebx
	movl	20(%esp), %esi
	movzbl	4(%esp), %ebp
	movl	4(%esp), %edi
	shrl	$24, %ebx
	xorl	(%esi,%ebx,8), %edx
	movl	4(%esp), %esi
	movl	4(%esp), %ebx
	shrl	$24, %edi
	movl	(%eax,%ebp,8), %ebp
	xorl	148(%esp), %ebp
	shrl	$16, %esi
	andl	$255, %esi
	movzbl	%bh, %ebx
	movl	%esi, 32(%esp)
	movl	%ecx, %esi
	shrl	$16, %esi
	movl	%ebx, 28(%esp)
	movl	8(%esp), %ebx
	movl	%esi, 4(%esp)
	movl	%edx, %esi
	shrl	$16, %esi
	movl	%esi, 24(%esp)
	movl	12(%esp), %esi
	shrl	$16, %ebx
	movl	%ebx, 52(%esp)
	movzbl	%ch, %ebx
	xorl	(%esi,%ebx,8), %ebp
	movzbl	52(%esp), %ebx
	movl	16(%esp), %esi
	xorl	(%esi,%ebx,8), %ebp
	movl	%edx, %ebx
	movl	20(%esp), %esi
	shrl	$24, %ebx
	xorl	(%esi,%ebx,8), %ebp
	movzbl	%cl, %ebx
	movl	76(%esp), %esi
	shrl	$24, %ecx
	xorl	(%eax,%ebx,8), %esi
	movl	20(%esp), %ebx
	xorl	(%ebx,%edi,8), %esi
	movl	8(%esp), %ebx
	movzbl	%bh, %edi
	movl	12(%esp), %ebx
	xorl	(%ebx,%edi,8), %esi
	movzbl	24(%esp), %ebx
	movl	16(%esp), %edi
	xorl	(%edi,%ebx,8), %esi
	movzbl	8(%esp), %edi
	movl	80(%esp), %ebx
	xorl	(%eax,%edi,8), %ebx
	movl	%ebx, (%esp)
	movl	32(%esp), %ebx
	movl	16(%esp), %edi
	movl	(%edi,%ebx,8), %ebx
	movl	20(%esp), %edi
	xorl	%ebx, (%esp)
	movl	12(%esp), %ebx
	movl	(%edi,%ecx,8), %edi
	movzbl	%dh, %ecx
	andl	$255, %edx
	xorl	%edi, (%esp)
	movl	(%ebx,%ecx,8), %ebx
	movl	28(%esp), %edi
	movl	12(%esp), %ecx
	movl	(%eax,%edx,8), %edx
	xorl	%ebx, (%esp)
	xorl	152(%esp), %edx
	movl	16(%esp), %ebx
	xorl	(%ecx,%edi,8), %edx
	movzbl	4(%esp), %ecx
	movl	20(%esp), %edi
	xorl	(%ebx,%ecx,8), %edx
	movl	8(%esp), %ecx
	shrl	$24, %ecx
	xorl	(%edi,%ecx,8), %edx
	movl	%ebp, %ecx
	andl	$255, %ecx
	movl	%ebp, %edi
	movl	(%eax,%ecx,8), %ebx
	movl	%ebp, %ecx
	shrl	$16, %edi
	movzbl	%ch, %ecx
	andl	$255, %edi
	movl	%ecx, 28(%esp)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movl	%edi, 32(%esp)
	movl	%esi, %edi
	shrl	$16, %edi
	movl	%ecx, 24(%esp)
	movl	%esi, %ecx
	shrl	$24, %ebp
	movl	%edi, 8(%esp)
	movzbl	%ch, %edi
	movl	12(%esp), %ecx
	movl	%ebp, 52(%esp)
	movl	(%esp), %ebp
	xorl	(%ecx,%edi,8), %ebx
	movl	16(%esp), %edi
	shrl	$16, %ebp
	movl	%ebp, %ecx
	movl	20(%esp), %ebp
	andl	$255, %ecx
	xorl	156(%esp), %ebx
	xorl	(%edi,%ecx,8), %ebx
	movl	%edx, %ecx
	shrl	$24, %ecx
	movl	%esi, %edi
	xorl	0(%ebp,%ecx,8), %ebx
	andl	$255, %edi
	movl	84(%esp), %ecx
	xorl	(%eax,%edi,8), %ecx
	movl	52(%esp), %edi
	shrl	$24, %esi
	movl	0(%ebp,%edi,8), %edi
	xorl	%edi, %ecx
	movl	%ecx, 4(%esp)
	movl	(%esp), %ecx
	movl	12(%esp), %ebp
	movzbl	%ch, %edi
	movzbl	24(%esp), %ecx
	movl	0(%ebp,%edi,8), %ebp
	movl	16(%esp), %edi
	xorl	%ebp, 4(%esp)
	movzbl	(%esp), %ebp
	movl	(%edi,%ecx,8), %edi
	movl	20(%esp), %ecx
	xorl	%edi, 4(%esp)
	movl	88(%esp), %edi
	movl	(%ecx,%esi,8), %ecx
	movl	(%eax,%ebp,8), %esi
	movl	32(%esp), %ebp
	xorl	%esi, %ecx
	movl	16(%esp), %esi
	xorl	%edi, %ecx
	movl	12(%esp), %edi
	movl	(%esi,%ebp,8), %ebp
	movzbl	%dh, %esi
	andl	$255, %edx
	movl	(%edi,%esi,8), %edi
	movzbl	8(%esp), %esi
	xorl	%ebp, %ecx
	movl	16(%esp), %ebp
	xorl	%edi, %ecx
	movl	(%esp), %edi
	movl	%ecx, 52(%esp)
	movl	12(%esp), %ecx
	movl	0(%ebp,%esi,8), %esi
	xorl	(%eax,%edx,8), %esi
	movl	20(%esp), %ebp
	shrl	$24, %edi
	movl	28(%esp), %edx
	xorl	160(%esp), %esi
	xorl	(%ecx,%edx,8), %esi
	movl	%ebx, %ecx
	xorl	0(%ebp,%edi,8), %esi
	movzbl	%bh, %edx
	movl	12(%esp), %edi
	shrl	$16, %ecx
	movzbl	%bl, %ebp
	shrl	$24, %ebx
	movl	(%edi,%edx,8), %edx
	movzbl	%cl, %edi
	movl	16(%esp), %ecx
	movl	(%ecx,%edi,8), %ecx
	movl	%ecx, 8(%esp)
	movl	52(%esp), %ecx
	movl	20(%esp), %edi
	shrl	$16, %ecx
	movl	%ecx, 28(%esp)
	movl	4(%esp), %ecx
	movl	(%edi,%ebx,8), %ebx
	movl	%esi, %edi
	shrl	$16, %edi
	movl	%edi, 32(%esp)
	movl	164(%esp), %edi
	xorl	(%eax,%ebp,8), %edi
	movzbl	%ch, %ebp
	movl	12(%esp), %ecx
	movl	%ebx, (%esp)
	movl	4(%esp), %ebx
	xorl	(%ecx,%ebp,8), %edi
	movzbl	28(%esp), %ebp
	shrl	$16, %ebx
	movl	16(%esp), %ecx
	xorl	(%ecx,%ebp,8), %edi
	movl	%esi, %ebp
	movl	20(%esp), %ecx
	shrl	$24, %ebp
	xorl	(%ecx,%ebp,8), %edi
	movzbl	4(%esp), %ebp
	movl	(%eax,%ebp,8), %ecx
	xorl	%ecx, (%esp)
	movl	52(%esp), %ecx
	movl	92(%esp), %ebp
	xorl	%ebp, (%esp)
	movzbl	%ch, %ebp
	movl	12(%esp), %ecx
	movl	(%ecx,%ebp,8), %ecx
	xorl	%ecx, (%esp)
	movzbl	32(%esp), %ebp
	movl	16(%esp), %ecx
	movl	(%ecx,%ebp,8), %ecx
	movzbl	52(%esp), %ebp
	xorl	%ecx, (%esp)
	movl	(%eax,%ebp,8), %ecx
	xorl	%ecx, 8(%esp)
	movl	96(%esp), %ebp
	xorl	%ebp, 8(%esp)
	movl	4(%esp), %ebp
	movl	20(%esp), %ecx
	shrl	$24, %ebp
	movl	(%ecx,%ebp,8), %ecx
	xorl	%ecx, 8(%esp)
	movl	%esi, %ecx
	movzbl	%ch, %ebp
	movl	12(%esp), %ecx
	andl	$255, %esi
	xorl	(%eax,%esi,8), %edx
	movzbl	%bl, %esi
	movl	16(%esp), %ebx
	xorl	168(%esp), %edx
	movl	(%ecx,%ebp,8), %ecx
	movl	%edi, %ebp
	xorl	%ecx, 8(%esp)
	movl	52(%esp), %ecx
	shrl	$24, %ebp
	xorl	(%ebx,%esi,8), %edx
	movl	%edi, %ebx
	movl	20(%esp), %esi
	movzbl	%bh, %ebx
	movl	%ebx, 28(%esp)
	shrl	$24, %ecx
	xorl	(%esi,%ecx,8), %edx
	movl	%edi, %esi
	shrl	$16, %esi
	movl	%edi, %ecx
	movl	8(%esp), %edi
	andl	$255, %esi
	andl	$255, %ecx
	movl	%edx, %ebx
	movl	(%eax,%ecx,8), %ecx
	movl	%esi, 32(%esp)
	shrl	$16, %ebx
	movl	(%esp), %esi
	movl	%ebx, 24(%esp)
	movl	(%esp), %ebx
	shrl	$16, %edi
	shrl	$16, %esi
	movl	%esi, 4(%esp)
	movzbl	%bh, %esi
	movl	12(%esp), %ebx
	xorl	(%ebx,%esi,8), %ecx
	movl	%edi, %esi
	movl	16(%esp), %edi
	andl	$255, %esi
	movl	20(%esp), %ebx
	xorl	172(%esp), %ecx
	xorl	(%edi,%esi,8), %ecx
	movl	%edx, %esi
	shrl	$24, %esi
	movl	100(%esp), %edi
	xorl	(%ebx,%esi,8), %ecx
	movzbl	(%esp), %esi
	xorl	(%eax,%esi,8), %edi
	xorl	(%ebx,%ebp,8), %edi
	movl	8(%esp), %ebx
	movl	12(%esp), %ebp
	movzbl	%bh, %esi
	movl	16(%esp), %ebx
	xorl	0(%ebp,%esi,8), %edi
	movzbl	24(%esp), %esi
	movl	20(%esp), %ebp
	xorl	(%ebx,%esi,8), %edi
	movl	(%esp), %ebx
	movzbl	8(%esp), %esi
	shrl	$24, %ebx
	movl	0(%ebp,%ebx,8), %ebx
	movl	(%eax,%esi,8), %ebp
	movl	104(%esp), %esi
	xorl	%ebp, %ebx
	movl	32(%esp), %ebp
	xorl	%esi, %ebx
	movl	16(%esp), %esi
	movl	(%esi,%ebp,8), %ebp
	movzbl	%dh, %esi
	andl	$255, %edx
	xorl	%ebp, %ebx
	movl	12(%esp), %ebp
	movl	0(%ebp,%esi,8), %ebp
	xorl	%ebp, %ebx
	movl	%ebx, 52(%esp)
	movzbl	4(%esp), %esi
	movl	16(%esp), %ebx
	movl	28(%esp), %ebp
	movl	(%ebx,%esi,8), %esi
	xorl	(%eax,%edx,8), %esi
	movl	12(%esp), %edx
	xorl	176(%esp), %esi
	movl	20(%esp), %ebx
	xorl	(%edx,%ebp,8), %esi
	movzbl	%cl, %ebp
	movl	8(%esp), %edx
	movl	%ebp, 4(%esp)
	movl	12(%esp), %ebp
	shrl	$24, %edx
	xorl	(%ebx,%edx,8), %esi
	movl	%ecx, %ebx
	shrl	$16, %ebx
	movzbl	%ch, %edx
	movl	0(%ebp,%edx,8), %edx
	movzbl	%bl, %ebp
	movl	16(%esp), %ebx
	shrl	$24, %ecx
	movl	(%ebx,%ebp,8), %ebx
	movl	20(%esp), %ebp
	movl	%ebx, 8(%esp)
	movl	%edi, %ebx
	movl	0(%ebp,%ecx,8), %ecx
	shrl	$16, %ebx
	movl	52(%esp), %ebp
	movl	%ebx, 24(%esp)
	movl	%esi, %ebx
	shrl	$16, %ebx
	movl	%ebx, 32(%esp)
	movl	180(%esp), %ebx
	shrl	$16, %ebp
	movl	%ebp, 28(%esp)
	movl	4(%esp), %ebp
	xorl	(%eax,%ebp,8), %ebx
	movl	%ebx, 4(%esp)
	movl	%edi, %ebx
	movzbl	%bh, %ebp
	movl	12(%esp), %ebx
	movl	(%ebx,%ebp,8), %ebx
	xorl	%ebx, 4(%esp)
	movzbl	28(%esp), %ebp
	movl	16(%esp), %ebx
	movl	(%ebx,%ebp,8), %ebx
	movl	%esi, %ebp
	xorl	%ebx, 4(%esp)
	movl	20(%esp), %ebx
	shrl	$24, %ebp
	movl	(%ebx,%ebp,8), %ebx
	movl	%edi, %ebp
	xorl	%ebx, 4(%esp)
	andl	$255, %ebp
	movl	52(%esp), %ebx
	xorl	(%eax,%ebp,8), %ecx
	xorl	108(%esp), %ecx
	movzbl	%bh, %ebp
	movl	12(%esp), %ebx
	xorl	(%ebx,%ebp,8), %ecx
	movzbl	32(%esp), %ebp
	shrl	$24, %edi
	movl	16(%esp), %ebx
	xorl	(%ebx,%ebp,8), %ecx
	movzbl	52(%esp), %ebp
	movl	(%eax,%ebp,8), %ebx
	xorl	%ebx, 8(%esp)
	movl	20(%esp), %ebx
	movl	112(%esp), %ebp
	xorl	%ebp, 8(%esp)
	movl	12(%esp), %ebp
	movl	(%ebx,%edi,8), %ebx
	xorl	%ebx, 8(%esp)
	movl	%esi, %ebx
	andl	$255, %esi
	movzbl	%bh, %edi
	movl	16(%esp), %ebx
	xorl	(%eax,%esi,8), %edx
	movzbl	24(%esp), %esi
	xorl	184(%esp), %edx
	movl	0(%ebp,%edi,8), %ebp
	movl	4(%esp), %edi
	xorl	(%ebx,%esi,8), %edx
	movl	52(%esp), %ebx
	movl	20(%esp), %esi
	shrl	$16, %edi
	andl	$255, %edi
	shrl	$24, %ebx
	xorl	(%esi,%ebx,8), %edx
	movzbl	4(%esp), %ebx
	xorl	%ebp, 8(%esp)
	movl	(%eax,%ebx,8), %esi
	movl	4(%esp), %ebx
	movzbl	%bh, %ebx
	movl	%ebx, 32(%esp)
	movl	8(%esp), %ebx
	movl	%edi, 52(%esp)
	movl	%ecx, %edi
	movl	4(%esp), %ebp
	shrl	$16, %edi
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	shrl	$16, %edi
	movl	%edi, 28(%esp)
	movl	12(%esp), %edi
	shrl	$16, %ebx
	movl	%ebx, 4(%esp)
	movzbl	%ch, %ebx
	shrl	$24, %ebp
	xorl	(%edi,%ebx,8), %esi
	movzbl	4(%esp), %ebx
	movl	16(%esp), %edi
	xorl	188(%esp), %esi
	xorl	(%edi,%ebx,8), %esi
	movl	%edx, %ebx
	movl	20(%esp), %edi
	shrl	$24, %ebx
	xorl	(%edi,%ebx,8), %esi
	movzbl	%cl, %edi
	movl	116(%esp), %ebx
	xorl	(%eax,%edi,8), %ebx
	movl	20(%esp), %edi
	movl	(%edi,%ebp,8), %edi
	movl	12(%esp), %ebp
	xorl	%edi, %ebx
	movl	%ebx, 4(%esp)
	movl	8(%esp), %ebx
	movzbl	%bh, %edi
	movzbl	28(%esp), %ebx
	movl	0(%ebp,%edi,8), %ebp
	movl	16(%esp), %edi
	xorl	%ebp, 4(%esp)
	movl	20(%esp), %ebp
	movl	(%edi,%ebx,8), %edi
	xorl	%edi, 4(%esp)
	movzbl	8(%esp), %edi
	shrl	$24, %ecx
	movl	0(%ebp,%ecx,8), %ebx
	movl	52(%esp), %ecx
	movl	12(%esp), %ebp
	xorl	(%eax,%edi,8), %ebx
	movl	16(%esp), %edi
	xorl	120(%esp), %ebx
	xorl	(%edi,%ecx,8), %ebx
	movzbl	%dh, %ecx
	xorl	0(%ebp,%ecx,8), %ebx
	andl	$255, %edx
	movzbl	24(%esp), %ecx
	movl	20(%esp), %ebp
	movl	(%edi,%ecx,8), %edi
	xorl	(%eax,%edx,8), %edi
	movl	12(%esp), %ecx
	movl	32(%esp), %edx
	xorl	192(%esp), %edi
	xorl	(%ecx,%edx,8), %edi
	movl	%esi, %ecx
	movl	8(%esp), %edx
	shrl	$24, %edx
	xorl	0(%ebp,%edx,8), %edi
	movl	%esi, %edx
	shrl	$16, %edx
	movl	%esi, %ebp
	movl	%edx, 24(%esp)
	movzbl	%ch, %edx
	movl	12(%esp), %ecx
	andl	$255, %ebp
	movl	(%ecx,%edx,8), %edx
	movl	16(%esp), %ecx
	movl	%edx, 8(%esp)
	movzbl	24(%esp), %edx
	movl	(%ecx,%edx,8), %edx
	movl	%edx, 52(%esp)
	movl	%esi, %edx
	movl	20(%esp), %esi
	shrl	$24, %edx
	movl	(%esi,%edx,8), %ecx
	movl	%ebx, %esi
	movl	4(%esp), %edx
	shrl	$16, %esi
	movl	%esi, 28(%esp)
	movl	196(%esp), %esi
	xorl	(%eax,%ebp,8), %esi
	shrl	$16, %edx
	movl	%edx, 24(%esp)
	movl	%edi, %edx
	shrl	$16, %edx
	movl	%edx, 32(%esp)
	movl	4(%esp), %edx
	movzbl	%dh, %ebp
	movl	12(%esp), %edx
	xorl	(%edx,%ebp,8), %esi
	movzbl	28(%esp), %ebp
	movl	16(%esp), %edx
	xorl	(%edx,%ebp,8), %esi
	movl	%edi, %ebp
	movl	20(%esp), %edx
	shrl	$24, %ebp
	xorl	(%edx,%ebp,8), %esi
	movzbl	4(%esp), %ebp
	movl	12(%esp), %edx
	xorl	(%eax,%ebp,8), %ecx
	movzbl	%bh, %ebp
	xorl	124(%esp), %ecx
	xorl	(%edx,%ebp,8), %ecx
	movzbl	32(%esp), %ebp
	movl	16(%esp), %edx
	xorl	(%edx,%ebp,8), %ecx
	movzbl	%bl, %ebp
	movl	(%eax,%ebp,8), %edx
	shrl	$24, %ebx
	movl	128(%esp), %ebp
	xorl	%edx, 52(%esp)
	xorl	%ebp, 52(%esp)
	movl	4(%esp), %ebp
	movl	20(%esp), %edx
	shrl	$24, %ebp
	movl	(%edx,%ebp,8), %edx
	xorl	%edx, 52(%esp)
	movl	%edi, %edx
	movzbl	%dh, %ebp
	movl	12(%esp), %edx
	andl	$255, %edi
	movl	(%edx,%ebp,8), %edx
	movl	(%eax,%edi,8), %ebp
	xorl	%ebp, 8(%esp)
	movzbl	24(%esp), %edi
	movl	16(%esp), %ebp
	xorl	%edx, 52(%esp)
	movl	200(%esp), %edx
	xorl	%edx, 8(%esp)
	movl	20(%esp), %edx
	movl	0(%ebp,%edi,8), %ebp
	xorl	%ebp, 8(%esp)
	movl	16(%esp), %ebp
	movl	(%edx,%ebx,8), %edx
	movl	%esi, %ebx
	andl	$255, %ebx
	xorl	%edx, 8(%esp)
	movl	%esi, %edx
	movzbl	0(%ebp,%ebx,8), %edi
	movzbl	%dh, %ebx
	movl	44(%esp), %ebp
	movl	12(%esp), %edx
	movzwl	0(%ebp,%ebx,8), %ebx
	movl	16(%esp), %ebp
	movl	%ebx, 24(%esp)
	movl	%esi, %ebx
	shrl	$13, %ebx
	andl	$2040, %ebx
	movl	(%eax,%ebx), %ebx
	shrl	$24, %esi
	andl	$16711680, %ebx
	movl	%ebx, 4(%esp)
	movl	(%edx,%esi,8), %ebx
	movzbl	%cl, %esi
	movzbl	0(%ebp,%esi,8), %esi
	xorl	208(%esp), %esi
	movl	44(%esp), %edx
	andl	$-16777216, %ebx
	movl	12(%esp), %ebp
	xorl	%ebx, %esi
	movzbl	%ch, %ebx
	movzwl	(%edx,%ebx,8), %ebx
	movl	16(%esp), %edx
	xorl	%ebx, %edi
	movl	%ecx, %ebx
	shrl	$24, %ecx
	movl	0(%ebp,%ecx,8), %ecx
	shrl	$13, %ebx
	movzbl	52(%esp), %ebp
	andl	$2040, %ebx
	xorl	204(%esp), %edi
	movl	(%eax,%ebx), %ebx
	andl	$-16777216, %ecx
	movzbl	(%edx,%ebp,8), %ebp
	movl	52(%esp), %edx
	xorl	%ebp, %ecx
	movzbl	%dh, %ebp
	movl	44(%esp), %edx
	xorl	212(%esp), %ecx
	xorl	4(%esp), %ecx
	movzwl	(%edx,%ebp,8), %ebp
	movl	52(%esp), %edx
	xorl	%ebp, %esi
	movl	52(%esp), %ebp
	shrl	$13, %ebp
	andl	$16711680, %ebx
	andl	$2040, %ebp
	movl	(%eax,%ebp), %ebp
	shrl	$24, %edx
	andl	$16711680, %ebp
	xorl	%ebp, %edi
	movl	12(%esp), %ebp
	movl	0(%ebp,%edx,8), %edx
	movl	%edx, 28(%esp)
	movzbl	8(%esp), %edx
	movl	16(%esp), %ebp
	andl	$-16777216, 28(%esp)
	movzbl	0(%ebp,%edx,8), %ebp
	movl	8(%esp), %edx
	xorl	%ebp, %ebx
	movl	44(%esp), %ebp
	movzbl	%dh, %edx
	movl	%edx, 4(%esp)
	xorl	220(%esp), %ebx
	movzwl	0(%ebp,%edx,8), %ebp
	movl	8(%esp), %edx
	xorl	24(%esp), %ebx
	xorl	28(%esp), %ebx
	xorl	%ebp, %ecx
	movl	12(%esp), %ebp
	shrl	$13, %edx
	andl	$2040, %edx
	movl	(%eax,%edx), %edx
	andl	$16711680, %edx
	xorl	%edx, %esi
	movl	8(%esp), %edx
	shrl	$24, %edx
	movl	0(%ebp,%edx,8), %edx
	andl	$-16777216, %edx
	xorl	%edx, %edi
	cmpl	$15, 48(%esp)
	jbe	.L10
.L6:
	movl	36(%esp), %ebp
	movl	40(%esp), %edx
	addl	$1, 56(%esp)
	xorl	0(%ebp), %edi
	xorl	4(%ebp), %esi
	xorl	8(%ebp), %ecx
	xorl	12(%ebp), %ebx
	addl	$16, %ebp
	movl	%edi, (%edx)
	movl	%esi, 4(%edx)
	movl	%ecx, 8(%edx)
	movl	%ebx, 12(%edx)
	addl	$16, %edx
	movl	%edx, 40(%esp)
	movl	48(%esp), %edx
	movl	%ebp, 36(%esp)
	subl	$16, %edx
	jne	.L8
.L5:
	movl	308(%esp), %ecx
	movl	56(%esp), %ebx
	movl	272(%esp), %esi
	movl	276(%esp), %edi
	movl	280(%esp), %ebp
	movl	%ebx, 56(%ecx)
	movl	%esi, 60(%ecx)
	movl	%edi, 64(%ecx)
	movl	%ebp, 68(%ecx)
.L1:
	addl	$284, %esp
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
	movl	36(%esp), %edx
	movl	40(%esp), %ebp
	movzbl	(%edx), %eax
	xorl	%edi, %eax
	cmpl	$1, 48(%esp)
	movb	%al, 0(%ebp)
	jbe	.L4
	movl	%edx, %ebp
	movl	%edi, %edx
	movzbl	1(%ebp), %eax
	shrl	$8, %edx
	xorl	%edx, %eax
	movl	40(%esp), %edx
	cmpl	$2, 48(%esp)
	movb	%al, 1(%edx)
	je	.L4
	movzbl	2(%ebp), %eax
	movl	%edi, %edx
	shrl	$16, %edx
	movl	40(%esp), %ebp
	xorl	%edx, %eax
	cmpl	$3, 48(%esp)
	movb	%al, 2(%ebp)
	je	.L4
	movl	36(%esp), %eax
	movzbl	3(%eax), %edx
	movl	%edi, %eax
	shrl	$24, %eax
	xorl	%edx, %eax
	cmpl	$4, 48(%esp)
	movb	%al, 3(%ebp)
	je	.L4
	movl	36(%esp), %edx
	movzbl	4(%edx), %eax
	xorl	%esi, %eax
	cmpl	$5, 48(%esp)
	movb	%al, 4(%ebp)
	je	.L4
	movl	%edx, %edi
	movl	%esi, %edx
	movzbl	5(%edi), %eax
	shrl	$8, %edx
	xorl	%edx, %eax
	cmpl	$6, 48(%esp)
	movb	%al, 5(%ebp)
	je	.L4
	movzbl	6(%edi), %eax
	movl	%esi, %edx
	shrl	$16, %edx
	xorl	%edx, %eax
	cmpl	$7, 48(%esp)
	movb	%al, 6(%ebp)
	je	.L4
	movzbl	7(%edi), %edx
	movl	%esi, %eax
	shrl	$24, %eax
	xorl	%edx, %eax
	cmpl	$8, 48(%esp)
	movb	%al, 7(%ebp)
	je	.L4
	movzbl	8(%edi), %eax
	xorl	%ecx, %eax
	cmpl	$9, 48(%esp)
	movb	%al, 8(%ebp)
	je	.L4
	movzbl	9(%edi), %eax
	movl	%ecx, %edx
	shrl	$8, %edx
	xorl	%edx, %eax
	cmpl	$10, 48(%esp)
	movb	%al, 9(%ebp)
	je	.L4
	movzbl	10(%edi), %eax
	movl	%ecx, %edx
	shrl	$16, %edx
	xorl	%edx, %eax
	cmpl	$11, 48(%esp)
	movb	%al, 10(%ebp)
	je	.L4
	movzbl	11(%edi), %eax
	shrl	$24, %ecx
	xorl	%eax, %ecx
	cmpl	$12, 48(%esp)
	movb	%cl, 11(%ebp)
	je	.L4
	movzbl	12(%edi), %eax
	xorl	%ebx, %eax
	cmpl	$13, 48(%esp)
	movb	%al, 12(%ebp)
	je	.L4
	movzbl	13(%edi), %eax
	movl	%ebx, %edx
	shrl	$8, %edx
	xorl	%edx, %eax
	cmpl	$15, 48(%esp)
	movb	%al, 13(%ebp)
	jne	.L4
	movzbl	14(%edi), %eax
	shrl	$16, %ebx
	xorl	%ebx, %eax
	movb	%al, 14(%ebp)
	.p2align 4,,7
	.p2align 3
.L4:
	addl	$1, 56(%esp)
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	aes_table2, %edi
	movl	40(%esp), %edx
	movl	36(%esp), %ebx
	movl	8(%edx), %ecx
	movl	(%edx), %eax
	movl	4(%edx), %esi
	movl	12(%edx), %edx
	movl	%ecx, (%esp)
	movl	%ecx, 8(%ebx)
	movl	%eax, (%ebx)
	xorl	$1, %eax
	movzbl	%dh, %ecx
	movl	%edx, %ebp
	movl	%esi, 4(%ebx)
	roll	$16, %ebp
	movl	%edx, 12(%ebx)
	movzbl	(%edi,%ecx,8), %ecx
	movzbl	%dl, %ebx
	movl	%ebp, 8(%esp)
	movzbl	8(%esp), %edi
	movl	%ecx, 12(%esp)
	movl	aes_table1, %ecx
	movl	(%ecx,%ebx,8), %ebx
	movl	%ebp, %ecx
	movl	aes_table0, %ebp
	movzbl	%ch, %ecx
	andl	$-16777216, %ebx
	movl	0(%ebp,%ecx,8), %ecx
	xorl	%ebx, %eax
	movl	aes_tablex, %ebp
	xorl	12(%esp), %eax
	andl	$16711680, %ecx
	movzwl	0(%ebp,%edi,8), %ebx
	xorl	%ebx, %eax
	movl	(%esp), %ebx
	xorl	%ecx, %eax
	movl	36(%esp), %ecx
	xorl	%eax, %esi
	movl	%esi, 8(%esp)
	xorl	%esi, %ebx
	movl	aes_table2, %esi
	xorl	%ebx, %edx
	movl	%eax, 16(%ecx)
	movzbl	%dh, %ecx
	movl	%edx, %ebp
	movl	%ebx, (%esp)
	movzbl	%dl, %ebx
	xorl	$2, %eax
	movzbl	(%esi,%ecx,8), %ecx
	roll	$16, %ebp
	movl	%ecx, 12(%esp)
	movl	aes_table1, %edi
	movl	%ebp, %ecx
	movl	aes_tablex, %esi
	andl	$255, %ebp
	movzbl	%ch, %ecx
	movl	(%edi,%ebx,8), %ebx
	movl	aes_table0, %edi
	andl	$-16777216, %ebx
	movl	(%edi,%ecx,8), %ecx
	xorl	%ebx, %eax
	movzwl	(%esi,%ebp,8), %ebx
	xorl	12(%esp), %eax
	movl	8(%esp), %ebp
	andl	$16711680, %ecx
	movl	36(%esp), %edi
	xorl	%ebx, %eax
	movl	aes_table2, %ebx
	xorl	%ecx, %eax
	movl	(%esp), %ecx
	xorl	%eax, %ebp
	movl	aes_table1, %esi
	movl	%eax, 20(%edi)
	movl	aes_table0, %edi
	xorl	$4, %eax
	movl	%ebp, 8(%esp)
	xorl	%ebp, %ecx
	xorl	%ecx, %edx
	movl	%ecx, (%esp)
	movzbl	%dh, %ecx
	movl	%edx, %ebp
	movzbl	(%ebx,%ecx,8), %ecx
	movzbl	%dl, %ebx
	movl	(%esi,%ebx,8), %ebx
	roll	$16, %ebp
	movl	aes_tablex, %esi
	movl	%ecx, 12(%esp)
	movl	%ebp, %ecx
	andl	$255, %ebp
	andl	$-16777216, %ebx
	movzbl	%ch, %ecx
	movl	(%edi,%ecx,8), %ecx
	xorl	%ebx, %eax
	movzwl	(%esi,%ebp,8), %ebx
	xorl	12(%esp), %eax
	movl	8(%esp), %ebp
	andl	$16711680, %ecx
	movl	36(%esp), %edi
	xorl	%ebx, %eax
	movl	aes_table2, %ebx
	xorl	%ecx, %eax
	movl	(%esp), %ecx
	xorl	%eax, %ebp
	movl	aes_table1, %esi
	movl	%eax, 24(%edi)
	movl	aes_table0, %edi
	xorl	$8, %eax
	movl	%ebp, 8(%esp)
	xorl	%ebp, %ecx
	xorl	%ecx, %edx
	movl	%ecx, (%esp)
	movzbl	%dh, %ecx
	movl	%edx, %ebp
	movzbl	(%ebx,%ecx,8), %ecx
	movzbl	%dl, %ebx
	movl	(%esi,%ebx,8), %ebx
	roll	$16, %ebp
	movl	aes_tablex, %esi
	movl	%ecx, 12(%esp)
	movl	%ebp, %ecx
	andl	$255, %ebp
	andl	$-16777216, %ebx
	movzbl	%ch, %ecx
	movl	(%edi,%ecx,8), %ecx
	xorl	%ebx, %eax
	movzwl	(%esi,%ebp,8), %ebx
	xorl	12(%esp), %eax
	movl	36(%esp), %edi
	andl	$16711680, %ecx
	xorl	%ebx, %eax
	xorl	%ecx, %eax
	movl	%eax, 28(%edi)
	movl	8(%esp), %ebp
	movl	(%esp), %ecx
	movl	aes_table2, %ebx
	movl	aes_table1, %esi
	xorl	%eax, %ebp
	movl	aes_table0, %edi
	xorl	$16, %eax
	xorl	%ebp, %ecx
	xorl	%ecx, %edx
	movl	%ecx, (%esp)
	movzbl	%dh, %ecx
	movzbl	(%ebx,%ecx,8), %ecx
	movzbl	%dl, %ebx
	movl	(%esi,%ebx,8), %ebx
	movl	%ebp, 8(%esp)
	movl	aes_tablex, %esi
	movl	%edx, %ebp
	roll	$16, %ebp
	movl	%ecx, 12(%esp)
	movl	%ebp, %ecx
	andl	$255, %ebp
	andl	$-16777216, %ebx
	movzbl	%ch, %ecx
	movl	(%edi,%ecx,8), %ecx
	xorl	%ebx, %eax
	movzwl	(%esi,%ebp,8), %ebx
	xorl	12(%esp), %eax
	movl	8(%esp), %ebp
	andl	$16711680, %ecx
	movl	36(%esp), %edi
	xorl	%ebx, %eax
	movl	aes_table2, %ebx
	xorl	%ecx, %eax
	movl	(%esp), %ecx
	xorl	%eax, %ebp
	movl	aes_table1, %esi
	movl	%ebp, 8(%esp)
	movl	%eax, 32(%edi)
	movl	aes_table0, %edi
	xorl	%ebp, %ecx
	xorl	%ecx, %edx
	movl	%ecx, (%esp)
	movl	%edx, %ebp
	movzbl	%dh, %ecx
	roll	$16, %ebp
	movzbl	(%ebx,%ecx,8), %ecx
	movzbl	%dl, %ebx
	movl	(%esi,%ebx,8), %ebx
	xorl	$32, %eax
	movl	aes_tablex, %esi
	movl	%ecx, 12(%esp)
	movl	%ebp, %ecx
	andl	$255, %ebp
	andl	$-16777216, %ebx
	movzbl	%ch, %ecx
	movl	(%edi,%ecx,8), %ecx
	xorl	%ebx, %eax
	movzwl	(%esi,%ebp,8), %ebx
	xorl	12(%esp), %eax
	movl	8(%esp), %ebp
	movl	36(%esp), %edi
	andl	$16711680, %ecx
	xorl	%ebx, %eax
	xorl	%ecx, %eax
	xorl	%eax, %ebp
	movl	%eax, 36(%edi)
	xorl	$64, %eax
	movl	%ebp, 8(%esp)
	movl	(%esp), %ecx
	movl	aes_table2, %ebx
	movl	aes_table1, %esi
	movl	aes_table0, %edi
	xorl	%ebp, %ecx
	xorl	%ecx, %edx
	movl	%ecx, (%esp)
	movzbl	%dh, %ecx
	movl	%edx, %ebp
	movzbl	(%ebx,%ecx,8), %ecx
	movzbl	%dl, %ebx
	movl	(%esi,%ebx,8), %ebx
	roll	$16, %ebp
	movl	aes_tablex, %esi
	movl	%ecx, 12(%esp)
	movl	%ebp, %ecx
	andl	$255, %ebp
	andl	$-16777216, %ebx
	movzbl	%ch, %ecx
	movl	(%edi,%ecx,8), %ecx
	xorl	%ebx, %eax
	movzwl	(%esi,%ebp,8), %ebx
	xorl	12(%esp), %eax
	movl	8(%esp), %ebp
	andl	$16711680, %ecx
	movl	36(%esp), %edi
	xorl	%ebx, %eax
	movl	aes_table2, %ebx
	xorl	%ecx, %eax
	movl	(%esp), %ecx
	xorl	%eax, %ebp
	movl	aes_table1, %esi
	movl	%eax, 40(%edi)
	movl	aes_table0, %edi
	xorb	$-128, %al
	movl	%ebp, 8(%esp)
	xorl	%ebp, %ecx
	xorl	%ecx, %edx
	movl	%ecx, (%esp)
	movzbl	%dh, %ecx
	movl	%edx, %ebp
	movzbl	(%ebx,%ecx,8), %ecx
	movzbl	%dl, %ebx
	movl	(%esi,%ebx,8), %ebx
	roll	$16, %ebp
	movl	aes_tablex, %esi
	movl	%ecx, 12(%esp)
	movl	%ebp, %ecx
	andl	$255, %ebp
	andl	$-16777216, %ebx
	movzbl	%ch, %ecx
	movl	(%edi,%ecx,8), %ecx
	xorl	%ebx, %eax
	movzwl	(%esi,%ebp,8), %ebx
	xorl	12(%esp), %eax
	movl	8(%esp), %ebp
	movl	36(%esp), %edi
	xorl	%ebx, %eax
	andl	$16711680, %ecx
	xorl	%ecx, %eax
	movl	(%esp), %ecx
	xorl	%eax, %ebp
	movl	%eax, 44(%edi)
	xorl	$27, %eax
	movl	%ebp, 8(%esp)
	xorl	%ebp, %ecx
	movl	%ecx, (%esp)
	movl	aes_table2, %ebx
	xorl	%ecx, %edx
	movl	aes_table1, %esi
	movzbl	%dh, %ecx
	movl	%edx, %ebp
	movl	aes_table0, %edi
	roll	$16, %ebp
	movzbl	(%ebx,%ecx,8), %ecx
	movzbl	%dl, %ebx
	movl	(%esi,%ebx,8), %ebx
	movl	aes_tablex, %esi
	movl	%ecx, 12(%esp)
	movl	%ebp, %ecx
	andl	$255, %ebp
	andl	$-16777216, %ebx
	movzbl	%ch, %ecx
	movl	(%edi,%ecx,8), %ecx
	xorl	%ebx, %eax
	movzwl	(%esi,%ebp,8), %ebx
	xorl	12(%esp), %eax
	movl	8(%esp), %esi
	movl	36(%esp), %edi
	andl	$16711680, %ecx
	xorl	(%esp), %esi
	xorl	%ebx, %eax
	xorl	%ecx, %eax
	movl	aes_table2, %ebx
	movl	aes_table0, %ebp
	xorl	%edx, %esi
	movl	%eax, 48(%edi)
	xorl	%eax, %esi
	movl	aes_table1, %edi
	movl	%esi, %ecx
	xorl	$54, %eax
	movzbl	%ch, %edx
	movzbl	(%ebx,%edx,8), %ecx
	movl	%esi, %edx
	andl	$255, %esi
	movl	(%edi,%esi,8), %ebx
	roll	$16, %edx
	movzbl	%dh, %esi
	andl	$255, %edx
	movl	0(%ebp,%esi,8), %esi
	andl	$-16777216, %ebx
	xorl	%ebx, %eax
	movl	36(%esp), %ebx
	xorl	%ecx, %eax
	movl	aes_tablex, %ecx
	andl	$16711680, %esi
	movzwl	(%ecx,%edx,8), %edx
	xorl	%edx, %eax
	xorl	%esi, %eax
	movl	%eax, 52(%ebx)
	addl	$16, %esp
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
