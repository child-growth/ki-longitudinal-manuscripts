

rm(list=ls())
library(tidyverse)
library(ICCbin)
load("U:/Data/Stunting/stunting_data.RData")

d <- d %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, subjid) %>%
  filter(agedays==max(agedays))

cov<-readRDS("U:/ucb-superlearner/Stunting rallies/FINAL_clean_covariates.rds")
cov <- cov %>% subset(., select = -c(tr))

dim(d)
d <- left_join(d, cov, by=c("studyid", "subjid", "country"))
dim(d)
table(is.na(d$id))
head(d)

d$stunt <- 1*(d$haz < -2)



d <- d %>% filter(tr!="" & !is.na(id)) 

d <- d %>% filter(measurefreq!="yearly")
  
table(d$studyid)
table(d$studyid, is.na(d$id))

fulldf<-NULL
for(i in 1:length(unique(d$studyid))){
    df <- d[d$studyid==unique(d$studyid)[i],] %>% select(stunt, id)
  if(nrow(df)!=length(unique(df$id))){
    print(i)
      res <- iccbin(cid = id, y = stunt, data = df, method = c("aov", "rm"),
           ci.type = c("aov", "rm"), alpha = .01)
    resdf <- data.frame(study= df$studyid[1],
                        aov=res$estimates$ICC[1], aov.lb=res$ci$LowerCI[1], aov.ub=res$ci$UpperCI[1], 
                        resamp=res$estimates$ICC[2], resamp.lb=res$ci$LowerCI[2], resamp.ub=res$ci$UpperCI[2])
    fulldf <- rbind(fulldf, resdf)
  }
}

for(i in 2:7){
  fulldf[,i] <- round(as.numeric(fulldf[,i]),2)
}

fulldf
saveRDS(fulldf, file="U:/ki-longitudinal-manuscripts/results/icc_res.Rdata")




