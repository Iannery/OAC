/*#####################################################
  # UNIVERSIDADE DE BRASILIA                          #
  # MATERIA: OAC - 116394                             #
  # Ian Nery Bandeira - 17/0144739                    #
  # gcc (Ubuntu 7.2.0-8ubuntu3.2) 7.2.0               #
  # SO - Ubuntu 17.10                                 #
  # Compilado no terminal / Editado em Sublime Text 3 #
  ##################################################### */

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
//int32_t ------   x(hex);   d,  i(dec signed);   u(dec unsigned);
//int16_t ------  hx(hex);  hd, hi(dec signed);  hu(dec unsigned);
//int8_t  ------ hhx(hex); hhd,hhi(dec signed); hhu(dec unsigned);

#define MEM_SIZE 4096

int32_t mem[MEM_SIZE];   // Memoria definida pelo professor

void printmenu(){   // Printa o menu de opcoes    
    printf("Digite o comando:\n\n");
    printf("lw para Load Word\n");
    printf("lh para Load Half Word\n");
    printf("lhu para Load Unsigned Half Word\n");
    printf("lb para Load Byte\n");
    printf("lbu para Load Unsigned Byte\n");
    printf("sw para Store Word\n");
    printf("sh para Store Half Word\n");
    printf("sb para Store Byte\n");
    printf("dump para imprimir o conteudo da memoria(Dump Memory)\n");
    printf("exit para finalizar o programa.\n\n");
    printf(">> ");
}

int32_t lw(uint32_t address, int16_t kte){          // Le um endereco e uma constante para retornar uma word de 32 bits gravada no vetor mem[MEM_SIZE]
	int32_t res;                                    // Inicializa a variavel res, para retorno   
    if((kte % 4 == 0) && (address % 4 == 0)){       // Checa se a constante e o endereco digitados sao divisiveis por 4, para leitura da word(4 bytes)
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4, caso a constante digitada seja maior que 4.
        return res;
    }
    else                                            // Caso a constante e o endereco nao sejam divisiveis por 4, retorna 0 e reporta erro.
        printf("ERRO! REPITA O COMANDO\n");
        return 0;
}

