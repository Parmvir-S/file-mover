#!/bin/bash

# Use dmenu to select a folder
selected_folder=$(echo "" | dmenu -p "Select a folder: ")

# Use dmenu to select a file type
selected_file_type=$(echo -e "pdf\ntxt\njpg\nsh" | dmenu -p "Select a file type: ")

# Pass the selected folder and file type as arguments to your script
/home/parm/scripts/fileMover/fileMover.sh "$selected_file_type" "$selected_folder"
