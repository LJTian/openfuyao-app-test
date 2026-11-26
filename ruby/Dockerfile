# syntax=docker/dockerfile:latest

ARG BASE_IMAGE=ruby:3.3-slim

FROM ${BASE_IMAGE} AS release

WORKDIR /app
COPY . .

ENV PORT=8080
EXPOSE 8080

CMD ["ruby", "app.rb"]
