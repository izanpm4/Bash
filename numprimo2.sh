#!/bin/bash

echo "Vamos a sacar la cantidad de primos que hay entre dos números"
echo "Dame el primer número"
read -p "1º Número : " num1
echo "Dame el segundo número"
echo "Que sea más pequeño que $num1"
read -p "2º Número : " num2

while [ $num1 -le $num2 ]; do
	echo "El segundo número tiene que ser menor al primero"
	exit 1
done

contador=0

for (( numero=$num2; numero<=$num1; numero++ )); do
	if [ $numero -le 1 ]; then
		echo "Los números menores o iguales a 1 no son primos"
	fi
	es_primo=1
	if [ $numero -eq 2 ]; then
		es_primo=1
	elif [ $(( numero % 2 )) -eq 0 ]; then
		es_primo=0
	else
		for (( i=3; i*i<=$numero; i+=2 )); do
			if [ $(( numero % i )) -eq 0 ]; then
				es_primo=0
				break
			fi
		done
	fi
	if [ $es_primo -eq 1 ]; then
		contador=$((contador + 1 ))
	fi
done



echo "La cantidad de numeros que hay desde $num1 y $num2 es: $contador"



exit 0
