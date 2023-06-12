#!/bin/bash
raw_data_FP= /media/butterflylab/Lab_common2/Ahrim/Data/raw_data
for i in `ls /media/butterflylab/Lab_common2/Ahrim/Data/raw_data/*_1.fq.gz| sed 's/_1.fq.gz//'| sed 's/\/media\/butterflylab\/Lab_common2\/Ahrim\/Data\/raw_data\///'`
do
echo "STAR alignment for ${i}"

/home/butterflylab/STAR-2.7.10a/bin/Linux_x86_64/STAR --runThreadN 36 --readFilesCommand gunzip -c --readFilesIn ../Data/raw_data/${i}_1.fq.gz ../Data/raw_data/${i}_2.fq.gz --genomeDir /media/butterflylab/Lab_common2/Ahrim/Output/genomeDir_index_2 --outFileNamePrefix ../Output/star_2nd_pass/${i}_ --outSJfilterReads Unique --outFilterMultimapNmax 1

done
