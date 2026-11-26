# syntax=docker/dockerfile:latest

ARG BUILDER_IMAGE=maven:3.9-eclipse-temurin-17
ARG BASE_IMAGE=eclipse-temurin:17-jre

FROM ${BUILDER_IMAGE} AS build

WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -q -DskipTests package

FROM ${BASE_IMAGE} AS release

WORKDIR /app
COPY --from=build /app/target/java-sample-1.0.0.jar /app/app.jar

ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
