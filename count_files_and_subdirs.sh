#!/bin/bash

tot_files=0
tot_sub_dirs=0

for item in ./* ./.*
do
if [ -f "$item" ]
then
	tot_files=$[$tot_files+1]
elif [ -d "$item" ] 
	then
		tot_sub_dirs=$[$tot_sub_dirs+1]
fi
done

echo " Current directory: `pwd`
Total number of files in current directory: $tot_files 
Total nuber of subdirectories in current directory: $tot_sub_dirs"

