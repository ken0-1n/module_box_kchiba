#!/bin/bash

set -xv
set -o errexit
set -o nounset

tumor_prefix=$1
tumor_bam=$2
control_prefix=$3
control_bam=$4
reference_genome=$5
parse_option=""
if [ $# -eq 6 ]; then 
    parse_option=$6
fi

nanomonsv get $tumor_prefix $tumor_bam $reference_genome --control_prefix $control_prefix --control_bam $control_bam $parse_option 

