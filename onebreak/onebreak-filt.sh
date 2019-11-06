#!/bin/bash

set -o errexit
set -o nounset

mkdir -p $(dirname ${OUTPUT_FILE})

onebreak filt \
    ${TUMOR_BP_DIR}/${TUMOR_BP} \
    ${TUMOR_BAM_DIR}/${TUMOR_BAM} \
    ${OUTPUT_FILE} \
    ${REFERENCE_DIR}/${REFERENCE_FILE} \
    --matched_control_bp_file ${CONTROL_BP_DIR}/${CONTROL_BP} \
    --matched_control_bam ${CONTROL_BAM_DIR}/${CONTROL_BAM} \
    --merged_control_file ${MERGED_CONTROL_DIR}/${MERGED_CONTROL_FILE}

