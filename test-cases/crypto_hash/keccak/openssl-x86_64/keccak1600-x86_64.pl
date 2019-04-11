#!/usr/bin/env perl
# Copyright 2017-2018 The OpenSSL Project Authors. All Rights Reserved.
#
# Licensed under the OpenSSL license (the "License").  You may not use
# this file except in compliance with the License.  You can obtain a copy
# in the file LICENSE in the source distribution or at
# https://www.openssl.org/source/license.html
#
# ====================================================================
# Written by Andy Polyakov <appro@openssl.org> for the OpenSSL
# project. The module is, however, dual licensed under OpenSSL and
# CRYPTOGAMS licenses depending on where you obtain it. For further
# details see http://www.openssl.org/~appro/cryptogams/.
# ====================================================================

# some changes were made to original code for the extraction to be compatible
# with the tool

my @A = map {my $i=$_; [map {"[$i]".$_} (map {"[$_]"} (0..4))] } (0..4);
my @C = ("C[0]","C[1]","C[2]","C[3]","C[4]");
my @D = ("D[0]","D[1]","D[2]","D[3]","D[4]");
my @T = ("T[0]","T[1]");
my $iotas = "iotas";

my @rhotates = ([  0,  1, 62, 28, 27 ],
                [ 36, 44,  6, 55, 20 ],
                [  3, 10, 43, 25, 39 ],
                [ 41, 45, 15, 21,  8 ],
                [ 18,  2, 61, 56, 14 ]);

$code.=<<___;
int64 A
int64 R
int64 C
int64 D
int64 T
int64 iotas

enter __KeccakF1600
	mov	$A[4][0](%rdi),@C[0]
	mov	$A[4][1](%rdi),@C[1]
	mov	$A[4][2](%rdi),@C[2]
	mov	$A[4][3](%rdi),@C[3]
	mov	$A[4][4](%rdi),@C[4]
	jmp	.Loop

.align	32
.Loop:
	mov	$A[0][0](%rdi),@D[0]
	mov	$A[1][1](%rdi),@D[1]
	mov	$A[2][2](%rdi),@D[2]
	mov	$A[3][3](%rdi),@D[3]

	xor	$A[0][2](%rdi),@C[2]
	xor	$A[0][3](%rdi),@C[3]
	xor	@D[0],         @C[0]
	xor	$A[0][1](%rdi),@C[1]
	 xor	$A[1][2](%rdi),@C[2]
	 xor	$A[1][0](%rdi),@C[0]
	mov	@C[4],@D[4]
	xor	$A[0][4](%rdi),@C[4]

	xor	@D[2],         @C[2]
	xor	$A[2][0](%rdi),@C[0]
	 xor	$A[1][3](%rdi),@C[3]
	 xor	@D[1],         @C[1]
	 xor	$A[1][4](%rdi),@C[4]

	xor	$A[3][2](%rdi),@C[2]
	xor	$A[3][0](%rdi),@C[0]
	 xor	$A[2][3](%rdi),@C[3]
	 xor	$A[2][1](%rdi),@C[1]
	 xor	$A[2][4](%rdi),@C[4]

	mov	@C[2],@T[0]
	rol	\$1,@C[2]
  # D[1] = ROL64(C[2], 1) ^ C[0]
	xor	@C[0],@C[2]
	 xor	@D[3],         @C[3]

	rol	\$1,@C[0]
  # D[4] = ROL64(C[0], 1) ^ C[3]
	xor	@C[3],@C[0]
	 xor	$A[3][1](%rdi),@C[1]

	rol	\$1,@C[3]
	# D[2] = ROL64(C[3], 1) ^ C[1]
	xor	@C[1],@C[3]
	 xor	$A[3][4](%rdi),@C[4]

	rol	\$1,@C[1]
  # D[0] = ROL64(C[1], 1) ^ C[4]
	xor	@C[4],@C[1]

	rol	\$1,@C[4]
  # D[3] = ROL64(C[4], 1) ^ C[2]
	xor	@T[0],@C[4]
