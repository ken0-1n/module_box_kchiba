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
    python \
    python-pip

RUN wget https://github.com/samtools/htslib/releases/download/1.9/htslib-1.9.tar.bz2 && \
    tar jxvf htslib-1.9.tar.bz2 && \
    cd htslib-1.9 && \
    ./configure && \
    make && \
    make install

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN pip install annot_utils==0.3.0
RUN pip install pysam==0.15.1
RUN pip install numpy==1.16.6
RUN pip install scipy==1.2.3
RUN pip install genomon_sv==0.7.2

# for blat
RUN apt-get update && apt-get install -y \
    libkrb5-3 \
    libpng12-0

RUN cd  /usr/local/bin && \
    wget http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/blat/blat
RUN chmod a+x /usr/local/bin/blat

# sv_utils
RUN pip install sv_utils==0.6.1
RUN pip install primer3-py==0.6.0
