/*#####################################################
  # UNIVERSIDADE DE BRASILIA                          #
  # MATERIA: OAC - 116394                             #
  # Ian Nery Bandeira - 17/0144739                    #
  # gcc (Ubuntu 7.2.0-8ubuntu3.2) 7.2.0               #
  # SO - Ubuntu 17.10                                 #
  # Compilado no terminal / Editado em Sublime Text 3 #
  # Método de Compilacao: gcc trab.c -o trab -lm      #
  ##################################################### */

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
//int32_t ------   x(hex);   d,  i(dec signed);   u(dec unsigned);
//int16_t ------  hx(hex);  hd, hi(dec signed);  hu(dec unsigned);
//int8_t  ------ hhx(hex); hhd,hhi(dec signed); hhu(dec unsigned);
 
#define MEM_SIZE 4096
#define MEM_TEXT 0
#define MEM_DATA 2048
FILE *fp;
int flag_run, flagimm_neg = 0;
int32_t mem[MEM_SIZE];
uint32_t pc, ri, HI, LO;
uint32_t opcode, rs, rt, rd, shamt, funct, k16, k26;
uint32_t R[32];
int sizetext, sizedata;

 
enum OPCODES{
EXT=0x00,   LW=0x23,    LB=0x20,    LBU=0x24,  
LH=0x21,    LHU=0x25,   LUI=0x0F,   SW=0x2B,
SB=0x28,    SH=0x29,    BEQ=0x04,   BNE=0x05,   
BLEZ=0x06,  BGTZ=0x07,  ADDI=0x08,  SLTI=0x0A,  
SLTIU=0x0B, ANDI=0x0C,  ORI=0x0D,   XORI=0x0E,  
J=0x02,     JAL=0x03,   ADDIU = 0x09
};
 
enum FUNCT  {  
ADD=0x20,   SUB=0x22,   MULT=0x18,  DIV=0x1A,      AND=0x24,  
OR=0x25,    XOR=0x26,   NOR=0x27,   SLT=0x2A,      JR=0x08,
SLL=0x00,   SRL=0x02,   SRA=0x03,   SYSCALL=0x0c,  MFHI=0x10,   MFLO=0x12
}; 

/*  Bits quantity       Mask needed         Shift needed
    OPCODE  6           111111  = 0x3f      26 right
    RS      5           11111   = 0x1f      21 right
    RT      5           11111   = 0x1f      16 right
    RD      5           11111   = 0x1f      11 right
    SHAMT   5           11111   = 0x1f      6 right
    FUNCT   6           111111  = 0x3f      0 right
    16IMM   16          0xffff              0 right
    26IMM   26          0x3ffffff           0 right
*/

void decode(){
    uint32_t mask_sixbits = 0x3f;
    uint32_t mask_fivebits = 0x1f;
    uint32_t mask_sixtbits = 0xffff;
    uint32_t mask_twsixbits = 0x3ffffff;
    uint32_t auximm16;
 
    opcode = ri >> 26;
    opcode &= mask_sixbits;
 
    rs = ri >> 21;
    rs &= mask_fivebits;
 
    rt = ri >> 16;
    rt &= mask_fivebits;
 
    rd = ri >> 11;
    rd &= mask_fivebits;
 
    shamt = ri >> 6;
    shamt &= mask_fivebits;
    
    funct = ri;
    funct &= mask_sixbits;

     /* se o auxiliar e 1, o programa aceita que o 
        k16 e negativo, recebe uma flag que diz que 
        k16 e negativo e expande seu sinal. 
     */
    flagimm_neg = 0;
    k16 = ri & mask_sixtbits;
    auximm16 = k16;
    auximm16 >>= 15;
    if(auximm16 & 1){
        flagimm_neg = 1;
        k16 |= 0xffff0000;
    }

    k26 = ri & mask_twsixbits;
} 
int32_t lbfunc(){         
    int32_t aux, res;
    if(((R[rs] + k16) % 4) == 0){
        aux = 0x000000ff;        
        res = mem[(R[rs] + k16)/4];
        res &= aux;                
    }
    else if(((R[rs] + k16) % 4) == 1 ||           
            ((R[rs] + k16) % 4) == -1){
        aux = 0x0000ff00;              
        res = mem[(R[rs] + k16)/4];    
        res &= aux;                    
        res >>= 8;                     
    }
    else if(((R[rs] + k16) % 4) == 2 || 
            ((R[rs] + k16) % 4) == -2){
        aux = 0x00ff0000;              
        res = mem[(R[rs] + k16)/4];    
        res &= aux;                    
        res >>= 16;                    
    }
    else if(((R[rs] + k16) % 4) == 3 || 
            ((R[rs] + k16) % 4) == -3){
        aux = 0xff000000;              
        res = mem[(R[rs] + k16)/4];    
        res &= aux;                    
        res >>= 24;                    
    }
    return res;
}

