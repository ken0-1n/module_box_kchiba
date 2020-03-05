FROM ubuntu:18.04

MAINTAINER kchiba <kchiba@hgc.jp>

RUN apt-get -y update
RUN apt-get install -y gcc g++ make bzip2
RUN apt-get install -y liblzma-dev libbz2-dev ncurses-dev zlib1g-dev
RUN apt-get install -y rsync wget

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
echo "build bcftools-1.9" && \
wget -nc https://sourceforge.net/projects/samtools/files/samtools/1.9/bcftools-1.9.tar.bz2 && \
tar xvf bcftools-1.9.tar.bz2 && \
rm -f bcftools-1.9.tar.bz2 && \
cd bcftools-1.9 && \
./configure && \
make && \
make install

RUN echo "export LD_LIBRARY_PATH=/usr/local/lib" >> /root/.bashrc

CMD ["/bin/bash"]

