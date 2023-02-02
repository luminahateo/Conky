#!/bin/sh

clear

echo "
 ____________________
| Mise à jour de l'OS
| Install de my conky
|___________________
| Quel est votre OS? 
| F | Fedora
| D | Debian, Pop_OS, Mint, ...
"

read -r choixSys
if [ "$choixSys" = "F" ]; then
  echo "
 ____________________________________________________
| Mettre à jour votre OS avant installation de conky?
| O | Oui
| N | Non
"
  read -r choixMaj
  if [ "$choixMaj" = "O" ]; then
    sudo dnf update
  fi
  if [ ! -f "/usr/bin/conky" ]; then
    sudo dnf install conky
  fi
  echo "
 ____________________
| Mise à jour OS | OK 
| Install conky  | OK
"
  ./installMyConky.sh

elif [ "$choixSys" = "D" ]; then
  echo "
 ____________________________________________________
| Mettre à jour votre OS avant installation de conky?
| O | Oui
| N | Non
"
  if [ "$choixMaj" = "Oui" ]; then
    sudo apt upgrade && sudo apt update
  fi
  if [ ! -f "/usr/bin/conky" ]; then
    sudo apt install conky
  fi
  echo "
 ____________________
| Mise à jour OS | OK
| Install conky  | OK
"
  ./installMyConky.sh

else
    echo "
 _________________
| Fin de Programme 
"
fi
