#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -l os7
#$ -o log
#$ -e log
#$ -q ljobs.q,lmem.q
#$ -l s_vmem=10G,mem_req=10G  

bam_file=$1
output_prefix=$2
parse_option=""
if [ $# -eq 3 ]; then 
    parse_option=$3
fi

singularity run \
    -e image/nanomonsv-0.1.0.simg \
    script/nanomonsv-parse.sh \
    $bam_file \
    $output_prefix \
    "$parse_option" 

