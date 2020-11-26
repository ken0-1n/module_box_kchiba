#!/bin/bash

set -xv
set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

nanomonsv parse ${OPTIONS} ${INPUT_DIR}/${SAMPLE}.bam ${OUTPUT_DIR}/${SAMPLE}

