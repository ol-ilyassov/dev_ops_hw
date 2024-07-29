#!/bin/bash

DIRECTORIES="./origin ./origin2"

BACKUP_DEST="./backup"

for DIR in $DIRECTORIES; do
    BASENAME=$(basename "$DIR")
    
    DATE=$(date +"%Y-%m-%d")
    
    BACKUP_FILE="${BACKUP_DEST}/${BASENAME}_backup_${DATE}.tar.gz"
    
    tar -czf "$BACKUP_FILE" "$DIR" # проще все упаковать в архив и хранить. 
    
    echo "Резервная копия $DIR сохранена: $BACKUP_FILE."
done
