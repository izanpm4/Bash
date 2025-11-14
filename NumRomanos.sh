#!/bin/bash

echo "Números Romanos"
cd ~/Escritorio || { echo "No se pudo acceder al escritorio"; exit 1; }
if [[ ! -f numromanos.txt ]]; then
    echo "El archivo numromanos.txt no existe en el escritorio."
    exit 1
fi
cat numromanos.txt
echo "---------------"
echo "Vamos a convertir letras en números"
read -p "Dime una letra -> " letra 
read -p "Dime otra letra -> " letra2
echo " "
valor1=$(grep "^$letra=" numromanos.txt | cut -d'=' -f2)
valor2=$(grep "^$letra2=" numromanos.txt | cut -d'=' -f2)

if [[ -z "$valor1" || -z "$valor2" ]]; then
    echo "Error: una de las letras no está en numromanos.txt"
    exit 1
fi

resultado=$((valor1 + valor2))

echo "El valor de $letra es $valor1"
echo "El valor de $letra2 es $valor2"
echo "----------------------------------"
echo "La suma de $letra + $letra2 es: $resultado"

exit 0 
