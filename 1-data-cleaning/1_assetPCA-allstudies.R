





#------------------------------------------------------
# Author: Andrew Mertens
# amertens@berkeley.edu
#
# Calculate household wealth score from the first
# principal component of household asset ownership
# indicators
#-----------------------------------------------------





#------------------------------------
# Household asset PCA
#------------------------------------

rm(list=ls())
library(dplyr)
library(tidyr)
library(SuperLearner)
library(washb)
library(tmle)
library(caret)

#Open log
#sink("U:/results/assetPCA-allstudies.txt")



assetPCA<-function(dfull, varlist, reorder=F ){
  
  varlist<-c("STUDYID","SUBJID","COUNTRY",varlist)
  
  #Subset to only needed variables for subgroup analysis
  ret <- dfull %>%
    subset(select=c(varlist)) 
  
  #PCA of asset based wealth by enrollment
  #Method based on: https://programming-r-pro-bro.blogspot.com/2011/10/principal-component-analysis-use.html
  
  #Select assets
  ret<-as.data.frame(ret) 
  id<-subset(ret, select=c("STUDYID","SUBJID","COUNTRY")) #drop subjectid
  ret<-ret[,which(!(colnames(ret) %in% c("STUDYID","SUBJID","COUNTRY")))]
  
  
  for(i in 1:ncol(ret)){
    ret[,i]<-ifelse(ret[,i]=="",NA,ret[,i])
  } 
  
  #drop rows with no asset data
  id<-id[rowSums(is.na(ret[,4:ncol(ret)])) != ncol(ret)-3,]  
  ret<-ret[rowSums(is.na(ret[,4:ncol(ret)])) != ncol(ret)-3,]  
  

  #Drop assets with great missingness
  for(i in 1:ncol(ret)){
    cat(colnames(ret)[i],"\n")
    print(table(is.na(ret[,i])))
    print(class((ret[,i])))
  }
  
  #Set missingness to zero
  table(is.na(ret))
  for(i in 1:ncol(ret)){
    ret[,i]<-as.character(ret[,i])
    ret[is.na(ret[,i]),i]<-"miss"
    ret[,i]<-as.factor(ret[,i])
    
  }
  table(is.na(ret))
  
  #Remove columns with almost no variance
  if(length(nearZeroVar(ret))>0){
    ret<-ret[,-nearZeroVar(ret)]
  }
  
  #Convert factors into indicators
  ret<-droplevels(ret)
  ret<-design_matrix(ret)
  if(length(nearZeroVar(ret))>0){
    ret<-ret[,-nearZeroVar(ret)]
  }
  
  
  #Set missingness to zero
  table(is.na(ret))
  ret[is.na(ret)]<-0
  table(is.na(ret))
  
  #Remove columns with almost no variance
  if(length(nearZeroVar(ret))>0){
    ret<-ret[,-nearZeroVar(ret)]
  }
  
  ## Convert the data into matrix ##
  ret<-as.matrix(ret)
  
  
  ##Computing the principal component using eigenvalue decomposition ##
  princ.return <- princomp(ret) 
  
  
  ## To get the first principal component in a variable ##
  load <- loadings(princ.return)[,1]   
  
  pr.cp <- ret %*% load  ## Matrix multiplication of the input data with the loading for the 1st PC gives us the 1st PC in matrix form. 
  
  HHwealth <- as.numeric(pr.cp) ## Gives us the 1st PC in numeric form in pr.
  
  #Create 4-level household weath index
  quartiles<-quantile(HHwealth, probs=seq(0, 1, 0.25))
  print(quartiles)
  ret<-as.data.frame(ret)
  ret$HHwealth_quart<-rep(1, nrow(ret))
  ret$HHwealth_quart[HHwealth>=quartiles[2]]<-2
  ret$HHwealth_quart[HHwealth>=quartiles[3]]<-3
  ret$HHwealth_quart[HHwealth>=quartiles[4]]<-4
  table(ret$HHwealth_quart)
  ret$HHwealth_quart<-factor(ret$HHwealth_quart)
  
  if(reorder==T){
    levels(ret$HHwealth_quart)<-c("Wealth Q4","Wealth Q3","Wealth Q2","Wealth Q1")
    ret$HHwealth_quart<-factor(ret$HHwealth_quart, levels=c("Wealth Q1", "Wealth Q2","Wealth Q3","Wealth Q4"))
  }else{
    levels(ret$HHwealth_quart)<-c("Wealth Q1", "Wealth Q2","Wealth Q3","Wealth Q4")
  }
  
  #Table assets by pca quartile to identify wealth/poverty levels
  d<-data.frame(id, ret)
  wealth.tab <- d %>% subset(., select=-c(STUDYID, SUBJID, COUNTRY)) %>%
    group_by(HHwealth_quart) %>%
    summarise_all(funs(mean)) %>% as.data.frame()
  print(wealth.tab)
  
  #Save just the wealth data
  pca.wealth<-d %>% subset(select=c(STUDYID, SUBJID, COUNTRY, HHwealth_quart))
  
  pca.wealth$SUBJID<-as.numeric(as.character(pca.wealth$SUBJID))
  
  d <-dfull %>% subset(., select=c("STUDYID","SUBJID","COUNTRY"))
  d$SUBJID<-as.numeric(as.character(d$SUBJID))
  d<-left_join(d, pca.wealth, by=c("STUDYID","SUBJID","COUNTRY"))
  return(d)
}





