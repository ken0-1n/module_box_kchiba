#!/bin/bash

set -xv
set -o errexit
set -o nounset

bam_file=$1
output_prefix=$2
parse_option=""
if [ $# -eq 3 ]; then 
    parse_option=$3
fi

nanomonsv parse $parse_option $bam_file $output_prefix


