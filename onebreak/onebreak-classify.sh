#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

CLASSIFY_FILE=${OUTPUT_DIR}/${SAMPLE}.classify.txt

onebreak classify \
    ${IN_FILE} \
    ${CLASSIFY_FILE} \
    ${REFERENCE_DIR}/${REFERENCE_FILE} \
    --te_seq ${DFAM_DIR}/${DFAM_FILE} \
    --simple_repeat ${SIMPLE_REPEAT_DIR}/${SIMPLE_REPEAT_FILE} \
    --remove_rna

