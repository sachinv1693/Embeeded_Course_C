# Title: Script to convert string lower	to upper and upper to lower
# Author: Sachin Vaze
# Date: 23-7-2019
# Description: i/p: Pass file name through command line							 o/p: Display the content of file after convertion

#!/bin/bash



if [ $# -ne 0 ]											# Input validation
then
		echo "1- Lower to upper"
		echo "2- Upper to lower"
		echo -n "Please select the option: "

		read option

		case $option in

				1)
						cat $1 | tr [a-z] [A-Z]					# To change the contents in file from  lower to upper case

						;;

				2)
						cat $1 | tr [A-Z] [a-z]					# To change the contents in file from upper to lower case
						;;

				*)
						echo Error: Invalid option
						;;
		esac

else
		echo "Error: No argument passed"
fi

