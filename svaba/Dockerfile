FROM ubuntu:16.04

MAINTAINER Kenichi Chiba <kchiba@hgc.jp>

RUN apt-get update && \
    apt-get install -y build-essential zlib1g-dev libbz2-dev liblzma-dev git

RUN git clone -b 1.1.0 --recursive https://github.com/walaj/svaba.git && \
    cd svaba && \
    ./configure && \
    make && \
    make install

ENV PATH "$PATH:/svaba/bin"

