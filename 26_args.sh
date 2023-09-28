#!/bin/bash

#To access the arguments

echo "First argument is $1"
echo "First argument is $2"

echo "All the arguments are - $@"
echo "No. of arguments are - $#"

# For loop to access the values from arguments
for filename in $@
do 
  echo "Copying file - $filename"
done 