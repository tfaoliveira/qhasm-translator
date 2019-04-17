int64 a_flat
int64 a_stack
int64 a_jagged
int64 rhotates_left
int64 rhotates_right
int64 iotas
int256 state
int256 t
int256 c14
int256 c00
int256 d00
int256 d14

enter __KeccakF1600
lea rhotates_left+96(%rip),rhotates_left
lea rhotates_right+96(%rip),rhotates_right
lea iotas(%rip),iotas
mov $24,%eax
jmp .Loop_avx2

.align 32
.Loop_avx2:
######################################### Theta
vpshufd $0b01001110,state[2],c00
vpxor state[3],state[5],c14
vpxor state[6],state[4],t[2]
vpxor state[1],c14,c14
vpxor t[2],c14,c14 

vpermq $0b10010011,c14,t[4]
vpxor state[2],c00,c00
vpermq $0b01001110,c00,t[0]

vpsrlq $63,c14,t[1]
vpaddq c14,c14,t[2]
vpor t[2],t[1],t[1] 

vpermq $0b00111001,t[1],d14
vpxor t[4],t[1],d00
vpermq $0b00000000,d00,d00 

vpxor state[0],c00,c00
vpxor t[0],c00,c00 

vpsrlq $63,c00,t[0]
vpaddq c00,c00,t[1]
vpor t[0],t[1],t[1] 

vpxor d00,state[2],state[2] 
vpxor d00,state[0],state[0] 

vpblendd $0b11000000,t[1],d14,d14
vpblendd $0b00000011,c00,t[4],t[4]
vpxor t[4],d14,d14 

######################################### Rho + Pi + pre-Chi shuffle
vpsllvq 0*32-96(rhotates_left),state[2],t[3]
vpsrlvq 0*32-96(rhotates_right),state[2],state[2]
vpor t[3],state[2],state[2]

vpxor d14,state[3],state[3] 
vpsllvq 2*32-96(rhotates_left),state[3],t[4]
vpsrlvq 2*32-96(rhotates_right),state[3],state[3]
vpor t[4],state[3],state[3]

vpxor d14,state[4],state[4] 
vpsllvq 3*32-96(rhotates_left),state[4],t[5]
vpsrlvq 3*32-96(rhotates_right),state[4],state[4]
vpor t[5],state[4],state[4]

vpxor d14,state[5],state[5] 
vpsllvq 4*32-96(rhotates_left),state[5],t[6]
vpsrlvq 4*32-96(rhotates_right),state[5],state[5]
vpor t[6],state[5],state[5]

vpxor d14,state[6],state[6] 
vpermq $0b10001101,state[2],t[3] 
vpermq $0b10001101,state[3],t[4] 
vpsllvq 5*32-96(rhotates_left),state[6],t[7]
vpsrlvq 5*32-96(rhotates_right),state[6],t[1]
vpor t[7],t[1],t[1] 

vpxor d14,state[1],state[1] 
vpermq $0b00011011,state[4],t[5] 
vpermq $0b01110010,state[5],t[6] 
vpsllvq 1*32-96(rhotates_left),state[1],t[8]
vpsrlvq 1*32-96(rhotates_right),state[1],t[2]
vpor t[8],t[2],t[2] 

######################################### Chi
vpsrldq $8,t[1],t[7]
vpandn t[7],t[1],t[0] 

vpblendd $0b00001100,t[6],t[2],state[3] 
vpblendd $0b00001100,t[2],t[4],t[8] 
vpblendd $0b00001100,t[4],t[3],state[5] 
vpblendd $0b00001100,t[3],t[2],t[7] 
vpblendd $0b00110000,t[4],state[3],state[3] 
vpblendd $0b00110000,t[5],t[8],t[8] 
vpblendd $0b00110000,t[2],state[5],state[5] 
vpblendd $0b00110000,t[6],t[7],t[7] 
vpblendd $0b11000000,t[5],state[3],state[3] 
vpblendd $0b11000000,t[6],t[8],t[8] 
vpblendd $0b11000000,t[6],state[5],state[5] 
vpblendd $0b11000000,t[4],t[7],t[7] 
vpandn t[8],state[3],state[3] 
vpandn t[7],state[5],state[5] 

vpblendd $0b00001100,t[2],t[5],state[6] 
vpblendd $0b00001100,t[5],t[3],t[8] 
vpxor t[3],state[3],state[3]
vpblendd $0b00110000,t[3],state[6],state[6] 
vpblendd $0b00110000,t[4],t[8],t[8] 
vpxor t[5],state[5],state[5]
vpblendd $0b11000000,t[4],state[6],state[6] 
vpblendd $0b11000000,t[2],t[8],t[8] 
vpandn t[8],state[6],state[6] 
vpxor t[6],state[6],state[6]

vpermq $0b00011110,t[1],state[4] 
vpblendd $0b00110000,state[0],state[4],t[8] 
vpermq $0b00111001,t[1],state[1] 
vpblendd $0b11000000,state[0],state[1],state[1] 
vpandn t[8],state[1],state[1] 

