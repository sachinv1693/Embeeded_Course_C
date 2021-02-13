# Title: To print contents of file from given line number to next given number of lines
# Author: Sachin Vaze
# Date: 20-7-2019
# Description:	i/p: Pass starting line number, Number of lines and filename through command-line arguments												  o/p: Script will print n lines from given staring line


#!/bin/bash
if [ $# -ne 0 ]
then
		head -$(($1 + $2 - 1)) $3 | tail -$2	# To displays the lines given by user
else
		echo "Error: No argument passed"
fi
