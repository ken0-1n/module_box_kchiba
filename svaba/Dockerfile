FROM ubuntu:18.04

MAINTAINER Kenichi Chiba <kchiba@hgc.jp>

RUN apt-get -y update && \
    apt-get install -y gcc g++ make bzip2 && \
    apt-get install -y build-essential zlib1g-dev libbz2-dev liblzma-dev ncurses-dev && \
    apt-get install -y git wget

RUN mkdir -p /tools && \
    cd /tools && \
    echo "build samtools-1.9" && \
    wget -nc https://sourceforge.net/projects/samtools/files/samtools/1.9/samtools-1.9.tar.bz2 && \
    tar xjvf samtools-1.9.tar.bz2 && \
    rm -f samtools-1.9.tar.bz2 && \
    cd samtools-1.9 && \
    make && \
    make install

RUN cd /tools && \
    echo "build htslib-1.9" && \
    wget -nc https://sourceforge.net/projects/samtools/files/samtools/1.9/htslib-1.9.tar.bz2 && \
    tar xvf htslib-1.9.tar.bz2 && \
    rm -f htslib-1.9.tar.bz2 && \
    cd htslib-1.9 && \
    make && \
    make install

RUN cd /tools && \
    git clone --recursive https://github.com/walaj/svaba.git && \
    cd svaba && \
    ./configure && \
    make && \
    make install

RUN echo "export LD_LIBRARY_PATH=/usr/local/lib" >> /root/.bashrc 
ENV PATH "$PATH:/tools/svaba/bin"

