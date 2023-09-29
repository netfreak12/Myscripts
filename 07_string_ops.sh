#!/bin/bash
myVar="Hello Buddy, How are you?"

myVarLength=${#myVar}

echo "Length of myVar is $myVarLength"

echo "Upper case is----- ${myVar^^}"

echo "Lower case is----- ${myVar,,}"

# To replace a string
newVar=${myVar/Buddy/Sandesh}

echo "New var is----- ${newVar}"

#To slice a string
echo "After slice----- ${myVar:6:5}"