# File Mover Script

## Overview
This script is designed to move files of a specified type from one folder to another. It takes two arguments: the file type to move and the folder location where the files are located. The script then identifies files of the specified type in the folder and moves them into a subfolder named after the file type within the same location.

## Purpose
The purpose of this script is to automate the process of organizing files by type. It simplifies the task of moving files of a specific type from a cluttered folder into separate folders based on their file types. For my specific use case, I wanted to clean up my Downloads folder.

## What I Learned
While building this script, I learned:
- Basic Bash scripting concepts, including variable assignment, conditional statements, loops, and file manipulation commands.
- How to use regular expressions in Bash to match file names.
- Best practices for scripting, such as quoting variables to handle spaces and special characters in file names.

## How I Built It
I built this script using Bash scripting language. The script takes advantage of standard Linux commands like `ls` and `mv` to list files and move them. Regular expressions are used to identify files of the specified type.

## How It Works
1. The script takes two arguments: the file type to move and the folder location where the files are located.
2. It lists all files in the specified folder using the `ls` command and stores the output in a variable.
3. If a folder named after the file type does not exist in the specified location, the script creates one using the `mkdir` command.
4. It then iterates over each file in the folder and checks if its name matches the specified file type using a regular expression.
5. If a file matches the file type, it is moved to the subfolder named after the file type within the same location using the `mv` command.

## Launcher Script
The launcher script `fileMoverLauncher.sh` provides a user-friendly way to interact with the file mover script. It utilizes `dmenu`, a dynamic menu to allow the user to select a folder and file type interactively. The selected folder and file type are then passed as arguments to the `fileMover.sh` script.

```bash
#!/bin/bash

# Use dmenu to select a folder
selected_folder=$(echo "" | dmenu -p "Select a folder: ")

# Use dmenu to select a file type
selected_file_type=$(echo -e "pdf\ntxt\njpg\nsh" | dmenu -p "Select a file type: ")

# Pass the selected folder and file type as arguments to your script
<path>/fileMover.sh "$selected_file_type" "$selected_folder"
