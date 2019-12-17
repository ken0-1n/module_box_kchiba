#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

svaba run \
    -t ${NORMAL_BAM_DIR}/${NORMAL_BAM_FILE} \
    -a ${OUTPUT_DIR}/${SAMPLE} \
    -G ${REFERENCE_DIR}/${REFERENCE_FILE} \
    ${OPTION}

