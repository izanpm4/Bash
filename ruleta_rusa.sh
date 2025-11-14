#!/bin/bash

read -p "Indique su nombre por favor -> " nombre 
vidas=1
echo "------------------------------------------"
echo "Hola $nombre, vamos a jugar a la ruleta rusa, hoy tu seras la victima"
echo "Vamos a empezar"
sleep 0.4
echo "Pero antes de eso te voy a dar la posibilidad de que escogas el arma"
echo "---"
echo "Las opciopnes son 3 armas a escoger"
sleep 0.3
echo "Primera opción -> Phantom"
echo "		Número de balas -> 30"
sleep 0.3
echo "Segunda opción -> Sheriff"
echo "		Número de balas -> 6"
sleep 0.3
echo "Tercera opción -> Outlaw"
echo "		Número de balas -> 2"
echo "---"
echo " "
sleep 0.1
echo "Ahora que ya tienes todas la opciones"
echo "¿Qué arma vás a elegir"
read -p "Arma elegida -> " arma

sleep 0.3


while [ $arma != "Phantom" -a $arma != "Sheriff" -a $arma != "Outlaw" ]; do
	echo "Lo siento, pero el arma no es correcta"
	echo "Escoge una de las opcion"
	read -p "Arma correcta elegida -> " arma
done

if [ $arma == "Phantom" ] || [ $arma == "phantom" ]; then
	Phan=$(($RANDOM%30))
	Phantom=$(($Phan + 1))
	echo "Dime un número del 1 al 30"
	read -p "Número (1 - 30) -> " num1
	while [ $num1 -lt 1 -o $num1 -gt 30 ]; do
		echo "Dame un número valido"
		echo "Tiene que estar entre el 1 y el 30"
		read -p "Número valido -> " num1
	done
	if [ $num1 != $Phantom ]; then
		echo "Te has salvado, que suerte tienes"
	elif [ $num1 -eq $Phantom ]; then
		echo "La bala te ha dado"
		(($vidas - 1))
		echo "Has perdido una visa, te quedan $vidas vidas"
		echo "El juego ha terminado"
		echo "---"
	fi
	echo "Ahora vamos a escoger otro número"
	read -p "Segundo número -> " num2
	while [ $num2 -lt 1 -o $num2 -gt 30 ]; do
                echo "Dame un número valido"
                echo "Tiene que estar entre el 1 y el 30"
                read -p "Número valido -> " num2
        done
	if [ $num2 != $Phantom ]; then
                echo "Te has salvado, que suerte tienes"
        elif [ $num2 -eq $Phantom ]; then
                echo "La bala te ha dado"
                (($vidas - 1))
                echo "Has perdido una visa, te quedan $vidas vidas"
                echo "El juego ha terminado"
                echo "---"
        fi
	echo "Os habeis salvado los dos"
	echo "Os vais a repartir el dinero entre los dos"


fi

if [ $arma == "Sheriff" ]; then
        Sher=$(($RANDOM%6))
        Sheriff=$(($Sher + 1))
        echo "Dime un número del 1 al 30"
        read -p "Número (1 - 6) -> " num3
        while [ $num3 -lt 1 -o $num3 -gt 6 ]; do
                echo "Dame un número valido"
                echo "Tiene que estar entre el 1 y el 6"
                read -p "Número valido -> " num3
        done
        if [ $num3 != $Sheriff ]; then
                echo "Te has salvado, que suerte tienes"
        elif [ $num3 -eq $Sheriff ]; then
                echo "La bala te ha dado"
                (($vidas - 1))
                echo "Has perdido una visa, te quedan $vidas vidas"
                echo "El juego ha terminado"
                echo "---"
        fi
        echo "Ahora vamos a escoger otro número"
        read -p "Segundo número -> " num4
        while [ $num4 -lt 1 -o $num4 -gt 6 ]; do
                echo "Dame un número valido"
                echo "Tiene que estar entre el 1 y el 6"
                read -p "Número valido -> " num4
        done
        if [ $num4 != $Sheriff ]; then
                echo "Te has salvado, que suerte tienes"
        elif [ $num4 -eq $Sheriff ]; then
                echo "La bala te ha dado"
                (($vidas - 1))
                echo "Has perdido una visa, te quedan $vidas vidas"
                echo "El juego ha terminado"
                echo "---"
        fi
        echo "Os habeis salvado los dos"
        echo "Os vais a repartir el dinero entre los dos"


fi

if [ $arma == "Outlaw" ]; then
        Out=$(($RANDOM%2))
        Outlaw=$(($Sher + 1))
        echo "Dime un número del 1 al 2"
        read -p "Número (1 - 2) -> " num5
        while [ $num5 -lt 1 -o $num5 -gt 2 ]; do
                echo "Dame un número valido"
                echo "Tiene que estar entre el 1 y el 2"
                read -p "Número valido -> " num5
        done
        if [ $num5 != $Outlaw ]; then
                echo "Te has salvado, que suerte tienes"
        elif [ $num5 -eq $Outlaw ]; then
                echo "La bala te ha dado"
                (($vidas - 1))
                echo "Has perdido una visa, te quedan $vidas vidas"
                echo "El juego ha terminado"
                echo "---"
        fi
        echo "Ahora vamos a escoger otro número"
        read -p "Segundo número -> " num6
        while [ $num6 -lt 1 -o $num6 -gt 2 ]; do
                echo "Dame un número valido"
                echo "Tiene que estar entre el 1 y el 2"
                read -p "Número valido -> " num6
        done
        if [ $num6 != $Outlaw ]; then
                echo "Te has salvado, que suerte tienes"
        elif [ $num6 -eq $Outlaw ]; then
                echo "La bala te ha dado"
                (($vidas - 1))
                echo "Has perdido una visa, te quedan $vidas vidas"
                echo "El juego ha terminado"
                echo "---"
        fi
        echo "Os habeis salvado los dos"
        echo "Os vais a repartir el dinero entre los dos"


fi

		
exit 0 
