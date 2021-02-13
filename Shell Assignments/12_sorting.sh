# Title: Script to sort a given number in ascending or descending order
# Author: Sachin Vaze
# Date: 18-7-2019
# Description: 	i/p: Pass numbers through command line
#				o/p: Diplays sorted array according to user choice


#!/bin/bash

array=($@)
length=$(( $# - 1 ))
if [ $# -ne 0 ]
then
		echo "1. Ascending"
		echo "2. Descending"
		echo -n "Please select an option: "

		read option

		if [ $option -eq 1 ]
		then
				for i in $(seq 0 $((length - 1)))
				do
						small=${array[$i]}
						x=$((i + 1))						# To store index of next element
						k=$i								# To store index of comparing element
						for j in $(seq $x $length)
						do
								if [ $small -gt ${array[$j]} ]
								then
										small=${array[$j]}
										k=$j				# To store index of smallest element

								fi
						done
						dnum=${array[$i]}					# Dimmy variable used for swaping
						array[$i]=${array[$k]}				
						array[$k]=$dnum
				done
				echo ${array[@]}

		elif [ $option -eq 2 ]
		then
				for i in $(seq 0 $((length - 1)))
				do
						largest=${array[$i]}
						x=$((i + 1))
						k=$i
						for j in $(seq $x $length)
						do
								if [ $largest -lt ${array[$j]} ]
								then
										largest=${array[$j]}	# To store largest element 
										k=$j					# To store index of largest element

								fi

						done
						dnum=${array[$i]}
						array[$i]=${array[$k]}
						array[$k]=$dnum
				done
				echo ${array[@]}

		else
				echo "Error: Invalid option"
		fi

else 
		echo "Error: No argument passed"
fi
