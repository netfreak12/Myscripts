#!/bin/bash
#How to store the key value pairs

declare -A myArray
myArray=([name]="Sandesh" [age]=25 [city]="Pune")

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
echo "City is ${myArray[city]}"