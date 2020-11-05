FROM python:3.8.6-buster

MAINTAINER ken-ichi chiba <kchiba@hgc.jp>

RUN apt-get -y update
RUN apt-get install -y liblzma-dev libbz2-dev ncurses-dev zlib1g-dev
RUN apt-get install -y wget

RUN pip install svim==1.4.2

CMD ["/bin/bash"]

