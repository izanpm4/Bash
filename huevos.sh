#!/bin/bash

echo "Vamos a cocer huevos"
read -p "Dime la cantidad de huevos que caben en la ollas -> " canthuevos
read -p "Dime la cantidad de juevos que hay que cocer -> " huevoscoci
while [ $canthuevos -lt "3" -a $canthuevos -gt "10" ]; do
	echo "Dame una cantidad entre 3 y 10"
	read -p "Cantidad -> " canthuevos
done
tiempo=0
ronda_huevos=10
if [ $canthuevos -ge $huevoscoci ]; then
	result=$(($tiempo + $ronda_huevos))
	echo "En $result min, hemos cocido $huevoscoci huevos"
fi
if [ $huevoscoci -gt $canthuevos ]; then
	while [ $huevoscoci -gt 0 ]; do
        if [ $huevoscoci -gt $canthuevos ]; then
            huevoscoci=$(($huevoscoci - $canthuevos))  
            tiempo=$(($tiempo + $ronda_huevos))  
        else
            tiempo=$(($tiempo + $ronda_huevos)) 
            break  
        fi
    done
    echo "En $tiempo min, hemos cocido todos los huevos"

fi

exit 0 
