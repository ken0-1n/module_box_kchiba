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
    -j gridss-2.7.3-gridss-jar-with-dependencies.jar \
    -t 4
    ${BAM}

