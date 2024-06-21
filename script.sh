#!/bin/bash

check_process(){
#Yash should work on this
read -p "Enter the process name to check: " process_name
    if pgrep "$process_name" > /dev/null; then
        echo "The process '$process_name' is running."
    else
        echo "The process '$process_name' is not running."
    fi



}


kill_process(){

#ubuntu should work on it

read -p "Enter the process name to kill: " process_name
    pids=$(pgrep "$process_name")
    if [ -n "$pids" ]; then
        for pid in $pids; do
            kill "$pid"
            if [ $? -eq 0 ]; then
                echo "Killed process $pid related to '$process_name'."
            else
                echo "Failed to kill process $pid related to '$process_name'."
            fi
        done
    else
        echo "The process '$process_name' is not running."
    fi
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
