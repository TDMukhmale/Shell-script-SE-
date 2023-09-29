#!/bin/bash

# Input three numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

# Initialize a variable to store the largest number
largest=$num1

# Compare num2 and num3 to find the largest
if [ "$num2" -gt "$largest" ]; then
  largest=$num2
fi

if [ "$num3" -gt "$largest" ]; then
  largest=$num3
fi

# Display the largest number
echo "The largest number is: $largest"
