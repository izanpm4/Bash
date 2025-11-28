#!/bin/bash

#Este Script es de Izan Patiño Martínez
echo "IMC -> Índice de Masa Corporal"
echo "---"
echo "Vamos calcular tu IMC"
echo " "
resp=si

while [ $resp == "si" ]; do
	read -p "Escriba su nombre -> " nombre
	echo "Hola $nombre, espero que estes bien"
	echo "	vamos a calcular tu IMC"
	echo " "
	read -p "Indique su altura (en cm) -> " altura
	read -p "Indique su peso (en Kg) -> " peso
	peso2=$(echo "scale=2; $peso * 10000" | bc)
	echo "---"
	echo " "
	talla=$(echo "scale=2; $altura * $altura" | bc)
	IMC=$(echo "scale=2; $peso2 / $talla" | bc)
	echo "Tu [ IMC ] es: $IMC"
	echo "---"
	echo "Tu peso es de -> "
	if (( $(echo "$IMC <= 18.5" | bc -l) )); then
		echo "Tienes un peso inferior al promedio"
	elif (( $(echo "$IMC < 25" | bc -l) )); then
		echo "Tienes un peso normal"
	elif (( $(echo "$IMC < 30" | bc -l) )); then
		echo "Tienes sobrepeso"
	else
		echo "Tienes obsidad"
	fi
	echo "---"
	echo " "
	echo "El resultado del cálculo del IMC es válido solo para mayores de 18 años. No es aplicable a niños, ni a adolescentes si no se introduce un factor de corrección. Si estás embarazada, el IMC tampoco es para ti."
	echo "---"
	echo " "
	read -p "Quieres volver a calcular? -> " resp
done

exit 0 
