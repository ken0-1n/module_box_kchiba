#!/bin/bash

set -o errexit
set -o nounset

OUTPUT_DIR="${OUTPUT_VCF%/*}"
mkdir -p ${OUTPUT_DIR}

gunzip ${INPUT_VCF}
bgzip ${INPUT_VCF%.*}
tabix -p vcf ${INPUT_VCF}

bcftools filter -e "QUAL < 30 | QD < 2.0 | SOR > 3.0 | FS > 60.0 | MQ < 40.0 | MQRankSum < -12.5 | ReadPosRankSum < -8.0" ${INPUT_VCF} -O z > ${OUTPUT_VCF}

tabix -p vcf ${OUTPUT_VCF}

