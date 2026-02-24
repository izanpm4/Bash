#!/bin/bash

if [ $# -ne "3" ]; then
	echo "El número es incorrecto"
	echo "Son 3 argumentos"
	exit 1
fi
for arg in "$1" "$2" "$3"
do
	if ! [[ "$arg" =~ ^[0-7]$ ]]; then
		echo "Uno de los tres argumentos no esta entre el 0 y el 7"
		exit 2
	fi
done

permisos() {
	case $1 in
		0) echo "---" ;;
		1) echo "--x" ;;
		2) echo "-w-" ;;
		3) echo "-wr" ;;
		4) echo "r--" ;;
		5) echo "r-x" ;;
		6) echo "rw-" ;;
		7) echo "rwx" ;;
	esac
}
echo "* [ USUARIO ] : $(permisos $1)"
echo "* [ GRUPO   ] : $(permisos $2)"
echo "* [ OTROS   ] : $(permisos $3)"

exit 0 
