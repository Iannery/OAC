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

int32_t mem[MEM_SIZE];

int32_t lw(int32_t address, int16_t kte){
	int32_t aux = 0x00000000, res;
	if(kte == 0 && (address % 4 == 0)){ // FAZER O SHIFT LEFT PRA ARRUMAR A POSIÇÃO DOS BYTES
		res = mem[address] | aux;  // PRA DEPOIS FAZER O OR BITWISE COM AS MASCARAS E NÃO BUGAR
		return res;
	}
	else
		printf("ERRO!!!\n");
		abort();
}
void run(){
    char opcode[4];
    uint32_t address, dataw, resfunc;
    int16_t kte, datahw;
    int8_t datab;
    scanf(" %s", opcode);
    if(strcmp(opcode, "lw") == 0){
        printf("lw!!\n");
       	scanf("%u %hd", &address, &kte);	//retorna hex(MULTIPLO DE 4)
       	resfunc = lw(address, kte);
       	printf("mem[%d] = 0x%08x\n", address, resfunc);
       	printf("mem[%d] = %d\n", address, resfunc);
    }
    else if(strcmp(opcode, "lh") == 0){
        printf("lh!!!\n");
       	scanf("%u %hd", &address, &kte);	//retorna inteiro com sinal(MULTIPLO DE 2)
    }
    else if(strcmp(opcode, "lhu") == 0){
        printf("lhu!!!\n");
        scanf("%u %hd", &address, &kte);	//retorna inteiro sem sinal(MULTIPLO DE 2)
    }
    else if(strcmp(opcode, "lb") == 0){
        printf("lb!!!\n");
     	scanf("%u %hd", &address, &kte);	//retorna inteiro com sinal   
    }
    else if(strcmp(opcode, "lbu") == 0){
        printf("lbu!!!\n");
     	scanf("%u %hd", &address, &kte);	//retorna inteiro sem sinal
    }
    else if(strcmp(opcode, "sw") == 0){
        printf("sw!!!\n");
     	scanf("%u %hd %x", &address, &kte, &dataw);	//escreve palavra inteira(MULTIPLO DE 4)
    }
    else if(strcmp(opcode, "sh") == 0){
        printf("sh!!!\n");
     	scanf("%u %hd %hx", &address, &kte, &datahw);	//escreve meia palavra(MULTIPLO DE 2)
    }
    else if(strcmp(opcode, "sb") == 0){
        printf("sb!!!\n");
     	scanf("%u %hd %hhx", &address, &kte, &datab);	//escreve byte
    }
}

int main(){
    run();
    return 0;
}