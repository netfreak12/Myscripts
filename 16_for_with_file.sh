#!/bin/bash
#getting values from a file "02_comment.sh"
FILE="/home/sandesh/Myscripts/02_comment.sh"
for item in $(cat $FILE)
do
  echo $item
done
  