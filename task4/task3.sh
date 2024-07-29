#!/bin/bash

TARGET="ключевое_слово"

# Альтернатива чтобы сделать скрипт переиспользуемым: 
# read TARGET
# echo $TARGET

find . -type f -exec grep -l "$TARGET" {} +