# syntax=docker/dockerfile:latest

ARG BUILDER=golang
ARG BUILDER_VERSION=1.24
ARG BUILDER_IMAGE=golang:${BUILDER_VERSION}

ARG BASE_IMAGE=scratch

# stage 1: build
FROM ${BUILDER_IMAGE} AS build

WORKDIR /go/src/app
COPY . .

ENV CGO_ENABLED=0 GOOS=linux
RUN go build -o /go/bin/app .

# stage 2: release
FROM ${BASE_IMAGE} AS release

WORKDIR /

COPY --from=build /go/bin/app /app

EXPOSE 8080

ENTRYPOINT ["/app"]