int32_t lhfunc(){          
	int32_t aux, res;      
        if(((R[rs] + k16) % 4) == 0){ 
            aux = 0x0000ffff;         
            res = mem[(R[rs] + k16)/4];
            res &= aux;                
        }
        else if(((R[rs] + k16) % 4) == 2 || 
                ((R[rs] + k16) % 4) == -2){
            aux = 0xffff0000;              
            res = mem[(R[rs] + k16)/4];    
            res &= aux;                    
            res >>= 16;                    
        }
        return res;
}

void sw(){         
        mem[(R[rs] + (k16))/4] = R[rt];    
}

void sh(){         
    int32_t res;                
    if(((R[rs] + k16) % 4) == 0){          
        res = mem[(R[rs] + (k16))/4];      
        res &= 0xffff0000;
        R[rt] &= 0x0000ffff;
        mem[(R[rs] + (k16))/4] = res | R[rt];
    }
    else if(((R[rs] + k16) % 4) == 2 || 
            ((R[rs] + k16) % 4) == -2){      
        res = mem[(R[rs] + k16)/4];
        res &= 0x0000ffff;
        R[rt] &= 0x0000ffff;
        R[rt] <<= 16;
        mem[(R[rs] + (k16))/4] = res | R[rt];  
    }
}

void sb(){
    int32_t res;
    if(((R[rs] + k16) % 4) == 0){
        res = mem[(R[rs] + (k16))/4];
        res &= 0xffffff00;
        R[rt] &= 0x000000ff;
        mem[(R[rs] + (k16))/4] = res | R[rt];
    }
    else if(((R[rs] + k16) % 4) == 1 || 
            ((R[rs] + k16) % 4) == -1){      
        res = mem[(R[rs] + (k16))/4];        
        res &= 0xffff00ff;
        R[rt] &= 0x000000ff;
        R[rt] <<= 8;
        mem[(R[rs] + (k16))/4] = res | R[rt];
    }
    else if(((R[rs] + k16) % 4) == 2 || 
            ((R[rs] + k16) % 4) == -2){      
        res = mem[(R[rs] + (k16))/4];        
        res &= 0xff00ffff;
        R[rt] &= 0x000000ff;
        R[rt] <<= 16;
        mem[(R[rs] + (k16))/4] = res | R[rt];
    }
    else if(((R[rs] + k16) % 4) == 3 || 
            ((R[rs] + k16) % 4) == -3){
        res = mem[(R[rs] + (k16))/4];
        res &= 0x00ffffff;
        R[rt] &= 0x000000ff;
        R[rt] <<= 24;
        mem[(R[rs] + (k16))/4] = res | R[rt];
    }
}
void execute(){
    int32_t AUX;
    int64_t auxmult;
    int64_t maskmult = 0x00000000ffffffff;
    int i = 0;
    uint32_t contkte;
    char c, string[100];
    int32_t aux, res;
    uint8_t buffer;
    contkte = 0;
    if(opcode == EXT){
        switch(funct){
            case ADD:
                R[rd] = R[rs] + R[rt];
                break;
            case SUB:
                R[rd] = R[rs] - R[rt];
                break;
            case MULT:
                auxmult = (int64_t) R[rs] * R[rt];
                LO = (int32_t) auxmult & maskmult;
                auxmult >>= 32;
                HI = (int32_t) auxmult & maskmult;
                break;
            case DIV:
                LO = R[rs] / R[rt];
                HI = R[rs] % R[rt];
                break;
            case AND:
                R[rd] = R[rs] & R[rt];
                break;
            case OR:
                R[rd] = R[rs] | R[rt];
                break;
            case XOR:
                R[rd] = R[rs] ^ R[rt];
                break;
            case NOR:
                R[rd] = ~ (R[rs] | R[rt]);
                break;
            case SLT:
                if (R[rs] < R[rt]) {
                    R[rd] = 0;
                }
                else{
                    R[rd] = 1;
                }
                break;
            case JR:
                pc = R[rs];
                break;
            case SLL:
                R[rd] = R[rt] << shamt;
                break;
            case SRL:
                R[rd] =(uint32_t) R[rt] >> shamt;
                break;
            case SRA:
                R[rd] =(int32_t) R[rt] >> shamt;
                break;
            case SYSCALL:
                switch(R[2]){
                    case 1:
                        printf("%d", R[4]);
                        break;
                        /*  No caso 4, que printa a string, o que foi feito
                            foi a separação da string, que começa no endereco
                            de memoria R[4], em bytes, e estes guardados em
                            uma string auxiliar, avancando na contagem de bytes
                            de 1 em 1, utilizando uma adaptacao da funcao lbfunc,
                            presente no programa. Apos guardar os bytes de leitura,
                            o case printa a string que recebeu byte por byte.
                        */
                    case 4: 
                            do{
                                if(((R[4] + contkte) % 4) == 0){
                                    aux = 0x000000ff;        
                                    res = mem[(R[4] + contkte)/4];
                                    res &= aux;                
                                }
                                else if(((R[4] + contkte) % 4) == 1 ||           
                                        ((R[4] + contkte) % 4) == -1){
                                    aux = 0x0000ff00;              
                                    res = mem[(R[4] + contkte)/4];    
                                    res &= aux;                    
                                    res >>= 8;                     
                                }
                                else if(((R[4] + contkte) % 4) == 2 || 
                                        ((R[4] + contkte) % 4) == -2){
                                    aux = 0x00ff0000;              
                                    res = mem[(R[4] + contkte)/4];    
                                    res &= aux;                    
                                    res >>= 16;                    
                                }
                                else if(((R[4] + contkte) % 4) == 3 || 
                                        ((R[4] + contkte) % 4) == -3){
                                    aux = 0xff000000;              
                                    res = mem[(R[4] + contkte)/4];    
                                    res &= aux;                    
                                    res >>= 24;                    
                                }
                                buffer = res;
                                c = (char)buffer;
                                if (c != '\0'){
                                    string[i] = c;
                                    contkte += 0x00000001;
                                    i++;
                                } 
                                else{
                                    string[i] ='\0';
                                }
                            } while(c != '\0');
                        printf("%s", string);
                        break;
                    case 10:
                        flag_run = 0;
                        break;
                }
                break;
            case MFHI:
                R[rd] = HI;
                break;
            case MFLO:
                R[rd] = LO;
                break;
        }
    }
    else{
        switch(opcode){
            case LW:
                R[rt] = mem[(R[rs] + k16)/4];
                break;
            case LB:
                R[rt] = (int8_t) lbfunc();
                break;
            case LBU:
                R[rt] = (uint8_t) lbfunc();
                break;
            case LH:
                R[rt] = (int16_t) lhfunc();
                break;
            case LHU:
                R[rt] = (uint16_t) lhfunc();
                break;
            case LUI:
                R[rt] = (k16 << 16);
                break;
            case SW:
                sw();
                break;
            case SB:
                sb();
                break;
            case SH:
                sh();
                break;
            case BEQ:
                if(R[rs] == R[rt]){
                    pc += k16 << 2;
                }
                break;
            case BNE:
                if(R[rt] != R[rs]){
                    pc += k16 << 2;
                }
                break;
            case BLEZ:
                if(R[rs] <= 0){
                    pc += k16 << 2;
                }
                break;
            case BGTZ:
                if(!(R[rs] <= 0)){
                    pc += k16 << 2;
                }
                break;
            case ADDI:
                R[rt] = R[rs] + k16;
                break;
            case ADDIU:
                R[rt] = R[rs] + k16;
                break;
            case SLTI:
                if (R[rs] < (int32_t)k16) {
                    R[rt] = 1;
                }
                else{
                    R[rt] = 0;
                }
                break;
            case SLTIU:
                if(flagimm_neg){
                    k16 &= 0x0000ffff;
                }
                if ((uint32_t)R[rs] < (uint32_t)k16) {
                    R[rt] = 1;
                }
                else{
                    R[rt] = 0;
                }
                break;
            case ANDI:
                if(flagimm_neg){
                    k16 &= 0x0000ffff;
                }
                R[rt] = R[rs] & k16;
                break;
            case ORI:
                if(flagimm_neg){
                    k16 &= 0x0000ffff;
                }
                R[rt] = R[rs] | k16;
                break;
            case XORI:
                if(flagimm_neg){
                    k16 &= 0x0000ffff;
                }
                R[rt] = R[rs] ^ k16;
                break;
            case J:
                pc = (uint32_t)((pc-4) & 0xC0000000) + (k26 << 2);
                break;
            case JAL:
                R[31] = pc;
                pc = ((pc-4) & 0xC0000000) + (k26 << 2);
                break;
        }
    } 
}

