# Title: To add two real numbers
# Author: Sachin Vaze
# Date: 16-7-2017
# Description:	i/p: User to enter two numbers									  o/p: Diplay the sum 
#!/bin/bash

echo -n "Enter the numbers to addition: "
read num1 num2

sum=`expr "scale=04; $num1 + $num2"|bc`		# To store floating type integers
echo "Answer is $sum"
