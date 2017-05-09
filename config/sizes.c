#include <stdint.h>
#include <stdio.h>

int
main (int argc, char *argv[])
{
  printf("sizeof(char);%zd\n", sizeof(char));
  printf("sizeof(short);%zd\n", sizeof(short));
  printf("sizeof(int);%zd\n", sizeof(int));
  printf("sizeof(long);%zd\n", sizeof(long));
  printf("sizeof(long long);%zd\n", sizeof(long long));
  printf("sizeof(unsigned char);%zd\n", sizeof(unsigned char));
  printf("sizeof(unsigned short);%zd\n", sizeof(unsigned short));
  printf("sizeof(unsigned int);%zd\n", sizeof(unsigned int));
  printf("sizeof(unsigned long);%zd\n", sizeof(unsigned long));
  printf("sizeof(unsigned long long);%zd\n", sizeof(unsigned long long));
  printf("sizeof(int8_t);%zd\n", sizeof(int8_t));
  printf("sizeof(int16_t);%zd\n", sizeof(int16_t));
  printf("sizeof(int32_t);%zd\n", sizeof(int32_t));
  printf("sizeof(int64_t);%zd\n", sizeof(int64_t));
  printf("sizeof(uint8_t);%zd\n", sizeof(uint8_t));
  printf("sizeof(uint16_t);%zd\n", sizeof(uint16_t));
  printf("sizeof(uint32_t);%zd\n", sizeof(uint32_t));
  printf("sizeof(uint64_t);%zd\n", sizeof(uint64_t));
  return 0;
}
