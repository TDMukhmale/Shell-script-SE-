#!/bin/bash

# Function to calculate the area of a circle
calculate_area() {
  radius=$1
  pi=$(echo "scale=10; 4*a(1)" | bc -l)
  area=$(echo "$pi * $radius * $radius" | awk '{print $1 * $2}')
  echo "The area of the circle with radius $radius is $area square units."
}

# Function to calculate the circumference of a circle
calculate_circumference() {
  radius=$1
  pi=$(echo "scale=10; 4*a(1)" | bc -l)
  circumference=$(echo "2 * $pi * $radius" | awk '{print $1 * $2}')
  echo "The circumference of the circle with radius $radius is $circumference units."
}

# Input the radius of the circle
read -p "Enter the radius of the circle: " radius

# Call the functions to calculate area and circumference
calculate_area "$radius"
calculate_circumference "$radius"
