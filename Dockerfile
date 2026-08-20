FROM ghcr.io/plastic-labs/honcho:v3.0.11@sha256:5dada308260312ee59dc80b413056de3cbdac9c0d4b6e95796a46a3495b80e86

WORKDIR /app
COPY --chown=app:app config.toml /app/config.toml
USER app

CMD ["sh", "/app/docker/entrypoint.sh"]
