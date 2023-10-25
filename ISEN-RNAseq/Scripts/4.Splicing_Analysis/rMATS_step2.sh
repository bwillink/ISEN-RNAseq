#!/bin/bash
#define output variables 
prep_post_output=/Users/ahrim/Desktop/LAB/Output/rMATs/prep_post
S1_F_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S1_F
S3_F_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S3_F
S3_M_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S3_M
S4_F_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S4_F
S4_M_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S4_M
S6-7_F_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S6-7_F
S6-7_M_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S6-7_M

#S1 Females
python /home/butterflylab/miniconda3/envs/rmats/rMATS/rMATS_P/prepare_stat_inputs.py --new-output-dir "${S1_F_Output}" --old-output-dir "${prep_post_FP}" --group-1-indices 0,1,2,3,4 --group-2-indices 5,6
#S3 Females
python /home/butterflylab/miniconda3/envs/rmats/rMATS/rMATS_P/prepare_stat_inputs.py --new-output-dir "${S3_F_Output}" --old-output-dir "${prep_post_FP}" --group-1-indices 7,8,9,10 --group-2-indices 11,12,13,14
#S3 Males
python /home/butterflylab/miniconda3/envs/rmats/rMATS/rMATS_P/prepare_stat_inputs.py --new-output-dir "${S3_M_Output}" --old-output-dir "${prep_post_FP}" --group-1-indices 15,16,17 --group-2-indices 18,19,20,21
#S4 Females
python /home/butterflylab/miniconda3/envs/rmats/rMATS/rMATS_P/prepare_stat_inputs.py --new-output-dir "${S4_F_Output}" --old-output-dir "${prep_post_FP}" --group-1-indices 22,23,24,25 --group-2-indices 26,27,28,29
#S4 Males
python /home/butterflylab/miniconda3/envs/rmats/rMATS/rMATS_P/prepare_stat_inputs.py --new-output-dir "${S4_M_Output}" --old-output-dir "${prep_post_FP}" --group-1-indices 30,31,32,33 --group-2-indices 34,35,36,37
#S6-7 Females
python /home/butterflylab/miniconda3/envs/rmats/rMATS/rMATS_P/prepare_stat_inputs.py --new-output-dir "${S6-7_F_Output}" --old-output-dir "${prep_post_FP}" --group-1-indices 38,39,40,41,42 --group-2-indices 43,44,45,46,47,48,49,50
#S6-7 Males
python /home/butterflylab/miniconda3/envs/rmats/rMATS/rMATS_P/prepare_stat_inputs.py --new-output-dir "${S6-7_M_Output}" --old-output-dir "${prep_post_FP}" --group-1-indices 51,52,53 --group-2-indices 54,55,56