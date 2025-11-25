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
                       build-essential \
                       software-properties-common \
                       zlib1g-dev \
                       libssl-dev \
                       golang-go \
                       nmap && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN ssh-keygen -t rsa -f "/root/.ssh/id_rsa" -q -N ""
# Config update.
COPY config /config

RUN cd /config && ./run
