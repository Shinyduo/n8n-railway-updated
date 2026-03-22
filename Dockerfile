FROM node:18-alpine

# Устанавливаем build tools для компиляции native модулей
RUN apk add --no-cache \
    build-base \
    python3 \
    openssl-dev \
    libffi-dev

# Устанавливаем n8n
RUN npm install -g n8n

# Устанавливаем tdlib binaries
RUN npm install -g @telepilotco/tdlib-binaries-prebuilt

# Запускаем n8n
CMD ["n8n"]
