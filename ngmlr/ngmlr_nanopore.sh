#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

ngmlr -t 12 \
    -r ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -q ${FASTQ_FILE} \
    -x ont \
| samtools sort -@4 \
    -O BAM \
    -o ${OUTPUT_DIR}/${OUTPUT_BAM} \
    -

samtools index ${OUTPUT_DIR}/${OUTPUT_BAM}

