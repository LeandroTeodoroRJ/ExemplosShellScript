######################################################
#      Instruções de Loop - WHILE
######################################################
#Abrir o Firefox, executar o script e depois fechar o firefox
#!/bin/bash
:<< 'Comment'
SINTAXE DA INSTRUÇÃO WHILE
while <comando-condição>
do
	Bloco de comandos
done

Comment
echo "Loop com while"

COUNT=1
while [ $COUNT -le 10 ]		  #Menor ou igual a 10
do
	echo "Contador=$COUNT"
	COUNT=$(expr $COUNT + 1)  #Incrementa 1 unidade e armazena em COUNT
done 

while [ $(ps axu|grep firefox|wc -l) -gt 1 ] #Fica no loop enquanto o firefox
do											 #estiver sendo executado
	echo "Firefox em Execução"
	sleep 5
done 

exit 0






