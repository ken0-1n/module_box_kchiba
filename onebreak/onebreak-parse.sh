#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

onebreak parse ${BAM_DIR}/${BAM_FILE} ${OUTPUT_DIR}/${OUTPUT_FILE}

