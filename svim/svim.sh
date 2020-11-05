#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

svim alignment \
    ${OPTION} \
    ${OUTPUT_DIR} ${INPUT_DIR}/${BAM_FILE} ${FASTA_FILE}

