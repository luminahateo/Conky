#!/bin/sh

clear
install=0

echo "
 ________________
| Install conkyrc
|_________________________________
| Quel est votre choix de couleur?
|__________
| 1 | Basic
| 2 | Aqua
| 3 | Rouge
| 4 | Cosmic
| Q | Exit
"

read -r choixColor
if [ "$choixColor" = "1" ]; then
  cp ColorConky/conkyrc ~/
  mv ~/conkyrc ~/.conkyrc
  install=1
elif [ "$choixColor" = "2" ]; then
  cp ColorConky/conkyrc_cyan ~/
  mv ~/conkyrc_cyan ~/.conkyrc
  install=1
elif [ "$choixColor" = "3" ]; then
  cp ColorConky/conkyrc_red ~/
  mv ~/conkyrc_red ~/.conkyrc
  install=1
elif [ "$choixColor" = "4" ]; then
  cp ColorConky/conkyrcCosmic ~/
  mv ~/conkyrcCosmic ~/.conkyrc
  install=1
else
  echo "
 _________________
| Fin de programme
"
fi
if [ "$verif" = "1" ]; then
  echo "
 _____________________
| Install conkyrc | OK
"
fi


#Installation autostart Gnome 3 / 4
echo "
 __________________
| Install autostart
"
cp Lanceur/myConky.desktop ~/.config/autostart/

#Lancement de myConky
cd /usr/bin/ && ./conky
echo "
 _______________________
| Install autostart | OK
"
