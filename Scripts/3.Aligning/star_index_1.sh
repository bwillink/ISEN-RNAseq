#!/bin/bash
#define variables for file paths
STAR_FP=/home/butterflylab/STAR-2.7.10a/bin/Linux_x86_64/STAR
Fasta_FP=/media/butterflylab/Lab_common2/Ahrim/Data/O054_pan_polished.fa 
genomeDir_FP=/media/butterflylab/Lab_common2/Ahrim/Output/genomeDir_index_1
gtf_FP=/media/butterflylab/Lab_common2/Ahrim/Data/I_sen_all.gtf

#generate genome indexes
"${STAR_FP}" --runThreadN 4 --runMode genomeGenerate --genomeFastaFiles "${Fasta_FP}" --genomeDir "${genomeDir_FP}" --sjdbGTFfile "${gtf_FP}" --sjdbOverhang 149 
