#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

ngmlr -t 12 \
    -r ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -q ${FASTQ_FILE} \
    -x ont \
| samtools view -Shb > ${OUTPUT_DIR}/${OUTPUT_BAM}.unsorted 

samtools sort -@8 -m 2G \
    ${OUTPUT_DIR}/${OUTPUT_BAM}.unsorted \
    -o ${OUTPUT_DIR}/${OUTPUT_BAM} \

samtools index ${OUTPUT_DIR}/${OUTPUT_BAM}

rm -rf ${OUTPUT_DIR}/${OUTPUT_BAM}.unsorted

