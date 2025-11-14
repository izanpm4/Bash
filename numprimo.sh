#!/bin/bash

echo "Vamos a intentar sacar si un número es primo"
sleep 0.5
echo "Dame un número"
read -p "Número : " num
if [ $num -lt 2 ]; then 
	echo "$num no es primo"
	exit 1
fi
for (( i=2; i<$num; i++ )); do
	if (( $num % i == 0 )); then
		echo "$num no es primo"
		exit 1
	fi
done

echo "$num es primo"

exit 0 

