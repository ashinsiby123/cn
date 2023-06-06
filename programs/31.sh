#!/bin/bash

filename="$1"
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi

# Use tr to convert everything to lowercase and remove punctuation
# Use awk to print each word on a separate line
# Use sort and uniq to get unique words and count their occurrences
# Use awk to format the output as "word: count"
cat "$filename" | tr '[:upper:]' '[:lower:]' | tr -s '[:punct:]' ' ' | awk '{for(i=1;i<=NF;i++){print $i}}' | sort | uniq -c | awk '{print $2 ": " $1}'

