#!/usr/bin/env bash

countD=$(ls -1 -F -A | grep / | wc -l)

echo "no. of dir: $countD"

countA=$(ls -1 -F -A | wc -l)

echo "no. of files including dir: $countA"

countF=$(echo "$countA - $countD" | bc -l)

echo "no. of files: $countF"

echo "please guess how many files are in this folder"

read num

echo "$num"

while [[ $num -ne $countF ]]
do
	if [[ $num -gt $countF ]]
	then
		echo "you guessed too high of a number"
	else
                echo "you guessed too low of a number"
	fi
	echo "please guess again"
	read  num
done
