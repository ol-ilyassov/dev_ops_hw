#!/bin/bash

read FILE

if [ ! -f "$FILE" ]; then
    echo "Ошибка: $FILE не доступен."
    exit 1
fi

WORD_COUNT=$(wc -w < "$FILE")

echo "Результат $FILE: $WORD_COUNT"
