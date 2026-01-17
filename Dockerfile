FROM n8nio/n8n:2.2.4

USER root

# Install qrcode npm package
RUN npm install -g qrcode
