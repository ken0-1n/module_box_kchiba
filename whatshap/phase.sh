#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

#! /bin/bash

whatshap phase -o ${OUTPUT_DIR}/${OUTPUT_VCF} \
    ${INPUT_VCF} \
    ${INPUT_BAM} \
    --ignore-read-groups \
    --reference ${REFERENCE} \
    --chromosome ${TARGET_CHROM}
    

