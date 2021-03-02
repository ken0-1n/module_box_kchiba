#!/bin/bash

set -o errexit
set -o nounset

mkdir -p ${OUTPUT_DIR}

TUMOR_BAM=${TUMOR_BAM_DIR}/${TUMOR_BAM}
REFERENCE=${REFERENCE_DIR}/${REFERENCE_FILE}

# GenomonSV parse
GenomonSV \
    parse \
    ${TUMOR_BAM} \
    ${OUTPUT_DIR}/${TUMOR_SAMPLE} \
    --reference ${REFERENCE} \
    ${GENOMONSV_PARSE_OPTION}

# GenomonSV filt
argument="${TUMOR_BAM} ${OUTPUT_DIR}/${TUMOR_SAMPLE} ${REFERENCE}"

if [ ! _${CONTROL_PANEL} = "_None" ]
then
    argument="${argument} --non_matched_control_junction ${MERGED_JUNCTION_DIR}/${CONTROL_PANEL}"
fi

if [ ! _${NORMAL_SAMPLE} = "_None" ]
then
    NORMAL_BAM=${NORMAL_BAM_DIR}/${NORMAL_BAM}
    argument="${argument} --matched_control_bam ${NORMAL_BAM}"

    if [ ! _${CONTROL_PANEL} = "_None" ]
    then
        argument="${argument} --matched_control_label ${NORMAL_SAMPLE}"
    fi
fi

argument="${argument} ${GENOMONSV_FILT_OPTION}"

GenomonSV filt ${argument}

sv_utils filter ${OUTPUT_DIR}/${TUMOR_SAMPLE}.genomonSV.result.txt ${OUTPUT_DIR}/${TUMOR_SAMPLE}.genomonSV.result.filt.txt ${SV_UTILS_FILT_OPTION}

