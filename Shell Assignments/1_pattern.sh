# Title: To read a number and generate a pattern
# Author: Sachin Vaze
# Date: 15-7-2019
# Description: i/p: A number indicating total rows in pattern					 o/p: Displays the pattern 


#!/bin/bash

echo -n "Enter a number: "
read num


for i in $(seq 1 $num)				# To move  row by row
do

		for j in $(seq 1 $i)			# To move columns by columns
		do
				echo -n "$j "
		done
		echo
done

