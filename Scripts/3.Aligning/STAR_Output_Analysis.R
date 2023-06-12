#read table
dat<-read.csv("/Users/ahrim/Desktop/LAB/Data/SJ.filtered.tab", sep = "\t", header = FALSE)
#open specific column
all_junctions<-dat[,c(6)]
#caculate number of newly discovered junctions 
new_junctions<-length(which(all_junctions=='0'))
#caculate number of already known junctions 
old_junctions<-length(which(all_junctions=='1'))
#calculate proportion of new junctions
proportion_of_new_junctions<-(new_junctions/length(all_junctions))*100
proportion_of_new_junctions
#calculate proportion of old junctions
proportion_of_old_junctions<-(old_junctions/length(all_junctions))*100
proportion_of_old_junctions