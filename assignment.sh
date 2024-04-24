#!/bin/bash

# Get the filename from the user
echo "Enter the filename: "
read filename

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File does not exist."
  exit 1
fi

# Create a dictionary to store the word counts
word_counts=()

# Read the file line by line
while read line; do

  # Split the line into words
  words=($line)

  # Add each word to the dictionary
  for word in "${words[@]}"; do
    if [ -z "${word_counts[$word]}" -ne 0]; then
      word_counts[$word]=1
    else
      word_counts[$word]=$((word_counts[$word] + 1))
    fi
  done

done < "$filename"

# Print the word counts
for word in "${!word_counts[@]}"; do
  echo "$word: ${word_counts[$word]}"
done