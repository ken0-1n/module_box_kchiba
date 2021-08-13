FROM ubuntu:20.04

RUN apt-get -y update && \
    apt-get install -y gcc g++ make bzip2 && \
    apt-get install -y liblzma-dev libbz2-dev ncurses-dev zlib1g-dev && \
    apt-get install -y rsync wget

RUN wget https://github.com/lh3/seqtk/archive/refs/tags/v1.3.tar.gz && \
    tar xzvf v1.3.tar.gz  && \
    cd seqtk-1.3 && \
    make && \
    make install

