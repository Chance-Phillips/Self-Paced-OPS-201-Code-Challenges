#!/usr/bin/env bash

# Script Name:                  FunctionsClass03
# Author:                       Chance Phillips
# Date of latest revision:      02/04/2024
# Purpose:                      print login history

# Declaration of variables

# Declaration of functions
# Function that prints login history and prints "This is the login history" to screen
print_login_history () {
last
 echo "this is login history"
}


# Main
# call the function
print_login_history