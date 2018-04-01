#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
//int32_t ------ x(hex);     d,  i(dec signed);   u(dec unsigned);
//int16_t ------ hx(hex);   hd, hi(dec signed);  hu(dec unsigned);
//int8_t ------- hhx(hex); hhd,hhi(dec signed); hhu(dec unsigned);

#define MEM_SIZE 4096
void run();
void sw();
void sh();
void sb();

int32_t mem[MEM_SIZE];

void printmenu(){
    printf("Digite o comando:\n\n");
    printf("lw para Load Word\n");
    printf("lh para Load Half Word\n");
    printf("lhu para Load Unsigned Half Word\n");
    printf("lb para Load Byte\n");
    printf("lbu para Load Unsigned Byte\n");
    printf("sw para Store Word\n");
    printf("sh para Store Half Word\n");
    printf("sb para Store Byte\n");
    printf("exit para finalizar o programa.\n\n");
    printf(">>");
}

int32_t lw(int32_t address, int16_t kte){
	int32_t res = 0x00000000;
    if((kte % 4 == 0) && (address % 4 == 0)){
        res = mem[address + (kte / 4)];
        return res;
    }
    else
        printf("ERRO! REPITA O COMANDO\n");
        return 0;
}

int32_t lh(int32_t address, int16_t kte){
	int32_t aux = 0x00000000, res;
    if((kte % 2 == 0) && (address % 2 == 0)){
        if(((address + kte) % 4) == 0){
            res = 0x0000ffff;
            aux = mem[address + (kte / 4)];
            res &= aux;
        }
        else if(((address + kte) % 4) == 2){
            res = 0xffff0000;
            aux = mem[address + (kte / 4)];
            res &= aux;
            res >>= 16;
        }
        return res;
    }
    else
        printf("ERRO! REPITA O COMANDO\n");
        return 0;
}
int32_t lhu(int32_t address, int16_t kte){
	int32_t aux = 0x00000000, res;
    if((kte % 2 == 0) && (address % 2 == 0)){
        if(((address + kte) % 4) == 0){
            res = 0x0000ffff;
            aux = mem[address + (kte / 2)];
            res &= aux;
        }
        else if(((address + kte) % 4) == 2){
            res = 0xffff0000;
            aux = mem[address + (kte / 2)];
            res &= aux;
            res >>= 16;
        }
        return res;
    }
    else
        printf("ERRO! REPITA O COMANDO\n");
        return 0;
}

int32_t lb(int32_t address, int16_t kte){
	int32_t aux = 0x00000000, res;
    if(((address + kte) % 4) == 0){
        res = 0x000000ff;
        aux = mem[address + (kte / 4)];
        res &= aux;
    }
    else if(((address + kte) % 4) == 1){
        res = 0x0000ff00;
        aux = mem[address + (kte / 4)];
        res &= aux;
        res >>= 8;
    }
    else if(((address + kte) % 4) == 2){
        res = 0x00ff0000;
        aux = mem[address + (kte / 4)];
        res &= aux;
        res >>= 16;
    }
    else if(((address + kte) % 4) == 3){
        res = 0xff000000;
        aux = mem[address + (kte / 4)];
        res &= aux;
        res >>= 24;
    }
    return res;
}
int32_t lbu(int32_t address, int16_t kte){
	int32_t aux = 0x00000000, res;
    if(((address + kte) % 4) == 0){
        res = 0x000000ff;
        aux = mem[address + (kte / 4)];
        res &= aux;
    }
    else if(((address + kte) % 4) == 1){
        res = 0x0000ff00;
        aux = mem[address + (kte / 4)];
        res &= aux;
        res >>= 8;
    }
    else if(((address + kte) % 4) == 2){
        res = 0x00ff0000;
        aux = mem[address + (kte / 4)];
        res &= aux;
        res >>= 16;
    }
    else if(((address + kte) % 4) == 3){
        res = 0xff000000;
        aux = mem[address + (kte / 4)];
        res &= aux;
        res >>= 24;
    }
    return res;
}

void run(){
    char opcode[6];
    uint32_t address, dataw, resfunc32;
    int16_t kte, datahw, resfunc16;
    uint16_t resfunc16u;
    int8_t datab, resfunc8;
    uint8_t resfunc8u;
    int flagrun = 1;
    do{
        printfmenu();
        scanf("%s ", opcode);
        if(strcmp(opcode, "lw") == 0){
            printf("Digite o endereco e a constante(multiplos de 4) para leitura da palavra\n\n");
            printf(">>");
            scanf("%u %hd", &address, &kte);	//retorna hex(MULTIPLO DE 4)
            resfunc32 = lw(address, kte);
            printf("mem[%d] = 0x%08x\n", address, resfunc32);
            printf("mem[%d] = %d\n", address, resfunc32);
        }
        else if(strcmp(opcode, "lh") == 0){
            printf("Digite o endereco e a constante(multiplos de 2) para leitura da palavra\n\n");
            printf(">>");
            scanf("%u %hd", &address, &kte);
            resfunc16 = lh(address, kte);       //retorna inteiro com sinal(MULTIPLO DE 2)
            printf("mem[%d] = 0x%04hx\n", address, resfunc16);
            printf("mem[%d] = %d\n", address, resfunc16);     
        }
        else if(strcmp(opcode, "lhu") == 0){
            printf("Digite o endereco e a constante(multiplos de 2) para leitura da palavra\n\n");
            printf(">>");
            scanf("%u %hd", &address, &kte);
            resfunc16u = lhu(address, kte);       //retorna inteiro sem sinal(MULTIPLO DE 2)
            printf("mem[%d] = 0x%04hx\n", address, resfunc16u);
            printf("mem[%d] = %u\n", address, resfunc16u);     
        }
        else if(strcmp(opcode, "lb") == 0){
            printf("Digite o endereco e a constante para leitura da palavra\n\n");
            printf(">>");
            scanf("%u %hd", &address, &kte);
            resfunc8 = lb(address, kte);       //retorna inteiro com sinal
            printf("mem[%d] = 0x%02hhx\n", address, resfunc8);
            printf("mem[%d] = %d\n", address, resfunc8);    
        }
        else if(strcmp(opcode, "lbu") == 0){
            printf("Digite o endereco e a constante(multiplos de 2) para leitura da palavra\n\n");
            printf(">>");
            scanf("%u %hd", &address, &kte);
            resfunc8u = lbu(address, kte);       //retorna inteiro sem sinal
            printf("mem[%d] = 0x%04hx\n", address, resfunc8u);
            printf("mem[%d] = %u\n", address, resfunc8u);   
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
        else if(strcmp(opcode, "exit")){
            flagrun = 0;
        }
    }while(flagrun);
}

int main(){
    run();
    return 0;
}