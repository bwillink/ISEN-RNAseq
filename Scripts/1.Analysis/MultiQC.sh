#!/bin/bash
#define Variables
FastQC_FP=/Users/ahrim/Desktop/LAB/Output/FastQC
Output_FP=/Users/ahrim/Desktop/LAB/Output/MultiQC
#run MultiQC
multiqc "${FastQC_FP}"/*_fastqc* -o "${Output_FP}"