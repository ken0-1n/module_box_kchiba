#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}/${TUMOR_SAMPLE}

python /manta/bin/configManta.py \
    --normalBam ${NORMAL_BAM_DIR}/${NORMAL_BAM_FILE} \
    --tumorBam ${TUMOR_BAM_DIR}/${TUMOR_BAM_FILE} \
    --referenceFasta ${REFERENCE_DIR}/${REFERENCE_FILE} \
    --runDir ${OUTPUT_DIR}/${TUMOR_SAMPLE} \
    ${CONFIG_MANTA_OPTION}

python ${OUTPUT_DIR}/${TUMOR_SAMPLE}/runWorkflow.py ${WORKFLOW_OPTION}

