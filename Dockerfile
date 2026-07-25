FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache python3 py3-pip ffmpeg && \
    pip3 install --no-cache-dir --break-system-packages yt-dlp
