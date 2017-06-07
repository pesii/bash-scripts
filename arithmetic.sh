#!/bin/bash

# Weird exercise, but this script takes an input of numbers
# and their defined operation (+,-,*,^,/) and evaluates the expression

echo "Commands:"
echo -e "\thelp - displays this menu"
echo -e "\tquit - exits the program"

while read -p "Input: " userInput  && [[ $userInput != "quit" ]]; do
	if [[ $userInput = "help" ]] || [[ $userInput = "?" ]]; then
		echo "This script evaluates mathematical expressions"
		echo "with precision to the 3rd decimal place"
		echo "Supported operations are (+,-,*,/,^)"
		echo ""
		echo "Example: (2+2) - 3*(9^2)"
		echo ""
		echo "Commands:"
		echo -e "\thelp - displays this menu"
		echo -e "\tquit - exits the program"
	elif [[ $userInput == $REPLY ]]; then
		echo "Bad input."
	else
		echo "scale = 3; $userInput" | bc -l
	fi
done

exit 0;
