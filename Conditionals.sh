#!/bin/bash

while true; do
    echo "1. Hello world"
    echo "2. Ping self"
    echo "3. IP info"
    echo "4. Exit"
    
    read -p "Enter your choice (1-4): " choice
    case $choice in
        1) echo "Hello world!";;
        2) ping -c 4 127.0.0.1;;
        3) ip addr show;;
        4) echo "Exiting..."; exit 0;;
        *) echo "Invalid choice. Please enter a number between 1 and 4.";;
    esac
done