int32_t lh(uint32_t address, int16_t kte){          // Le um endereco e uma constante para retornar uma half word de 16 bits gravada no vetor mem[MEM_SIZE]
	int32_t aux, res;                               // Inicializa a variavel res, para retorno; e a variavel aux, utilizada como mascara para manipulacao da funcao
    if((kte % 2 == 0) && (address % 2 == 0)){       // Checa se a constante e o endereco lidos sao divisiveis por 2, para leitura da half word(2 bytes)
        if(((address + kte) % 4) == 0){             // Checa se o endereco + a constante remetem a metade menos significativa da word (primeiros 2 bytes)
            aux = 0x0000ffff;                       // Utiliza aux como mascara para selecionar os 2 primeiros bytes da word sem alterar os 2 ultimos bytes
            res = mem[(address + (kte / 4))/4];     // Passa para res o valor do vetor mem na posicao endereco + constante / 4
            res &= aux;                             // Utiliza a mascara para selecionar apenas os dois primeiros bytes da word e passar para res
        }
        else if(((address + kte) % 4) == 2 || 
                ((address + kte) % 4) == -2){      // Checa se o endereco + a constante remetem a metade mais significativa da word (ultimos 2 bytes)
            aux = 0xffff0000;                       // Utiliza aux como mascara para selecionar os 2 ultimos bytes da word sem alterar os 2 primeiros bytes
            res = mem[(address + (kte / 4))/4];     // Passa para res o valor do vetor mem na posicao endereco + constante / 4
            res &= aux;                             // Utiliza a mascara para selecionar apenas os dois ultimos bytes da word e passar para res
            res >>= 16;                             // Faz um deslocamento de 2 bytes para a direita, para que o res retorne apenas 2 bytes de uma half word
        }
        return res;
    }
    else                                            // Caso a constante e o endereco nao sejam divisiveis por 2, retorna 0 e reporta erro.
        printf("ERRO! REPITA O COMANDO\n");
        return 0;
}
int32_t lhu(uint32_t address, int16_t kte){         // Le um endereco e uma constante para retornar uma half word sem sinal de 16 bits gravada no vetor mem[MEM_SIZE]
	int32_t aux, res;                               // Inicializa a variavel res, para retorno; e a variavel aux, utilizada como mascara para manipulacao da funcao
    if((kte % 2 == 0) && (address % 2 == 0)){       // Checa se a constante e o endereco lidos sao divisiveis por 2, para leitura da half word(2 bytes)
        if(((address + kte) % 4) == 0){             // Checa se o endereco + a constante remetem a metade menos significativa da word (primeiros 2 bytes)
            aux = 0x0000ffff;                       // Utiliza aux como mascara para selecionar os 2 primeiros bytes da word sem alterar os 2 ultimos bytes
            res = mem[(address + (kte / 4))/4];     // Passa para res o valor do vetor mem na posicao endereco + constante / 4
            res &= aux;                             // Utiliza a mascara para selecionar apenas os dois primeiros bytes da word e passar para res
        }
        else if(((address + kte) % 4) == 2 ||
                ((address + kte) % 4) == -2){      // Checa se o endereco + a constante remetem a metade mais significativa da word (ultimos 2 bytes)
            aux = 0xffff0000;                       // Utiliza aux como mascara para selecionar os 2 ultimos bytes da word sem alterar os 2 primeiros bytes
            res = mem[(address + (kte / 4))/4];     // Passa para res o valor do vetor mem na posicao endereco + constante / 4
            res &= aux;                             // Utiliza a mascara para selecionar apenas os dois ultimos bytes da word e passar para res
            res >>= 16;                             // Faz um deslocamento de 2 bytes para a direita, para que o res retorne apenas 2 bytes de uma half word
        }
        return res;
    }
    else                                            // Caso a constante e o endereco nao sejam divisiveis por 2, retorna 0 e reporta erro.
        printf("ERRO! REPITA O COMANDO\n");
        return 0;
}

