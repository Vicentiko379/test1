FROM ubuntu:latest
LABEL authors="Vicente"

ENTRYPOINT ["top", "-b"]