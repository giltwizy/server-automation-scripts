#!/bin/bash

# Directory to start cleaning up .tmp files (current working directory)
TARGET_DIR=$(pwd)

# Find .tmp files
TMP_FILES=$(find "$TARGET_DIR" -type f -name "*.tmp")

# Check if any .tmp files were found
if [ -z "$TMP_FILES" ]; then
  echo "No .tmp files found in $TARGET_DIR and its subdirectories."
else
  # If .tmp files are found, delete them
  find "$TARGET_DIR" -type f -name "*.tmp" -exec rm -f {} \;
  echo "Cleanup complete. All .tmp files in $TARGET_DIR and its subdirectories have been deleted."
fi
