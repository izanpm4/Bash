#!/bin/bash

total_cachorros=0
contador_maldicion=0
salvados_luna=0

for (( dia=1; dia<=365; dia++ )); do
	num_cachorros=$(($RANDOM % 9 + 1))
	total_cachorros=$(($total_cachorros + $num_cachorros))
	echo "La cantidadde cachorros nacidos es: $num_cachorros"

	for (( p=1; p<=num_cachorros; p++ )); do
		resultados=$(( $p % 3 ))
		echo "Día [ $dia ] han nacido [ $num_cachorros ]. Cachorro [ $p ]"
		if [ $resultados -eq 0 ]; then
			contador_maldicion=$(($contador_maldicion  + 1))
			echo "El número de cachoros con la maldicion son: [ $p ]"
			echo "La Negra Cabra de los Bloques con sus Diez Mil Vástagos"
		fi
	done

	if (( dia % 29 == 0 )); then
		salvados_luna=$(($salvados_luna + 1))
		echo "SALVADOS POR LA CABRA, SALVADOS POR SHUN-NIGGURATH"
	else
		echo "Se puede realizar el ritual"
		echo "La Negra Cabra de los Bloques con sus Diez Mil Vástagos"
	fi
	echo "-----"
	echo "-----"
	echo "-----"
done
echo "En el año han nacido [ $total_cachorros ] cachorros en total"
echo "[ $contador_maldicion ] cachorros han recibido el ritual"
echo "[ $salvados_luna ] cachorros se han salvados gracias a la luna"

exit 0 

