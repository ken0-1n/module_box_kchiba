#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

samtools view -@ 2 -F 2304 -hb ${INPUT_DIR}/${BAM_FILE} > ${INPUT_DIR}/temp.filtered.bam 
samtools index ${INPUT_DIR}/temp.filtered.bam 
NanoStat \
    --bam ${INPUT_DIR}/temp.filtered.bam \
    --outdir ${OUTPUT_DIR} \
    --name ${OUTPUT_FILE}

