#!/bin/bash

# Порт веб-сервера
WEB_PORT=80

# Путь к корневой директории веб-сервера
WEB_ROOT="/var/www/html"

# Проверка доступности порта
if ! nc -z localhost "$WEB_PORT"; then
    echo "Порт $WEB_PORT недоступен"
    exit 1
fi

# Проверка наличия index.html
if [ ! -f "$WEB_ROOT/index.html" ]; then
    echo "Файл $WEB_ROOT/index.html не найден"
    exit 1
fi

# Если все проверки пройдены
exit 0