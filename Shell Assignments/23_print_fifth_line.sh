# Title: Script to display a specific line from a file
# Author: Sachin Vaze
# Date: 22-7-2019
# Description: i/p: Pass line number and file name through command line					  														   o/p: Displays the line

#!/bin/bash

n=$1
filename=$2
if [ $# -eq 2 ]
then
		echo `head -$n $filename | tail -1`			# To print a specific line
else 
		echo "Error: No argument passed"
fi

