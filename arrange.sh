#!/bin/bash

FILES_DIR="./files"

for file in "${FILES_DIR}"/*.txt; do
  filename=$(basename "$file")

  first_letter=$(echo $filename | cut -c1 | tr '[:upper:]' '[:lower:]')

  dest_dir="${first_letter}"

  if [ -d "$dest_dir" ]; then
    mv "$file" "$dest_dir/"
  fi
done