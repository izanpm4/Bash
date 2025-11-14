#!/bin/bash

FILE="example.txt"

if [ -e "$FILE" ]; then
    echo "File $FILE exists. Deleting and recreating..."
    rm "$FILE"
fi

touch "$FILE"
echo "File $FILE has been created."

echo -n "Please enter a number to check if it's prime: "
read number

is_prime=1

if [ "$number" -le 1 ]; then
    is_prime=0
elif [ "$number" -eq 2 ]; then
    is_prime=1
else
    for ((i=2; i<=$((number/2)); i++)); do
        if [ $((number % i)) -eq 0 ]; then
            is_prime=0
            break
        fi
    done
fi

if [ "$is_prime" -eq 1 ]; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

current_time=$(date "+%A, %B %d, %Y %H:%M:%S")
current_second=$(date "+%S")

echo "Current date and time: $current_time"
echo "Current second: $current_second"

if [ "$current_second" -ge 30 ]; then
    result=$((current_second * 10))
    echo "Second is 30 or more, multiplied by 10: $result"
else
    result=$((current_second / 10))
    echo "Second is less than 30, divided by 10: $result"
fi

exit 0 
