#!/bin/bash

filepath="/home/sandesh/Myscripts/bgm.test"

if [[ -f $filepath ]]
then
  echo "File exist"
else
  echo "Creating file now"
  touch $filepath
fi
