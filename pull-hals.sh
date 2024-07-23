#!/bin/bash

# Define the folders
FOLDERS=(media audio display)

# Define the base path
BASE_PATH="hardware/qcom-caf/sdm845"

# Loop through the folders
for folder in "${FOLDERS[@]}"
do
    # Check if the folder exists
    if [ -d "$BASE_PATH/$folder" ]; then
        echo "Folder $folder exists. Removing it..."

        # Remove the folder
        rm -rf "$BASE_PATH/$folder"

        # Clone the repository
        echo "Cloning into $folder..."
        git clone --depth=1 https://github.com/zamasu0/"$folder" "$BASE_PATH/$folder"
    else
        echo "Folder $folder does not exist. Skipping..."
    fi
done
