#!/bin/bash

# Define a function to perform addition
function add() {
    result=$(echo "$1 + $2" | bc)
    echo "Result of addition: $result"
}

# Define a function to perform subtraction
function subtract() {
    result=$(echo "$1 - $2" | bc)
    echo "Result of subtraction: $result"
}

# Define a function to perform multiplication
function multiply() {
    result=$(echo "$1 * $2" | bc)
    echo "Result of multiplication: $result"
}

# Define a function to perform division
function divide() {
    if [ $2 -eq 0 ]; then
        echo "Division by zero is not allowed."
    else
        result=$(echo "scale=2; $1 / $2" | bc)
        echo "Result of division: $result"
    fi
}

# Prompt the user to enter two numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Display a menu for arithmetic operations
echo "Select an arithmetic operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

# Read the user's choice
read choice

# Use a case statement to perform the selected operation
case $choice in
    1)
        add "$num1" "$num2"
        ;;
    2)
        subtract "$num1" "$num2"
        ;;
    3)
        multiply "$num1" "$num2"
        ;;
    4)
        divide "$num1" "$num2"
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
esac
