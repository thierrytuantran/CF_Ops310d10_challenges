#!/usr/bin/env python3

# Import libraries
import os

# Declaration of variables

# Read user input here into a variable
user_input_path = input("Enter a directory path: ")

# Declaration of functions

# Declare a function here (you can define your own function if needed)

# Main
for (root, dirs, files) in os.walk(user_input_path):
    # Add a print command here to print ==root==
    print("Root Directory: ", root)
    # Add a print command here to print ==dirs==
    print("Sub-directories: ", dirs)
    # Add a print command here to print ==files==
    print("Files: ", files)
