#!/bin/bash


file_name="zoo.txt"


echo "Cat
dog
bear
hello
elephant
hello
tiger
hello
horse" > "$file_name"

# Display the original contents of the file
echo "Original contents of $file_name:"
cat "$file_name"


grep -v "hello" "$file_name" > "$file_name.tmp"
mv "$file_name.tmp" "$file_name"


echo "Contents of $file_name after deleting lines with 'hello':"
cat "$file_name"
