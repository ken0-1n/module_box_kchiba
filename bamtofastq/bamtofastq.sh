#!/bin/bash

set -o errexit
set -o nounset

export LD_LIBRARY_PATH=/usr/local/lib
OUTPUT_DIR=`dirname ${FASTQ1}`
mkdir -p ${OUTPUT_DIR}

/usr/local/bin/bamtofastq ${BAMTOFASTQ_OPTION} \
    filename=${INPUT_BAM} \
    F=${FASTQ1} \
    F2=${FASTQ2} \
    T=temp.txt \
    S=single.txt \
    O=orphans1.txt \
    O2=orphans2.txt 2>&1 | tee $SUMMARYTXT.tmp

    grep -E "^\[C\]" $SUMMARYTXT.tmp > $SUMMARYTXT

