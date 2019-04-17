int64 A_flat
int64 A_stack
int64 A_jagged
int64 rhotates_left
int64 rhotates_right
int64 iotas
int256 A
int256 T
int256 C14
int256 C00
int256 D00
int256 D14

enter __KeccakF1600
lea rhotates_left+96(%rip),rhotates_left
lea rhotates_right+96(%rip),rhotates_right
lea iotas(%rip),iotas
mov $24,%eax
jmp .Loop_avx2

.align 32
.Loop_avx2:
######################################### Theta
vpshufd $0b01001110,A[2],C00
vpxor A[3],A[5],C14
vpxor A[6],A[4],T[2]
vpxor A[1],C14,C14
vpxor T[2],C14,C14 

vpermq $0b10010011,C14,T[4]
vpxor A[2],C00,C00
vpermq $0b01001110,C00,T[0]

vpsrlq $63,C14,T[1]
vpaddq C14,C14,T[2]
vpor T[2],T[1],T[1] 

vpermq $0b00111001,T[1],D14
vpxor T[4],T[1],D00
vpermq $0b00000000,D00,D00 

vpxor A[0],C00,C00
vpxor T[0],C00,C00 

vpsrlq $63,C00,T[0]
vpaddq C00,C00,T[1]
vpor T[0],T[1],T[1] 

vpxor D00,A[2],A[2] 
vpxor D00,A[0],A[0] 

vpblendd $0b11000000,T[1],D14,D14
vpblendd $0b00000011,C00,T[4],T[4]
vpxor T[4],D14,D14 

######################################### Rho + Pi + pre-Chi shuffle
vpsllvq 0*32-96(rhotates_left),A[2],T[3]
vpsrlvq 0*32-96(rhotates_right),A[2],A[2]
vpor T[3],A[2],A[2]

vpxor D14,A[3],A[3] 
vpsllvq 2*32-96(rhotates_left),A[3],T[4]
vpsrlvq 2*32-96(rhotates_right),A[3],A[3]
vpor T[4],A[3],A[3]

vpxor D14,A[4],A[4] 
vpsllvq 3*32-96(rhotates_left),A[4],T[5]
vpsrlvq 3*32-96(rhotates_right),A[4],A[4]
vpor T[5],A[4],A[4]

vpxor D14,A[5],A[5] 
vpsllvq 4*32-96(rhotates_left),A[5],T[6]
vpsrlvq 4*32-96(rhotates_right),A[5],A[5]
vpor T[6],A[5],A[5]

vpxor D14,A[6],A[6] 
vpermq $0b10001101,A[2],T[3] 
vpermq $0b10001101,A[3],T[4] 
vpsllvq 5*32-96(rhotates_left),A[6],T[7]
vpsrlvq 5*32-96(rhotates_right),A[6],T[1]
vpor T[7],T[1],T[1] 

vpxor D14,A[1],A[1] 
vpermq $0b00011011,A[4],T[5] 
vpermq $0b01110010,A[5],T[6] 
vpsllvq 1*32-96(rhotates_left),A[1],T[8]
vpsrlvq 1*32-96(rhotates_right),A[1],T[2]
vpor T[8],T[2],T[2] 

######################################### Chi
vpsrldq $8,T[1],T[7]
vpandn T[7],T[1],T[0] 

vpblendd $0b00001100,T[6],T[2],A[3] 
vpblendd $0b00001100,T[2],T[4],T[8] 
vpblendd $0b00001100,T[4],T[3],A[5] 
vpblendd $0b00001100,T[3],T[2],T[7] 
vpblendd $0b00110000,T[4],A[3],A[3] 
vpblendd $0b00110000,T[5],T[8],T[8] 
vpblendd $0b00110000,T[2],A[5],A[5] 
vpblendd $0b00110000,T[6],T[7],T[7] 
vpblendd $0b11000000,T[5],A[3],A[3] 
vpblendd $0b11000000,T[6],T[8],T[8] 
vpblendd $0b11000000,T[6],A[5],A[5] 
vpblendd $0b11000000,T[4],T[7],T[7] 
vpandn T[8],A[3],A[3] 
vpandn T[7],A[5],A[5] 

vpblendd $0b00001100,T[2],T[5],A[6] 
vpblendd $0b00001100,T[5],T[3],T[8] 
vpxor T[3],A[3],A[3]
vpblendd $0b00110000,T[3],A[6],A[6] 
vpblendd $0b00110000,T[4],T[8],T[8] 
vpxor T[5],A[5],A[5]
vpblendd $0b11000000,T[4],A[6],A[6] 
vpblendd $0b11000000,T[2],T[8],T[8] 
vpandn T[8],A[6],A[6] 
vpxor T[6],A[6],A[6]

vpermq $0b00011110,T[1],A[4] 
vpblendd $0b00110000,A[0],A[4],T[8] 
vpermq $0b00111001,T[1],A[1] 
vpblendd $0b11000000,A[0],A[1],A[1] 
vpandn T[8],A[1],A[1] 

