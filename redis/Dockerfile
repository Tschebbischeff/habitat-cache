ARG REDIS_VERSION
FROM redis:${REDIS_VERSION:?}

COPY ./entrypoint-hook.sh /entrypoint-hook.sh
RUN chmod +x /entrypoint-hook.sh

ENTRYPOINT ["/entrypoint-hook.sh"]
CMD ["redis-server", "/config/redis.conf"]