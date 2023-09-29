#!/bin/bash
# Revision: 001
# Date: Fri Sep 29 21:51:46 IST 2023

# Variables
myPath="/home/sandesh/Find_Command"
DAYS=10
DEPTH=1
RUN=0

# Check if the directory is present or not
if [[ ! -d "$myPath" ]]; then
  echo "Directory does not exist: $myPath"
  exit 1
fi

# Create 'archive' folder if not present
if [[ ! -d "$myPath/archive" ]]; then
  mkdir "$myPath/archive"
fi

# Find the list of files larger than 20MB
find "$myPath" -maxdepth "$DEPTH" -type f -size +20M | while read -r i; do
  if [[ $RUN -eq 0 ]]; then
    echo "[$(date "+%Y-%m-%d %H:%M:%S")] Archiving $i ==> $myPath/archive"
    gzip "$i" || { echo "Error compressing $i"; exit 1; }
    mv "$i.gz" "$myPath/archive" || { echo "Error moving $i.gz to archive"; exit 1; }
  fi
done

echo "Done"
