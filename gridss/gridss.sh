#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}
export TUMOR_BAM=${OUTPUT_DIR}/temp_tumor.bam
export NORMAL_BAM=${OUTPUT_DIR}/temp_normal.bam

/tools/samtools-1.9/samtools view \
    -T ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -h \
    -b \
    -@ $(nproc) \
    ${TUMOR_CRAM} > ${TUMOR_BAM}

/tools/samtools-1.9/samtools index \
    ${TUMOR_BAM}

/tools/samtools-1.9/samtools view \
    -T ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -h \
    -b \
    -@ $(nproc) \
    ${NORMAL_CRAM} > ${NORMAL_BAM}

/tools/samtools-1.9/samtools index \
    ${NORMAL_BAM}

cd /opt/gridss

bash gridss.sh \
    -o ${OUTPUT_DIR}/${VCF}  \
    -a ${OUTPUT_DIR}/${ASSEMBLE} \
    -r ${REFERENCE_DIR}/${REFERENCE_FILE}  \
    -j ${GRIDSS_JAR} \
    -t $(nproc) \
    -w ${OUTPUT_DIR} \
    --picardoptions VALIDATION_STRINGENCY=LENIENT \
    ${NORMAL_BAM} \
    ${TUMOR_BAM}

Rscript gridss_somatic_filter.R \
    -i ${OUTPUT_DIR}/${VCF} \
    -o ${OUTPUT_DIR}/${VCF_SOMATIC} \
    --normalordinal 1 --tumourordinal 2
    
rm -rf ${OUTPUT_DIR}/temp_tumor.bam.gridss.working
rm -rf ${OUTPUT_DIR}/temp_normal.bam.gridss.working
rm -rf ${OUTPUT_DIR}/${ASSEMBLE}.gridss.working
rm -rf ${OUTPUT_DIR}/${VCF}.gridss.working
rm -f ${TUMOR_BAM}
rm -f ${TUMOR_BAM}.bai
rm -f ${NORMAL_BAM}
rm -f ${NORMAL_BAM}.bai

