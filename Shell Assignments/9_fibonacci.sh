# Title: To find the Fibnocci Sequence upto given number
# Author: Sachin Vaze
# Date: 17-7-2019
# Description:  i/p: Command line input
# 				o/p: fibnocci Sequence


#!/bin/bash

num=$1
if [ ${#num} -ne 0 ]
then
		s=0
		i=0
		j=1
		echo "The fibnocci sequence upto the number $num is: "
		while [ $s -le $1 ]
		do

				fbn=$s
				echo -n " $fbn"

				i=$j
				j=$fbn
				s=$((i + j))
				if [ $s -le $1 ]
				then
						echo -n ","
				fi
		done
		echo
		echo "Geatest Value in fibnocci sequence is = $fbn"


else
		echo "Error: No arguments passed"
fi
