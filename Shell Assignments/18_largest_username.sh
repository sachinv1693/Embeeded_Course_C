# Title: To display longest and shortest user name on the system 
# Author: Sachin Vaze
# Date: 23-7-2019
# Decription: i/p: All user names												o/p: Display longest and shortest

#!/bin/bash

usernames=(`cat /etc/passwd | cut -d : -f1`)
longest=${usernames[0]}
smallest=${usernames[0]}
for i in ${usernames[@]}
do


		if [ ${#i} -gt ${#longest} ]			# To get the largest user name
		then
				longest=$i							
		fi


done

for i in ${usernames[@]}						# To get the smallest user name
do
		if [ ${#i} -lt ${#smallest} ]
		then
				smallest=$i
		fi
done

echo "The longest user name is: $longest"
echo "The smallest user name is: $smallest"
