#!/bin/bash

# This program accepts 3 integer which represents sides of a triangle
# and outputs whether it's scalene, equilateral or an isosceles.
# This exercise builds on working with conditional statements in bash

read -p "Side 1: " side1
read -p "Side 2: " side2
read -p "Side 3: " side3

# Exits if the all the variables weren't initialize by user
if [[ side1 -eq REPLY ]] || [[ side2 -eq REPLY ]] || [[ side3 -eq REPLY ]]; then
	echo "You didn't enter all the sides of the triangle!"
	exit 1;
# Handles side constraint
elif (( $side1 < 0 )) || (( $side1 > 1000 )) || 
	(( $side2 < 0 )) || (( $side2 > 1000 )) ||
	(( $side3 < 0 )) || (( $side3 > 1000 )); 
then
	echo "As a constraint, your sides should be in [1,1000]"
	exit 1;
fi

# Provided the previous checks passes, 
# this block of conditionals will determine what kind of triangle was supplied by the user.
if [ $(( side1+side2 )) -gt $side3 ] && 
	[ $(( side1+side3 )) -gt $side2 ] && 
	[ $(( side2+side3 )) -gt $side1 ]; 
then
	echo -n "The triangle is: "

	if [ $side1 -eq $side2 ] && [ $side2 -eq $side3 ]; then
		echo "EQUILATERAL"
	elif [ $side1 -eq $side2 ] || [ $side1 -eq $side3 ] || [ $side2 -eq $side3 ]; then
		echo "ISOCELES"
	elif [ $side1 -ne $side2 ] && [ $side2 -ne $side3 ]; then
		echo "SCALENE:"
	fi	
else
	echo "Your sides does not form a triangle"
fi
