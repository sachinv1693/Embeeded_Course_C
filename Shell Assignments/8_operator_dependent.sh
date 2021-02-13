# Title: To perform arithmetic operation on digits of a given number depending upon the operator
# Author: Sachin Vaze
# Date: 18-7-2019
# Decription: i/p: Pass a string through command line							o/p: Display arithmetic operation on digits


#!/bin/bash

str=$1
l=${#str}						    # To store length of string in l

if [ $l -ne 0 ]
then

		op=`echo $1 | cut -b $l`		# To store the operator in opp
		first=`echo $1 | cut -b 1`		# To store first digit in first 

		case $op in

				+)
						sum=$first
						for i in $(seq 2 $((l-1)))
						do
								n=`echo $1 | cut -b $i`
								sum=$((sum + n))
						done
						echo	"Value is $sum"
						;;

				-)
						sub=$first
						for i in $(seq 2 $((l - 1)))
						do
								n=`echo $1 | cut -b $i`
								sub=$((sub - n))
						done
						echo "Value is $sub"
						;;

				\*)
						mul=$first
						for i in $(seq 2 $((l - 1)))
						do
								n=`echo $1 | cut -b $i`
								mul=$((mul * n))
						done
						echo "Value is $mul"
						;;

				/)
						div=$first
						for i in $(seq 2 $((l - 1)))
						do
								n=`echo $1 | cut -b $i`
								div=$((div / n))
						done
						echo "Value is $div"
						;;

				%)
						rem=$first
						for i in $(seq 2 $((l - 1)))
						do
								n=`echo $1 | cut -b $i`
								rem=$((rem % n))
						done
						echo "Reminder is $rem"
						;;

				*)
						echo "Error: Operator missing"
						;;
		esac

else
		echo "Error: No argument passed"
fi


