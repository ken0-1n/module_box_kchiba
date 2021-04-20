FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y wget zip unzip
     
RUN mkdir -p /tools && cd /tools && \
wget -nc http://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20201019.zip && \
unzip plink_linux_x86_64_20201019.zip

ENV PATH $PATH:/tools

