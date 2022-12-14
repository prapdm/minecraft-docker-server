FROM ubuntu:18.04

MAINTAINER Paweł Dmochowski avenus.pl

WORKDIR /minecraft-server

RUN apt-get update && \
    apt-get install -y wget unzip  libcurl4-openssl-dev

RUN wget https://minecraft.azureedge.net/bin-linux/bedrock-server-VERSION.zip
RUN unzip bedrock-server-VERSION.zip
COPY allowlist.json .
COPY server.properties .
COPY entrypoint.sh .
RUN mkdir worlds
RUN chmod +x entrypoint.sh

EXPOSE 19132/udp

ENTRYPOINT ["./entrypoint.sh"]


