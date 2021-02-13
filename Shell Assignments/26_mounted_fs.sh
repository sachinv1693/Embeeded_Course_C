# Title: To determine whether a given file system or mount point is mounted
# Author: Sachin Vaze
# Date : 23-7-2019
# Description: i/p: file system name command line 								 o/p: Display percentage used and free space of file ystem

#!/bin/bash

if [ $# -ne 0 ]											# To check for input validation
then
		avail=(`df -h | tr -s " " | cut -d " " -f4`)	
		mount=(`df -h | tr -s " " | cut -d " " -f6`)
		j=0
		count=0
		for i in `df -h | cut -d " " -f1`
		do 


				if [ "$1" = $i ]						# To find filesystem given by user
				then
						echo " Filesystem $1 is Mounted on ${mount[$j]} with available free space of ${avail[$j]}"
						count=$((count + 1))
				fi
				j=$((j + 1))
		done
		if [ $count -eq 0 ]							# To diaplay error if no such filesystem found given by user
		then
				echo "Error: No such filesystem found"
		fi


else 
		echo "Error: No argument passed"
fi
