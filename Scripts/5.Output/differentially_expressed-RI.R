#download packages
library(tidyr)
library(dplyr)
library(stringr)
#open data file
dat<-read.csv("/Users/ahrim/Desktop/LAB/Data/DEG.table.csv", sep = "\t", header = FALSE)
colnames(dat)<-c("Column1")
organized_table<-separate(dat,col=Column1,into=c("Larva1","Larva2","Larva3","Adult","Sex","GeneID"),sep=",")
organized_table<-organized_table[-1,]
organized_table<-data.frame(organized_table)
View(organized_table)
library(dplyr)
#read tables
S1_F_RI_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S1_F/RI.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S3_F_RI_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S3_F/RI.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S3_M_RI_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S3_M/RI.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S4_F_RI_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S4_F/RI.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S4_M_RI_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S4_M/RI.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S6_7_F_RI_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S6_7_F/RI.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S6_7_M_RI_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S6_7_M/RI.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
#filtered tables less than 0.05 FDR
S1_F_RI_file<-filter(S1_F_RI_file, FDR<0.05)
S3_F_RI_file<-filter(S3_F_RI_file, FDR<0.05)
S3_M_RI_file<-filter(S3_M_RI_file, FDR<0.05)
S4_F_RI_file<-filter(S4_F_RI_file, FDR<0.05)
S4_M_RI_file<-filter(S4_M_RI_file, FDR<0.05)
S6_7_F_RI_file<-filter(S6_7_F_RI_file, FDR<0.05)
S6_7_M_RI_file<-filter(S6_7_M_RI_file, FDR<0.05)
#join tables for S1F
Stage<-(rep(c('S1F'),times=nrow(S1_F_RI_file)))
Stage<-data.frame(Stage)
S1_F_RI_file<-merge(S1_F_RI_file,Stage)
#join tables for S3F
Stage<-(rep(c('S3F'),times=nrow(S3_F_RI_file)))
Stage<-data.frame(Stage)
S3_F_RI_file<-merge(S3_F_RI_file,Stage)
#join tables for S3M
Stage<-(rep(c('S3M'),times=nrow(S3_M_RI_file)))
Stage<-data.frame(Stage)
S3_M_RI_file<-merge(S3_M_RI_file,Stage)
#join tables for S4F
Stage<-(rep(c('S4F'),times=nrow(S4_F_RI_file)))
Stage<-data.frame(Stage)
S4_F_RI_file<-merge(S4_F_RI_file,Stage)
#join tables for S4M
Stage<-(rep(c('S4M'),times=nrow(S4_M_RI_file)))
Stage<-data.frame(Stage)
S4_M_RI_file<-merge(S4_M_RI_file,Stage)
#join tables for S67F
Stage<-(rep(c('S67F'),times=nrow(S6_7_F_RI_file)))
Stage<-data.frame(Stage)
S6_7_F_RI_file<-merge(S6_7_F_RI_file,Stage)
#join tables for S67M
Stage<-(rep(c('S67M'),times=nrow(S6_7_M_RI_file)))
Stage<-data.frame(Stage)
S6_7_M_RI_file<-merge(S6_7_M_RI_file,Stage)
Joined_Table<-distinct(bind_rows(S1_F_RI_file,S3_F_RI_file,S3_M_RI_file,S4_F_RI_file,S4_M_RI_file,S6_7_F_RI_file,S6_7_M_RI_file))
overlapping_genes<-distinct(merge(x=Joined_Table,y=organized_table,by='GeneID'))
overlapping_genes<-distinct(overlapping_genes)
View(overlapping_genes)