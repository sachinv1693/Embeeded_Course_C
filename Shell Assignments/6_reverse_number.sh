# Title: To print Reverse of the number
# Author: Sachin Vaze
# Date: 17-7-2019
# Description: i/p: Any real number through command line 						 o/p: Display Reverse of the number

#!/bin/bash

function reverse()
{
		x=$num
		rem=0
		while [ $x -ne 0 ]						# To run loop till it reachs the last digit of a number
		do
				rem=$(( x % 10 ))
				rev=`expr $((rev * 10)) + $rem`
				x=$((x / 10))

		done
		echo $rev
}

num=$1


if [ ${#num} -eq 0 ]							# To check whether arguments passed or not
then
		echo "Error: No arguments passed"
elif [ $num -lt 10 -a $num -gt -10 ]			# To check whether arguments passed is multidigit or not
then
		echo "Error: pass a multi-digit number"
else
		rev=`reverse $num`
		echo "Reverse number :- $rev"
fi

