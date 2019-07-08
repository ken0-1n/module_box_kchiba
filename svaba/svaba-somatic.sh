#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

svaba run \
    -t ${TUMOR_BAM_DIR}/${TUMOR_BAM_FILE} \
    -n ${NORMAL_BAM_DIR}/${NORMAL_BAM_FILE} \
    -G ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -a ${OUTPUT_DIR}/${TUMOR_SAMPLE} \
    ${OPTION}

