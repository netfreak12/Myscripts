#!/bin/bash
read -p "Enter your marks: " marks
if [ "$marks" -ge 80 ]
then
    echo "First Division"
elif [ "$marks" -ge 60 ]
then
    echo "Second Division"
else
    echo "You are Fail!"
fi
