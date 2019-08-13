FROM openjdk:8

MAINTAINER kchiba <kchiba@hgc.jp>

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install apt-utils build-essential wget

RUN mkdir -p /tools && \
    cd /tools && \
    wget https://github.com/marbl/canu/archive/v1.8.tar.gz && \
    tar -xzf v1.8.tar.gz && \
    cd canu-1.8/src && make -j8

ENV PATH $PATH:/tools/canu-1.8/Linux-amd64/bin

CMD ["/bin/bash"]

