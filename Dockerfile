FROM n8nio/n8n:latest

USER root
RUN npm install -g @brave/n8n-nodes-brave-search n8n-nodes-serpapi
USER node
