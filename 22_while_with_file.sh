#!bin/bash

while read myVar
do
  echo "Value from file is $myVar"
done < 22_while_with_file.sh