int32_t lb(uint32_t address, int16_t kte){          // Le um endereco e uma constante para retornar um byte de 8 bits gravada no vetor mem[MEM_SIZE]
	int32_t aux, res;                               // Inicializa a variavel res, para retorno; e a variavel aux, utilizada como mascara para manipulacao da funcao
    if(((address + kte) % 4) == 0){                 // Checa se o endereco + a constante remetem ao primeiro byte da word
        aux = 0x000000ff;                           // Utiliza aux como mascara para selecionar o primeiro byte da word sem alterar os 3 outros bytes da word
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4
        res &= aux;                                 // Utiliza a mascara para selecionar apenas o primeiro byte da word e passar para res
    }
    else if(((address + kte) % 4) == 1 ||           
            ((address + kte) % 4) == -1){           // Checa se o endereco + a constante remetem ao segundo byte da word
        aux = 0x0000ff00;                           // Utiliza aux como mascara para selecionar o segundo byte da word sem alterar os 3 outros bytes da word
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4
        res &= aux;                                 // Utiliza a mascara para selecionar apenas o segundo byte da word e passar para res
        res >>= 8;                                  // Faz um deslocamento de 1 byte para a direita, para que o res retorne apenas o primeiro byte da word
    }
    else if(((address + kte) % 4) == 2 || 
            ((address + kte) % 4) == -2){           // Checa se o endereco + a constante remetem ao terceiro byte da word
        aux = 0x00ff0000;                           // Utiliza aux como mascara para selecionar o terceiro byte da word sem alterar os 3 outros bytes da word
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4
        res &= aux;                                 // Utiliza a mascara para selecionar apenas o terceiro byte da word e passar para res
        res >>= 16;                                 // Faz um deslocamento de 2 bytes para a direita, para que o res retorne apenas o primeiro byte da word
    }
    else if(((address + kte) % 4) == 3 || 
            ((address + kte) % 4) == -3){           // Checa se o endereco + a constante remetem ao quarto byte da word
        aux = 0xff000000;                           // Utiliza aux como mascara para selecionar o quarto byte da word sem alterar os 3 outros bytes da word
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4
        res &= aux;                                 // Utiliza a mascara para selecionar apenas o quarto byte da word e passar para res
        res >>= 24;                                 // Faz um deslocamento de 3 bytes para a direita, para que o res retorne apenas o primeiro byte da word
    }
    return res;
}
int32_t lbu(uint32_t address, int16_t kte){         // Le um endereco e uma constante para retornar um byte sem sinal de 8 bits gravada no vetor mem[MEM_SIZE]
	int32_t aux, res;                               // Inicializa a variavel res, para retorno; e a variavel aux, utilizada como mascara para manipulacao da funcao
    if(((address + kte) % 4) == 0){                 // Checa se o endereco + a constante remetem ao primeiro byte da word
        aux = 0x000000ff;                           // Utiliza aux como mascara para selecionar o primeiro byte da word sem alterar os 3 outros bytes da word
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4
        res &= aux;                                 // Utiliza a mascara para selecionar apenas o primeiro byte da word e passar para res
    }
    else if(((address + kte) % 4) == 1 ||           
            ((address + kte) % 4) == -1){           // Checa se o endereco + a constante remetem ao segundo byte da word
        aux = 0x0000ff00;                           // Utiliza aux como mascara para selecionar o segundo byte da word sem alterar os 3 outros bytes da word
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4
        res &= aux;                                 // Utiliza a mascara para selecionar apenas o segundo byte da word e passar para res
        res >>= 8;                                  // Faz um deslocamento de 1 byte para a direita, para que o res retorne apenas o primeiro byte da word
    }
    else if(((address + kte) % 4) == 2 || 
            ((address + kte) % 4) == -2){           // Checa se o endereco + a constante remetem ao terceiro byte da word
        aux = 0x00ff0000;                           // Utiliza aux como mascara para selecionar o terceiro byte da word sem alterar os 3 outros bytes da word
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4
        res &= aux;                                 // Utiliza a mascara para selecionar apenas o terceiro byte da word e passar para res
        res >>= 16;                                 // Faz um deslocamento de 2 bytes para a direita, para que o res retorne apenas o primeiro byte da word
    }
    else if(((address + kte) % 4) == 3 || 
            ((address + kte) % 4) == -3){           // Checa se o endereco + a constante remetem ao quarto byte da word
        aux = 0xff000000;                           // Utiliza aux como mascara para selecionar o quarto byte da word sem alterar os 3 outros bytes da word
        res = mem[(address + (kte / 4))/4];         // Passa para res o valor do vetor mem na posicao endereco + constante / 4
        res &= aux;                                 // Utiliza a mascara para selecionar apenas o quarto byte da word e passar para res
        res >>= 24;                                 // Faz um deslocamento de 3 bytes para a direita, para que o res retorne apenas o primeiro byte da word
    }
    return res;
}

void sw(uint32_t address, int16_t kte, int32_t dataw){          // Le um endereco, uma constante e um dado para guardar na posicao endereco + const do vetor mem[MEM_SIZE] o dado de uma word
    if((kte % 4 == 0) && (address % 4 == 0)){                   // Checa se a constante e o endereco digitados sao divisiveis por 4, para gravacao da word(4 bytes)
        mem[(address + (kte / 4))/4] = dataw;                   // Passa o dado da word para a posicao de memoria endereco + constante / 4
    }
    else                                                        // Caso a constante e o endereco nao sejam divisiveis por 4, reporta erro.
        printf("ERRO! REPITA O COMANDO\n");
}

