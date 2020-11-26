#!/bin/bash

set -xv
set -o errexit
set -o nounset

tumor_prefix=${INPUT_TUMOR_DIR}/${SAMPLE_TUMOR}
control_prefix=${INPUT_CONTROL_DIR}/${SAMPLE_CONTROL}
tumor_bam=${INPUT_TUMOR_BAM_DIR}/${SAMPLE_TUMOR}.bam
control_bam=${INPUT_CONTROL_BAM_DIR}/${SAMPLE_CONTROL}.bam
reference_fasta=${REFERENCE_DIR}/${REFERENCE_FILE}

nanomonsv get ${OPTIONS} $tumor_prefix $tumor_bam $reference_fasta --control_prefix $control_prefix --control_bam $control_bam

