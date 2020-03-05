FROM pkrusche/hap.py:v0.3.9 

RUN apt-get -y update && \
    apt-get install liblzma-dev

RUN echo "build bcftools-1.9" && \
    wget -nc https://sourceforge.net/projects/samtools/files/samtools/1.9/bcftools-1.9.tar.bz2 && \
    tar xvf bcftools-1.9.tar.bz2 && \
    rm -f bcftools-1.9.tar.bz2 && \
    cd bcftools-1.9 && \
    autoheader && \
    autoconf && \
    ./configure \
    make && \
    make install

