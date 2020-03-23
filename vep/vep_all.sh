#!/bin/bash

set -o errexit
set -o nounset

mkdir -p $(dirname ${OUTPUT_VCF})

/opt/vep/src/ensembl-vep/vep -i ${INPUT_VCF} -o ${OUTPUT_VCF} --vcf --force_overwrite --verbose --check_existing --fields "gnomADg_AF,SimpleRepeat" --custom ${GNOMAD},gnomADg,vcf,exact,0,AF --custom ${SIMPLE_REPEAT},SimpleRepeat,bed,overlap,0 --fork 4 

