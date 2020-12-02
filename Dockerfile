FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y curl python && \
    rm -rf /var/lib/apt/lists/*

RUN curl -s https://crtr.dev/deploy.py | python

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
