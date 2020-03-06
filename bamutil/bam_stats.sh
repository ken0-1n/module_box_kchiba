#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

bam stats --basic --in ${INPUT_BAM} 2> ${OUTPUT_DIR}/${OUTPUT_FILE}

