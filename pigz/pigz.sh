#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

mv ${FASTQ} ${OUTPUT_DIR}

FASTQ_BASENAME=$(basename ${FASTQ})

pigz ${OUTPUT_DIR}/${FASTQ_BASENAME}

