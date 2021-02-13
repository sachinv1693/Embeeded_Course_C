# Title: Script to count the number of user-ids the given range
# Author: Sachin Vaze
# Date: 26-7-2019
# Description: i/p: Pass the range of user ids through command line				 o/p: Display the total number of user ids in the range

#!/bin/bash

userids=(`cat /etc/passwd | cut -d : -f3`)
length=$(( ${#userids[@]} - 1))
if [ $# -eq 3 ]						# To check for input validation
then

		count=0
		for i in $(seq 0 $length)
		do
				if [ ${userids[$i]} -ge $1 -a ${userids[$i]} -le $3 ]
				then
						count=$((count + 1))		# To count the number of user ids in the user specified range
				fi		
		done 
		echo -e "Total count of USER IDs between $1 and $3 is:\t$count"


elif [ $# -eq 0 ]
then
		lwlimit=500
		uplimit=10000
		count=0
		for i in $(seq 0 $length)
		do
				if [ ${userids[$i]} -ge $lwlimit -a ${userids[$i]} -le $uplimit ]
				then
						count=$((count + 1))			# To count the number of user ids in the default range of 500-10000
				fi
		done
		echo -e "Total count of USER IDs between 500 and 10000 is:\t$count"


else
		echo "Please give arguments as: lowerlimit - upperlimit"
fi
