# Dockerfile
FROM debian:8.5
MAINTAINER fordodone@gmail.com

RUN DEBIAN_FRONTEND=noninteractive ; \
      apt-get update \
      && apt-get install -y git make gcc openssl libcurl3 libxml2 libssl-dev libxml2-dev libcurl4-openssl-dev pinentry-curses xclip

RUN cd /usr/src \
      && git clone https://github.com/lastpass/lastpass-cli.git \
      && cd lastpass-cli \
      && make \
      && make install
