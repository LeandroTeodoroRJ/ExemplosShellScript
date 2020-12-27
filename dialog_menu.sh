#dialog --menu <texto> <linhas> <colunas> <tamanho da lista> <opções>
sistema=$(dialog --menu "Escolha a categoria:" 20 35 15 \
1 "Programação" \
2 "Gráfico" \
3 "Office" \
4 "Utilidades" --stdout)
ESCOLHA=$?
clear
echo "Sua opção foi: $sistema"
echo "O botão de saída foi: $ESCOLHA"
