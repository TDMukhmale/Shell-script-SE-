#!/bin/bash

# Function to determine the result based on average marks
determine_result() {
  average_marks=$1

  case $average_marks in
    [7-9][0-9]|100)
      result="I-Division"
      ;;
    [6-9][0-9])
      result="II-Division"
      ;;
    [5-9][0-9])
      result="III-Division"
      ;;
    *)
      result="Fail"
      ;;
  esac

  echo "Result: $result"
}

# Input marks for each subject
read -p "Enter marks for Subject 1: " subject1
read -p "Enter marks for Subject 2: " subject2
read -p "Enter marks for Subject 3: " subject3
read -p "Enter marks for Subject 4: " subject4

# Calculate the average marks
average_marks=$(( (subject1 + subject2 + subject3 + subject4) / 4 ))

# Call the function to determine the result
determine_result "$average_marks"
