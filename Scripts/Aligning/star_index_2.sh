#!/bin/bash
STAR_FP=/home/butterflylab/STAR-2.7.10a/bin/Linux_x86_64/STAR
genomeDir_FP=/media/butterflylab/Lab_common2/Ahrim/Output/star_index_2
Fasta_FP=/media/butterflylab/Lab_common2/Ahrim/Data/O054_pan_polished.fa 
gtf_FP=/media/butterflylab/Lab_common2/Ahrim/Output/...
sjdbFile_FP=/media/butterflylab/Lab_common2/Ahrim/Output/star_1st_pass/...

#generate genome indexes
"${STAR_FP}" --runThreadN 4 --runMode genomeGenerate --genomeDir "${genomeDir_FP}" --genomeFastaFiles "${Fasta_FP}"--sjdbGTFfile "${gtf_FP}" --sjdbOverhang 149 --sjdbFileChrStartEnd "${sjdbFile_FP}"
