#!/bin/bash
#define file paths
Samtools_FP=/Users/ahrim/apps/samtools/bin/samtools 
SAM_Files_FP=/Volumes/Seagate\ Basic/O054_pan_sam
#define output file path 
Samtools_Output=/Users/ahrim/Desktop/LAB/Output/Samtools_Output

#run for loop 
for i in /Volumes/Seagate\ Basic/O054_pan_sam/*_Aligned.out.sam ;
do
    #define variables 
    BAM_Full_Directory="${i%_Aligned.out.sam}_Aligned.out.bam"
    SAM_File=$(basename "${i}")
    BAM_File=$(basename "${BAM_Full_Directory}")
    #run samtools 
    "${Samtools_FP}" view -b "${SAM_Files_FP}"/"${SAM_File}" \
    |"${Samtools_FP}" sort -o "${Samtools_Output}"/"${BAM_File}"
    "${Samtools_FP}" index "${Samtools_Output}"/"${BAM_File}"
done 