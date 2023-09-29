#!/bin/bash

file_path="example.txt"  # Change this to your desired file path

# Check if the file exists
if [ -e "$file_path" ]; then
  # File exists, so append "hello world"
  echo "hello world" >> "$file_path"
  echo "Content appended to $file_path"
else
  # File does not exist, so create it and write "hello world"
  echo "hello world" > "$file_path"
  echo "File $file_path created with content"
fi
