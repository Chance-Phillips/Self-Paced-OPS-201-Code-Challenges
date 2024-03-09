#!/bin/bash

# Define an array of files or directories to check
files_to_check=("code.txt" "cybersecurity" "fellows.txt" "loops.sh")

# Loop through the array
for item in "${files_to_check[@]}"
do
    # Check if the current item exists
    if [ ! -e "$item" ]; then
        # If the item does not exist, create it
        if [ ! -d "$item" ]; then
            mkdir -p "$item" # Create a directory
            echo "Created directory: $item"
        else
            touch "$item" # Create a file
            echo "Created file: $item"
        fi
    else
        echo "$item already exists."
    fi
done
