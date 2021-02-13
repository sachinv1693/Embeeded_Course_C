# Tilte:  To read a number and print the pattern 2
# Author: Sachin Vaze
# Date: 15-7-2019
# Description: i/p: Read a number from user										 o/p: Displays the pattern 


#!/bin/bash

echo -n "Enter a number: "
read num

for i in $(seq 1 $num)			# To move row by row
do

		for j in $(seq 1 $i)	# To move columns by colums 
		do

				echo -n "$i "
				i=$((i + 1))
		done

		echo
done

