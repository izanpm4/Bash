#!/bin/bash

diale=$(date +%A)
dianum=$(date +%d)
mesle=$(date +%B)
year=$(date +%Y)
read -p "Indique su nombre por favor -> " nombre
echo "---"
echo " "
echo "Bienvenido $nombre"
echo "Hoy es $diale, $dianum de $mesle de $year"
echo "---"
echo " " 
echo "Vamos a comprobar si un número es par o impar"
read -p "Dime un número -> " numero
paroimpar=$(($numero % 2))
if [ $paroimpar == "0" ]; then
	echo "El [ $numero ] es par"
elif [ $paroimpar != "0" ]; then
	echo "El [ $numero ] es impar"
fi
echo "---"
echo " "
archivos=$(find . -maxdepth 1 -type f | wc -l)
carpetas=$(find . -maxdepth 1 -type d | wc -l)
# Restamos 1 para no contar el directorio actual "."
((carpetas=carpetas-1))
echo "Hay $archivos archivos y $carpetas carpetas en el directorio actual."
echo "---"
echo " "
if [ -f "notas.txt" ]; then
    echo "El archivo 'notas.txt' existe. Su contenido es:"
    echo "----------------------------------------"
    cat notas.txt
    echo "----------------------------------------"
else
    echo "No se encontró el archivo 'notas.txt'."
fi
echo "---"
echo " "
{
    echo "===== RESULTADOS DEL EXAMEN ====="
    echo "Nombre: $nombre"
    echo "Fecha: $fecha"
    echo
    echo "Número ingresado: $numero"
    if (( numero % 2 == 0 )); then
        echo "El número es PAR"
    else
        echo "El número es IMPAR"
    fi
    echo
    echo "Archivos: $archivos"
    echo "Carpetas: $carpetas"
    if [ -f "notas.txt" ]; then
        echo
        echo "Contenido de notas.txt:"
        cat notas.txt
    else
        echo
        echo "Archivo notas.txt no encontrado."
    fi
    echo "================================="
    echo " "
    echo " "
    echo " "
} > resultado.log

echo "Los resultados se han guardado en 'resultado.log'."

