# syntax=docker/dockerfile:latest

ARG BASE_IMAGE=php:8.3-cli

FROM ${BASE_IMAGE} AS release

WORKDIR /app
COPY . .

ENV PORT=8080
EXPOSE 8080

CMD ["sh", "-c", "php -S 0.0.0.0:${PORT} -t /app"]
