######################################################
#      Instruções Condicionais - CASE
######################################################
#!/bin/bash
:<< 'Comment'
SINTAXE COMANDO CASE
case $VARIÁVEL in
	valor1)
		comando1
		comando2
		;;	#Finalização do bloco
	valor2)
		comando3
		;;
	*)		#Valor default - opcional
		comando4
		comando5
		;;
esac
Comment
echo "Menu: 1-Adicionar; 2-Excluir; 3-Editar"
read -p "Escolha o menu: " MENU
case $MENU in
	1)
		echo "Menu Adicionar"
		;;	#Finalização do bloco de instruções
	2)
		echo "Menu Excluir"
		;;
	3)
		echo "Menu Editar"
		;;	
	*)		
		echo "Menu não encontrado"
		;;
esac

exit 0






