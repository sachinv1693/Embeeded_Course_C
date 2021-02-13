# Title: To print the length of each and every string
# Author: Sachin Vaze
# Date: 18-7-2019
# Description: i/p: Command line input											 o/p: string and its length

#!/bin/bash


if [ $# -ne 0 ]
then
		for i in $@
		do
				echo "Length of string ($i)	- ${#i}"
		done
else
		echo "Error: No argument passed"
fi
