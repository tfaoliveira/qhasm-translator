
# qhasm: int64 a

# qhasm: int64 b

# qhasm: int64 c

# qhasm: int64 d

# qhasm: int64 e

# qhasm: int64 A

# qhasm: int64 B

# qhasm: int64 C

# qhasm: int64 D

# qhasm: int64 E

# qhasm: int64 r

# qhasm: int64 s

# qhasm: int64 t

# qhasm: int64 u

# qhasm: int64 v

# qhasm: int64 R

# qhasm: int64 S

# qhasm: int64 T

# qhasm: int64 U

# qhasm: int64 V

# qhasm: int64 arg1

# qhasm: int64 arg2

# qhasm: int64 arg3

# qhasm: int64 arg4

# qhasm: input arg1

# qhasm: input arg2

# qhasm: input arg3

# qhasm: input arg4

# qhasm: int64 r11

# qhasm: int64 r12

# qhasm: int64 r13

# qhasm: int64 r14

# qhasm: int64 r15

# qhasm: int64 rbx

# qhasm: int64 rbp

# qhasm: caller r11

# qhasm: caller r12

# qhasm: caller r13

# qhasm: caller r14

# qhasm: caller r15

# qhasm: caller rbx

# qhasm: caller rbp

# qhasm: stack64 r11_stack

# qhasm: stack64 r12_stack

# qhasm: stack64 r13_stack

# qhasm: stack64 r14_stack

# qhasm: stack64 r15_stack

# qhasm: stack64 rbx_stack

# qhasm: stack64 rbp_stack

# qhasm: int64 k

# qhasm: int64 kbits

# qhasm: int64 iv

# qhasm: int64 i

# qhasm: stack64 x_backup

# qhasm: int64 x

# qhasm: stack64 m_backup

# qhasm: int64 m

# qhasm: stack64 out_backup

# qhasm: int64 out

# qhasm: stack64 bytes_backup

# qhasm: int64 bytes

# qhasm: int64 in0

# qhasm: int64 in2

# qhasm: int64 in4

# qhasm: int64 in6

# qhasm: int64 in8

# qhasm: int64 in10

# qhasm: int64 in12

# qhasm: int64 in14

# qhasm: int64 out0

# qhasm: int64 out2

# qhasm: int64 out4

# qhasm: int64 out6

# qhasm: int64 out8

# qhasm: int64 out10

# qhasm: int64 out12

# qhasm: int64 out14

# qhasm: stack64 x0

# qhasm: stack64 x1

# qhasm: stack64 x2

# qhasm: stack64 x3

# qhasm: stack64 x4

# qhasm: stack64 x5

# qhasm: stack64 x6

# qhasm: stack64 x7

# qhasm: stack64 x8

# qhasm: stack64 x9

# qhasm: stack64 x10

# qhasm: stack64 x11

# qhasm: stack64 x12

# qhasm: stack64 x13

# qhasm: stack64 x14

# qhasm: stack64 x15

# qhasm: stack64 j0

# qhasm: stack64 j2

# qhasm: stack64 j4

# qhasm: stack64 j6

# qhasm: stack64 j8

# qhasm: stack64 j10

# qhasm: stack64 j12

# qhasm: stack64 j14

# qhasm: stack512 tmp

# qhasm: int64 ctarget

# qhasm: enter ECRYPT_keysetup
.text
.p2align 5
.globl _ECRYPT_keysetup
.globl ECRYPT_keysetup
_ECRYPT_keysetup:
ECRYPT_keysetup:
mov %rsp,%r11
and $31,%r11
add $0,%r11
sub %r11,%rsp

# qhasm:   k = arg2
# asm 1: mov  <arg2=int64#2,>k=int64#2
# asm 2: mov  <arg2=%rsi,>k=%rsi
mov  %rsi,%rsi

# qhasm:   kbits = arg3
# asm 1: mov  <arg3=int64#3,>kbits=int64#3
# asm 2: mov  <arg3=%rdx,>kbits=%rdx
mov  %rdx,%rdx

# qhasm:   x = arg1
# asm 1: mov  <arg1=int64#1,>x=int64#1
# asm 2: mov  <arg1=%rdi,>x=%rdi
mov  %rdi,%rdi

# qhasm:   in0 = *(uint64 *) (k + 0)
# asm 1: movq   0(<k=int64#2),>in0=int64#5
# asm 2: movq   0(<k=%rsi),>in0=%r8
movq   0(%rsi),%r8

# qhasm:   in2 = *(uint64 *) (k + 8)
# asm 1: movq   8(<k=int64#2),>in2=int64#6
# asm 2: movq   8(<k=%rsi),>in2=%r9
movq   8(%rsi),%r9

# qhasm:   *(uint64 *) (x + 4) = in0
# asm 1: movq   <in0=int64#5,4(<x=int64#1)
# asm 2: movq   <in0=%r8,4(<x=%rdi)
movq   %r8,4(%rdi)

# qhasm:   *(uint64 *) (x + 12) = in2
# asm 1: movq   <in2=int64#6,12(<x=int64#1)
# asm 2: movq   <in2=%r9,12(<x=%rdi)
movq   %r9,12(%rdi)

# qhasm:                    unsigned<? kbits - 256
# asm 1: cmp  $256,<kbits=int64#3
# asm 2: cmp  $256,<kbits=%rdx
cmp  $256,%rdx
# comment:fp stack unchanged by jump

# qhasm:   goto kbits128 if unsigned<
jb ._kbits128

# qhasm:   kbits256:
._kbits256:

# qhasm:     in10 = *(uint64 *) (k + 16)
# asm 1: movq   16(<k=int64#2),>in10=int64#3
# asm 2: movq   16(<k=%rsi),>in10=%rdx
movq   16(%rsi),%rdx