void sh(uint32_t address, int16_t kte, int16_t datahw){         // Le um endereco, uma constante e um dado para guardar na posicao endereco + const do vetor mem[MEM_SIZE] o dado de uma half word
    int32_t res, aux, datahw_intow = 0x00000000;                // Inicializa res, que recebe a memoria previamente escrita; aux como mascara e datahw_intow para transformar o dado de half word em uma word
    if((kte % 2 == 0) && (address % 2 == 0)){                   // Checa se a constante e o endereco digitados sao divisiveis por 2, para gravacao da half word(2 bytes)
        if(((address + kte) % 4) == 0){                         // Checa se o endereco + a constante remetem a metade menos significativa da word (primeiros 2 bytes)
            aux = 0xffff0000;                                   // Utiliza a mascara para zerar os primeiros 2 bytes
            res = mem[(address + (kte / 4))/4];                 // Passa a posicao de memoria endereco + constante / 4 para res
            datahw_intow |= datahw;                             // Passa o dado de half word para uma word, para manipulacao
            res &= aux;                                         // Utiliza a mascara para nao alterar os 2 ultimos bytes da palavra e inserir os 2 primeiros bytes zerados em res
            mem[(address + (kte / 4))/4] = res | datahw_intow;  // Introduz na memoria o dado da half word nos 2 primeiros bytes sem alterar os 2 ultimos bytes previamente definidos
        }
        else if(((address + kte) % 4) == 2 || 
                ((address + kte) % 4) == -2){                   // Checa se o endereco + a constante remetem a metade mais significativa da word (ultimos 2 bytes)
            aux = 0x0000ffff;                                   // Utiliza a mascara para zerar os ultimos 2 bytes
            res = mem[(address + (kte / 4))/4];                 // Passa a posicao de memoria endereco + constante / 4 para res
            datahw_intow |= datahw;                             // Passa o dado de half word para uma word, para manipulacao
            datahw_intow <<= 16;                                // Faz um deslocamento de 2 bytes para a esquerda, para que a gravacao da half word va para os dois ultimos bytes da word
            res &= aux;                                         // Utiliza a mascara para nao alterar os 2 primeiros bytes da palavra e inserir os 2 ultimos bytes zerados em res
            mem[(address + (kte / 4))/4] = res | datahw_intow;  // Introduz na memoria o dado da half word nos 2 ultimos bytes sem alterar os 2 primeiros bytes previamente definidos
        }
    }
    else                                                        // Caso a constante e o endereco nao sejam divisiveis por 2, reporta erro.
        printf("ERRO! REPITA O COMANDO\n");
}

