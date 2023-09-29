#!/bin/bash

check_file_equality() {
  file1="$1"
  file2="$2"

  # Use cmp to compare files
  cmp -s "$file1" "$file2"
  cmp_result=$?

  if [ $cmp_result -eq 0 ]; then
    echo "The contents of $file1 and $file2 are identical."
  else
    echo "The contents of $file1 and $file2 are different."
  fi
}

read -p "Enter the path of the first file: " file1_path
read -p "Enter the path of the second file: " file2_path

if [ -f "$file1_path" ] && [ -f "$file2_path" ]; then
  check_file_equality "$file1_path" "$file2_path"
else
  echo "One or both of the specified files do not exist."
fi
