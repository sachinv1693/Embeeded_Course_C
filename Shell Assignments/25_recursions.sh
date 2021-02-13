# Title: SCript by using a recurive fuction to print each argument passed to the function
# Author: Sachin Vaze
# Date: 23-7-2019
# Description: i/p: Pass array through command line								 o/p: Displays the each element of array

#!/bin/bash


function recur()
{
		arr=($@)
		if [ $# -ne 0 ]
		then
				echo $1
				recur ${arr[@]:1}					# To call the recursive function and pass arguments except the first one 
		fi
}
if [ $# -ne 0 ]										# Input validation
then
		recur $@									# To call the function and pass all arguments
else
		echo "Error: No argument passed"
fi
