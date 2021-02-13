# Title: A script to print menu and display corresponding output
# Author: Sachin Vaze
# Date: 19-7-2019
# Description:	i/p: Choice option from menu provided
#				o/p: Diplay output of selected option

#!/bin/bash

echo "1. Current logged user
2. Your shell directory
3. Home directory
4. OS name version
5. Current working directory
6. Number of user logged in
7. Show all available shell in your system
8. Hard disk information
9. CPU information
10. Memory information
11. File system information
12. Currently running process"

echo -n "Select a option: "
read option						# It reads the option from user

case $option in					

		1)
				who

				;;

		2)
				echo $SHELL
				;;

		3)
				echo $HOME
				;;

		4)
				lsb_release -a
				;;

		5)
				pwd
				;;

		6)
				w
				;;

		7)
				cat /etc/shells
				;;

		8)
				df -h | grep ^/dev/sda
				;;

		9)
				cat /proc/cpuinfo
				;;

		10)
				cat /proc/meminfo
				;;

		11)
				df -h -T
				;;

		12)
				ps
				;;

		*)
				echo "Error: invalid option"
				;;

		esac


