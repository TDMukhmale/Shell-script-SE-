#!/bin/bash

read -p "Enter the file name: " file_name

# Check if the file exists
if [ -f "$file_name" ]; then
  # Read and display the file line by line
  while IFS= read -r line; do
    echo "$line"
  done < "$file_name"
else
  echo "File not found: $file_name"
fi
