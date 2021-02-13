# Title: To display list of content in the directory
# Author: Sachin Vaze
# Date: 24-7-2019
# Description: i/p: Pass any number of directories through command line																			   o/p: Display the list

#!/bin/bash
n=($@)
if [ $# -ne 0 ]
then

		for i in ${n[@]}
		do
				cd $i
				echo "In $i:"
				for j in *
				do
						echo $j					# To list the files in the directory
				done
				cd ../							# To came out of present loop directory 
		done
else
		echo In current directory `basename $PWD`:
		for j in *
		do
				echo $j						# To list the file in current directory
		done
fi

