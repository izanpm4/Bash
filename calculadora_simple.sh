#!/bin/bash

respuesta=si
numdec="scale=4"
while [ $respuesta == "si" ]; do
	read -p "Dime un número -> " num1
	read -p "Dime otro número -> " num2
	echo " "
	echo "Qué quieres calcular?"
	echo "|----------------------------------------------|"
	echo "| Sumar -> [ s ]          ||   Restar -> [ r ] |"
	echo "|----------------------------------------------|"
	echo "| Multiplicar ->  [ m ]   ||   Dividir [ d ]   |"
	echo "|----------------------------------------------|"
	echo " "
	read -p "Seleccione una letra -> " letra
	echo "Letra elegida: $letra"
	echo " "
	while [ $letra !=  "s" -a $letra != "r" -a $letra != "m" -a $letra != "d" ]; do
        	echo "La letra escoguida no es valida"
        	echo "Pruebe otra vez, por favor"
        	echo " "
        	read -p "Seleccione una letra valida -> " letra
	done
	if [ $letra == "s" ]; then
		resulsuma=$(echo "$numdec; $num1 + $num2" | bc)
		echo "$num1 + $num2"
		echo "$num1 + $num2 = $resulsuma"
	fi
	if [ $letra == "r" ]; then
                resulresta=$(echo "$numdec; $num1 - $num2" | bc)
                echo "$num1 - $num2"
                echo "$num1 - $num2 = $resulresta"
        fi
	if [ $letra == "m" ]; then
                resulmulti=$(echo "$numdec; $num1 * $num2" | bc)
                echo "$num1 x $num2"
                echo "$num1 x $num2 = $resulmulti"
        fi
	if [ $letra == "d" ]; then
		resuldivi=$(echo "$numdec; $num1 / $num2" | bc)
                echo "$num1 / $num2"
                echo "$num1 / $num2 = $resuldivi"
        fi
	echo "Quieres calcular otra vez?"
	echo "s -> si | cualquier otra cosa -> no"
        read -p "Deseas calcular otro avi? Respuesta ->  " respuesta
	echo " "
done

exit 0 




