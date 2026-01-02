# Используем официальный образ Python 3.11 (легковесный)
FROM python:3.11-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем requirements.txt и устанавливаем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем код бота
COPY uid_bot.py .

# Запускаем бота
CMD ["python", "uid_bot.py"]
