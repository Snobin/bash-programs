#!/bin/bash

# Define an array of commit messages
commit_messages=("First message" "Second message" "Third message" "And so on...")

# Get the current commit message index from a file
if [ -f commit_message_index.txt ]; then
  index=$(cat commit_message_index.txt)
else
  index=0
fi

# Set the commit message
message="${commit_messages[$index]}"

# Increment the index and wrap around if it exceeds the array length
index=$(( (index + 1) % ${#commit_messages[@]}))

# Save the updated index to the file
echo "$index" > commit_message_index.txt

# Perform the git actions
git add .
git commit -m "$message"
git push


