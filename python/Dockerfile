# syntax=docker/dockerfile:latest

ARG BASE_IMAGE=python:3.12-slim

FROM ${BASE_IMAGE} AS release

WORKDIR /app
COPY . .

ENV PORT=8080
EXPOSE 8080

CMD ["python", "app.py"]
