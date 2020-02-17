#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

/usr/bin/snakemake --snakefile /trafic/workflows/SnakefileTraficHg19 --configfile ${CONFIG_YAML} --printshellcmds --jobs --verbose 

