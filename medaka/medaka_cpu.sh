#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

medaka_variant \
    -f ${REFERENCE} \
    -i ${BAM} \
    -o ${OUTPUT_DIR} \
    -t ${THREADS} \
    -m ${MODEL_INITIAL} \
    -s ${MODEL_FINAL} \
    -r ${REGION}

