######################################################
#      		Comandos Break e Continue
######################################################
#!/bin/bash
:<< 'Comment'
COMANDO BREAK: Utilizado para sair do loop
COMANDO CONTINUE: Utilizado para finalizar uma iteração
Comment

echo "Comandos Break e Continue"
echo "1. Break"
for VAR in 1 2 3 4 5 6
do
	if [ $VAR -eq 3 ] 
	then
		echo "Sai do loop"		
		break	#Finaliza o Loop quando for igual a 3		
	fi
	echo "O valor do inteiro atual é: $VAR"
done

echo "2. Continue"
for VAR in 1 2 3 4 5 6
do
	if [ $VAR -eq 3 ] 
	then
		echo "Finaliza essa iteração"
		continue	#Finaliza o Loop quando for igual a 3
	fi
	echo "O valor do inteiro atual é: $VAR"
done

exit 0