___



	(@D[0..4], @C) = (@C[1..4,0], @D);



$code.=<<___;
	xor	@D[1],@C[1]
	xor	@D[2],@C[2]
	rol	\$$rhotates[1][1],@C[1]
	xor	@D[3],@C[3]
	xor	@D[4],@C[4]
	rol	\$$rhotates[2][2],@C[2]
	xor	@D[0],@C[0]
	 mov	@C[1],@T[0]
	rol	\$$rhotates[3][3],@C[3]
	 or	@C[2],@C[1]
  #           C[0] ^ ( C[1] | C[2])
	 xor	@C[0],@C[1]
	rol	\$$rhotates[4][4],@C[4]

	 xor	($iotas),@C[1]
	 lea	8($iotas),$iotas

	mov	@C[4],@T[1]
	and	@C[3],@C[4]
  # R[0][0] = C[0] ^ ( C[1] | C[2]) ^ iotas[i]
	 mov	@C[1],$A[0][0](%rsi)
  #           C[2] ^ ( C[4] & C[3])
	xor	@C[2],@C[4]
	not	@C[2]
  # R[0][2] = C[2] ^ ( C[4] & C[3])
	mov	@C[4],$A[0][2](%rsi)

	or	@C[3],@C[2]
	  mov	$A[4][2](%rdi),@C[4]
  #           C[1] ^ (~C[2] | C[3])
	xor	@T[0],@C[2]
  # R[0][1] = C[1] ^ (~C[2] | C[3])
	mov	@C[2],$A[0][1](%rsi)

	and	@C[0],@T[0]
	  mov	$A[1][4](%rdi),@C[1]
  #           C[4] ^ ( C[1] & C[0])
	xor	@T[1],@T[0]
	  mov	$A[2][0](%rdi),@C[2]
  # R[0][4] = C[4] ^ ( C[1] & C[0])
	mov	@T[0],$A[0][4](%rsi)

	or	@C[0],@T[1]
	  mov	$A[0][3](%rdi),@C[0]
  #           C[3] ^ ( C[4] | C[0])
	xor	@C[3],@T[1]
	  mov	$A[3][1](%rdi),@C[3]
  # R[0][3] = C[3] ^ ( C[4] | C[0])
	mov	@T[1],$A[0][3](%rsi)


	xor	@D[3],@C[0]
	xor	@D[2],@C[4]
	rol	\$$rhotates[0][3],@C[0]
	xor	@D[1],@C[3]
	xor	@D[4],@C[1]
	rol	\$$rhotates[4][2],@C[4]
	rol	\$$rhotates[3][1],@C[3]
	xor	@D[0],@C[2]
	rol	\$$rhotates[1][4],@C[1]
	 mov	@C[0],@T[0]
	 or	@C[4],@C[0]
	rol	\$$rhotates[2][0],@C[2]

  #           C[3] ^ (C[0] |  C[4])
	xor	@C[3],@C[0]
  # R[1][3] = C[3] ^ (C[0] |  C[4])
	mov	@C[0],$A[1][3](%rsi)

	mov	@C[1],@T[1]
	and	@T[0],@C[1]
	  mov	$A[0][1](%rdi),@C[0]
  #           C[4] ^ (C[1] &  C[0])
	xor	@C[4],@C[1]
	not	@C[4]
  # R[1][4] = C[4] ^ (C[1] &  C[0])
	mov	@C[1],$A[1][4](%rsi)

	or	@C[3],@C[4]
	  mov	$A[1][2](%rdi),@C[1]
  #           C[2] ^ (~C[4] | C[3])
	xor	@C[2],@C[4]
  # R[1][2] = C[2] ^ (~C[4] | C[3])
	mov	@C[4],$A[1][2](%rsi)

	and	@C[2],@C[3]
	  mov	$A[4][0](%rdi),@C[4]
  #           C[1] ^ (C[3] &  C[2])
	xor	@T[1],@C[3]
  # R[1][1] = C[1] ^ (C[3] &  C[2])
	mov	@C[3],$A[1][1](%rsi)

	or	@C[2],@T[1]
	  mov	$A[2][3](%rdi),@C[2]
  #           C[0] ^ (C[1] |  C[2])
	xor	@T[0],@T[1]
	  mov	$A[3][4](%rdi),@C[3]
  # R[1][0] = C[0] ^ (C[1] |  C[2])
	mov	@T[1],$A[1][0](%rsi)


	xor	@D[3],@C[2]
	xor	@D[4],@C[3]
	rol	\$$rhotates[2][3],@C[2]
	xor	@D[2],@C[1]
	rol	\$$rhotates[3][4],@C[3]
	xor	@D[0],@C[4]
	rol	\$$rhotates[1][2],@C[1]
	xor	@D[1],@C[0]
	rol	\$$rhotates[4][0],@C[4]
	 mov	@C[2],@T[0]
	 and	@C[3],@C[2]
	rol	\$$rhotates[0][1],@C[0]

	not	@C[3]
  #            C[1] ^ ( C[2] & C[3])
	xor	@C[1],@C[2]
  # R[2][1] =  C[1] ^ ( C[2] & C[3])
	mov	@C[2],$A[2][1](%rsi)

	mov	@C[4],@T[1]
	and	@C[3],@C[4]
	  mov	$A[2][1](%rdi),@C[2]
  #            C[2] ^ ( C[4] & ~C[3])
	xor	@T[0],@C[4]
  # R[2][2] =  C[2] ^ ( C[4] & ~C[3])
	mov	@C[4],$A[2][2](%rsi)

	or	@C[1],@T[0]
	  mov	$A[4][3](%rdi),@C[4]
  #            C[0] ^ ( C[2] | C[1])
	xor	@C[0],@T[0]
  # R[2][0] =  C[0] ^ ( C[2] | C[1])
	mov	@T[0],$A[2][0](%rsi)

	and	@C[0],@C[1]
  #            C[4] ^ ( C[1] & C[0])
	xor	@T[1],@C[1]
  # R[2][4] =  C[4] ^ ( C[1] & C[0])
	mov	@C[1],$A[2][4](%rsi)

	or	@C[0],@T[1]
	  mov	$A[1][0](%rdi),@C[1]
  #           ~C[3] ^ ( C[0] | C[4])
	xor	@C[3],@T[1]
	  mov	$A[3][2](%rdi),@C[3]
  #           ~C[3] ^ ( C[0] | C[4])
	mov	@T[1],$A[2][3](%rsi)


	mov	$A[0][4](%rdi),@C[0]

	xor	@D[1],@C[2]
	xor	@D[2],@C[3]
	rol	\$$rhotates[2][1],@C[2]
	xor	@D[0],@C[1]
	rol	\$$rhotates[3][2],@C[3]
	xor	@D[3],@C[4]
	rol	\$$rhotates[1][0],@C[1]
	xor	@D[4],@C[0]
	rol	\$$rhotates[4][3],@C[4]
	 mov	@C[2],@T[0]
	 or	@C[3],@C[2]
	rol	\$$rhotates[0][4],@C[0]

	not	@C[3]
  #            C[1] ^ ( C[2] | C[3])
	xor	@C[1],@C[2]
  # R[3][1] =  C[1] ^ ( C[2] | C[3])
	mov	@C[2],$A[3][1](%rsi)

	mov	@C[4],@T[1]
	or	@C[3],@C[4]
  #            C[2] ^ ( C[4] | ~C[3])
	xor	@T[0],@C[4]
  # R[3][2] =  C[2] ^ ( C[4] | ~C[3])
	mov	@C[4],$A[3][2](%rsi)

	and	@C[1],@T[0]
  #            C[0] ^ ( C[2] & C[1])
	xor	@C[0],@T[0]
  # R[3][0] =  C[0] ^ ( C[2] & C[1])
	mov	@T[0],$A[3][0](%rsi)

	or	@C[0],@C[1]
  #            C[4] ^ ( C[1] | C[0])
	xor	@T[1],@C[1]
  # R[3][4] =  C[4] ^ ( C[1] | C[0])
	mov	@C[1],$A[3][4](%rsi)

	and	@T[1],@C[0]
  #           ~C[3] ^ ( C[0] & C[4])
	xor	@C[3],@C[0]
  # R[3][3] = ~C[3] ^ ( C[0] & C[4])
	mov	@C[0],$A[3][3](%rsi)


	xor	$A[0][2](%rdi),@D[2]
	xor	$A[1][3](%rdi),@D[3]
	rol	\$$rhotates[0][2],@D[2]
	xor	$A[4][1](%rdi),@D[1]
	rol	\$$rhotates[1][3],@D[3]
	xor	$A[2][4](%rdi),@D[4]
	rol	\$$rhotates[4][1],@D[1]
	xor	$A[3][0](%rdi),@D[0]
	xchg	%rsi,%rdi
	rol	\$$rhotates[2][4],@D[4]
	rol	\$$rhotates[3][0],@D[0]
