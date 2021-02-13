# Title: To delete empty line from a file
# Author: Sachin Vaze
# Date: 17-7-2019
# Description: i/p: Pass a filename through command line						 o/p: Deletes all the empty lines from that file and save it

#!/bin/bash

if [ $# -ne 0 ]
then	
sed -i '/^$/d' $1		# Command to delete empty lines from a file and save the file
cat $1

else
		echo "Error: No argument passed"
fi
