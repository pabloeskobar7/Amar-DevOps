#!/bin/bash

# Array of source directories
SOURCE_DIRS=(
    "/home/ubuntu/IMPL-1234/new/Amar/"
    "/home/ubuntu/IMPL-1234/new/Manoj/"
    "/home/ubuntu/IMPL-1234/new/Madhuri/"
    "/home/ubuntu/IMPL-1234/new/Vishakha/"
    "/home/ubuntu/IMPL-1234/new/Lisa/"
)

# Array of destination directories
DEST_DIRS=(
    "/home/ubuntu/webapps/Amar/"
    "/home/ubuntu/webapps/Manoj/"
    "/home/ubuntu/webapps/Madhuri/"
    "/home/ubuntu/webapps/Vishakha/"
    "/home/ubuntu/webapps/Lisa/"
)

# Array of files to copy (10 files in total)
FILES=(
    "test.txt"
    "test.txt1"
    "test.txt2"
    "test.txt3"
    "test.txt4"

)

# Check if arrays have the same length
if [ ${#SOURCE_DIRS[@]} -ne ${#DEST_DIRS[@]} ]; then
    echo "Error: Number of source and destination directories do not match."
    exit 1
fi

# Loop through each file and copy it
for ((i = 0; i < ${#FILES[@]}; i++)); do
    SOURCE="${SOURCE_DIRS[$i]}/${FILES[$i]}"
    DEST="${DEST_DIRS[$i]}/${FILES[$i]}"

    if [ -f "$SOURCE" ]; then
        cp "$SOURCE" "$DEST"
        if [ $? -eq 0 ]; then
            echo "Copied ${FILES[$i]} from ${SOURCE_DIRS[$i]} to ${DEST_DIRS[$i]}"
        else
            echo "Failed to copy ${FILES[$i]}"
        fi
    else
        echo "File ${FILES[$i]} not found in ${SOURCE_DIRS[$i]}"
    fi
done

echo "Copy process completed."
