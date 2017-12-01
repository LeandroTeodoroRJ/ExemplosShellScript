######################################################
#      Instruções de Loop - FOR
######################################################
#!/bin/bash
:<< 'Comment'
SINTAXE DA INSTRUÇÃO FOR
for VARIÁVEL in valor1 valor2 ... valorN
do
	Bloco de comandos
done

Comment
echo "Loop com for"

for VAR in string1 string2	#Não colocar $ antes da variável aqui
do
	echo "O valor da string é: $VAR"
done

for VAR in $(ls)			#Gerando a lista com um comando
do
	echo "O valor da string é: $VAR"
done

for VAR in 1 2 3 4			#Passando uma lista numérica
do
	echo "O valor do inteiro atual é: $VAR"
done

for VAR in {5..10} 	#Passando uma lista numérica, sem espaços entre {}
do
	echo "O valor do inteiro atual é: $VAR"
done

#Comando seq: $seq <inicio> <passo> <fim> (os dois limites estão inclusos)
for VAR in $(seq 11 15)		#Gerando a lista pelo comando seq
do
	echo "O valor do inteiro atual é: $VAR"
done

for VAR in $(seq 16 2 20)	#Passo de 2
do
	echo "O valor do inteiro atual é: $VAR"
done

for VAR in {22..26..2}	#Início:22 Fim:26 Passo:2
do
	echo "O valor do inteiro atual é: $VAR"
done

exit 0






