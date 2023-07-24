#!/bin/bash
#define file paths
ggsashimi=/Users/ahrim/ggsashimi/ggsashimi.py
#bam_files=/Volumes/Seagate\ Basic/O054_pan_star_filtered/A-253-LFB4842_L4_DSG.bam
bam_files=/Users/ahrim/Desktop/LAB/Data/MSTRG.4777_input_bam.tsv
GTF_file=/Volumes/Seagate\ Basic/Isen_pan_genome/I_sen_all.gtf
#"${bam_files}"
#run ggsashimi for MSTRG.6552
"${ggsashimi}" -b "${bam_files}" -c 182_1:3557982-3565000 -g "${GTF_file}" -M 500 -C 4 -O 3 -A median_j --shrink --alpha 1 --base-size=20 --ann-height=8 --height=3 --fix-y-scale --width=18 -o MSTRG.4777.pdf 

## Example #1. Overlay, intron shrinkage, gene annotation, PDF output, custom size and colors
#../ggsashimi.py -b input_bams.tsv -c chr10:27040584-27048100 -g annotation.gtf -M 10 -C 3 -O 3 --shrink --alpha 0.25 --base-size=20 --ann-height=4 --height=3 --width=18 -P palette.txt

## Example #2. Mean coverage and number of reads supporting inclusion and exclusion, no gene annotation, TIFF output (350 PPI), custom size, default colors, fixed y-scale
#../ggsashimi.py -b input_bams.tsv -c chr10:27040584-27048100 -M 10 -C 3 -O 3 -A mean --alpha 1 -F tiff -R 350 --base-size=16 --height=3 --width=18 --fix-y-scale
#3564258