#Identify studies measuring household assets 


setwd("U:/data")


load("allGHAPstudies.Rdata")
colnames(d)


dim(d)
d<- d %>% subset(select=c(WHZ, shortid, STUDYID,  SUBJID, SEX, AGEDAYS, region, BICYCLE, CAR, CART, COOKFUEL, FRIG, MCYCLE, PHONE, RADIO, TV, WASHMAC, MOBILE, CHAIR, WATCH, SOFA, FAN, TABLE)) %>%
  subset(!is.na(BICYCLE)|!is.na(CAR)|!is.na(CART)|!is.na(COOKFUEL)|!is.na(FRIG)|!is.na(MCYCLE)|!is.na(PHONE)|!is.na(RADIO)|!is.na(TV)|!is.na(WASHMAC)|!is.na(MOBILE)|!is.na(CHAIR)|
           !is.na(WATCH)|!is.na(SOFA)|!is.na(FAN)|!is.na(TABLE)) %>% 
  filter(WHZ>-5 & WHZ <5)
dim(d)
table(d$STUDYID)
unique(d$shortid)


#---------
# akup
#---------
study<-"akup"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("NROOMS","BICYCLE",  "CAR","CART","COOKFUEL","ELEC","FRIG","MCYCLE",  
                                        "PHONE","RADIO", "SEWING",   "TV" ,"WASHMAC" )]
d<-assetPCA(d, varlist, reorder=T)
table(d$HHwealth_quart)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )


#---------
# cmc
#---------
study<-"cmc"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("NROOMS","CAR","CLTHCAB", "COOKPLAC","OWNHOME","ROOF","TV","WALL")]
d<-assetPCA(d, varlist, reorder=F)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )


#---------
# cntt 
#---------
study<-"cntt"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("CAR", "FRIG", "LLPHONE", "NROOMS",  "RADIO",  "TV")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# dvds
#---------
study<-"dvds"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("BED", "BICYCLE", "CAR", "CHAIR", "FAN", "FRIG", "MCYCLE", "NBEDROOM", "PHONE", "RADIO", "SEWING", "TABLE", "TV", "WATCH")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )


#---------
# gmsn
#---------
study<-"gmsn"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in%   c("AGLAND",  "BICYCLE", "CAR", "ELEC",  "LLPHONE", "MCYCLE", "MOBILE","NROOMS", "RADIO", "RICKSHAW", "ROOF", "SEWING", "TV", "WALL")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# ilnd
#---------
study<-"ilnd"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("AGLAND", "BED", "BEDNET", "BICYCLE", "CAR", "CART", "CHAIR", "ELEC", "FAN", "FRIG", "MATTRESS", "MCYCLE", "NROOMS", "PHONE", "RADIO", "SEWING", "STOVE", "TABLE", "TV", "WASHMAC", "COOKPLAC", "ROOF", "WALL")]
d<-assetPCA(d, varlist, reorder=F)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# ildm
#---------
study<-"ildm"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in%  c("ROOF", "WALL", "COOKFUEL", "COOKPLAC", "PHONE", "AGLAND", "BED", "BEDNET", "BICYCLE", "CAR", "CHAIR", "ELEC", "FAN", "FRIG", 
                                         "MATTRESS", "MCYCLE", "MOBILE", "NROOMS", "RADIO", "SEWING", "STOVE", "TABLE", "TV", "WASHMAC")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# irc
#---------
study<-"irc"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("NROOMS", "CAR", "CLTHCAB", "COOKPLAC", "FLOOR", "LLPHONE", "MOBILE", "OWNHOME", "ROOF", "TV", "WALL")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# jvt3
#---------
study<-"jvt3"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("BED", "BICYCLE",  "CLTHCAB", "ELEC", "GOAT", "MCYCLE", "MOBILE", "NROOMS", "RADIO", "RICKSHAW", "SEWING", "SOAP", "TV","WATCH",  "KITCHDSC", "ROOF")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# jvt4
#---------
study<-"jvt4"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in%  c("BED", "BICYCLE", "CLTHCAB", "ELEC",  "MCYCLE", "MOBILE", "NROOMS", "RADIO", "RICKSHAW", "SEWING", "TV", "WATCH", "KITCHDSC", "ROOF")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# lcn5
#---------
study<-"lcn5"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c( "BEDNET", "BICYCLE", "CAR", "MATTRESS", "RADIO", "ROOF", "WALL")]
d<-assetPCA(d, varlist, reorder=F)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )


#---------
# mled
#---------
study<-"mled"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
#d<-read.csv("U:/git/hbgd/ki0047075b/MALED-201707/adam/full_ki0047075b_MALED_201707.csv")

cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c( "AGLAND", "BICYCLE", "ELEC", "FAN", "FRIG", "INCTOT", "MOBILE", "NROOMS", "RADIO", "TV", "WATCH", "CHAIR", "COMPUTER","MATTRESS", "SOFA", "TABLE", "BOOKS")]

