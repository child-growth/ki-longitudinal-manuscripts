

#merge covariates with additional raw data covariates


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#quantiling functions
quantile_rf <- function(A, labs=NULL, Acuts=NULL){
  A<-as.numeric(A)
  if(sum(is.na(A))!=length(A)){
    if(is.null(Acuts)){
      Acuts=c(0, as.numeric(quantile(A, probs = c(.25,.5,.75), na.rm=T)), max(A, na.rm=T))
    }
    
    if(length(Acuts)==4){
      Alevels=c(paste0("<",round(Acuts[2],2)), 
                paste0("[",round(Acuts[2],2),"-",round(Acuts[3],2),")"),
                paste0(">=",round(Acuts[3],2))) 
    }
    if(length(Acuts)==5){
      Alevels=c(paste0("<",round(Acuts[2],2)), 
                paste0("[",round(Acuts[2],2),"-",round(Acuts[3],2),")"),
                paste0("[",round(Acuts[3],2),"-",round(Acuts[4],2),")"), 
                paste0(">=",round(Acuts[4],2))) 
    }
    if(length(Acuts)==6){
      Alevels=c(paste0("<",round(Acuts[2],2)), 
                paste0("[",round(Acuts[2],2),"-",round(Acuts[3],2),")"),
                paste0("[",round(Acuts[3],2),"-",round(Acuts[4],2),")"),
                paste0("[",round(Acuts[4],2),"-",round(Acuts[5],2),")"), 
                paste0(">=",round(Acuts[5],2))) 
    }    
    
    
    if(!is.null(labs)){
      Alevels=labs
    }
    
    if(length(unique(Acuts))==length((Acuts))){
      A <- cut(A, include.lowest = T, right = FALSE, breaks=Acuts,labels=Alevels)
    }else{
      A <- cut(A, include.lowest = T, right = FALSE, breaks=4,labels=c("Q1","Q2","Q3","Q4","Q5")[1:(length(Acuts)-1)])
    }
    A <- factor(A)
    return(A)
  }
}






#load covariates
d<-readRDS(paste0(ghapdata_dir,"FINAL_temp_clean_covariates.rds"))
d$arm<-factor(d$arm)

load(paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/BF_dataset.Rdata"))
load(paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/rawdiar_df.Rdata"))
load(paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/improved_sanitation_dataset.Rdata"))
load(paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/improved_water_dataset.Rdata"))

#Strip grant identifiers from study id's
bf$studyid<- gsub("^k.*?-" , "", bf$studyid)
diar$studyid<- gsub("^k.*?-" , "", diar$studyid)
dh20$studyid<- gsub("^k.*?-" , "", dh20$studyid)
dsan$studyid<- gsub("^k.*?-" , "", dsan$studyid)

head(bf)
head(diar)
head(dh20)
head(dsan)


#Sanitation
dsan <- dsan %>% subset(., select = c(impsan, studyid, country, subjid))


table(dsan$impsan)
table(dsan$studyid, dsan$impsan)

dsan$subjid <- as.character(dsan$subjid)
d <- left_join(d, dsan, by=c("studyid", "country", "subjid"))
table(d$impsan)
table(d$studyid, d$impsan)


#Drinking water
dh20$subjid <- as.character(dh20$subjid)
d <- left_join(d, dh20, by=c("studyid", "country", "subjid"))
table(d$safeh20)
table(d$studyid, d$safeh20)

#diarrhea
diar$subjid <- as.character(diar$subjid)
d <- left_join(d, diar, by=c("studyid", "subjid"))

#quartile diarrhea
summary(d$perdiar6)
summary(d$perdiar24)

#Save continious version of variables for adjustment set
d$W_perdiar6 <- d$perdiar6
d$W_perdiar24 <- d$perdiar24

summary(d$perdiar6)
summary(d$perdiar24)

#Cut diarrhea at standard points. Quartiling by overall distribution leads to sparsity
d$perdiar6 <- as.character(cut(d$W_perdiar6, breaks=c(0, 0.05, 1), include.lowest=F, 
                               labels = c("(0%, 5%]",">5%")))
d$perdiar6[d$W_perdiar6==0] <-"0%"
d$perdiar6 <- factor(d$perdiar6, levels = c("0%","(0%, 5%]",">5%"))
table(d$perdiar6)
table(paste0(d$studyid, " ", d$country), d$perdiar6)



d$perdiar24 <- as.character(cut(d$W_perdiar24, breaks=c(0, 0.05, 1), include.lowest=F, 
                               labels = c("(0%, 5%]",">5%")))
d$perdiar24[d$W_perdiar24==0] <-"0%"
d$perdiar24 <- factor(d$perdiar24, levels = c("0%","(0%, 5%]",">5%"))
table(d$perdiar24)
table(paste0(d$studyid, " ", d$country), d$perdiar24)

d$perdiar6_2 <- as.character(cut(d$W_perdiar6, breaks=c(0, 0.02, 1), include.lowest=F, 
                               labels = c("(0%, 2%]",">2%")))
d$perdiar6_2 <- factor(d$perdiar6_2, levels = c("(0%, 2%]",">2%"))
table(d$perdiar6_2)
table(paste0(d$studyid, " ", d$country), d$perdiar6_2)



d$perdiar24_2 <- as.character(cut(d$W_perdiar24, breaks=c(0, 0.02, 1), include.lowest=F, 
                                labels = c("(0%, 2%]",">2%")))
d$perdiar24_2 <- factor(d$perdiar24_2, levels = c("(0%, 2%]",">2%"))
table(d$perdiar24_2)
table(paste0(d$studyid, " ", d$country), d$perdiar24_2)


#breastfeeding
d <- left_join(d, bf, by=c("studyid", "country", "subjid"))
table(d$exclfeed3)

#Convert all columns to factors exceot continious adjustment vars
for(i in 3:ncol(d)){
  if(class(d[,i])!="factor" & !grepl("W_",substr(colnames(d)[i],1,2))){
    d[,i] <- as.factor(d[,i])
  }
}
d$id <- as.numeric(d$id)

#drop duplicated Jivita covariates
dim(d)
d <- distinct(d, .keep_all=T )
dim(d)

#Drop one duplicated row from iLiNS-DYAD-M (all values the same except 
# sanitation (iLiNS-DYAD-M), but iLiNS-DYAD-M only used in the mortality analysis)
dim(d)
d <- distinct(d, studyid, subjid, country, .keep_all = TRUE)
dim(d)


#Set reference level to the lowest risk level
d$trth2o <- relevel(d$trth2o, ref="1")
d$cleanck <- relevel(d$cleanck, ref="1")
d$impfloor <- relevel(d$impfloor, ref="1")
d$earlybf <- relevel(d$earlybf, ref="1")

d$impsan <- relevel(d$impsan, ref="1")
d$safeh20 <- relevel(d$safeh20, ref="1")
d$predfeed3 <- relevel(d$predfeed3, ref="1")
d$exclfeed3 <- relevel(d$exclfeed3, ref="1")
d$predfeed6 <- relevel(d$predfeed6, ref="1")
d$exclfeed6 <- relevel(d$exclfeed6, ref="1")
d$predfeed36 <- relevel(d$predfeed36, ref="1")
d$exclfeed36 <- relevel(d$exclfeed36, ref="1")
d$predexfd6 <- relevel(d$predexfd6, ref="1")


table(d$studyid, d$perdiar6)
table(d$studyid, d$perdiar24)

d$perdiar6 <- relevel(d$perdiar6, ref="0%")
d$perdiar24 <- relevel(d$perdiar24, ref="0%")

#Save dataset
saveRDS(d, clean_covariates_path)



