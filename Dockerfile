FROM ubuntu:22.04

RUN apt update -y && apt install -y vim \
    && useradd -m -u 1000 student
