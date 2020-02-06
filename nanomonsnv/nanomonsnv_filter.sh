#! /bin/bash
set -e

OUTPUT_DIR=`dirname ${OUTPUT_FILE}`
mkdir -p ${OUTPUT_DIR}

nanomonsnv filter ${INPUT_FILE} ${OUTPUT_FILE} ${GNOMAD_FILE} ${SIMPLE_REPEAT_FILE}

