# syntax=docker/dockerfile:1
FROM openjdk:11-jdk
WORKDIR /app
COPY spring-boot-hello-world/build/libs/spring-boot-hello-world-0.0.1-SNAPSHOT.jar .
COPY token .
RUN apt install tesseract-ocr -y && apt install libtesseract-dev -y
RUN apt install exiftool -y && apt install imagemagick -y
RUN apt update && apt install ffmpeg -y
ENTRYPOINT java -jar spring-boot-hello-world-0.0.1-SNAPSHOT.jar