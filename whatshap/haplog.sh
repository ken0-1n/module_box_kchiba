#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

bgzip ${INPUT_VCF}
tabix -p vcf ${INPUT_VCF}.gz 

bcftools filter \
	${INPUT_VCF}.gz \
	-r ${TARGET_CHROM} > target.vcf

samtools view -bh -F 3328 \
	${INPUT_BAM} \
	${TERGET_CHROM} > target.bam
samtools index target.bam

whatshap haplotag -o ${OUTPUT_DIR}/${OUTPUT_BAM} \
	--reference ${REFERENCE} \
	target.vcf \
	target.bam	

