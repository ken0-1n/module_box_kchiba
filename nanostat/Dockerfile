FROM python:3.8.6-buster

MAINTAINER ken-ichi chiba <kchiba@hgc.jp>

RUN apt-get -y update
RUN apt-get install -y liblzma-dev libbz2-dev ncurses-dev zlib1g-dev
RUN apt-get install -y wget

RUN pip install NanoStat==1.4.0

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

CMD ["/bin/bash"]

