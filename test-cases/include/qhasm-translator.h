#ifndef QHASM_TRANSLATOR
#define QHASM_TRANSLATOR

#include <stdint.h>

// a, b = c * d;
#define multiply128(a,b,c,d) do{__uint128_t _q_r_=(__uint128_t)c*d;b=_q_r_;a=_q_r_>>64;}while(0)

// carry? a = b + c;
#define add64_and_set_carry(a,b,c) do{__uint128_t _q_r_=(__uint128_t)b+c;a=_q_r_;carry=_q_r_>>64;}while(0)

// a = b + c + carry;
#define add64_with_carry(a,b,c) do{a=b+c+carry;}while(0)

// a = ((b , c) << n) >> 64
#define shift_left128(a,b,c,n) do{a=b;a<<=n;a|=(c>>(64-n));}while(0)

// carry? a = b + c + carry
#define add64_with_carry_and_set_carry(a,b,c) do{__uint128_t _q_r_=(__uint128_t)b+c+carry;a=_q_r_;carry=_q_r_>>64;}while(0)

// carry? a = b - c
#define sub64_and_set_carry(a,b,c) do{__uint128_t _q_r_=((__uint128_t)b-(__uint128_t)c); a=_q_r_&0xFFFFFFFFFFFFFFFF; carry=(_q_r_ >> 64) & 0x1; }while(0)

// carry? a = b - c - carry 
#define sub64_with_carry_and_set_carry(a,b,c) do{__uint128_t _q_r_=((__uint128_t)b-(__uint128_t)c-(__uint128_t)carry);a=_q_r_&0xFFFFFFFFFFFFFFFF; carry=(_q_r_ >> 64) & 0x1; }while(0)

// a = ((uint32_t) b) <<< n
#define rotate64_32l(a,b,n) do{a = (a&0xFFFFFFFF00000000) | (((uint32_t)b)<<n) | ((uint32_t)b)>>(32-n); }while(0)




#endif
