#!/bin/bash

FILE_COUNT=0
DIR_COUNT=0

for item in *; do
    if [ -f "$item" ]; then
        FILE_COUNT=$((FILE_COUNT + 1))
    elif [ -d "$item" ]; then
        DIR_COUNT=$((DIR_COUNT + 1))
    fi
done

echo "Коль-во файлов: $FILE_COUNT"
echo "Коль-во директорий: $DIR_COUNT"
