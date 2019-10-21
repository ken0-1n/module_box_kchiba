#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

samtools view ${TUMOR_CRAM} -b -T ${REFERENCE_DIR}/${REFERENCE_FILE} -o ${OUTPUT_DIR}/tumor.bam
rm ${TUMOR_CRAM}
samtools index ${OUTPUT_DIR}/tumor.bam

samtools view ${NORMAL_CRAM} -b -T ${REFERENCE_DIR}/${REFERENCE_FILE} -o ${OUTPUT_DIR}/normal.bam
rm ${TUMOR_CRAM}
samtools index ${OUTPUT_DIR}/normal.bam

svaba run \
    -t ${OUTPUT_DIR}/tumor.bam \
    -n ${OUTPUT_DIR}/normal.bam \
    -G ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -a ${OUTPUT_DIR}/${TUMOR_SAMPLE} \
    ${OPTION}

rm ${OUTPUT_DIR}/tumor.bam
rm ${OUTPUT_DIR}/normal.bam

