#!/bin/bash

# Compares integers X and Y, where X and Y are bounded in [-100,100]
# The script computes the sum, difference, product and quotient and prints
# them all respectively.
# The user enters the two integers separately.

echo -n "Enter first integer: "
read int1
echo -n "Enter second integer: "
read int2

# Note: To use >,<,>=,<=; you must place ((double_parentheses)) around the condition whereas lt,gt,ne,le,ge is placed around [single_straight_brackets]
if (( "$int1" > 100 )) || (( "$int1" < -100 )) || 
	[ "$int2" -gt 100 ] || [ "$int2" -lt -100 ]
then 
	echo "Your integers must fall within [-100,100]"
	exit 1;
fi

sum=$(( $int1 + $int2 ))
diff=$(( $int1 - $int2 ))
product=$(( $int1 * $int2 ))

# Catches a potential division by 0
if [ $int2 -ne 0 ] 
then
	quotient=$(( $int1 / $int2 ))
else 
	quotient=0
fi

echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $product"
echo "Quotient: $quotient"

