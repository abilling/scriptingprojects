#!/bin/bash
#Author: Ali Billing
#This program makes a wastebucket, much like the GUI version, by replacing RM with moving the file to a preset directory
directory="$HOME/Wastebasket"

if [ -d "$directory" ]; then
echo "Wastebasket already created, remove something to it."
else
mkdir "$HOME/Wastebasket"
echo "Wastebasket created."
fi

echo "Enter a file to delete here."
read file
myrm=$(mv "$file" "$HOME/Wastebasket")
echo "$myrm"
if [file1 != file1 ]; then
echo "You must put down a file name to remove. example myrm file1."
fi
if [ file1 = "$file" ]; then
mv "$file" "$file.$RANDOM"
fi

