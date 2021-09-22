#!/bin/bash
x="teste"
menu ()
{
while true $x != "teste"
do
clear
echo "================================================"
echo " ### Administração Básica Linux ### "
echo ""
echo " 1) Instalar um Programa"
echo ""
echo " 2) Remover um Programa"
echo ""
echo " 3) Atualizar o Sistema"
echo ""
echo " 4) Instalar dependências e correções de erros"
echo ""
echo " 5) Apps Default PUGA Studios"
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
      apt install $nome -y
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
      apt update
      echo "apt-get upgrade -y"
      apt upgrade -y
      apt --fix-broken install
      sleep 2
echo "================================================"
;;
    4)
       echo " Iniciando a correção de erros de dependias e pacotes."
       apt clean all
       apt autoremove -y
       apt-f install
       apt --fix-broken install
       dpkg --configure -a       
       sleep 2
echo "================================================"
 ;;
    5)
      echo " Instalação dos Apps Defaults PUGA Studios ..." 
      #rm /etc/apt/preferences.d/nosnap.pref
      #apt update
      #apt install snapd
      #snap install slack --classic
      apt install numlockx grub-customizer vim -y
      wget "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb
      dpkg -i discord.deb
      apt install -f -y
      dpkg --configure -a
      wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
      dpkg -i  google-chrome-stable_current_amd64.deb    
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
