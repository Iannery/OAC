#####################################################
# UNIVERSIDADE DE BRASILIA                          #
# MATERIA: OAC - 116394                             #
# Ian Nery Bandeira - 17/0144739                    #
# Projeto e Simulação de um BREG em vhdl.           #
#####################################################

Sumário dos arquivos presentes no trabalho::


Além dos arquivos fonte e testbench em VHDL, o Projeto possui imagens, as quais:

    - Escrita_breg.jpg :: Imagem retirada do modelsim com o funcionamento da escrita
    no breg de forma que cada registrador de 1..31 receba os inteiros 1..31.
    
    - Leitura_breg.jpg :: Imagem retirada do modelsim com o funcionamento da leitura
    no breg de forma que a os registradores de 0..10 são mostrados em r1, de 11..20
    são mostrados em r2 e de 21..31 são mostrados em ambos r1 e r2.

    - Escrita_regzero.jpg :: Imagem retirada do modelsim com a tentativa de escrita no
    registrador 0, seguido de sua leitura. O registrador 0 se mantém com seu valor '0'
    independente das tentativas de escrita nele.

    - Escrita_leitura_1clk.jpg :: Imagem retirada do modelsim com a escrita e leitura
    do registrador 1, no mesmo clock. Com a leitura em r1, pode-se perceber que há um período
    de metainstabilidade no circuito, o qual se observa que na borda de subida do clock o valor
    de r1 é seu valor antigo (escrito durante o processo Escrita_breg.jpg); e, na borda de
    descida, r1 recebe seu novo valor 33.

    - Sintese.jpg :: Imagem da síntese com os parâmetros pós-compilação. 
    

