#!/bin/bash
#define data file path
Data_FP=/Volumes/Seagate\ Basic/30-819992934/N2301073_30-819992934_RNA/raw_data 
Output_FP=/Users/ahrim/Desktop/LAB/Output/FastQC
#run fastqc
"${DataFP}" fastqc *.fq.gz -o "${Output_FP}"