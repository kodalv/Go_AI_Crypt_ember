#!/bin/bash

# Генеруємо випадкове ім'я файлу (8 випадкових символів)
FILENAME=$(openssl rand -hex 4).txt

# Створюємо файл і додаємо в нього текст
echo "Це випадковий файл $FILENAME" > "$FILENAME"

# Додаємо файл у Git
git add "$FILENAME"

# Комітимо файл з повідомленням
git commit -m "Додано випадковий файл $FILENAME"

# Відправляємо коміт на GitHub
git push origin main  # Замініть "main" на вашу основну гілку, якщо вона інша