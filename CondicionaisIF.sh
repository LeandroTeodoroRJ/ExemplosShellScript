######################################################
#      Instruções Condicionais - IF
######################################################
#!/bin/bash
:<< 'Comment'
Obs: O programa executará o bloco da instrução if se o
comando-condição for bem executado (Exit code 0 - Variável $?)
PARÂMETROS DO COMANDO TEST
Operadores lógicos numéricos
-eq		igual
-ne		não igual (diferente)
-gt		maior que (greater than)
-ge 	maior ou igual
-lt		menor que (lower than)
-le		menor ou igual
Operadores lógicos para strings
=	Uma string igual a outra
!=	Uma string diferente da outra
-n	String não nula
-z	String nula
Operadores lógicos para arquivos
-f 	arquivo - Verdadeiro se o arquivo existe e é um arquivo regular.
-d 	arquivo - Verdadeiro se o arquivo é um diretório. 
-r  Verdadeiro se tem permissão de leitura
-w  Verdadeiro se o arquivo tiver permissão de escrita
-x  Verdadeiro se o arquivo for executável. 
-s  Verdadeiro se o arquivo existe e não estiver vazio.

Mais opções em:
https://www.vivaolinux.com.br/dica/Conhecendo-o-test

Exemplos:
$test 50 -eq 100
$[50 -eq 100]

SINTAXE COMANDO IF
if <comando-condição>
then
	comando1
	comando2
	comando3
fi

SINTAXE COMANDO IF-ELSE
if <comando-condição>
then
	comando1
	comando2
else	
	comando3
fi

SINTAXE COMANDO ELIF
if <comando-condição>
then
	comando1
elif <comando-condição>
then
	comando2
else	
	comando3
fi
Comment

VAR1=12
if test $VAR1 -eq 12
then
	echo Sucesso
fi

if [ $VAR1 -eq 12 ]  #Atenção com os espaços antes de depois dos []
then
	echo Sucesso
fi

if [ ! $VAR1 -gt 15 ]  #! é a negação, atenção com os espaços
then
	echo Sucesso
fi

if [ $VAR1 -eq 12 -a $VAR1 -gt 10 ]  #-a é o operador AND
then
	echo Sucesso
fi

if [ $VAR1 -eq 12 ] && [ $VAR1 -gt 10 ]  #Com o operador && (AND)
then
	echo Sucesso
fi

if [ $VAR1 -eq 9 -o $VAR1 -gt 10 ]  #-o é o operador OR
then
	echo Sucesso
fi

if [ $VAR1 -eq 9 ] || [ $VAR1 -gt 10 ]  #Com operador || (OR)
then
	echo Sucesso
fi

if [ "$1" = "extract" ]      #Compara uma string com a variável
then
	tar xzfv $2         
	exit 0
fi

#Exemplo com comando
USR="Joao"
if grep $USR /etc/passwd > /dev/null #Joga o resultado do comando no blackhole
then
	echo "O usuário existe"
else
	echo "O usuário não existe"
fi

exit 0






