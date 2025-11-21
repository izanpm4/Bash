#!/bin/bash

# This Script is by Izan Patiño Martínez 

read -p "What is your name? -> " name
echo "Hello $name"
echo "Your job start now"
echo " "
echo "To start counting the hours worked, type -> Start"
read -p "Type -> " answer

while [ $answer != "Start" -a $answer != "start" ]; do
        echo " "        
        echo "Incorrect"
        echo "Type -> Start or start"
        echo "---"
        read -p "Type -> " answer
done

echo "--------------------------------"
echo " "
echo " "
if [ $answer == "Start" ] || [ $answer == "start" ]; then
        time=$(date +%H:%M:%S)
        echo "hour -> $time"
        echo "You have started working at -> $time"
        echo " "
        echo "And after starting your day, to end it, write -> Finish"
        read -p "Write -> " answer2
        while [ $answer2 != "Finish" -a $answer2 != "finish" ]; do
                  echo " "
                echo "Incorrect"
                echo "Write -> Finish or finish"
                echo "---"
                read -p "Write -> " answer2
        done
        if [ $answer2 == "Finish" ] || [ $answer2 == "finish" ]; then
                echo " "
                time2=$(date +%H:%M:%S)
                echo "hour -> $time2"
                echo "You have finish working at -> $time2"

                # Convert the start and end times into seconds
                start_seconds=$(date -d "$time" +%s)
                end_seconds=$(date -d "$time2" +%s)

                # Calculate the difference in seconds
                diff_seconds=$(($end_seconds - $start_seconds))

                # Convert seconds back to hours, minutes, and seconds
                hours=$((diff_seconds / 3600))
                minutes=$(((diff_seconds % 3600) / 60))
                seconds=$((diff_seconds % 60))
                echo " "
                echo " "
                echo "---"
                echo "You worked for -> $hours hours, $minutes minutes, and $seconds seconds."
                echo "Good job, $name"
                echo " "
		{
                        echo "Counting hours worked"
                        echo "Name -> $name"
                        echo "$name worked for -> $hours hours, $minutes minutes, and $seconds seconds"
                        echo "---"
                        echo " "
                } >> recount.log
                echo "The time worked has been saved in -> recount.log"
        fi
fi
exit 0

