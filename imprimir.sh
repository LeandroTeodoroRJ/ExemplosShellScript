######################################################
#              SCRIPT PARA IMPRESSÃO
######################################################
#!/bin/bash
:<< 'Comment'
Script para imprimir:
Imprime com 72 pontos de default na margem esquerda.
Passar como argumento o nome do arquivo para impressão
Imprime na impressora padrão.
Comment

NOME_IMPRESSORA=$(lpstat -p | grep printer | cut -d' ' -f2)
lp -o page-left=72 -d $NOME_IMPRESSORA $1
