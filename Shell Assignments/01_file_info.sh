# Title: To print all file related information in present working directory 
# Author: Sachin Vaze
# Date: 15-7-2019 
# Description: i/p:	No input													 o/p: Diplay all file info from current working directory

#!/bin/bash

list=`ls -l`

echo "$list"
