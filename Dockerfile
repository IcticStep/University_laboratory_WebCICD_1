# Базовий образ
FROM node:18-alpine

# Робоча директорія в контейнері
WORKDIR /app

# Копіюємо файли package*
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо увесь проєкт
COPY . .

# Збираємо production-версію
RUN npm run build

# Встановлюємо веб-сервер для сервінгу статики
RUN npm install -g serve

# Запускаємо додаток
CMD ["serve", "-s", "dist"]

# Відкриваємо порт
EXPOSE 3000
