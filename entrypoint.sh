#!/bin/bash

# Fix permissions on the volume
chown -R 1000:1000 /home/node/.n8n
chmod -R u+rwX,g+rwX,o-rwx /home/node/.n8n

# Launch n8n
exec "$@"
