# Title: Script to display the number of executable files  
# Author: Sachin Vaze
# Date: 25-7-2019
# Description: i/p: It takes the directory from env PATH						 o/p: Display executable file in each path and total executable files 

#!/bin/bash

totalcount=0

for i in `echo $PATH | tr ':' '\n'`
do
		count=0
		for j in $i/*							# To list the files and directory one after the other
		do

				if [ -x $j ]					# To check for executable files only
				then
						count=$((count + 1))

				fi
		done
		totalcount=$((count + totalcount))			
		echo "Current directory: $i"
		echo "current count: $count"
done
echo "Total - $totalcount"
