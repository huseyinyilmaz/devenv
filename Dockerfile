FROM ubuntu:latest

LABEL org.opencontainers.image.authors="yilmazhuseyin@gmail.com"

RUN apt-get update && \
    apt-get install -y ssh \
                       iputils-ping \
                       wget \
                       curl \
                       git \
                       zip \
                       make \
                       emacs \
                       dnsutils \
                       nmap && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Config update.
COPY config /config

RUN cd /config && ./run