void fetch(){
    ri = mem[pc/4];
    pc += 4;
} 

void step(){
    fetch();
    decode();
    execute(); 
}

void run(){
    flag_run = 1;
    pc = 0;
    while(flag_run || pc > 8192){
        step();
    } 
}

void readbin(){
    int i = 0;
    uint32_t res;
    fp = fopen("text.bin", "rb");
    if(!fp){
        puts("File does not exist");
        getchar();
    }
    else{
        while(fread(&res, sizeof(uint32_t), 1, fp)){
            mem[MEM_TEXT + i] = res;
            i++;
        }
        sizetext = i;
    }
    fclose(fp); 

    i = 0;
    fp = fopen("data.bin", "rb");
    if(!fp){
        puts("File does not exist");
        getchar();
    }
    else{
        while(fread(&res, sizeof(uint32_t), 1, fp)){
            mem[MEM_DATA + i] = res;
            i++;
        }
        sizedata = i;
    }

    fclose(fp);

}

void printfirst(){
    printf("1.\tStep\n2.\tRodar Programa\n3.\tDump memory\n4.\tDump R\n5. \tSair\nDigite um numero:");
}

void dump_mem(){
    printf("\n\n\t\tText\n\n");
    for(int i = 0; i < sizetext; i+= 4){
        printf("mem[%d] = %08x\t\tmem[%d] = %08x\t\tmem[%d] = %08x\t\tmem[%d] = %08x\n", i, mem[i], i+1, mem[i+1], i+2, mem[i+2], i+3, mem[i+3]);
    }
    printf("\n\n\t\tData\n\n");
    for(int i = 2048; i < (2048 + sizedata); i+= 4){
        printf("mem[%d] = %08x\t\tmem[%d] = %08x\t\tmem[%d] = %08x\t\tmem[%d] = %08x\n", i, mem[i], i+1, mem[i+1], i+2, mem[i+2], i+3, mem[i+3]);
    }
    getchar();
    printf("\nPressione Enter para continuar\n");
    getchar();
}
void dump_R(){
    for(int i = 0; i < 32; i++){
        printf("R[%d] = %x\n", i, R[i]);
    }
    getchar();
    printf("\nPressione Enter para continuar\n");
    getchar();
}

int main(){
    int numinstr = 0;
    pc = 0;
    R[0] = 0;
    readbin();
    while(numinstr != 5){
        printfirst();
        scanf("%d", &numinstr);
        switch(numinstr){
            case 1:
                step();
                break;
            case 2:
                run();
                break;
            case 3:
                dump_mem();
                break;
            case 4:
                dump_R();
                break;
        }
    }
    return 0;
}
