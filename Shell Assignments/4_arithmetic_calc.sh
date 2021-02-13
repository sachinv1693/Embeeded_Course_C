# Title: Script for arithmatic calculations
# Author: Sachin Vaze
# Date: 16-7-2019
# Description:	i/p: Through command line arguments								  o/p: Based on input do the operation and display the output


#!/bin/bash

if [ $# -eq 3 ]
then
		case $2 in 				# Case statement takes the operator from command line

				+)
						sum=`expr "scale=04; $1 + $3" | bc`
						echo "Value is $sum"
						;;
				-)
						sub=`expr "scale=04; $1 - $3" | bc`
						echo "Value is $sub"
						;;
				x)
						prod=`expr "scale=04; $1 * $3" | bc`
						echo "Value is $prod"
						;;
				/)
						div=`expr "scale=04; $1 / $3" | bc`
						echo "Value is $div"
						;;
				%)
						rem=$(( $1 % $3))
						echo "Value is $rem"
						;;
				*)
						echo "Only + - x / % operation are available in this calculator" 

						;;
		esac
else
		echo "You have to enter 3 arguments only"
fi		


