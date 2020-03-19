#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

/home/vep/vep -i ${INPUT_VCF} -o ${OUTPUT_VCF} --vcf --force_overwrite --verbose --check_existing  --fields "SimpleRepeat" --custom ${SIMPLE_REPEAT},bed,overlap,0 --fork 8 

