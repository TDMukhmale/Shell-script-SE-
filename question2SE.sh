#!/bin/bash

# Function to check if a number is even or odd
check_even_odd() {
  num=$1

  if [ "$((num % 2))" -eq 0 ]; then
    echo "$num is even."
  else
    echo "$num is odd."
  fi
}

# Input the integer to check
read -p "Enter an integer: " number

# Call the check_even_odd function
check_even_odd "$number"
