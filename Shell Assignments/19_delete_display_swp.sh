# Title: Script to delete all .swp files found in system or directory
# Author: Sachin Vaze
# Date: 22-7-2019
# Description: i/p: Pass directory name											 o/p: Deletes all .swp files

#!/bin/bash

if [ $# -ne 0 ]
then
		path=`find ~ -name $1`					# To get the path of the directory name given by user
		echo $path
		cd $path
		for i in *.swp				
		do
				echo "swp file found: $i"
				rm -i $i
		done
else
		swpfiles=(`find ~ -name "*.swp"`)		# To store .swp  files in array
		for i in ${swpfiles[@]}
		do
				echo "swp file found: $i"
				rm -i $i
		done
fi
