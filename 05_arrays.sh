#!/bin/bash

#Array

myArray=(1 2 30.5 Hello "Hey Buddy!")
      
echo "all the values in array are : ${myArray[*]}"
echo "Value in 3rd index : ${myArray[3]}"

# How to find no. of values in an array

echo "No. of values/Length of an array: ${#myArray[*]}"
echo "Values from index 2-3: ${myArray[*]:2:2}"

#Updating our Array with ne values

myArray+=(New 30 40)

echo "Values of new array are ${myArray[*]}"

