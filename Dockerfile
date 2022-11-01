FROM ubuntu:22.04

RUN apt update -y && apt install -y vim \
    && useradd -m -u 1000 student

USER student
WORKDIR /home/student

RUN mkdir -p /home/student/workspace

COPY ./data/workspace /home/student/workspace
