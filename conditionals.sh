#!/bin/bash

# Working with conditional statements
# The program reads only one character from the user
# if the input is y/Y, it'll display "YES"
# Otherwise if character is n/N, the program should echo "NO"

echo -n "y/N: "
read -n 1 userInput;
echo ""

if [ $userInput = "y" ] || [ $userInput = "Y" ]; then
	echo "YES"
elif [ $userInput = "n" ] || [ $userInput = "N" ]; then
		echo "NO"
else
		echo "Invalid option!"
fi
