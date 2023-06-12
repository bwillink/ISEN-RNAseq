#!/bin/bash
#define variables
txt_FP=/Users/ahrim/Desktop/LAB/Data/prep1.txt
gtf_FP=/media/butterflylab/Lab_common2/Ahrim/Output/...
prep_post_output=/Users/ahrim/Desktop/LAB/Output/rMATs/prep_post
prep_post_tmp=/Users/ahrim/Desktop/LAB/Output/rMATs/prep_post_tmp
#run first step of rMATS
python rmats.py --b1 "${txt_FP}" --gtf "${gtf_FP}" -t paired --libType fr-firsttrand --readLength 150 --variable-read-length --nthread 20 --od "${prep_post_output}" --tmp "${prep_post_tmp} --task both