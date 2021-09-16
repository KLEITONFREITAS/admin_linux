#!/bin/bash
x="teste"
menu ()
{
while true $x != "teste"
do
clear
echo "================================================"
echo " ### Administração básica Linux ### "
echo ""
echo " 1) Instalar um programa"
echo ""
echo " 2) Remover um programa"
echo ""
echo " 3) Atualizar o sitema"
echo ""
echo " 4) Instalar dependências"
echo ""
echo " 5) Limpando programas defeituosos "
echo ""
echo " 6) Corrigir erros"
echo ""
echo " 7) Apps Default PUGA Studios"
echo ""
echo " 8) Sobre"
echo ""
echo " 99) Sair do programa"
echo ""
echo "================================================"

read -p " Digite a opção desejada: " x

echo " Opção informada ($x)"
echo "================================================"

case "$x" in

    1)
      echo " Informe o nome do pacote para ser instalado?"
      read nome
      apt-get install $nome
      sleep 2

echo "================================================"
;;
    2)
      echo " Informe o nome do pacote para ser removido?"
      read nome
      apt-get remove --purge $nome
      sleep 2
echo "================================================"
;;
   3)
      echo " Atualizando os repositóriosdo  sistema..."
      echo "apt-get update"
      apt-get update
      echo "apt-get upgrade -y"
      apt-get upgrade -y
      apt --fix-broken install
      sleep 2
echo "================================================"
;;
    4)
       echo " Iniciando o processo..."
       apt-get -f install
       sleep 2
echo "================================================"
;;
     5)
       echo " Corrigindo erros..."
       apt-get autoremove
       sleep 2
echo "================================================"
;;
    6)
      echo " Reparando..."
      dpkg --configure -a
      sleep 2

echo "================================================"
 ;;
    7)
      echo " Instalação dos Apps Defauls PUGA Studios ..." 
      #rm /etc/apt/preferences.d/nosnap.pref
      #apt update
      #apt install snapd
      #snap install slack --classic
      apt install numlockx
      wget "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb
      dpkg -i discord.deb
      wget -q -O - https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
      dpkg -i  google-stable-current_amd64.deb    
      sleep 5
echo "================================================"
;;
 8)
      echo " Sobre ..." 
      sleep 5 
echo "================================================"
;;

    99)
      echo " Good byeee..."
      sleep 2
      clear;
      exit;
echo "================================================"
;;

*)
        echo " Opção inválida!"
esac
done

}
menu
