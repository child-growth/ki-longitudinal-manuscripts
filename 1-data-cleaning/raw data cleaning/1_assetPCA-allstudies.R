





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
source(paste0(here::here(), "/0-config.R"))
library(caret)

#Open log
#sink("U:/results/assetPCA-allstudies.txt")




#Function to select one observation per child with asset data (some studies only have 
# asset information on one row of child longitudinal anthro observations, but some have
# the time-invariate baseline asset information filled in for all rows)
read_asset_data <- function(study, varlist){
  
  d <- readRDS(paste0(cohortdata_dir, study,".rds")) 
  
  d <- d %>% 
    group_by(SUBJID) %>% 
    subset(., select = c("STUDYID", "SUBJID", "COUNTRY", "AGEDAYS", varlist)) %>%
    fill(!!!varlist) %>% #default direction down
    fill(!!!varlist, .direction = "up") %>% 
    arrange(AGEDAYS) %>% slice(1) %>%
    ungroup()
  
  return(d)
}



#Function to calculate PCA of asset based wealth by enrollment
#Method based on: https://programming-r-pro-bro.blogspot.com/2011/10/principal-component-analysis-use.html

assetPCA<-function(dfull, varlist, reorder=F ){
  
  varlist<-c("STUDYID","SUBJID","COUNTRY",varlist)
  
  #Subset to only needed variables for subgroup analysis
  ret <- dfull %>%
    subset(select=c(varlist)) 
  

  
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



#function to convert all asset variables to indicators
design_matrix <- function(W){
  if (class(W) != "matrix" & class(W) != "data.frame") {
    W <- data.frame(W)
    if (is.null(ncol(W)) | ncol(W) == 0) {
      stop("Something is wrong with W.\nTo be safe, please try specifying it as class=data.frame.")
    }
  }
  ncolW <- ncol(W)
  flist <- numeric()
  for (i in 1:ncolW) {
    if (class(W[, i]) != "factor") {
      next
    }
    else {
      flist <- c(flist, i)
      W[, i] <- factor(W[, i])
      mm <- model.matrix(~-1 + W[, i])
      mW <- mm[, -c(1)]
      levs <- gsub(" ", "", levels(W[, i]))[-c(1)]
      if (length(levs) < 2) 
        mW <- matrix(mW, ncol = 1)
      colnames(mW) <- paste(names(W)[i], levs, sep = "")
      W <- data.frame(W, mW)
    }
  }
  if (length(flist) > 0) {
    W <- subset(W, select = -c(flist))
  }
  return(W)
}



#Identify studies measuring household assets 


#setwd("U:/data")

# 
# load("allGHAPstudies.Rdata")
# colnames(d)
# 
# 
# dim(d)
# d<- d %>% subset(select=c(WHZ, shortid, STUDYID,  SUBJID, SEX, AGEDAYS, region, BICYCLE, CAR, CART, COOKFUEL, FRIG, MCYCLE, PHONE, RADIO, TV, WASHMAC, MOBILE, CHAIR, WATCH, SOFA, FAN, TABLE)) %>%
#   subset(!is.na(BICYCLE)|!is.na(CAR)|!is.na(CART)|!is.na(COOKFUEL)|!is.na(FRIG)|!is.na(MCYCLE)|!is.na(PHONE)|!is.na(RADIO)|!is.na(TV)|!is.na(WASHMAC)|!is.na(MOBILE)|!is.na(CHAIR)|
#            !is.na(WATCH)|!is.na(SOFA)|!is.na(FAN)|!is.na(TABLE)) %>% 
#   filter(WHZ>-5 & WHZ <5)
# dim(d)
# table(d$STUDYID)
# unique(d$shortid)



#---------
# akup
#---------


study<-"akup"
d<-readRDS(paste0(cohortdata_dir,study,".rds"))
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("NROOMS","BICYCLE",  "CAR","CART","COOKFUEL","ELEC","FRIG","MCYCLE",  
                                        "PHONE","RADIO", "SEWING",   "TV" ,"WASHMAC" )]

akup <- read_asset_data(study, varlist)
akup<-assetPCA(akup, varlist, reorder=T)

table(akup$HHwealth_quart)
saveRDS(akup, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )


#---------
# cmc
#---------
study<-"cmc"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("NROOMS","CAR","CLTHCAB", "COOKPLAC","OWNHOME","ROOF","TV","WALL")]

cmc <- read_asset_data(study, varlist)
cmc <- assetPCA(cmc, varlist, reorder=F)
saveRDS(cmc, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )


#---------
# cntt 
#---------
study<-"cntt"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("CAR", "FRIG", "LLPHONE", "NROOMS",  "RADIO",  "TV")]

cntt <- read_asset_data(study, varlist)
cntt <- assetPCA(cntt, varlist, reorder=T)
saveRDS(cntt, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )


#---------
# gmsn
#---------
study<-"gmsn"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in%   c("AGLAND",  "BICYCLE", "CAR", "ELEC",  "LLPHONE", "MCYCLE", "MOBILE","NROOMS", "RADIO", "RICKSHAW", "ROOF", "SEWING", "TV", "WALL")]

gmsn <- read_asset_data(study, varlist)
gmsn <- assetPCA(gmsn, varlist, reorder=T)
saveRDS(gmsn, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )

#---------
# ilnd
#---------
study<-"ilnd"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("AGLAND", "BED", "BEDNET", "BICYCLE", "CAR", "CART", "CHAIR", "ELEC", "FAN", "FRIG", "MATTRESS", "MCYCLE", "NROOMS", "PHONE", "RADIO", "SEWING", "STOVE", "TABLE", "TV", "WASHMAC", "COOKPLAC", "ROOF", "WALL")]

