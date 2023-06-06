#!/bin/bash

# Prompt user for decimal input
read -p "Enter decimal number: " decimal

# Convert decimal to binary using 'bc' command
binary=$(echo "obase=2;$decimal" | bc)

# Print binary result
echo "Binary equivalent of $decimal is: $binary"

