#!/bin/bash

# Function to calculate the result based on average marks
calculate_result() {
  average_marks=$1

  if ((average_marks < 0)) || ((average_marks > 100)); then
    result="Invalid Marks"
  elif ((average_marks >= 90)); then
    result="I-Division"
  elif ((average_marks >= 80)); then
    result="II-Division"
  elif ((average_marks >= 70)); then
    result="III-Division"
  elif ((average_marks >= 50)); then
    result="IV-Division"
  elif ((average_marks >= 40)); then
    result="V-Division"
  else
    result="Fail"
  fi

  echo "Result: $result"
}

# Input marks for each subject
read -p "Enter marks for Subject 1: " subject1_marks
read -p "Enter marks for Subject 2: " subject2_marks
read -p "Enter marks for Subject 3: " subject3_marks
read -p "Enter marks for Subject 4: " subject4_marks
# Check for invalid marks
if ((subject1_marks < 0 || subject1_marks > 100 || subject2_marks < 0 || subject2_marks > 100 || subject3_marks < 0 || subject3_marks > 100 || subject4_marks < 0 || subject4_marks > 100)); then
  echo "Invalid marks. Marks must be between 0 and 100."
  exit 1
fi

# Calculate the average marks
average_marks=$(( (subject1_marks + subject2_marks + subject3_marks + subject4_marks) / 4 ))

# Call the function to determine the result
calculate_result "$average_marks"