void sb(uint32_t address, int16_t kte, int8_t datab){           // Le um endereco, uma constante e um dado para guardar na posicao endereco + const do vetor mem[MEM_SIZE] o dado de um byte
    int32_t res, aux, datab_intow = 0x00000000;                 // Inicializa res, que recebe a memoria previamente escrita; aux como mascara e datab_intow para transformar o dado de byte em uma word
    if(((address + kte) % 4) == 0){                             // Checa se o endereco + a constante remetem ao primeiro byte da word
        aux = 0xffffff00;                                       // Utiliza a mascara para zerar o primeiro byte
        res = mem[(address + (kte / 4))/4];                     // Passa a posicao de memoria endereco + constante / 4 para res
        datab_intow |= datab;                                   // Passa o dado de byte para uma word, para manipulacao
        res &= aux;                                             // Utiliza a mascara para nao alterar os 3 outros bytes da palavra e inserir o primeiro byte zerado em res
        mem[(address + (kte / 4))/4] = res | datab_intow;       // Introduz na memoria o dado do byte no primeiro byte da word sem alterar os 3 outros bytes previamente definidos
    }
    else if(((address + kte) % 4) == 1 || 
            ((address + kte) % 4) == -1){                       // Checa se o endereco + a constante remetem ao segundo byte da word
        aux = 0xffff00ff;                                       // Utiliza a mascara para zerar o segundo byte
        res = mem[(address + (kte / 4))/4];                     // Passa a posicao de memoria endereco + constante / 4 para res
        datab_intow |= datab;                                   // Passa o dado de byte para uma word, para manipulacao
        datab_intow <<= 8;                                      // Faz um deslocamento de 1 byte para a esquerda, para que a gravacao do byte va para o segundo byte da word
        res &= aux;                                             // Utiliza a mascara para nao alterar os 3 outros bytes da palavra e inserir o segundo byte zerado em res
        mem[(address + (kte / 4))/4] = res | datab_intow;       // Introduz na memoria o dado do byte no segundo byte da word sem alterar os 3 outros bytes previamente definidos
    }
    else if(((address + kte) % 4) == 2 || 
            ((address + kte) % 4) == -2){                       // Checa se o endereco + a constante remetem ao terceiro byte da word
        aux = 0xff00ffff;                                       // Utiliza a mascara para zerar o terceiro byte
        res = mem[(address + (kte / 4))/4];                     // Passa a posicao de memoria endereco + constante / 4 para res
        datab_intow |= datab;                                   // Passa o dado de byte para uma word, para manipulacao
        datab_intow <<= 16;                                     // Faz um deslocamento de 2 bytes para a esquerda, para que a gravacao do byte va para o terceiro byte da word
        res &= aux;                                             // Utiliza a mascara para nao alterar os 3 outros bytes da palavra e inserir o terceiro byte zerado em res
        mem[(address + (kte / 4))/4] = res | datab_intow;       // Introduz na memoria o dado do byte no terceiro byte da word sem alterar os 3 outros bytes previamente definidos
    }
    else if(((address + kte) % 4) == 3 || 
            ((address + kte) % 4) == -3){                       // Checa se o endereco + a constante remetem ao quarto byte da word
        aux = 0x00ffffff;                                       // Utiliza a mascara para zerar o quarto byte
        res = mem[(address + (kte / 4))/4];                     // Passa a posicao de memoria endereco + constante / 4 para res
        datab_intow |= datab;                                   // Passa o dado de byte para uma word, para manipulacao
        datab_intow <<= 24;                                     // Faz um deslocamento de 3 bytes para a esquerda, para que a gravacao do byte va para o quarto byte da word
        res &= aux;                                             // Utiliza a mascara para nao alterar os 3 outros bytes da palavra e inserir o quarto byte zerado em res
        mem[(address + (kte / 4))/4] = res | datab_intow;       // Introduz na memoria o dado do byte no quarto byte da word sem alterar os 3 outros bytes previamente definidos
    }
}

