#read tables
S1_F_SE_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S1_F/SE.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S3_F_SE_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S3_F/SE.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S3_M_SE_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S3_M/SE.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S4_F_SE_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S4_F/SE.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S4_M_SE_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S4_M/SE.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S6_7_F_SE_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S6_7_F/SE.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
S6_7_M_SE_file<-read.delim("/Users/ahrim/Desktop/LAB/Output/rMATs/S6_7_M/SE.MATS.JC.txt", sep = "\t", dec = ".", header = TRUE)
#select column with GeneID
S1_F_genes<-S1_F_SE_file[,c(2)]
S3_F_genes<-S3_F_SE_file[,c(2)]
S3_M_genes<-S3_M_SE_file[,c(2)]
S4_F_genes<-S4_F_SE_file[,c(2)]
S4_M_genes<-S4_M_SE_file[,c(2)]
S6_7_F_genes<-S6_7_F_SE_file[,c(2)]
S6_7_M_genes<-S1_F_SE_file[,c(2)]
#find genes that intersect across all groups
GeneID<-Reduce(intersect,list(S1_F_genes, S3_F_genes, S3_M_genes, S4_F_genes, S4_M_genes, S6_7_F_genes, S6_7_M_genes))
#column of common genes across all groups
common_genes<-as.data.frame(GeneID)
View(common_genes)
#list of common genes
list(GeneID)
