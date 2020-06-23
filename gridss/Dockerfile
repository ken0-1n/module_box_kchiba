FROM gridss/gridss:2.9.1

RUN apt-get -y update
RUN apt-get install -y wget

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

ENTRYPOINT []

