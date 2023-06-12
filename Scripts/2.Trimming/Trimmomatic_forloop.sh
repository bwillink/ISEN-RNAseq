#!/bin/bash

#define file paths
Data_FP=/Volumes/Seagate\ Basic/30-819992934/N2301073_30-819992934_RNA/raw_data
Output_FP=..
Adaptor_FP=/Users/ahrim/Downloads/trimmomatic-0.39/adapters
#run for loop function
for R1 in /Volumes/Seagate\ Basic/30-819992934/N2301073_30-819992934_RNA/raw_data/*_1.fq.gz ; 
do
    #define read 2
    R2="${R1%_1.fq.gz}_2.fq.gz"
    #define Outputs
    R1_Output=$(basename "${R1}")
    R2_Output=$(basename "${R2}")
    #define PE(Paired End) Outputs
    R1_OutputPE="${R1_Output%_1.fq.gz}_1_PE.fq.gz"
    R2_OutputPE="${R2_Output%_2.fq.gz}_2_PE.fq.gz"
    #define SE(Single End) Outputs
    R1_OutputSE="${R1_Output%_1.fq.gz}_1_SE.fq.gz"
    R2_OutputSE="${R2_Output%_2.fq.gz}_2_SE.fq.gz"
    #define trimmed PE(Paired End) and SE(Single Ended)
    New1PE="${Output_FP}/"${R1_OutputPE}""
    New2PE="${Output_FP}/"${R2_OutputPE}""
    New1SE="${Output_FP}/"${R1_OutputSE}""
    New2SE="${Output_FP}/"${R2_OutputSE}""
    #run trimmomatic
    trimmomatic PE -threads 1 -phred33 -summary statsSummaryFile "${R1}" "${R2}" "${New1PE}" "${New1SE}" "${New2PE}" "${New2SE}" \
    ILLUMINACLIP:"${Adaptor_FP}"/TruSeq3-PE.fa:2:30:10:8:true MAXINFO:40:0.2
done