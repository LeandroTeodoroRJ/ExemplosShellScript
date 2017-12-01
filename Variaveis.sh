######################################################
#     Declarando e utilizando variáveis
######################################################
#!/bin/bash
DATAHORA=$(date +%H:%M) #Inicialização de variável com
						#o resultado do comando
						#(colocar espaço no = ocasiona erro!)
TEXTO="Hello World"		#Inicializa com uma string
TEXTO2="$TEXTO - Hello Brazil"  #Concatenando strings
CAMINHO="/home/leandro/ShellScript/" 
$clear
echo "Hora do sistema: $DATAHORA" #Imprime na saída padrão 
				  				  #já concatenando a string com
    				  			  #a variável.
$echo $TEXTO			#Imprime na saída pafrão o valor da variável
echo $TEXTO2
ls -lh $CAMINHO |more	#Executa o comando utilizando a variável


