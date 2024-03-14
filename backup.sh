#!/bin/bash

# Specify the path where you want to create the main directory
main_directory="/home/ubuntu/amar/snehal/"

# Create the main directory
mkdir -p "$main_directory"

# Check if the main directory was created successfully
if [ -d "$main_directory" ]; then
    echo "Main directory created successfully."

    # Create 'new' and 'old' directories within the main directory
    mkdir "$main_directory/new"
    mkdir "$main_directory/old"

    # Check if 'new' and 'old' directories were created successfully
    if [ -d "$main_directory/new" ] && [ -d "$main_directory/old" ]; then
        echo "'new' and 'old' directories created successfully."
    else
        echo "Failed to create 'new' and 'old' directories."
    fi
else
    echo "Failed to create main directory."
fi

