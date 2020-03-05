#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

samtools view -h -F 1024 -b -@ 4 \
    ${BAM_FILE} \
    > ${OUTPUT_DIR}/${OUTPUT_BAM}

samtools index ${OUTPUT_DIR}/${OUTPUT_BAM}

