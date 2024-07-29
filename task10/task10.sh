#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "Ошибка: этот скрипт может быть выполнен только пользователем с супер правами."
    exit 1
fi

echo "Проверка наличия обновлений..."
apt-get update

UPDATES=$(apt-get -s upgrade | grep -P '^\d+ upgraded,' | awk '{print $1}')

if [ "$UPDATES" -gt 0 ]; then
    echo "Доступны обновления: $UPDATES обновлений."
    echo "Начинаем установку обновлений..."
    
    apt-get upgrade -y
    
    echo "Очистка ненужных пакетов..."
    apt-get autoremove -y
    
    echo "Обновления успешно установлены."
else
    echo "Нет доступных обновлений."
fi
