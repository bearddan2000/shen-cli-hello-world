FROM ubuntu:22.04

ENV SHEN_VERSION 0.33

RUN apt-get update && \
    apt-get install -y wget && \
    wget https://github.com/tizoc/shen-scheme/releases/download/v$SHEN_VERSION/shen-scheme-v$SHEN_VERSION-linux-bin.tar.gz \
        -O /tmp/shen.tgz && \
    cd /usr/local && \
    tar xzf /tmp/shen.tgz --strip-components=1 

WORKDIR /code

COPY bin .

CMD "./run.sh"