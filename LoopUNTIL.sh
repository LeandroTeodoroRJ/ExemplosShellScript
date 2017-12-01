######################################################
#      Instruções de Loop - WHILE
######################################################
#!/bin/bash
:<< 'Comment'
SINTAXE DA INSTRUÇÃO WHILE
until <comando-condição> #Executa o bloco enquanto 
do						 #a condição for FALSA
	Bloco de comandos	
done

Comment
echo "Loop com until"

#Executar o scrpit e depois abrir o firefox
until [ $(ps axu|grep firefox|wc -l) -gt 1 ] #Ficpsa no loop ATÉ o firefox
do											 #ser executado
	echo "Firefox NÃO está em Execução"
	sleep 5
done 
echo "Firefox Executado!"

exit 0






