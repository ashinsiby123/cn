#!/bin/bash

echo "Enter a string: "
read string

# Reverse the string
reverse=$(echo $string | rev)

# Check if the string is equal to its reverse
if [ "$string" == "$reverse" ]
then
    echo "The string is a palindrome"
else
    echo "The string is not a palindrome"
fi

