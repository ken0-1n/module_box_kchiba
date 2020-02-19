#!/bin/bash

set -o errexit
set -o nounset


cd /opt/gridss
pwd
ls

TARGET_VCF=${OUTPUT_VCF%.*}

Rscript gridss_somatic_filter.R -i ${INPUT_VCF} -o ${TARGET_VCF}
