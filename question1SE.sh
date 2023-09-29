#!/bin/bash

# Function to calculate profit or loss
calculate_profit_or_loss() {
  CP=$1
  SP=$2

  if [ "$CP" -gt "$SP" ]; then
    echo "Loss: $((CP - SP))"
  elif [ "$SP" -gt "$CP" ]; then
    echo "Profit: $((SP - CP))"
  else
    echo "No Profit, No Loss"
  fi
}

# Input cost price and selling price
read -p "Enter Cost Price: " cost_price
read -p "Enter Selling Price: " selling_price

# Call the function to calculate profit or loss
calculate_profit_or_loss "$cost_price" "$selling_price"
