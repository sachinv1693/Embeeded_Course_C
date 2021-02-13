# Title: Script to search a user present in the system
# Author: Sachin Vaze
# Date: 26-7-2019
# Description: i/p: Give a user name through command line						 o/p: Displays whether user is present or not 

echo -n "Enter the user you want to search: "
read user
alluser=(`cat /etc/passwd | cut -d : -f1`)			# To store all the user names only


flag=0											
for i in ${alluser[@]}
do
		
		if [ "$user" = $i ]
		then
				echo "$user is present"
				flag=1								# To change the state of flag if user found

		fi
done 

if [ $flag -eq 0 ]
then
		echo "$user not present"
fi