vpblendd $0b00001100,T[5],T[4],A[2] 
vpblendd $0b00001100,T[4],T[6],T[7] 
vpblendd $0b00110000,T[6],A[2],A[2] 
vpblendd $0b00110000,T[3],T[7],T[7] 
vpblendd $0b11000000,T[3],A[2],A[2] 
vpblendd $0b11000000,T[5],T[7],T[7] 
vpandn T[7],A[2],A[2] 
vpxor T[2],A[2],A[2]

vpermq $0b00000000,T[0],T[0] 
vpermq $0b00011011,A[3],A[3] 
vpermq $0b10001101,A[5],A[5]
vpermq $0b01110010,A[6],A[6]

vpblendd $0b00001100,T[3],T[6],A[4] 
vpblendd $0b00001100,T[6],T[5],T[7] 
vpblendd $0b00110000,T[5],A[4],A[4] 
vpblendd $0b00110000,T[2],T[7],T[7] 
vpblendd $0b11000000,T[2],A[4],A[4] 
vpblendd $0b11000000,T[3],T[7],T[7] 
vpandn T[7],A[4],A[4] 

vpxor T[0],A[0],A[0]
vpxor T[1],A[1],A[1]
vpxor T[4],A[4],A[4]

######################################### Iota
vpxor (iotas),A[0],A[0]
lea 32(iotas),iotas

dec %eax
jnz .Loop_avx2

leave
enter SHA3_absorb
mov %rsp,%r11

lea -240(%rsp),%rsp
and $-32,%rsp

lea 96(A_flat),A_flat
lea 96(inp),inp
lea 96(%rsp),A_stack

vzeroupper

vpbroadcastq -96(A_flat),A[0] 
vmovdqu 8+32*0-96(A_flat),A[1]
vmovdqu 8+32*1-96(A_flat),A[2]
vmovdqu 8+32*2-96(A_flat),A[3]
vmovdqu 8+32*3-96(A_flat),A[4]
vmovdqu 8+32*4-96(A_flat),A[5]
vmovdqu 8+32*5-96(A_flat),A[6]

vpxor T[0],T[0],T[0]
vmovdqa T[0],32*2-96(A_stack) 
vmovdqa T[0],32*3-96(A_stack)
vmovdqa T[0],32*4-96(A_stack)
vmovdqa T[0],32*5-96(A_stack)
vmovdqa T[0],32*6-96(A_stack)

.Loop_absorb_avx2:
mov bsz,%rax
sub bsz,len
jc .Ldone_absorb_avx2

shr $3,%eax
vpbroadcastq 0-96(inp),T[0]
vmovdqu 8-96(inp),T[1]
sub $4,%eax
dec %eax
jz .Labsorved_avx2
mov 8*5-96(inp),%r8
mov %r8,A_jagged(2,2)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*6-96(inp),%r8
mov %r8,A_jagged(6,0)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*7-96(inp),%r8
mov %r8,A_jagged(3,1)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*8-96(inp),%r8
mov %r8,A_jagged(4,2)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*9-96(inp),%r8
mov %r8,A_jagged(5,3)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*10-96(inp),%r8
mov %r8,A_jagged(2,0)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*11-96(inp),%r8
mov %r8,A_jagged(4,0)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*12-96(inp),%r8
mov %r8,A_jagged(6,1)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*13-96(inp),%r8
mov %r8,A_jagged(5,2)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*14-96(inp),%r8
mov %r8,A_jagged(3,3)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*15-96(inp),%r8
mov %r8,A_jagged(2,3)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*16-96(inp),%r8
mov %r8,A_jagged(3,0)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*17-96(inp),%r8
mov %r8,A_jagged(5,1)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*18-96(inp),%r8
mov %r8,A_jagged(6,2)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*19-96(inp),%r8
mov %r8,A_jagged(4,3)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*20-96(inp),%r8
mov %r8,A_jagged(2,1)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*21-96(inp),%r8
mov %r8,A_jagged(5,0)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*22-96(inp),%r8
mov %r8,A_jagged(4,1)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*23-96(inp),%r8
mov %r8,A_jagged(3,2)-96(A_stack)
dec %eax
jz .Labsorved_avx2
mov 8*24-96(inp),%r8
mov %r8,A_jagged(6,3)-96(A_stack)
.Labsorved_avx2:
lea (inp,bsz),inp

vpxor T[0],A[0],A[0]
vpxor T[1],A[1],A[1]
vpxor 32*2-96(A_stack),A[2],A[2]
vpxor 32*3-96(A_stack),A[3],A[3]
vpxor 32*4-96(A_stack),A[4],A[4]
vpxor 32*5-96(A_stack),A[5],A[5]
vpxor 32*6-96(A_stack),A[6],A[6]

call __KeccakF1600

lea 96(%rsp),A_stack
jmp .Loop_absorb_avx2

.Ldone_absorb_avx2:
vmovq %xmm0,-96(A_flat) 
vmovdqu A[1],8+32*0-96(A_flat)
vmovdqu A[2],8+32*1-96(A_flat)
vmovdqu A[3],8+32*2-96(A_flat)
vmovdqu A[4],8+32*3-96(A_flat)
vmovdqu A[5],8+32*4-96(A_flat)
vmovdqu A[6],8+32*5-96(A_flat)

vzeroupper

lea (%r11),%rsp
lea (len,bsz),%rax 
leave
