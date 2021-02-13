# Title: To print chess board
# Author: Sachin Vaze
# Date: 18-7-2018
# Description: 	i/p: No input 
#				0/p: Displays chess board on terminal

#!/bin/bash
clear
length=8
breadth=8

for i in $(seq 1 $length)
do
		for j in $(seq 1 $breadth)
		do
				if [ $((i % 2)) -eq 1 ]
				then

					if [ $((j % 2)) -eq 1 ]
					then
							echo -e -n "\e[47m" " "
					else
							echo -e -n "\e[40m" " "
					fi
				else
						if [ $((j % 2)) -eq 1 ]
						then
							echo -e -n "\e[40m" " "
						else
							echo -e -n "\e[47m" " "
						fi
				fi
		done
		echo -e -n "\e[0m" " "
		echo 
done




