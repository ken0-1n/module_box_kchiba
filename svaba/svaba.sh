#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

svaba run \
    -a ${OUTPUT_DIR}/${SAMPLE} \
    -G ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -t ${BAM_DIR}/${BAM_FILE} \
    ${OPTION}

