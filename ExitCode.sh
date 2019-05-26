######################################################
#     Códigos de erro ou Códigos de Saída 
#	  	  (Exit Codes ou Exit Status) 
######################################################
:<< 'Comment'
Tem a finalidade de informar se o programa foi bem executado
ou se houve erro. Os códigos variam de 0 a 255, sendo 0 para
sucesso e os demais para erro. O exit code do último 
comando executado é armazenado na variável $? 
Comment

#!/bin/bash
ls -lh /tmp/
echo "Exit code do primeiro comando: $?"
ls -lh /tmp/arquivo_inexistente  #Aqui acontece erro
echo "Exit code do primeiro comando: $?"
exit 3	#Sai do script com código de erro 3 (Poderia ser outros valores)
#Depois de executar o script fazer $echo $? para conferir o
#código de saída do programa.