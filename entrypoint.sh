#!/bin/bash

export PATH="/opt/venv/bin:$PATH"
# Set the port to use for Gunicorn
export RUN_PORT=8000

# Start Gunicorn as a background process
gunicorn run:app --bind 0.0.0.0:5000 --log-level=debug --workers=4

# Start Nginx in the foreground
nginx -g 'daemon off;'
