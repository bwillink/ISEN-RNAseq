#!/bin/bash

#define file paths
Data_FP=/Volumes/Seagate\ Basic/30-819992934/N2301073_30-819992934_RNA/raw_data
Output_FP=..
Adaptor_FP=/Users/ahrim/Downloads/trimmomatic-0.39/adapters
#define sample
Sample=A-238-LFB4843
#define reads
Read1="${Data_FP}/"${Sample}"_L4_1.fq.gz"
Read2="${Data_FP}/"${Sample}"_L4_2.fq.gz"
#define trimmed PE(Paired End) and SE(Single Ended)
New1PE="${Output_FP}/"${Sample}"_L4_1_pe_trimmed.fq.gz"
New2PE="${Output_FP}/"${Sample}"_L4_2_pe_trimmed.fq.gz"
New1SE="${Output_FP}/"${Sample}"_L4_1_se_trimmed.fq.gz"
New2SE="${Output_FP}/"${Sample}"_L4_2_se_trimmed.fq.gz"
#run trimmomatic
trimmomatic PE -threads 1 -phred33 -summary statsSummaryFile "${Read1}" "${Read2}" "${New1PE}" "${New1SE}" "${New2PE}" "${New2SE}" \
ILLUMINACLIP:"${Adaptor_FP}"/TruSeq3-PE.fa:2:30:10:8:true MAXINFO:40:0.2