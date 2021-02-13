# Title: Script to generate random 8-character password
# Author: Sachin Vaze
# Date: 25-7-2019
# Description: i/p: No input													 o/p: Displays random 8-character

#!/bin/bash

password=""
for i in $(seq 1 8)						
do
		n=`shuf -i 1-4 -n1`
		num=`shuf -i 1-26 -n1`
		case $n in

		1)
				digit=`shuf -i 1-9 -n1`
				password="$password""$digit"
				;;
		2)
				smallalpha=({a..z})
				password="$password""${smallalpha[$num]}"
				;;
		3)
				capalpha=({A..Z})
				password="$password""${capalpha[$num]}"
				;;
		4)
				specialcar=`cat /dev/urandom | tr -cd "[:punct:]" | head -c1`			# To get special characters one at a time
				password="$password""$specialcar"			# To append the character one after the other
				;;
		*)
				;;
		esac
done	
echo $password
