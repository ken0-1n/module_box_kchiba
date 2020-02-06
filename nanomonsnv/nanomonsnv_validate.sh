#! /bin/bash
set -e

OUTPUT_DIR=`dirname ${OUTPUT_FILE}`
mkdir -p ${OUTPUT_DIR}

nanomonsnv validate ${INPUT_FILE} ${TUMOR_BAM} ${CONTROL_BAM} ${OUTPUT_FILE} ${REFERENCE}
