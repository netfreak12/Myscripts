#!/bin/bash
set -x
#To access the arguments

if [[ $# -eq 0 ]]
then 
  echo "No arguments provided..."
  exit 1
fi

echo "First argument is $1"
echo "First argument is $2"

echo "All the arguments are - $@"
echo "No. of arguments are - $#"

# For loop to access the values from arguments
for filename in $@
do 
  echo "Copying file - $filename"
done 