vpblendd $0b00001100,t[5],t[4],state[2] 
vpblendd $0b00001100,t[4],t[6],t[7] 
vpblendd $0b00110000,t[6],state[2],state[2] 
vpblendd $0b00110000,t[3],t[7],t[7] 
vpblendd $0b11000000,t[3],state[2],state[2] 
vpblendd $0b11000000,t[5],t[7],t[7] 
vpandn t[7],state[2],state[2] 
vpxor t[2],state[2],state[2]

vpermq $0b00000000,t[0],t[0] 
vpermq $0b00011011,state[3],state[3] 
vpermq $0b10001101,state[5],state[5]
vpermq $0b01110010,state[6],state[6]

vpblendd $0b00001100,t[3],t[6],state[4] 
vpblendd $0b00001100,t[6],t[5],t[7] 
vpblendd $0b00110000,t[5],state[4],state[4] 
vpblendd $0b00110000,t[2],t[7],t[7] 
vpblendd $0b11000000,t[2],state[4],state[4] 
vpblendd $0b11000000,t[3],t[7],t[7] 
vpandn t[7],state[4],state[4] 

vpxor t[0],state[0],state[0]
vpxor t[1],state[1],state[1]
vpxor t[4],state[4],state[4]

######################################### Iota
vpxor (iotas),state[0],state[0]
lea 32(iotas),iotas

dec %eax
jnz .Loop_avx2

leave
enter SHA3_absorb
mov %rsp,%r11

lea -240(%rsp),%rsp
and $-32,%rsp

lea 96(a_flat),a_flat
lea 96(inp),inp
lea 96(%rsp),a_stack

vzeroupper

vpbroadcastq -96(a_flat),state[0] 
vmovdqu 8+32*0-96(a_flat),state[1]
vmovdqu 8+32*1-96(a_flat),state[2]
vmovdqu 8+32*2-96(a_flat),state[3]
vmovdqu 8+32*3-96(a_flat),state[4]
vmovdqu 8+32*4-96(a_flat),state[5]
vmovdqu 8+32*5-96(a_flat),state[6]

vpxor t[0],t[0],t[0]
vmovdqa t[0],32*2-96(a_stack) 
vmovdqa t[0],32*3-96(a_stack)
vmovdqa t[0],32*4-96(a_stack)
vmovdqa t[0],32*5-96(a_stack)
vmovdqa t[0],32*6-96(a_stack)

.Loop_absorb_avx2:
mov bsz,%rax
sub bsz,len
jc .Ldone_absorb_avx2

shr $3,%eax
vpbroadcastq 0-96(inp),t[0]
vmovdqu 8-96(inp),t[1]
sub $4,%eax
dec %eax
jz .Labsorved_avx2
mov 8*5-96(inp),%r8
mov %r8,a_jagged(2,2)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*6-96(inp),%r8
mov %r8,a_jagged(6,0)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*7-96(inp),%r8
mov %r8,a_jagged(3,1)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*8-96(inp),%r8
mov %r8,a_jagged(4,2)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*9-96(inp),%r8
mov %r8,a_jagged(5,3)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*10-96(inp),%r8
mov %r8,a_jagged(2,0)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*11-96(inp),%r8
mov %r8,a_jagged(4,0)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*12-96(inp),%r8
mov %r8,a_jagged(6,1)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*13-96(inp),%r8
mov %r8,a_jagged(5,2)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*14-96(inp),%r8
mov %r8,a_jagged(3,3)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*15-96(inp),%r8
mov %r8,a_jagged(2,3)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*16-96(inp),%r8
mov %r8,a_jagged(3,0)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*17-96(inp),%r8
mov %r8,a_jagged(5,1)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*18-96(inp),%r8
mov %r8,a_jagged(6,2)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*19-96(inp),%r8
mov %r8,a_jagged(4,3)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*20-96(inp),%r8
mov %r8,a_jagged(2,1)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*21-96(inp),%r8
mov %r8,a_jagged(5,0)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*22-96(inp),%r8
mov %r8,a_jagged(4,1)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*23-96(inp),%r8
mov %r8,a_jagged(3,2)-96(a_stack)
dec %eax
jz .Labsorved_avx2
mov 8*24-96(inp),%r8
mov %r8,a_jagged(6,3)-96(a_stack)
.Labsorved_avx2:
lea (inp,bsz),inp

vpxor t[0],state[0],state[0]
vpxor t[1],state[1],state[1]
vpxor 32*2-96(a_stack),state[2],state[2]
vpxor 32*3-96(a_stack),state[3],state[3]
vpxor 32*4-96(a_stack),state[4],state[4]
vpxor 32*5-96(a_stack),state[5],state[5]
vpxor 32*6-96(a_stack),state[6],state[6]

call __KeccakF1600

lea 96(%rsp),a_stack
jmp .Loop_absorb_avx2

.Ldone_absorb_avx2:
vmovq %xmm0,-96(a_flat) 
vmovdqu state[1],8+32*0-96(a_flat)
vmovdqu state[2],8+32*1-96(a_flat)
vmovdqu state[3],8+32*2-96(a_flat)
vmovdqu state[4],8+32*3-96(a_flat)
vmovdqu state[5],8+32*4-96(a_flat)
vmovdqu state[6],8+32*5-96(a_flat)

vzeroupper

lea (%r11),%rsp
lea (len,bsz),%rax 
leave
