#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -l os7
#$ -o log
#$ -e log
#$ -q ljobs.q,lmem.q
#$ -l s_vmem=10G,mem_req=10G  

tumor_prefix=$1
tumor_bam=$2
control_prefix=$3
control_bam=$4
reference_genome=$5
parse_option=""
if [ $# -eq 6 ]; then 
    parse_option=$6
fi

singularity run \
    -e image/nanomonsv-0.1.0.simg \
    script/nanomonsv-get-pair.sh \
    $tumor_prefix \
    $tumor_bam \
    $control_prefix \
    $control_bam \
    $reference_genome \
    "$parse_option" 

