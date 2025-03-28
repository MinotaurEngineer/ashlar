#!/bin/bash

GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
RESET=$(tput sgr0)

# Clean and recreate dist
mkdir -p dist
rm -f dist/*.css

echo "Build started at $(date)"

if [ "$1" = "--watch" ]; then
  echo "Starting watch mode..."
  for file in layers/*/index.scss; do
    dir_name=$(basename "$(dirname "$file")")
    output_file="dist/ashlar.${dir_name}.css"
    echo "${GREEN}Watching $file -> $output_file${RESET}"
    sass --watch --no-source-map "$file:$output_file" &
  done
  wait
elif [ "$1" = "--single" ]; then
  echo "Building single combined file..."
  combined_file="dist/ashlar.css"
  > "$combined_file"
  for file in layers/*/index.scss; do
    dir_name=$(basename "$(dirname "$file")")
    temp_file="dist/temp.${dir_name}.css"
    sass --no-source-map "$file:$temp_file" && cat "$temp_file" >> "$combined_file" || {
      echo "${RED}Error compiling $file${RESET}"
      exit 1
    }
    rm "$temp_file"
  done
  size=$(stat -f %z "$combined_file" 2>/dev/null || stat -c %s "$combined_file")
  echo "${GREEN}Combined file created at $combined_file (${size} bytes)${RESET}"
else
  for file in layers/*/index.scss; do
    dir_name=$(basename "$(dirname "$file")")
    output_file="dist/ashlar.${dir_name}.css"
    echo "${GREEN}Compiling $file to $output_file${RESET}"
    sass --no-source-map "$file:$output_file" || {
      echo "${RED}Error compiling $file${RESET}"
      exit 1
    }
    size=$(stat -f %z "$output_file" 2>/dev/null || stat -c %s "$output_file")
    echo "Size: ${size} bytes"
  done
  echo "${GREEN}Build finished at $(date)${RESET}"
fi
