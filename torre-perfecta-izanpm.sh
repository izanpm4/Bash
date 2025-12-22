#!/bin/bash
echo "Vamos a comprobar que la torre sea perfecta"
read -p "Dame un número -> " num
suma=0
i=1
while [ $suma -lt $num ]; do
	suma=$(($suma + $i))
	i=$(($i + 1))
done
if [ $suma -eq $num ]; then
	echo "Es una Torre perfecta"
else
	echo "No es una torre perfecta"
fi

exit 0 
