
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

# qhasm: enter ECRYPT_init
.text
.p2align 5
.globl _ECRYPT_init
.globl ECRYPT_init
_ECRYPT_init:
ECRYPT_init:
mov %rsp,%r11
and $31,%r11
add $0,%r11
sub %r11,%rsp

# qhasm: leave
add %r11,%rsp
mov %rdi,%rax
mov %rsi,%rdx
ret
