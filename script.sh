#!/bin/bash

check_process(){
#Yash should work on this




}


kill_process(){

#ubuntu should work on it





}




# Prompt the user to choose an option
echo "Choose an option:"
echo "1. Check if a process is running"
echo "2. Kill all processes related to a process name"
read -p "Enter your choice (1 or 2): " choice

# Execute the corresponding function based on user choice
if [ "$choice" -eq 1 ]; then
    check_process
elif [ "$choice" -eq 2 ]; then
    kill_process
else
    echo "Invalid choice. Please enter 1 or 2."
fi
