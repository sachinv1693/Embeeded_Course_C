# Title: Script to replace 20% of the lines randomly in a file with a pattern
# Author: Sachin Vaze
# Date: 28-7-2019
# Description: i/p: File name with path through command line 					 o/p: Displays after replaced the line

#!/bin/bash
if [ $# -ne 0 ]								# To check for input validation
then
		lines=`wc -l $1 | cut -d " " -f1`  # To get all the line in the file
		delline=`echo 0.2 \* $lines | bc` # To get the 20% of the lines

		echo "Before replacing--------->"
		cat $1
		echo "After replacing---------->"
		for i in $(seq 1 $delline)			# To  run loop for the number of line to be deleted
		do							
				ran=`shuf -i 1-$lines -n1`		# To generate random number 
				sed -i "${ran}d" $1				# To delete the line
				sed -i "${ran}i \ <.............Delete............>" $1											 # To place the pattern in the line
		done
		cat $1

else 
		echo "Error: No argument passed"
fi
