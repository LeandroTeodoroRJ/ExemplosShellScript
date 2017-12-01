######################################################
#         Entrada de Dados pelo Usuário
######################################################
#!/bin/bash
read -p "Digite seu nome: " NOME	#Lê o valor da entrada padrão e 
					#aloca na variável
echo "Seu nome é: $NOME"
echo -n "Digite o Código:"	#-n para não quebrar a linha	
read -s SENHA			#Entrada formato oculto
echo "Seu código é: $SENHA"

echo "Digite o nome do programa seguido por espaço e o caminho:"
read PROG CAMINHO  #Cada string é alocada em uma variável
echo "O programa é: $PROG"
echo "E o caminho é: $CAMINHO"

exit 0

#Outros exemplos
#read -n1 <variavel>   Só captura uma tecla digitada
