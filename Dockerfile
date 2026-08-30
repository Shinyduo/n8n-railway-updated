FROM n8nio/n8n:latest

USER root
RUN cd /usr/local/lib/node_modules/n8n && npm install @brave/n8n-nodes-brave-search n8n-nodes-serpapi
USER node
