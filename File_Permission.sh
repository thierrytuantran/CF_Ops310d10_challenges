#!/bin/bash

# Prompt user for input directory path
read -p "Enter the directory path: " directory_path

# Prompt user for input permissions number
read -p "Enter the permissions number (e.g., 777): " permissions

# Navigate to the specified directory
cd "$directory_path" || exit

# Change permissions of all files in the directory
chmod -R "$permissions" *

# Print directory contents and new permissions settings
echo -e "\nDirectory Contents:"
ls -l

echo -e "\nNew Permissions Settings:"
ls -l | awk '{print $1, $9}'
