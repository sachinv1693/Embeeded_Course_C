# Title: To find the largest number from number of arguments using command line arguments
# Author: Sachin Vaze
# Date: 17-7-2019
# Description:	i/p: Pass array through command line argument					  o/p: Display the largest number 


#!/bin/bash

length=$#							# To store the length of the arguments passed from command line
largest=$1


if [ $length -gt 0 ]
then
		for i in $@ 					# To get one by one argument and store in i
		do
				if [ $largest -le $i ]
				then
						largest=$i
				fi

		done

		echo "Largest value is $largest"

else 
		echo "Error: No arguments passed"
fi

