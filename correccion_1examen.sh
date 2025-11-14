#!/bin/bash


# Constante de gravedad (m/s*s), aunque en Arkham todo es relativo
g=9.81

#Variable para controlar el bucle del ritual
respuesta="s"
echo "Bienvenido, acólito. Prepárate para invocar los cálculos
prohibidos..."
# Recordad que se puede usar bc para calcular cosas con dos decimales (suficente)
# Ejemplo (quitar mas adelante).
echo "scale=2; 111 * 100 / 666" | bc

while [ $respuesta = "s" ]; do
	read -p "Invoca el nombre del avión -> " nombre
	read -p "Introduce el peso del avión -> " peso
	read -p "Introduce la velocidad de despegue -> " velocidad 

	velocidadms=$(echo "scale=2; $velocidad * 1000 / 3600" | bc)
	metros=$(echo "scale=2; $velocidad*$velocidadms  / 2 * $g" | bc)
	echo " "
	echo "El avión $nombre requiere $metros metros de pista"
	echo " "
	echo "Quieres calcular otro avión?"
	echo "s -> si | cualquier otra cosa -> no"
	read -p "Deseas calcular otro avión? " respuesta
done

exit 0 
