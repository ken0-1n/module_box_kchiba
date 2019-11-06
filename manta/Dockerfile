FROM ubuntu:16.04

MAINTAINER Kenichi Chiba <kchiba@hgc.jp>

RUN apt-get update -qq && \
    apt-get install -qq bzip2 gcc g++ make cmake python zlib1g-dev libboost-dev wget

RUN wget https://github.com/Illumina/manta/releases/download/v1.6.0/manta-1.6.0.release_src.tar.bz2 && \
    tar -xjf manta-1.6.0.release_src.tar.bz2 && \
    mkdir build && cd build && \
    ../manta-1.6.0.release_src/configure --jobs=4 --prefix=/manta && \
    make -j4 install

