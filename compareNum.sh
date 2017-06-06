#!/bin/bash

# Comparing numbers X and Y, identifying if X>Y,vice-versa,X=Y
# Input Format: Two lines containing each integers

echo -n "X: "
read num1
echo -n "Y: "
read num2
echo ""

if (( $num1 == $num2 )); then
	echo "X is equal to Y"
else 
	if (( $num1 > $num2 )); then
		echo "X is greater than Y"

	else 
		echo "X is less than Y"
	fi
fi
