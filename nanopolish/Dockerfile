FROM centos:7

MAINTAINER Kenichi Chiba <kchiba@hgc.jp>

RUN yum update -y
RUN yum group install "Development Tools" -y
RUN yum install git wget tar zlib-devel -y

RUN git clone --recursive https://github.com/jts/nanopolish.git && \
    cd nanopolish && \
    make all 

