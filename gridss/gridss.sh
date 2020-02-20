#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

cd /opt/gridss
pwd
ls

bash gridss.sh \
    -o ${OUTPUT_DIR}/${VCF}  \
    -a ${OUTPUT_DIR}/${ASSEMBLE} \
    -r ${REFERENCE_DIR}/${REFERENCE_FILE}  \
    -j ${GRIDSS_JAR} \
    -t 8 \
    -w ${OUTPUT_DIR} \
    --picardoptions VALIDATION_STRINGENCY=LENIENT \
    ${NORMAL_BAM} \
    ${TUMOR_BAM}

