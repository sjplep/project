#!/bin/bash

compare () {
	if ! [[ $1 =~ ^[0-9]+$ ]]
	then
		echo "Sorry integers only!"
	else	
		if [ $1 -lt $2 ]
		then
			echo "Your guess is too low"
		fi
		if [ $1 -gt $2 ]
		then
			echo "Your guess is too high"
		fi
		if [ $1 -eq $2 ]
		then
			echo "Correct, well done!!!"
			finished=1
		fi
	fi
}

finished=0
while [ $finished -eq 0 ]
do
	echo "How many files are in the current directory?"
	read guess
	numberoffiles=`ls | wc -l`
	compare $guess $numberoffiles
done
