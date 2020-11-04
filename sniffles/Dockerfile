FROM ubuntu:18.04

MAINTAINER kchiba <kchiba@hgc.jp>

RUN apt-get -y update
RUN apt-get install -y gcc g++ make cmake bzip2
RUN apt-get install -y liblzma-dev libbz2-dev ncurses-dev zlib1g-dev
RUN apt-get install -y rsync wget

RUN mkdir -p /tools && \
cd /tools && \
wget https://github.com/fritzsedlazeck/Sniffles/archive/1.0.12a.tar.gz -O Sniffles.tar.gz && \
tar xzvf Sniffles.tar.gz && \
cd Sniffles-1.0.12a && \
mkdir -p build && \
cd build && \
cmake .. && \
make

ENV PATH $PATH:/tools/Sniffles-1.0.12a/bin/sniffles-core-1.0.12a

CMD ["/bin/bash"]

