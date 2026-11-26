# syntax=docker/dockerfile:latest

ARG BASE_IMAGE=node:20-alpine

FROM ${BASE_IMAGE} AS release

WORKDIR /app
COPY . .

ENV PORT=8080
EXPOSE 8080

CMD ["node", "server.js"]
