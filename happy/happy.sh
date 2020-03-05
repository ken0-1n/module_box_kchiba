#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

bcftools filter --exclude "QUAL<${QUAL_THRES}" ${INPUT_VCF} > ${INPUT_VCF}.filt.vcf

export HGREF=${REFERENCE}

/opt/hap.py/bin/hap.py \
    ${HIGHCONF_VCF} \
    ${INPUT_VCF}.filt.vcf \
    -f ${HIGHCONF_BED} \
    -o ${OUTPUT_DIR}/round_1_qual_threshold_${QUAL_THRES}

