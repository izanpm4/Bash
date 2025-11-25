
#!/bin/bash
# This Script is by Izan Patiño Martínez
echo "Vamos a recrear el juego del impostor"
read -p "Seleccione el número de jugadores -> " num_jugadores
while [ $num_jugadores -lt "3" -o $num_jugadores -gt 10 ]; do
        echo " "
        echo "Seleccione un número entre 3 y 10"
        read -p "Seleccione un número de jugadores -> " num_jugadores
done
echo " "
echo "Ahora vamos a preguntar el nombre de cada jugador"
echo "---"
declare -a jugadores
for (( i=1; i<=num_jugadores; i++ )); do
        read -p "Jugador $i -> " nombre
        jugadores+=("$nombre")
done
if [ ! -f "100palabras.txt" ]; then
        echo "ERROR: No se encuentra archivo_100_palabras.txt"
        exit 1
fi
mapfile -t palabras < 100palabras.txt
total_palabras=${#palabras[@]}
# -----------------------------
# Elegir palabras aleatorias
# -----------------------------
indice_normal=$(( RANDOM % total_palabras ))
indice_impostor=$(( RANDOM % total_palabras ))
# Asegurar que no sean la misma palabra
while [ "$indice_impostor" -eq "$indice_normal" ]; do
        indice_impostor=$(( RANDOM % total_palabras ))
done
palabra_normal="${palabras[$indice_normal]}"
palabra_impostor="${palabras[$indice_impostor]}"
# -----------------------------
# Elegir impostor
# -----------------------------
indice_impostor_jugador=$(( RANDOM % num_jugadores ))
echo "Asignando palabras..."
echo "--------------------------------"
for (( i=0; i<num_jugadores; i++ )); do
        jugador="${jugadores[$i]}"
        if [ "$i" -eq "$indice_impostor_jugador" ]; then
                palabra="Impostor"
        else
                palabra="$palabra_normal"
        fi

        # Mostrar solo el nombre al principio
        clear
        echo "$jugador"
        read -p "Presiona Enter para ver la palabra..."

        # Mostrar el nombre y la palabra del jugador
        clear
        echo "$jugador -> $palabra"
        read -p "Presiona Enter para ver al siguiente jugador..."
done
echo ""
echo "¡Palabras asignadas!"
exit 0
~      
