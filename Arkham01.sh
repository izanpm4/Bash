#!/bin/bash

semaforo2=Ambar
semaforo6=Ambar
semaforo8=Ambar

smfr2=Verde
smfr6=Verde
smfr8=Verde

echo "Bienvenido al sistema de Trafico de Arkham"
echo "--> Accediendo a RiverStreet"
sleep 0.5
echo "--> Indique que semaforo desea establecer a Verde"
echo "2)"
echo "6)"
echo "8)"
echo "Número de Semaforo?"
read -p "Semaforo -> " smfr
sleep 0.5
if [ $smfr == "2" ]; then
	echo "Semaforo Calle 2 : $smfr2"
	echo "Semaforo Calle 6 : $semaforo6"
	echo "Semaforo Calle 8 : $semaforo8"
fi
if [ $smfr == "6" ]; then
        echo "Semaforo Calle 2 : $semaforo2"
        echo "Semaforo Calle 6 : $smfr6"
        echo "Semaforo Calle 8 : $semaforo8"
fi
if [ $smfr == "8" ]; then
        echo "Semaforo Calle 2 : $semaforo2"
        echo "Semaforo Calle 6 : $semaforo6"
        echo "Semaforo Calle 8 : $smfr8"
fi
exit 0  
