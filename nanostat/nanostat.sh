#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

NanoStat \
    --bam ${INPUT_DIR}/${BAM_FILE} \
    --outdir ${OUTPUT_DIR} \
    --name ${OUTPUT_FILE}

