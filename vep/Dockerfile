FROM ensemblorg/ensembl-vep:release_102.0

USER root

RUN cpanm DBD::SQLite

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



