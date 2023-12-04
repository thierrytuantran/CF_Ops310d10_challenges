#!/bin/bash

# Define backup directory and timestamp
backup_dir="/var/log/backups"
timestamp=$(date "+%Y%m%d%H%M%S")

# Define log files
log_files=("/var/log/syslog" "/var/log/wtmp")

# Function to perform backup, compression, and comparison
backup_logs() {
    local log_file="$1"
    
    # Print original file size
    orig_size=$(du -h "$log_file" | cut -f1)
    echo "Original size of $log_file: $orig_size"

    # Compress and backup the log file
    compressed_file="$backup_dir/$(basename "$log_file")-$timestamp.zip"
    gzip -c "$log_file" > "$compressed_file"

    # Clear the contents of the original log file
    > "$log_file"

    # Print compressed file size
    comp_size=$(du -h "$compressed_file" | cut -f1)
    echo "Compressed size of $compressed_file: $comp_size"

    # Compare file sizes
    echo "Comparison for $log_file:"
    echo "Original size: $orig_size vs Compressed size: $comp_size"
}

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Loop through log files and perform backup, compression, and comparison
for log_file in "${log_files[@]}"; do
    backup_logs "$log_file"
done
