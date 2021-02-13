# Title: Script to display the name of any file-system which have less than 10% free space available
# Author: Sachin Vaze
# Date: 24-7-2019
# Description: i/p: No input needed												 o/p: Displays the filesystem

#!/bin/bash

filesystem=(`df -h | tr -s " " | cut -d " " -f1`)		# To store the all filesystem 

used=(`df -h | tr -s " " | cut -d " " -f5 | cut -d "%" -f1`)	# To store all filesystem used space

length=${#used[@]}
flag=0													# To set the flag if the filesystem found
for i in $( seq 1 $((length - 1)) ) 
do
		if [ ${used[$i]} -gt 90 -a ${used[$i]} -lt 100 ]
		then 
				echo "Filesystem ${filesystem[$i]} have less than 10% freespace"
				flag=1			
		fi
done

if [ $flag -ne 1 ]
then
		echo "None of the Filesystem have less than 10% freespace"
fi