d1<- assetPCA(d[d$COUNTRY==unique(d$COUNTRY)[1],], varlist, reorder=T)
#d2<- assetPCA(d[d$COUNTRY==unique(d$COUNTRY)[2],], varlist, reorder=T) #Not enough variables
d3<- assetPCA(d[d$COUNTRY==unique(d$COUNTRY)[3],], varlist, reorder=T)
d4<- assetPCA(d[d$COUNTRY==unique(d$COUNTRY)[4],], varlist, reorder=F)
d5<- assetPCA(d[d$COUNTRY==unique(d$COUNTRY)[5],], varlist, reorder=F)
d6<- assetPCA(d[d$COUNTRY==unique(d$COUNTRY)[6],], varlist, reorder=F)
d7<- assetPCA(d[d$COUNTRY==unique(d$COUNTRY)[7],], varlist, reorder=F)

d<-rbind(d1,d3,d4,d5,d6,d7)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# nbrt -no assets
#---------
# study<-"nbrt"
# vars=c("SUBJID",
#        "SITEID",
#        "SEXN",
#        "SEX",
#        "AGEDAYS",
#        "WTKG",
#        "HTCM",
#        "LENCM",
#        "BMI",
#        "MUACCM",
#        "WAZ",
#        "HAZ",
#        "WHZ",
#        "BAZ",
#        "MUAZ",
#        "HOMETOT",
#        "BFEDFL",
#        "LSSTLFL",
#        "NUMLS",
#        "SUMEP",
#        "SUMDIAR",
#        "SUMDAYS",
#        "PCTDIAR",
#        "MAGE",
#        "MHTCM",
#        "MWTKG",
#        "MBMI",
#        "MEDUCYRS",
#        "CHICKEN",
#        "COW",
#        "DOGS",
#        "GOAT",
#        "INCTOT",
#        "NPERSON")
# d<-as.data.frame(bindGHAP_Fill(study, d=NULL, varlist=vars))
# colnames(d)
# varlist<-colnames(d)[c()]
# d<-assetPCA(d, varlist, reorder=F)
# saveRDS(d, file=paste0(study, '.HHwealth.rds') )





#---------
# ppd only 1 asset
#---------
# study<-"ppd"
# d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
# colnames(d)
# varlist<-colnames(d)[c(28,31)]
# d<-assetPCA(d, varlist, reorder=F)
# saveRDS(d, file=paste0(study, '.HHwealth.rds') )



#---------
# prvd
#---------
study<-"prvd"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in%  c("BED", "BENCH", "BICYCLE", "CEILFAN", "CHAIR", "CLTHCAB", "DRAIN", "ELEC", "MCYCLE","NROOMS", "OWNHOME", "PHONE", "RADIO","SEWING", "TABLE", "TV", "WATCH",  "COOKPLAC", "ROOF", "WALL")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# tzc2
#---------
study<-"tzc2"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("FAN", "FRIG", "RADIO", "SOFA", "TV")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# tdc
#---------
study<-"tdc"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("NROOMS", "CAR", "CLTHCAB", "COOKPLAC", "FAN", "LLPHONE", "MOBILE", "OWNHOME", "ROOF", "TV", "WALL")]
d<-assetPCA(d, varlist, reorder=F)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )


#---------
# wsb
#---------
study<-"wsb"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("AGLAND",  "BICYCLE", "CHAIR", "CLTHCAB", "ELEC", "FRIG", "LLPHONE", "MCYCLE", "MOBILE", "RADIO", "SEWING", "TABLE", "TV", "WATCH",  "ROOF",  "WALL")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )

#---------
# wsk
#---------
study<-"wsk"
d<-readRDS(paste0("U:/data/",study,".rds")) %>% group_by(SUBJID) %>% arrange(AGEDAYS) %>% slice(1)
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("BICYCLE", "CAR",  "ELEC", "MOBILE", "MCYCLE", "RADIO", "STOVE", "TV", "WATCH", "ROOF", "WALL")]
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(study, '.HHwealth.rds') )
         
         
         
         
         
         
         
         #----------------------------------------------
         # Bind studies
         #----------------------------------------------
         
         asset_study <- c(
           "akup",
           "cmc",
           "cntt",
           "dvds",
           "gmsn",
           "ilnd",
           "ildm",
           "irc",
           "jvt3",
           "jvt4",
           "lcn5",
           "mled",
           "prvd",
           "tzc2",
           "tdc",
           "wsb",
           "wsk")
         
         #Add in study id
         d<-NULL
         for(i in 1:length(asset_study)){
           temp<-readRDS(paste0(asset_study[i], '.HHwealth.rds'))
           if("HHwealth_quart" %in% colnames(temp)){
             d <- rbind(d, temp)
           }
         }
         
         #check which studies don't have wealth quartile
         asset_study
         unique(d$STUDYID)
         
         
         
         pca<-d
         save(pca, file="U:/results/allGHAPstudies-HHwealth.Rdata")
         
         #sink()
         
         