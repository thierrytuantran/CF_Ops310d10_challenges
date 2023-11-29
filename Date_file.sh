#!/bin/bash

# Set source file and destination directory
source_file="/var/log/syslog"
destination_dir="./"

# Create a timestamp
timestamp=$(date +"%Y%m%d%H%M%S")

# Build the destination filename
destination_file="${destination_dir}syslog_${timestamp}.log"

# Copy the source file to the destination with the timestamped filename
cp "$source_file" "$destination_file"

# Display a message indicating the copy operation
echo "Log file copied to: $destination_file"
