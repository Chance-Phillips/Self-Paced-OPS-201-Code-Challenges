#!/bin/bash

# Script Name:                  loops.sh
# Author:                       Chance Phillips
# Date of latest revision:      02/25/2024
# Purpose:                      Demonstrate Loop Script

#!/bin/bash

while true; do
    # Display running processes
    echo "Running processes:"
    ps aux

    # Ask user for a PID
    read -p "Enter the PID of the process you want to kill (or press Ctrl + C to exit): " pid

    # Check if the input is a number
    if [[ ! $pid =~ ^[0-9]+$ ]]; then
        echo "Error: Please enter a valid PID."
        continue
    fi

    # Check if the process with the given PID exists
    if ps -p $pid > /dev/null; then
        # Kill the process with the given PID
        echo "Killing process with PID $pid..."
        kill $pid
        echo "Process with PID $pid killed."
    else
        echo "Error: No process found with PID $pid."
    fi
done

