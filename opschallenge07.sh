#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Display system information using lshw and filter with grep
echo "Computer Name:"
lshw -short | grep -i "system" | grep -v "bridge" | grep -v "bus" | grep -v "firmware"

echo "CPU:"
lshw -short | grep -i "processor" | grep -v "memory" | grep -v "disk" | grep -v "volume"

echo "RAM:"
lshw -short | grep -i "memory" | grep -v "disk" | grep -v "volume" | grep -v "processor"

echo "Display Adapter:"
lshw -short | grep -i "display" | grep -v "memory" | grep -v "disk" | grep -v "volume" | grep -v "processor"

echo "Network Adapter:"
lshw -short | grep -i "network" | grep -v "memory" | grep -v "disk" | grep -v "volume" | grep -v "processor"
