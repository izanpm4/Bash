#!/bin/bash

fecha=$(date +%H:%M)
echo "$fecha"
mkdir -p  $HOME/Arkham/Hangers/Terrar
mkdir -p  $HOME/Arkham/Hangers/Profur
mkdir -p  $HOME/Arkham/Hangers/Medea
min=$(date +%M)
if [ $min -ge 0 -a $min -le 4 ]; then
	hangar=Terrar
elif [ $min -ge 5 -a $min -le 9 ]; then
	hangar=Profur
elif [ $min -ge 10 -a $min -le 14 ]; then
        hangar=Medea
elif [ $min -ge 15 -a $min -le 19 ]; then
	hangar=Terrar
elif [ $min -ge 20 -a $min -le 24 ]; then
        hangar=Profur
elif [ $min -ge 25 -a $min -le 29 ]; then
        hangar=Medea
elif [ $min -ge 30 -a $min -le 34 ]; then
        hangar=Terrar
elif [ $min -ge 35 -a $min -le 39 ]; then
        hangar=Profur
elif [ $min -ge 40 -a $min -le 44 ]; then
        hangar=Medea
elif [ $min -ge 45 -a $min -le 49 ]; then
        hangar=Terrar
elif [ $min -ge 50 -a $min -le 54 ]; then
        hangar=Profur
elif [ $min -ge 55 -a $min -le 59 ]; then
        hangar=Medea
fi

if [ -L $HOME/Arkham/Hangares/Habilitado ]; then
    rm $HOME/Arkham/Hangares/Habilitado
fi

ln -s $HOME/Arkham/Hangares/$hangar $HOME/Arkham/Hangares/Habilitado

ls -l $HOME/Arkham/Hangares/Habilitado

exit 0 
