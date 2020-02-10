FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt upgrade -y && apt install inspircd tor -y

CMD tail -f /dev/null
