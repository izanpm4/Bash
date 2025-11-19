#!/bin/bash

# This Script is by Izan Patiño Martínez


echo "We are going to ping several networks"
#Let's make a list of the networks that you can ping
echo "---"
echo " "
echo "Here are the names where you can ping"
	echo"------------------------------"
	echo "1) Google"
	echo "2) Dyn"
	echo "3) Verising"
	echo "4) FreeDNS"
	echo "5) IBM Quad9"
	echo "6) Cloudflare"
	echo "7) Comodo Secure DNS"
	echo "8) CyberGhost"
	echo "-----------------------------"
	echo " "
	read -p "Select a number -> " number
	while [ $number != "1" -a $number != "2" -a $number != "3" -a $number != "4" -a $number != "5" -a $number != "6" -a $number != "7" -a $number != "8" ]; do
		echo "Incorrect"
		read -p "Select a number -> " number
	done
	if [ $number == "1" ]; then
		ping -c 4 8.8.8.8
	fi
	if [ $number == "2" ]; then
		ping -c 4 216.146.35.35
	fi
	if [ $number == "3" ]; then
		ping -c 4 64.6.64.6
	fi
	if [ $number == "4" ]; then
		ping -c 4 37.235.1.174
	fi
	if [ $number == "5" ]; then
		ping -c 4 9.9.9.9
	fi
	if [ $number == "6" ]; then
		ping -c 4 1.1.1.1
	fi
	if [ $number == "7" ]; then
		ping -c 4 8.26.56.26
	fi
	if [ $number == "8" ]; then
		ping -c 4 38.132.106.139
	fi

exit 0 	
