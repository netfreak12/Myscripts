#!/bin/bash

echo "Provide an option"
echo "a for printing system date"
echo "b for showing scripts"
echo "c to check the current location"

read choice
case $choice in 
        a) 
              echo "Today's date is "
              date
              echo "Ending...."
              ;;
        b)ls;;
        c)pwd;;
        *) echo "Please provide a valid value"
esac
  

