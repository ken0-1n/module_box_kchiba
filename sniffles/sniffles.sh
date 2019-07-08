#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

sniffles \
    ${OPTION} \
    --mapped_reads ${INPUT_DIR}/${BAM_FILE} \
    -v ${OUTPUT_DIR}/${OUTPUT_VCF}