___



	@C = @D[2..4,0,1];



$code.=<<___;
	mov	@C[0],@T[0]
	and	@C[1],@C[0]
	not	@C[1]
  #            C[4] ^ ( C[0] & C[1])
	xor	@C[4],@C[0]
  # R[4][4] =  C[4] ^ ( C[0] & C[1])
	mov	@C[0],$A[4][4](%rdi)

	mov	@C[2],@T[1]
	and	@C[1],@C[2]
  #            C[0] ^ ( C[2] & ~C[1])
	xor	@T[0],@C[2]
  # R[4][0] =  C[0] ^ ( C[2] & ~C[1])
	mov	@C[2],$A[4][0](%rdi)

	or	@C[4],@T[0]
  #            C[3] ^ ( C[0] | C[4])
	xor	@C[3],@T[0]
  # R[4][3] =  C[3] ^ ( C[0] | C[4])
	mov	@T[0],$A[4][3](%rdi)

	and	@C[3],@C[4]
  #            C[2] ^ ( C[4] & C[3])
	xor	@T[1],@C[4]
  # R[4][2] =  C[2] ^ ( C[4] & C[3])
	mov	@C[4],$A[4][2](%rdi)

	or	@T[1],@C[3]
  #           ~C[1] ^ ( C[2] | C[3])
	xor	@C[1],@C[3]
  # R[4][1] = ~C[1] ^ ( C[2] | C[3])
	mov	@C[3],$A[4][1](%rdi)

  # harmonize with the loop top
	mov	@C[0],@C[1]
	mov	@T[0],@C[0]

	test	\$255,$iotas
	jnz	.Loop

  # rewind iotas
	lea	-192($iotas),$iotas
