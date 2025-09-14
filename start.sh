#!/bin/bash

echo "🚀 Запуск Banking ML Server"
echo "=========================="

# Проверяем, существует ли виртуальное окружение
if [ ! -d "venv" ]; then
    echo "📦 Создание виртуального окружения..."
    python3 -m venv venv
fi

# Активируем виртуальное окружение
echo "🔧 Активация виртуального окружения..."
source venv/bin/activate

# Устанавливаем зависимости
echo "📚 Установка зависимостей..."
pip install -r requirements.txt

# Запускаем сервер
echo "🌐 Запуск сервера..."
echo "Сервер будет доступен по адресу: http://localhost:8080"
echo "Веб-интерфейс: http://localhost:8080"
echo ""
echo "Для остановки сервера нажмите Ctrl+C"
echo ""

python app.py
