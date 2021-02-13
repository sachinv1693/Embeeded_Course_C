# Title: Use pipe or redirection to create an infinite feedback loop
# Author: Sachin Vaze
# Date: 23-7-2019
# Description: i/p: No input needed																														 o/p: Diplay continously content in file 

#!/bin/bash


echo hello >> out.txt
cat out.txt
tail -f out.txt >> out.txt 					# To create infinte loop of text inside out.txt and display

