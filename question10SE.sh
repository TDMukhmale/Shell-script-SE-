#!/bin/bash

directory_name="new_directory"  

# Check if the directory exists
if [ -d "$directory_name" ]; then
  echo "Directory $directory_name already exists."
else
  # Create the directory
  mkdir "$directory_name"
  echo "Directory $directory_name created."
fi
