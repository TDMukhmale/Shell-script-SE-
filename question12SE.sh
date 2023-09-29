#!/bin/bash

start_year=2000
leap_years=0

while [ "$leap_years" -lt 10 ]; do
    if (( (start_year % 4 == 0 && start_year % 100 != 0) || (start_year % 400 == 0) )); then
        echo "$start_year is a leap year."
        ((leap_years++))
    fi
    ((start_year++))
done