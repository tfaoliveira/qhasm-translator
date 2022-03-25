	.att_syntax
	.text
	.p2align	5
	.globl	_update_asm
	.globl	update_asm
_update_asm:
update_asm:
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	shrq	$1, %rsi
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	addq	%rdx, %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	shrdq	$1, %rcx, %rax
	shrdq	$1, %rsi, %rcx
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	ret 
