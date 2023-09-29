#!/bin/bash

echo "Enter a number: "
read num

if [ "$num" -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
else
    factorial=1
    for (( i=2; i<=num; i++ )); do
        factorial=$((factorial * i))
    done
    echo "The factorial of $num is $factorial."
fi