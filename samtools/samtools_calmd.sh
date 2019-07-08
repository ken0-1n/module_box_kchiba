#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

samtools calmd -b \
    ${BAM_FILE} \
    ${REFERENCE_DIR}/${REFERENCE_FILE} \
    > ${OUTPUT_DIR}/${OUTPUT_BAM}

samtools index ${OUTPUT_DIR}/${OUTPUT_BAM}

