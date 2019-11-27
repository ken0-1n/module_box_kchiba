#! /bin/bash

OUTPUT_BAM=${OUTPUT_DIR}/${SAMPLE}.bam

mkdir -p ${OUTPUT_DIR}

minimap2 -ax map-ont -t 8 -p 0.1 ${REFERENCE} ${INPUT_FQ} | samtools view -Shb > ${OUTPUT_BAM}.unsorted

rm -rf ${INPUT_FQ}

samtools sort -@ 8 -m 2G ${OUTPUT_BAM}.unsorted -o ${OUTPUT_BAM}
samtools index ${OUTPUT_BAM}

rm -rf ${OUTPUT_BAM}.unsorted