# Title: Script to lock down file permissions for a particular directory
# Author: Sachin Vaze
# Date: 24-7-2019
# Discription: i/p: Pass directory name through command line					 o/p: Permission will be changed 

#!/bin/bash

if [ $# -ne 0 ]
then

		for i in $@
		do	
				cd $i
				for j in *
				do
						chmod go-rwx $j 			# To change the permission of group and other to non readable, non writeable, non executable

				done
		done

else
		echo "Error: No argument passed"
fi
