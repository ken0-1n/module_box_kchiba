FROM continuumio/miniconda3:4.7.12

RUN conda config --add channels conda-forge && \
    conda config --add channels bioconda
     
RUN conda install python=3.6 medaka=0.11.5

