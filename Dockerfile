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
                       liblzma-dev \
                       libbz2-dev \
                       libreadline-dev \
                       libsqlite3-dev \
                       llvm \
                       libncursesw5-dev \
                       xz-utils \
                       tk-dev \
                       libxml2-dev \
                       libxmlsec1-dev \
                       libffi-dev \
                       golang-go \
                       direnv \
                       nmap && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN ssh-keygen -t rsa -f "/root/.ssh/id_rsa" -q -N ""
# Config update.
COPY config /config

RUN cd /config && ./run
