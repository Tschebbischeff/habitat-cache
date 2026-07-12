#!/bin/sh

if [ -f "$REDIS_PASSWORD_FILE" ]; then
    exec "$@" --requirepass "$(cat "$REDIS_PASSWORD_FILE" 2>/dev/null)"
else
    exec "$@"
fi