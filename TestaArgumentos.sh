##################################################################
#   		Testa para saber se o usuário entrou
#			entrou com os argumentos necessários
##################################################################
#!/bin/bash
if [ ! $# -eq 2 ] 		 #Necessita que o usuário entre com 
						 #dois argumentos
then
	echo "Scrpit finalizado, por favor entre com os argumentos necessários."
	exit 1		#Sai do script com erro
fi 
echo "Os argumentos digitados foram: $*"
exit 0

