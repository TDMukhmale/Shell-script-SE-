#!/bin/bash

# Function to check if a string is a palindrome
is_palindrome() {
  input_string=$1
  reversed_string=""
  len=${#input_string}

  for ((i = len - 1; i >= 0; i--)); do
    reversed_string="${reversed_string}${input_string:i:1}"
  done

  if [ "$input_string" = "$reversed_string" ]; then
    return 0  # It's a palindrome
  else
    return 1  # It's not a palindrome
  fi
}

# Input the string to check
read -p "Enter a string: " input_string

# Remove spaces and convert to lowercase (optional)
input_string=$(echo "$input_string" | tr -d ' ' | tr '[:upper:]' '[:lower:]')

if is_palindrome "$input_string"; then
  echo "The string is a palindrome."
else
  echo "The string is not a palindrome."
fi
