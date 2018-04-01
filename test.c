#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
//int32_t ------ x(hex);     d,  i(dec signed);   u(dec unsigned);
//int16_t ------ hx(hex);   hd, hi(dec signed);  hu(dec unsigned);
//int8_t ------- hhx(hex); hhd,hhi(dec signed); hhu(dec unsigned);

#define MEM_SIZE 4096
void run();
int32_t lh();
int32_t lhu();
int32_t lb();
int32_t lbu();
void sw();
void sh();
void sb();

int main(){

    int32_t a = 0x0000ffff, aux = 0xffff0000, k = 0x00000000;
    int32_t mem[MEM_SIZE];
    int16_t i, u;
    uint16_t j;

    mem[0] = 0x14131211;
    mem[1] = 0x1b;
    mem[2] = 0x1c;
    mem[3] = 0x1d;
    k = mem[0];
    printf("a = %08x\n", k);
    k >>= 8;
    printf("a = %08x\n", k);
    k >>= 8;
    printf("a = %08x\n", k);
    k >>= 8;
    printf("a = %08x\n", k);
    k >>= 8;
    printf("a = %08x\n", k);
    k >>= 8;
    printf("a = %08x\n", k);
    printf("mem0 = %08x\n", mem[0]);
    printf("mem1 = %08x\n", mem[1]);
    printf("mem2 = %08x\n", mem[2]);
    printf("mem3 = %08x\n", mem[3]);
    printf("a = %08x\n", k);
}