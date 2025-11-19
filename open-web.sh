#!/bin/bash

# This Script is by Izan Patiño Martínez
# My Github is [ izanpm4 ]
# url of my Github is [ github/izanpm4 ]
echo " "
echo "Select the web , that you want to open"

echo "Options:"
echo "	1) Google"
echo "	2) Youtube"
echo "	3) Metro Valencia"
echo "	4) Aules"
echo "	5) Cambridge Translator"
echo "	6) My Github | github/izanpm4"
echo "--------------------"
echo " " 

read -p "Select a number -> " number 
echo "Number Select -> $number"
echo " "
echo "Perfect, loading..."
echo "loading..."
echo "loading"
echo "---"
echo "Opening the website"

if [ $number == "1" ]; then
	google=https://www.google.com/
	xdg-open "$google"
fi
if [ $number == "2" ]; then
	youtube=https://www.youtube.com/
	xdg-open "$youtube"
fi
if [ $number == "3" ]; then
	metro_valencia=https://www.metrovalencia.es/es/
	xdg-open "$metro_valencia"
fi
if [ $number == "4" ]; then
	aules=https://portal.edu.gva.es/aules/
	xdg-open "$aules"
fi
if [ $number == "5" ]; then
	translator=https://dictionary.cambridge.org/es/translate/
	xdg-open "$translator"
fi
if [ $number == "6" ]; then
	github_izanpm4=https://github.com/izanpm4
	xdg-open "$github_izanpm4"
fi
exit 0 

