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
    if [-z ${word_counts == [$(word)]}]; then
      word_counts[$word]=1
    else
      word_counts[$word]=$((word_counts[$word] + 1))
    fi
  done

done < "$filename"

# Sort the word counts in descending order
sorted_word_counts=$(sort -rn <<< "${!word_counts[@]}")

# Print the top 5 most frequent words
echo "The top 5 most frequent words are:"
for i in {1..5}; do
  word=$(echo "$sorted_word_counts" | head -$i | tail -1)
  count="${word_counts[$word]}"
  echo "$word: $count"
done