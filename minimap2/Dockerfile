FROM ubuntu:16.04

MAINTAINER Kenichi Chiba <kchiba@hgc.jp>

RUN apt-get update && apt-get install -y \
    git \
    wget \
    bzip2 \
    make \
    gcc \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libncurses5-dev 

WORKDIR /usr/local

RUN wget https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17.tar.bz2 && \
    tar jxvf minimap2-2.17.tar.bz2 && \
    cd minimap2-2.17 && \
    make

RUN wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 && \
    tar jxvf samtools-1.9.tar.bz2 && \
    cd samtools-1.9 && \
    ./configure && make && make install

ENV PATH $PATH:/usr/local/minimap2-2.17
ENV PATH $PATH:/usr/local/samtools-1.9/bin
