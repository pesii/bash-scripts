#!/bin/bash

# The script takes user input on how many integers to read
# it then reads those integers and output its average

read -p "How many inputs [1,500] : " numInt

if [[ $numInt -gt 500 ]] || [[ $numInt -lt 1 ]]; then
	echo "Number of inputs must be within [1,500]"
	exit 1
elif [[ $numInt -eq $REPLY ]]; then
	echo "You didn't enter anything"
	exit 1
fi

sum=0
for((i=1; i<= numInt; i++)); do
	read -p "Input: " intElement
	if [[ $intElement -le 10000 ]] && [[ $intElement -ge -10000 ]]; then
		sum=$((sum+intElement))
	else
		echo "Your inputs must be within [-10K,10K]"
		i=$i-1;
	fi
done

AVERAGE=$(eval "echo \"scale=3; $sum / $numInt\" | bc -l")
echo "The average is: $AVERAGE"

