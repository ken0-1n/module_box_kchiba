#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}
mkdir -p ${OUTPUT_DIR}/tmp

export TMPDIR=${OUTPUT_DIR}/tmp

OUTPUT_DIR_TMP=$(echo $OUTPUT_DIR | sed -e 's/\//\\\//g')
sed -i "s/\/trafic_output/$OUTPUT_DIR_TMP/" /trafic/workflows/SnakefileTraficHg19

/usr/bin/snakemake --snakefile /trafic/workflows/SnakefileTraficHg19 --configfile ${CONFIG_YAML} --printshellcmds --jobs --verbose 

