#!/bin/bash

# Script Name:                  Arrays.sh
# Author:                       Chance Phillips
# Date of latest revision:      01/27/2024
# Purpose:                      Reference array

# Declaration of variables

# Declaration of functions
# Creates four directories: dir1, dir2, dir3, dir4

# Put the names of the four directories in an array

# References the array variable to create a new .txt file in each directory

# Main
# Define Variables
dir1="f1.txt"
dir2="f2.txt"
dir3="f3.txt"
dir4="f4.txt"
# Define array
array=(dir1 dir2 dir3 dir4)

paths=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")

# Prints out full array
echo ${array[*]} 

