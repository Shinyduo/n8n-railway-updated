FROM n8nio/n8n:latest

USER root

# Install Puppeteer and dependencies
RUN npm install puppeteer

# Install browser dependencies for Puppeteer
RUN apt-get update && apt-get install -y \
    chromium-browser \
    && rm -rf /var/lib/apt/lists/*

# Set Puppeteer to use system Chromium
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
