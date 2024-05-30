#!/bin/bash

# Script: Copy Files to Directory with Current Date
# Description: This script creates a new directory with the current date and time, and then recursively copies all files from another directory into the new directory.
# Author: SubstituteDoll https://github.com/SubstituteDoll
# Date: 5/30/2024

# Navigate to desktop and try to create a directory named AstroBackups
cd ~/Desktop
mkdir AstroBackups || true
cd AstroBackups

# Create a directory with the current date to the minute
new_dir=$(date '+%Y-%m-%d_%H-%M-%S')
mkdir "$new_dir"

# Recursively copy all files from another directory into the new directory
echo "--------- Hard coded steam deck astroneer save path, change if necessary ---------"
echo "--------- This likely won't change unless Steam actually changes the game ID of Astroneer, but just in case ---------"
source_dir="/home/deck/.local/share/Steam/steamapps/compatdata/361420/pfx/drive_c/users/steamuser/AppData/Local/Astro/Saved/SaveGames"
cp -r "$source_dir" "$new_dir"

echo "--------- Files copied successfully to $new_dir ---------"