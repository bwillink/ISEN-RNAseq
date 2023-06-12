dat <- read.csv("/Users/ahrim/Desktop/LAB/Data/colData.csv", sep = ",", header = T) 
#load package
library(dplyr)
dat <- dat[-c(52,53,54,55,56), ]

#filter into stages
S1<-filter(dat,Stage=='S1')
S2<-filter(dat,Stage=='S2')
S3<-filter(dat,Stage=='S3')
S4<-filter(dat,Stage=='S4')
S5<-filter(dat,Stage=='S5')
S6_7<-filter(dat,Stage=='S6'| Stage=='S7')

#bind rows together
dat<-bind_rows(S1_M,S1_F,S2,S3,S4,S5,S6_7)
View(dat)

#define variables
fp<-"/proj/snic2020-6-170/beatriz/output/O054_pan_star_mapping/star_2nd_pass/"
sufix<-"_sorted.bam,"
bam_names<-c()

#run for loop
for (i in dat$Library){
  tmp <- paste0(fp,i,sufix)
  bam_names <- append(tmp, bam_names)
}

bam_names<-paste(bam_names, collapse = "")
bam_names<-gsub('.{1}$', '',bam_names)

#convert to txt files 
write(bam_names, file = "/Users/ahrim/Desktop/LAB/Data/prep1.txt")

  