#!/bin/bash
echo "Hello World"
mapfile -t files <<< "$(ls)"

echo "List of files and directories :"
for file in "${files[@]}"; do
    echo $file
done


