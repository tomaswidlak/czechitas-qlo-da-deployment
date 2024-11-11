#!/bin/sh

# Navigate to the target directory
cd ./volume || exit

# Find and remove all files and folders except .gitignore
find . -mindepth 1 ! -name '.gitignore' -exec sudo rm -rf {} +

# Navigate back to the original directory
cd - || exit