void dump_mem(uint32_t address, uint32_t size){                 // Mostra na tela a memoria do ponto inicial ate o tamanho descrito em size
    uint32_t i, j;
    for(i = 0, j = 0; i < size; j++, i += 4){
        printf("mem[%d] = 0x%08x\n", j, mem[j + address]);
    }
}
void run(){                                                     // Funcao utilizada para reconhecimento de opcodes e selecao da funcao apropriada para cada caso, a qual so para na mudanca da flag flagrun.
    char opcode[6];
    uint32_t address, size, dataw, resfunc32;
    int16_t kte, resfunc16, datahw, auxkte;
    uint16_t resfunc16u;
    int8_t resfunc8, datab;
    uint8_t resfunc8u;
    int flagrun = 1;                                            // Flag utilizada para execucao do codigo, que so muda valor quando selecionado exit
    do{
        printmenu();
        scanf(" %s", opcode);
        if(strcmp(opcode, "lw") == 0){
            printf("Digite o endereco e a constante(multiplos de 4) para leitura da palavra\n\n");
            printf(">> ");
            scanf("%u %hd", &address, &kte);
            resfunc32 = lw(address, kte);       
            printf("mem[%d] = 0x%08x\n", (address + kte) / 4, resfunc32);       // Mostra na tela o valor da memoria em hexadecimal
            printf("mem[%d] = %d\n", (address + kte) / 4, resfunc32);           // Mostra na tela o valor da memoria em decimal
            printf("Pressione enter para continuar.\n");
            getchar();
            getchar();
            
        }
        else if(strcmp(opcode, "lh") == 0){
            printf("Digite o endereco e a constante(multiplos de 2) para leitura da palavra\n\n");
            printf(">> ");
            scanf("%u %hd", &address, &kte);
            resfunc16 = lh(address, kte);
            resfunc16u = resfunc16;
            printf("mem[%d] = 0x%04hx\n", (address + kte) / 4, resfunc16u);     // Mostra na tela o valor da memoria em hexadecimal
            printf("mem[%d] = %d\n", (address + kte) / 4, resfunc16);           // Mostra na tela o valor da memoria em decimal
            printf("Pressione enter para continuar.\n");
            getchar();
            getchar();
        }
        else if(strcmp(opcode, "lhu") == 0){
            printf("Digite o endereco e a constante(multiplos de 2) para leitura da palavra\n\n");
            printf(">> ");
            scanf("%u %hd", &address, &kte);
            resfunc16u = lhu(address, kte);
            printf("mem[%d] = %u\n", (address + kte) / 4, resfunc16u);          // Mostra na tela o valor da memoria em decimal
            printf("Pressione enter para continuar.\n");
            getchar();
            getchar();
        }
        else if(strcmp(opcode, "lb") == 0){
            printf("Digite o endereco e a constante para leitura da palavra\n\n");
            printf(">> ");
            scanf("%u %hd", &address, &kte);
            resfunc8 = lb(address, kte);
            resfunc8u = resfunc8;
            printf("mem[%d] = 0x%02hhx\n", (address + kte) / 4, resfunc8u);       // Mostra na tela o valor da memoria em hexadecimal
            printf("mem[%d] = %d\n", (address + kte) / 4, resfunc8);            // Mostra na tela o valor da memoria em decimal
            printf("Pressione enter para continuar.\n");
            getchar();
            getchar();
        }
        else if(strcmp(opcode, "lbu") == 0){
            printf("Digite o endereco e a constante(multiplos de 2) para leitura da palavra\n\n");
            printf(">> ");
            scanf("%u %hd", &address, &kte);
            resfunc8u = lbu(address, kte);
            printf("mem[%d] = %u\n", (address + kte) / 4, resfunc8u);           // Mostra na tela o valor da memoria em decimal
            printf("Pressione enter para continuar.\n");
            getchar();
            getchar();
        }
        else if(strcmp(opcode, "sw") == 0){
            printf("Digite o endereco, a constante(multiplos de 4) e o dado a ser guardado\n\n");
            printf(">> ");
            scanf("%u %hd", &address, &kte);
            auxkte = kte;
            scanf("%x", &dataw);
            sw(address, kte, dataw);
        }
        else if(strcmp(opcode, "sh") == 0){
            printf("Digite o endereco, a constante(multiplos de 2) e o dado a ser guardado\n\n");
            printf(">> ");
            scanf("%u %hd", &address, &kte);
            auxkte = kte;
            scanf("%hx", &datahw);
            sh(address, auxkte, datahw);
        }
        else if(strcmp(opcode, "sb") == 0){
            printf("Digite o endereco, a constante o dado a ser guardado\n\n");
            printf(">> ");
            scanf("%u %hd", &address, &kte);
            auxkte = kte;
            scanf("%hhx", &datab);
            sb(address, auxkte, datab);
        }
        else if(strcmp(opcode, "dump") == 0){
            printf("Digite o endereco de inicio e o tamanho da memoria a ser lida\n\n");
            printf(">> ");
            scanf("%u %u", &address, &size);
            dump_mem(address, size);
            printf("Pressione enter para continuar.\n");
            getchar();
            getchar();
        }
        else if(strcmp(opcode, "exit") == 0){
            break;        // Sai do programa
        }
    }while(flagrun);
}

int main(){
    run();
    return 0;
}