#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

canu -p ${OUT_PREFIX} \
     -d ${OUTPUT_DIR} \
     genomeSize=${GENOME_SIZE} \
     useGrid=false \
     -nanopore-raw ${FASTQ_FILE} \
     ${OPTION}

