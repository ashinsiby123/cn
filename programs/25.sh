#!/bin/bash

# Loop through all files in the current directory
for file in *; do
  # Check if the file is executable
  if [[ ! -x "$file" ]]; then
    # If the file is not executable, make it executable
    chmod +x "$file"
    echo "Made $file executable"
  fi
done

