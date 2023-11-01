#!/bin/bash

if [ -f commit_messages.txt ]; then
  index=$(cat commit_messages.txt)
else
  index=0
fi

message="$index commit"

# Increment the index by 1
index=$((index + 1))

# Save the updated index back to commit_messages.txt
echo "$index" > commit_messages.txt

# Print the message
echo "$message"

git add .
git commit -m "$message"  # Use $message here
git push

