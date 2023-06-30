#download packages
library(tidyr)
library(dplyr)
#download gtf file
data<-read.table("/Users/ahrim/Desktop/LAB/Data/Isen_pan_genome/I_sen_all.gtf",header=FALSE, sep="\t")
#rename headers
colnames(data)<-c("seqname","source","feature","start","end","score","strand","frame","attribute")
#separate "attribute" column into two columns-"GeneID" and "TranscriptID"
organized_table<-separate(data,col=attribute,into=c('GeneID','TranscriptID'),sep=";")
#filter table to specific gene
organized_table<-select(organized_table,"seqname","feature","start","end","GeneID")
organized_table<-filter(organized_table, GeneID=='gene_id MSTRG.4777')
#find chromosome number
chromosome_number_vector<-organized_table[,c(1)]
chr_number<-chromosome_number_vector[1]
#minimum start value
start_column<-organized_table[,c(4)]
end_column<-organized_table[,c(4)]
start_min<-min(start_column)
end_min<-min(end_column)
minimum<-if(start_min < end_min){
  minimum=start_min
} else {
  minimum=end_min
}
#maximum end value
start_max<-max(start_column)
end_max<-max(end_column)
maximum<-if(start_max > end_max){
  print(start_max)
} else {
  print(end_max)
}
#print values
final<-paste0(chr_number,':',minimum,'-',maximum)
final
