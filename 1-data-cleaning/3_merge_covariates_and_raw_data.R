



rm(list=ls())
library(tidyverse)


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




#merge covariates with additional raw data covariates

# setwd("U:/UCB-SuperLearner/Stunting rallies/")
setwd("U:/ucb-superlearner/Stunting rallies/")

#load covariates
d<-readRDS("FINAL_temp_clean_covariates.rds")
d$arm<-factor(d$arm)

load("U:/data/Raw Data Cleaning/BF_dataset.Rdata")
load("U:/data/Raw Data Cleaning/rawdiar_df.Rdata")
load("U:/data/Raw Data Cleaning/improved_sanitation_dataset.Rdata")
load("U:/data/Raw Data Cleaning/improved_water_dataset.Rdata")



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

# d$perdiar6 <- quantile_rf(d$perdiar6, labs=c("Q1","Q2","Q3","Q4"))
# d$perdiar24 <- quantile_rf(d$perdiar24, labs=c("Q1","Q2","Q3","Q4"))

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
d$perdiar6 <- factor(d$perdiar6, levels = c("(0%, 5%]","0%",">5%"))
table(d$perdiar24)
table(paste0(d$studyid, " ", d$country), d$perdiar24)

#breastfeeding
d <- left_join(d, bf, by=c("studyid", "country", "subjid"))


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

#Save dataset
saveRDS(d, "FINAL_clean_covariates.rds")






#Merge final covariates into the secondary intervention contrast datasets
setwd("U:/data")
load("int_studies_secondary_contrasts.Rdata")

d <- readRDS("U:/ucb-superlearner/Stunting rallies/FINAL_clean_covariates.rds")

d <- d %>% filter(!is.na(tr))

dfull <- d

d <- d %>% filter(studyid=="ki1112895-iLiNS-Zinc" | studyid=="ki1148112-iLiNS-DYAD-M")
d <- d %>% subset(., select = -c(tr))

head(iLiNS_DYADM_df)
head(iLiNS_Zinc_df)

iLiNS_DYADM_df <- iLiNS_DYADM_df %>% subset(., select=c(studyid, subjid, tr))
iLiNS_Zinc_df <- iLiNS_Zinc_df %>% subset(., select=c(studyid, subjid, tr))


iLiNS_DYADM_df$studyid[1]
iLiNS_Zinc_df$studyid[1]

d$studyid[d$studyid=="ki1112895-iLiNS-Zinc"] <- "iLiNS-Zinc_ZvLNS"
d$studyid[d$studyid=="ki1148112-iLiNS-DYAD-M"] <- "iLiNS_DYADM_LNS"

#merge in covariates
iLiNS_DYADM_df <- left_join(iLiNS_DYADM_df, d, by=c("studyid","subjid"))
iLiNS_Zinc_df <- left_join(iLiNS_Zinc_df, d, by=c("studyid","subjid"))


#Create overall intervention dataset
d <- bind_rows(dfull, iLiNS_DYADM_df)
d <- bind_rows(d, iLiNS_Zinc_df)

saveRDS(d, file="U:/data/intervention_cov_dataset.rds")



