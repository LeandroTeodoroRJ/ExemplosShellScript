#dialog --inputbox <texto> <linhas> <colunas> --stdou
nome=$(dialog --inputbox "Digite seu nome" 10 25 --stdout)
ESCOLHA=$?
clear
echo "Seu nome é: $nome"
echo "A escolha foi: $ESCOLHA"