# qhasm:     in12 = *(uint64 *) (k + 24)
# asm 1: movq   24(<k=int64#2),>in12=int64#2
# asm 2: movq   24(<k=%rsi),>in12=%rsi
movq   24(%rsi),%rsi

# qhasm:     *(uint64 *) (x + 44) = in10
# asm 1: movq   <in10=int64#3,44(<x=int64#1)
# asm 2: movq   <in10=%rdx,44(<x=%rdi)
movq   %rdx,44(%rdi)

# qhasm:     *(uint64 *) (x + 52) = in12
# asm 1: movq   <in12=int64#2,52(<x=int64#1)
# asm 2: movq   <in12=%rsi,52(<x=%rdi)
movq   %rsi,52(%rdi)

# qhasm:     in0 = 1634760805
# asm 1: mov  $1634760805,>in0=int64#2
# asm 2: mov  $1634760805,>in0=%rsi
mov  $1634760805,%rsi

# qhasm:     in4 = 857760878
# asm 1: mov  $857760878,>in4=int64#3
# asm 2: mov  $857760878,>in4=%rdx
mov  $857760878,%rdx

# qhasm:     in10 = 2036477234
# asm 1: mov  $2036477234,>in10=int64#4
# asm 2: mov  $2036477234,>in10=%rcx
mov  $2036477234,%rcx

# qhasm:     in14 = 1797285236
# asm 1: mov  $1797285236,>in14=int64#5
# asm 2: mov  $1797285236,>in14=%r8
mov  $1797285236,%r8

# qhasm:     *(uint32 *) (x + 0) = in0
# asm 1: movl   <in0=int64#2d,0(<x=int64#1)
# asm 2: movl   <in0=%esi,0(<x=%rdi)
movl   %esi,0(%rdi)

# qhasm:     *(uint32 *) (x + 20) = in4
# asm 1: movl   <in4=int64#3d,20(<x=int64#1)
# asm 2: movl   <in4=%edx,20(<x=%rdi)
movl   %edx,20(%rdi)

# qhasm:     *(uint32 *) (x + 40) = in10
# asm 1: movl   <in10=int64#4d,40(<x=int64#1)
# asm 2: movl   <in10=%ecx,40(<x=%rdi)
movl   %ecx,40(%rdi)

# qhasm:     *(uint32 *) (x + 60) = in14
# asm 1: movl   <in14=int64#5d,60(<x=int64#1)
# asm 2: movl   <in14=%r8d,60(<x=%rdi)
movl   %r8d,60(%rdi)
# comment:fp stack unchanged by jump

# qhasm:   goto keysetupdone
jmp ._keysetupdone

# qhasm:   kbits128:
._kbits128:

# qhasm:     in10 = *(uint64 *) (k + 0)
# asm 1: movq   0(<k=int64#2),>in10=int64#3
# asm 2: movq   0(<k=%rsi),>in10=%rdx
movq   0(%rsi),%rdx

# qhasm:     in12 = *(uint64 *) (k + 8)
# asm 1: movq   8(<k=int64#2),>in12=int64#2
# asm 2: movq   8(<k=%rsi),>in12=%rsi
movq   8(%rsi),%rsi

# qhasm:     *(uint64 *) (x + 44) = in10
# asm 1: movq   <in10=int64#3,44(<x=int64#1)
# asm 2: movq   <in10=%rdx,44(<x=%rdi)
movq   %rdx,44(%rdi)

# qhasm:     *(uint64 *) (x + 52) = in12
# asm 1: movq   <in12=int64#2,52(<x=int64#1)
# asm 2: movq   <in12=%rsi,52(<x=%rdi)
movq   %rsi,52(%rdi)

# qhasm:     in0 = 1634760805
# asm 1: mov  $1634760805,>in0=int64#2
# asm 2: mov  $1634760805,>in0=%rsi
mov  $1634760805,%rsi

# qhasm:     in4 = 824206446
# asm 1: mov  $824206446,>in4=int64#3
# asm 2: mov  $824206446,>in4=%rdx
mov  $824206446,%rdx

# qhasm:     in10 = 2036477238
# asm 1: mov  $2036477238,>in10=int64#4
# asm 2: mov  $2036477238,>in10=%rcx
mov  $2036477238,%rcx

# qhasm:     in14 = 1797285236
# asm 1: mov  $1797285236,>in14=int64#5
# asm 2: mov  $1797285236,>in14=%r8
mov  $1797285236,%r8

# qhasm:     *(uint32 *) (x + 0) = in0
# asm 1: movl   <in0=int64#2d,0(<x=int64#1)
# asm 2: movl   <in0=%esi,0(<x=%rdi)
movl   %esi,0(%rdi)

# qhasm:     *(uint32 *) (x + 20) = in4
# asm 1: movl   <in4=int64#3d,20(<x=int64#1)
# asm 2: movl   <in4=%edx,20(<x=%rdi)
movl   %edx,20(%rdi)

# qhasm:     *(uint32 *) (x + 40) = in10
# asm 1: movl   <in10=int64#4d,40(<x=int64#1)
# asm 2: movl   <in10=%ecx,40(<x=%rdi)
movl   %ecx,40(%rdi)

# qhasm:     *(uint32 *) (x + 60) = in14
# asm 1: movl   <in14=int64#5d,60(<x=int64#1)
# asm 2: movl   <in14=%r8d,60(<x=%rdi)
movl   %r8d,60(%rdi)

# qhasm:   keysetupdone:
._keysetupdone:

# qhasm: leave
add %r11,%rsp
mov %rdi,%rax
mov %rsi,%rdx
ret
