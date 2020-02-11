FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt upgrade -y && apt install inspircd tor -y

RUN echo INSPIRCD_ENABLED=1 > /etc/default/inspircd
COPY run.sh /root/run.sh
RUN chmod +x /root/run.sh

RUN mkdir -p /data/configs
RUN cp -r /etc/tor /data/configs
RUN cp -r /etc/inspircd /data/configs

CMD "/root/run.sh"