ilnd <- read_asset_data(study, varlist)
ilnd <- assetPCA(ilnd, varlist, reorder=F)
saveRDS(ilnd, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )

#---------
# ildm
#---------
study<-"ildm"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in%  c("ROOF", "WALL", "COOKFUEL", "COOKPLAC", "PHONE", "AGLAND", "BED", "BEDNET", "BICYCLE", "CAR", "CHAIR", "ELEC", "FAN", "FRIG", 
                                         "MATTRESS", "MCYCLE", "MOBILE", "NROOMS", "RADIO", "SEWING", "STOVE", "TABLE", "TV", "WASHMAC")]

ildm <- read_asset_data(study, varlist)
ildm <- assetPCA(ildm, varlist, reorder=T)
saveRDS(ildm, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )

#---------
# irc
#---------
study<-"irc"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("NROOMS", "CAR", "CLTHCAB", "COOKPLAC", "FLOOR", "LLPHONE", "MOBILE", "OWNHOME", "ROOF", "TV", "WALL")]

irc <- read_asset_data(study, varlist)
irc <- assetPCA(irc, varlist, reorder=T)
saveRDS(irc, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )

#---------
# jvt3
#---------
study<-"jvt3"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("BED", "BICYCLE",  "CLTHCAB", "ELEC", "GOAT", "MCYCLE", "MOBILE", "NROOMS", "RADIO", "RICKSHAW", "SEWING", "SOAP", "TV","WATCH",  "KITCHDSC", "ROOF")]

jvt3 <- read_asset_data(study, varlist)
jvt3 <- assetPCA(jvt3, varlist, reorder=T)
saveRDS(jvt3, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )

#---------
# jvt4
#---------
study<-"jvt4"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in%  c("BED", "BICYCLE", "CLTHCAB", "ELEC",  "MCYCLE", "MOBILE", "NROOMS", "RADIO", "RICKSHAW", "SEWING", "TV", "WATCH", "KITCHDSC", "ROOF")]

d <- read_asset_data(study, varlist)
d<-assetPCA(d, varlist, reorder=T)
saveRDS(d, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )

#---------
# lcn5
#---------
study<-"lcn5"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c( "BEDNET", "BICYCLE", "CAR", "MATTRESS", "RADIO", "ROOF", "WALL")]

lcn5 <- read_asset_data(study, varlist)
lcn5 <- assetPCA(lcn5, varlist, reorder=F)
saveRDS(lcn5, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )


#---------
# mled
#---------
study<-"mled"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
#d<-read.csv("U:/git/hbgd/ki0047075b/MALED-201707/adam/full_ki0047075b_MALED_201707.csv")

cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c( "AGLAND", "BICYCLE", "ELEC", "FAN", "FRIG", "INCTOT", "MOBILE", "NROOMS", "RADIO", "TV", "WATCH", "CHAIR", "COMPUTER","MATTRESS", "SOFA", "TABLE", "BOOKS")]

mled <- read_asset_data(study, varlist)

d1<- assetPCA(mled[mled$COUNTRY==unique(d$COUNTRY)[1],], varlist, reorder=T)
#d2<- assetPCA(mled[mled$COUNTRY==unique(d$COUNTRY)[2],], varlist, reorder=T) #Not enough variables
d3<- assetPCA(mled[mled$COUNTRY==unique(d$COUNTRY)[3],], varlist, reorder=T)
d4<- assetPCA(mled[mled$COUNTRY==unique(d$COUNTRY)[4],], varlist, reorder=F)
d5<- assetPCA(mled[mled$COUNTRY==unique(d$COUNTRY)[5],], varlist, reorder=F)
d6<- assetPCA(mled[mled$COUNTRY==unique(d$COUNTRY)[6],], varlist, reorder=F)
d7<- assetPCA(mled[mled$COUNTRY==unique(d$COUNTRY)[7],], varlist, reorder=F)

mled<-rbind(d1,d3,d4,d5,d6,d7)
saveRDS(mled, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )


#---------
# ppd only 1 asset
#---------
# study<-"ppd"
# d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
# colnames(d)
# varlist<-colnames(d)[c(28,31)]
# d<-assetPCA(d, varlist, reorder=F)
# saveRDS(d, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )



#---------
# prvd
#---------
study<-"prvd"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in%  c("BED", "BENCH", "BICYCLE", "CEILFAN", "CHAIR", "CLTHCAB", "DRAIN", "ELEC", "MCYCLE","NROOMS", "OWNHOME", "PHONE", "RADIO","SEWING", "TABLE", "TV", "WATCH",  "COOKPLAC", "ROOF", "WALL")]

prvd <- read_asset_data(study, varlist)
prvd <- assetPCA(prvd, varlist, reorder=T)
saveRDS(prvd, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )

#---------
# tzc2
#---------
study<-"tzc2"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("FAN", "FRIG", "RADIO", "SOFA", "TV")]

tzc2 <- read_asset_data(study, varlist)
tzc2 <- assetPCA(tzc2, varlist, reorder=T)
saveRDS(tzc2, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )

#---------
# tdc
#---------
study<-"tdc"
d<-readRDS(paste0(cohortdata_dir,study,".rds")) 
cat(paste(shQuote(colnames(d), type="cmd"), collapse=", "))
varlist<-colnames(d)[colnames(d) %in% c("NROOMS", "CAR", "CLTHCAB", "COOKPLAC", "FAN", "LLPHONE", "MOBILE", "OWNHOME", "ROOF", "TV", "WALL")]

tdc <- read_asset_data(study, varlist)
tdc <- assetPCA(tdc, varlist, reorder=F)
saveRDS(tdc, file=paste0(deriveddata_dir, study, '.HHwealth.rds') )
