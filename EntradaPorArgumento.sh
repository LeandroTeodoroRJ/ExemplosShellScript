######################################################
#         Entrada de Dados pelo Usuário 
#		Por Parâmetros na Linha de Comando
######################################################
#!/bin/bash

# VAIÁVEIS UTILIZADA PARA TRATAMENTO DE PARÂMETROS
# $0	Guarda o nome do programa ou scrpit com o caminho
# $#	Quantidade de parâmetros inseridos
# $*	Valor de todos os parâmetros recebidos
# $1-9  Valor individual de cada um dos parâmetros

echo "O script $0 recebeu $# parâmetros"
echo "Os parâmetros recebidos foram:"
echo $*
echo "O primeiro parâmetro foi: $1"
echo "O segundo parâmetro foi: $2"

exit 0


