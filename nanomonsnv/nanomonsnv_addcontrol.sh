#! /bin/bash
set -e

OUTPUT_DIR=`dirname ${OUTPUT_FILE}`
mkdir -p ${OUTPUT_DIR}

# if [ "$MAX_CONTROL_BAM" = "" ]; then
#     MAX_CONTROL_BAM=100
# fi

# CONTROL_BAMS=""
# i=1
# while [ $i -le $MAX_CONTROL_BAM ]; do
#     target_ctrl_bam=`eval echo \$CONTROL_BAM$i`
#     if [ "$target_ctrl_bam" = "" ]; then
#         break
#     fi
#     CONTROL_BAMS="$CONTROL_BAMS $target_ctrl_bam"
#     i=`expr $i + 1`;
# done

nanomonsnv add_control ${INPUT_FILE} ${OUTPUT_FILE} ${REFERENCE} ${CONTROL_BAM1} ${CONTROL_BAM2} ${CONTROL_BAM3} ${CONTROL_BAM4} ${OPTION}

