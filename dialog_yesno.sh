#dialog --title <título> --yesno <texto> <linhas> <colunas>
dialog --title "Caixa yesno" --yesno "Escolha Sim ou Não" 10 25
ESCOLHA=$?
clear
echo "A escolha foi: $ESCOLHA"
