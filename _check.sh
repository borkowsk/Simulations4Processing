#!/bin/bash
#Checking for required dependencies
#EDIT=nano

# https://intoli.com/blog/exit-on-errors-in-bash-scripts/
set -e 
echo "Running" `realpath $0`
echo -e "\n\tThis script stops on any error!\n\tWhen it stop, remove source of the error & run it again!\n"
     
echo -e "Test for required software:\n" 
echo -e "Processing.org..."

find ~/ -name "processing" -type f -executable -print > processing_dirs.lst

grep --color "processing" processing_dirs.lst 
wc -l processing_dirs.lst


echo -e "\n\tLooks like you have Processing."
echo -e "\tRemember to run install in its main directory."