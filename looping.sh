#!/bin/bash

# Script for printing odd numbers from 1..99
# June, 2017
for i in {0..100}
do
	if [ $(($i % 2)) != 0 ]
	then
		echo "$i"
	fi
done
