#!/bin/sh

# Update the secret key from environment variable at runtime
if [ -n "$SEARXNG_SECRET_KEY" ]; then
    echo "Updating secret key from environment variable..."
    sed -i "s|secret_key:.*|secret_key: \"${SEARXNG_SECRET_KEY}\"|g" /etc/searxng/settings.yml
else
    echo "Warning: SEARXNG_SECRET_KEY environment variable not set, using default"
fi

# Execute the original SearXNG entrypoint/command
exec "$@" 