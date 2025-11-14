#!/bin/bash

fecha=$(date +%S) 
echo "---"
echo "Bienvenido, inventigador"
echo "El Faro de Kingsport no se detendra hasta que la señal sea menor a 200"
echo "---"

read -p "Nombre del avión: " nombre
read -p "Peso del avión (kg): " peso
read -p "Velocidad del viento (km/h): " viento
modulo=$(( $fecha % 3 + 1 ))
senyal=$(( ($peso * ($modulo + 1 )) % 100 + ( $viento * 2 ) ))

