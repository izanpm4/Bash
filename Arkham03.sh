#!/bin/bash

west_pasos="100"
boundary_pasos="100"
crane_pasos="100"
paralela_pasos="100"
college_pasos="300"

total_pasos=0

ruta1="1-Crane 2-West 3-College"
ruta2="1-Boundary 2-Paralela 3-College"
ruta3="1-Boundar 2-Paralela 3-College"
ruta4="1-Boundary 2-Crane 3-West 4-College"

fecha=$(date +%H:%M)
echo "$fecha"
min=$(date +%M)
if [ $min -ge 0 -a $min -le 14 ]; then
	#$crane_pasos
	#$west_pasos
	#$college_pasos
	let total_pasos=$crane_pasos+$west_pasos+$college_pasos
	echo "Son las $fecha y debes tomar la ruta $ruta1"
	echo "La cantidad de pasos es: $total_pasos"
elif [ $min -ge 15 -a $min -le 29 ]; then
	#$boundary_pasos
	#$paralela_pasos
	#$college_pasos
	let total_pasos=$boundary_pasos+$paralela_pasos+$college_pasos
	echo "Son las $fecha y debes tomar la ruta $ruta2"
	echo "La cantidad de pasos es: $total_pasos"
elif [ $min -ge 30 -a $min -le 44 ]; then
	#$boundary_pasos
	#$paralela_pasos
	#$college_pasos
	let total_pasos=$boundary_pasos+$paralela_pasos+$college_pasos
	echo "Son las $fecha y debes tomar la ruta $ruta3"
	echo "La cantidad de pasos es: $total_pasos"
elif [ $min -ge 45 -a $min -le 59 ]; then
	#$boundary_pasos
	#$crane_pasos
	#$west_pasos
	#$college_pasos
	let total_pasos=$boundary_pasos+$crane_pasos+$west_pasos+$college_pasos
	echo "Son las $fecha y debes tomar la ruta $ruta4"
	echo "La cantidad de pasos es: $total_pasos"
fi

exit 0 
