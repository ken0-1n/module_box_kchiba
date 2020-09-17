#!/bin/bash

set -o errexit
set -o nounset

mkdir -p $OUT_VCF_DIR

java -Xmx30G -jar /tools/gatk-4.1.0.0/gatk-package-4.1.0.0-local.jar \
    GenotypeGVCFs \
    -R ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -V ${IN_GVCF_DIR}/${SAMPLE}.autosome.g.vcf.gz \
    -O ${OUT_VCF_DIR}/${SAMPLE}.autosome.vcf


