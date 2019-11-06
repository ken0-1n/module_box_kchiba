#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

CONTIG_FILE=${OUTPUT_DIR}/${SAMPLE}.contig.txt

onebreak contig \
    ${FILT_FILE} \
    ${BAM_DIR}/${BAM} \
    ${CONTIG_FILE} \
    ${REFERENCE_DIR}/${REFERENCE_FILE}
 

