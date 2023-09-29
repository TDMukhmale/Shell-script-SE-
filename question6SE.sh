#!/bin/bash

echo "Enter operand 1: "
read operand1

echo "Enter operator (+, -, *, /): "
read operator

echo "Enter operand 2: "
read operand2

case "$operator" in
    "+")
        result=$(echo "scale=2; $operand1 + $operand2" | bc)
        ;;
    "-")
        result=$(echo "scale=2; $operand1 - $operand2" | bc)
        ;;
    "*")
        result=$(echo "scale=2; $operand1 * $operand2" | bc)
        ;;
    "/")
        if (( operand2 != 0 )); then
            result=$(echo "scale=2; $operand1 / $operand2" | bc)
        else
            result="Cannot divide by zero"
        fi
        ;;
    *)
        result="Invalid operator"
        ;;
esac

echo "Result: $result"