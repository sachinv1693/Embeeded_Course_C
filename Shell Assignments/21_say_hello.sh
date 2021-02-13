# Title: Script called say hello, which will print greetings based on time
# Author: Sachin Vaze
# Date: 22-7-2019
# Description:  i/p: No input needed											  o/p: Displays the output or greeting then terminalis opened				

#!/bin/bash

hour=`date +%H`
day=`date +%A`
d=`date +%d`						# To store date only
m=`date +%B`						# To store month only
y=`date +%Y`						# To store year only
time=`date +%r`
user=`whoami`

if [ $hour -ge 5 -a $hour -lt 12 ]
then
		echo -e "Good Morning $user, Have a nice day\nThis is $day $d in $m of $y ($time)"

elif [ $hour -ge 12 -a $hour -lt 13 ]
then
		echo -e "Good Noon $user, Have a nice day\nThis is $day $d in $m of $y ($time)"
elif [ $hour -ge 13 -a $hour -lt 17 ]
then
		echo -e "Good Afternoon $user, Have a nice day\nThis is $day $d in $m of $y ($time)"
elif [ $hour -ge 17 -a $hour -lt 21 ]
then
		echo -e "Good Evening $user, Have a nice day\nThis is $day $d in $m of $y ($time)"
else
		echo -e "Good Night $user, Have a nice day\nThis is $day $d in $m of $y ($time)"
fi

