#!/bin/bash

generate_password() {
    local length="$1"
    < /dev/urandom tr -dc 'A-Za-z0-9_@#%&*+-' | head -c "$length"
}

echo "Длина пароля: "
read PASSWORD_LENGTH

echo "Файл: "
read TARGET_FILE

# Проверка, нельзя принимать отрицательные числа.
if ! [[ "$PASSWORD_LENGTH" =~ ^[0-9]+$ ]] || [ "$PASSWORD_LENGTH" -le 0 ]; then
    echo "Ошибка: Длина пароля должна быть положительным числом."
    exit 1
fi

generate_password "$PASSWORD_LENGTH" > "$TARGET_FILE"

echo "Пароль сохранен в $TARGET_FILE файл."
