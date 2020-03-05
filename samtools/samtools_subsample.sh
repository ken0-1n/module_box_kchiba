#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

samtools view -bs 42.${SAMPLING} -@ 4 ${INPUT_BAM} > ${OUTPUT_DIR}/${OUTPUT_BAM}

samtools index ${OUTPUT_DIR}/${OUTPUT_BAM}


