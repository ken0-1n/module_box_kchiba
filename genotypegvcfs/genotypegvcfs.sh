#!/bin/bash

set -o errexit
set -o nounset

mkdir -p $OUT_VCF_DIR

java -Xmx14G -jar /tools/gatk-4.1.0.0/gatk-package-4.1.0.0-local.jar \
    GenotypeGVCFs \
    -R ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -V ${IN_GVCF_DIR}/${SAMPLE}.autosome.g.vcf.gz \
    -O ${OUT_VCF_DIR}/${SAMPLE}.autosome.vcf \
    -L ${INTERVAL_FILE} \
    -ploidy 2
bgzip ${OUT_VCF_DIR}/${SAMPLE}.autosome.vcf
tabix -p vcf ${OUT_VCF_DIR}/${SAMPLE}.autosome.vcf.gz
rm ${OUT_VCF_DIR}/${SAMPLE}.autosome.vcf.idx

java -Xmx14G -jar /tools/gatk-4.1.0.0/gatk-package-4.1.0.0-local.jar \
    GenotypeGVCFs \
    -R ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -V ${IN_GVCF_DIR}/${SAMPLE}.chrX.female.g.vcf.gz \
    -O ${OUT_VCF_DIR}/${SAMPLE}.chrX.female.vcf \
    -L ${INTERVAL_FILE} \
    -ploidy 2
bgzip ${OUT_VCF_DIR}/${SAMPLE}.chrX.female.vcf
tabix -p vcf ${OUT_VCF_DIR}/${SAMPLE}.chrX.female.vcf.gz
rm ${OUT_VCF_DIR}/${SAMPLE}.chrX.female.vcf.idx

java -Xmx14G -jar /tools/gatk-4.1.0.0/gatk-package-4.1.0.0-local.jar \
    GenotypeGVCFs \
    -R ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -V ${IN_GVCF_DIR}/${SAMPLE}.chrX.male.g.vcf.gz \
    -O ${OUT_VCF_DIR}/${SAMPLE}.chrX.male.vcf \
    -L ${INTERVAL_FILE} \
    -ploidy 1
bgzip ${OUT_VCF_DIR}/${SAMPLE}.chrX.male.vcf
tabix -p vcf ${OUT_VCF_DIR}/${SAMPLE}.chrX.male.vcf.gz
rm ${OUT_VCF_DIR}/${SAMPLE}.chrX.male.vcf.idx

java -Xmx14G -jar /tools/gatk-4.1.0.0/gatk-package-4.1.0.0-local.jar \
    GenotypeGVCFs \
    -R ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -V ${IN_GVCF_DIR}/${SAMPLE}.chrY.male.g.vcf.gz \
    -O ${OUT_VCF_DIR}/${SAMPLE}.chrY.male.vcf \
    -L ${INTERVAL_FILE} \
    -ploidy 1
bgzip ${OUT_VCF_DIR}/${SAMPLE}.chrY.male.vcf
tabix -p vcf ${OUT_VCF_DIR}/${SAMPLE}.chrY.male.vcf.gz
rm ${OUT_VCF_DIR}/${SAMPLE}.chrY.male.vcf.idx

java -Xmx14G -jar /tools/gatk-4.1.0.0/gatk-package-4.1.0.0-local.jar \
    GenotypeGVCFs \
    -R ${REFERENCE_DIR}/${REFERENCE_FILE} \
    -V ${IN_GVCF_DIR}/${SAMPLE}.PAR.g.vcf.gz \
    -O ${OUT_VCF_DIR}/${SAMPLE}.PAR.vcf \
    -L ${INTERVAL_FILE} \
    -ploidy 2
bgzip ${OUT_VCF_DIR}/${SAMPLE}.PAR.vcf
tabix -p vcf ${OUT_VCF_DIR}/${SAMPLE}.PAR.vcf.gz
rm ${OUT_VCF_DIR}/${SAMPLE}.PAR.vcf.idx

