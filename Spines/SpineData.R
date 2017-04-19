
#Program to analize data from dendritic spines

#First, load and cluster the data into CTL and shPINK1


DenSpin<-setwd('~/Desktop/Datascience/Spines/DendriticSpines')
ctl<-list.files('CTL',full.names=TRUE) #list(files.ext)
sh<-list.files('shPINK1',full.names=TRUE)


# gfp1<-read.table(ctl[1],header=TRUE,na.strings='N/A')
# gfp2<-read.table(ctl[2],na.strings='N/A',skip=1)
# head(gfp1)
# head(gfp2)


gfpdata<-data.frame()
for(i in seq_along(ctl)) {
  gfpdata<-rbind(gfpdata,read.table(ctl[i],na.strings='N/A',header=TRUE))
}


mushroom<-gfpdata[which(gfpdata$TYPE=='mushroom'),'HEAD.DIAMETER']
stubby<-gfpdata[which(gfpdata[,'TYPE']=='stubby'),'HEAD.DIAMETER']
thin<-gfpdata[which(gfpdata[,'TYPE']=='thin'),'HEAD.DIAMETER']
atypical<-gfpdata[which(gfpdata[,'TYPE']=='other'),'HEAD.DIAMETER']

gfpdensity<-sum(length(mushroom)+length(stubby)+length(thin)+length(atypical))




