######################################################
#         Validação de entrada de dados
######################################################
#!/bin/bash
if [ ! $# -eq 1 ] #Necessita que o usuário entre com um argumento
then
	echo "Scrpit finalizado, por favor entre com os argumentos necessários."
	exit 1		#Sai do script com erro
fi 

if [[ $1 = ?(+|-)+([0-9]) ]]  #Verifica se o valor é numérico
then 
	echo "Numérico"
else
	echo "Não numérico"
fi

exit 0