leave
___


#$code.=<<___;
#enter KeccakF1600
#	push	%rbx
#	push	%rbp
#	push	%r12
#	push	%r13
#	push	%r14
#	push	%r15

#	lea	100(%rdi),%rdi		# size optimization
#	sub	\$200,%rsp
#.cfi_adjust_cfa_offset	200

#	notq	$A[0][1](%rdi)
#	notq	$A[0][2](%rdi)
#	notq	$A[1][3](%rdi)
#	notq	$A[2][2](%rdi)
#	notq	$A[3][2](%rdi)
#	notq	$A[4][0](%rdi)

#	lea	iotas(%rip),$iotas
#	lea	100(%rsp),%rsi		# size optimization

#	call	__KeccakF1600

#	notq	$A[0][1](%rdi)
#	notq	$A[0][2](%rdi)
#	notq	$A[1][3](%rdi)
#	notq	$A[2][2](%rdi)
#	notq	$A[3][2](%rdi)
#	notq	$A[4][0](%rdi)
#	lea	-100(%rdi),%rdi		# preserve A[][]

#	add	\$200,%rsp

#	pop	%r15
#	pop	%r14
#	pop	%r13
#	pop	%r12
#	pop	%rbp
#	pop	%rbx
#leave
#___

$code =~ s/%rdi/A/g; ## replace rdi by A
$code =~ s/%rsi/R/g; ## replace rsi by R

print $code, "\n\n";
