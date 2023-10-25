#!/bin/bash
#define comparison output  
S1_F_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S1_F
S3_F_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S3_F
S3_M_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S3_M
S4_F_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S4_F
S4_M_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S4_M
S6-7_F_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S6-7_F
S6-7_M_Output=/Users/ahrim/Desktop/LAB/Output/rMATs/S6-7_M
#define tmp output
S1_F_tmp=/Users/ahrim/Desktop/LAB/Output/rMATs/S1_F_tmp
S3_F_tmp=/Users/ahrim/Desktop/LAB/Output/rMATs/S3_F_tmp
S3_M_tmp=/Users/ahrim/Desktop/LAB/Output/rMATs/S3_M_tmp
S4_F_tmp=/Users/ahrim/Desktop/LAB/Output/rMATs/S4_F_tmp
S4_M_tmp=/Users/ahrim/Desktop/LAB/Output/rMATs/S4_M_tmp
S6-7_F_tmp=/Users/ahrim/Desktop/LAB/Output/rMATs/S6-7_F_tmp
S6-7_M_tmp=/Users/ahrim/Desktop/LAB/Output/rMATs/S6-7_M_tmp

rmats.py --od "${S1_F_Output}"  --tmp "${S1_F_tmp}" --task stat
rmats.py --od "${S3_F_Output}"  --tmp "${S3_F_tmp}" --task stat
rmats.py --od "${S3_M_Output}"  --tmp "${S3_M_tmp}" --task stat
rmats.py --od "${S4_F_Output}"  --tmp "${S4_F_tmp}" --task stat
rmats.py --od "${S4_M_Output}"  --tmp "${S4_M_tmp}" --task stat
rmats.py --od "${S6-7_F_Output}"  --tmp "${S6-7_F_tmp}" --task stat
rmats.py --od "${S6-7_M_Output}"  --tmp "${S6-7_M_tmp}" --task stat
