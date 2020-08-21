

rm(list=ls())

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


d <- readRDS(rf_underweight_path)



#--------------------------------------
# Calculate cumulative incidence of
# underwting in certain age ranges for the
# risk factor analysis
#--------------------------------------


# define age windows
d6 <- calc.ci.agecat(d, range = 6, birth="yes")


d6 <- d6 %>% ungroup() %>% arrange(studyid,country,subjid, agedays) %>%
  group_by(studyid,country,subjid, agecat) %>% 
  mutate(minwaz=min(waz)) %>% 
  ungroup() 


#calculate any underwting from 0-6
underwt_ci_0_6 = d6 %>% ungroup() %>%
  filter(agecat=="0-6 months") %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minwaz by age category, cumulatively
  mutate(agecat="0-6 months", minwaz=min(waz), ever_underwt=ifelse(minwaz< (-2),1,0), ever_sunderwt=ifelse(minwaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 


underwt_ci_6_24 = d6 %>% ungroup() %>% 
  group_by(studyid,country,subjid) %>%
  arrange(studyid,country,subjid, agedays) %>% 
  mutate(anyunderwt06 = 1*(agecat=="0-6 months" & minwaz < -2),
         anyunderwt06 = anyunderwt06[1]) %>% 
  filter(agecat!="0-6 months" & !is.na(agecat) & anyunderwt06==0) %>%
  mutate(agecat="6-24 months", minwaz=min(waz), ever_underwt=ifelse(minwaz< -2,1,0), ever_sunderwt=ifelse(minwaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() %>%
  select(studyid,subjid, country,tr,agedays,waz, measurefreq, measid, agecat,minwaz, ever_underwt,Nobs, N, anyunderwt06)


#calculate any underwting from 0-24
underwt_ci_0_24 = d6 %>% ungroup() %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid) %>%
  #create variable with minwaz by age category, cumulatively
  mutate(agecat="0-24 months", minwaz=min(waz), ever_underwt=ifelse(minwaz< -2,1,0), ever_sunderwt=ifelse(minwaz< (-3),1,0), Nobs=n()) %>% slice(1) %>%
  mutate(N=n()) %>%
  ungroup() 

underwt_ci_6_24 <- underwt_ci_6_24 %>% subset(., select = -c(anyunderwt06))
cuminc <- bind_rows(underwt_ci_0_6, underwt_ci_6_24, underwt_ci_0_24)




#--------------------------------------
# Calculate prevalence of
# underwting in certain age ranges for the
# risk factor analysis
#--------------------------------------

# define age windows
dprev <- calc.prev.agecat(d)


# take mean of multiple measurements within age window
dmn <- dprev %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid,agecat) %>%
  summarise(waz=mean(waz)) %>%
  mutate(underwt=ifelse(waz< -2, 1,0),sunderwt=ifelse(waz< -3, 1,0))


# export
prev = dmn %>% 
  filter(agecat=="Birth" | agecat=="6 months" | agecat=="24 months") %>%
  select(studyid,subjid,country,agecat,
         underwt, sunderwt)

# save mean Z scores at each age
meanwaz = dmn %>% 
  filter(agecat=="Birth" | agecat=="6 months" | agecat=="24 months") %>%
  select(studyid,subjid,country,agecat,
         waz)




#--------------------------------------
# save datasets
#--------------------------------------


save(prev, file=paste0(ghapdata_dir,"uwt_prev_outcomes.RData"))
save(meanwaz, file=paste0(ghapdata_dir,"uwt_meanZ_outcomes.RData"))
save(cuminc, file=paste0(ghapdata_dir,"uwt_cuminc_outcomes.rdata"))


#--------------------------------------
#merge outcomes with covariates
#--------------------------------------


#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

#Check reference levels
for(i in 3:ncol(cov)){
  cat(colnames(cov)[i],":\n")
  print(levels(cov[,i]))
}

#Set reference level to the lowest
cov$trth2o <- relevel(cov$trth2o, ref="1")
cov$cleanck <- relevel(cov$cleanck, ref="1")
cov$impfloor <- relevel(cov$impfloor, ref="1")
cov$earlybf <- relevel(cov$earlybf, ref="1")

cov$impsan <- relevel(cov$impsan, ref="1")
cov$safeh20 <- relevel(cov$safeh20, ref="1")
cov$predfeed3 <- relevel(cov$predfeed3, ref="1")
cov$exclfeed3 <- relevel(cov$exclfeed3, ref="1")
cov$predfeed6 <- relevel(cov$predfeed6, ref="1")
cov$exclfeed6 <- relevel(cov$exclfeed6, ref="1")
cov$predfeed36 <- relevel(cov$predfeed36, ref="1")
cov$exclfeed36 <- relevel(cov$exclfeed36, ref="1")
cov$predexfd6 <- relevel(cov$predexfd6, ref="1")



cov$perdiar6 <- relevel(cov$perdiar6, ref="[0%, 2%]")
cov$perdiar24 <- relevel(cov$perdiar24, ref="[0%, 2%]")




#convert subjid to character for the merge with covariate dataset
cov$subjid <- as.character(cov$subjid)
prev$subjid <- as.character(prev$subjid)
meanwaz$subjid <- as.character(meanwaz$subjid)
cuminc$subjid <- as.character(cuminc$subjid)

#merge in covariates
cuminc <- cuminc %>% subset(., select = -c(tr))

d <- left_join(cuminc, cov[, c("studyid", "subjid", "country", setdiff(colnames(cov),colnames(cuminc)))], 
               by=c("studyid", "subjid", "country"))
save(d,   file=paste0(ghapdata_dir,"uwt_cuminc_rf.Rdata"))

#merge in covariates
d <- left_join(prev, cov, by=c("studyid", "subjid", "country"))
save(d, file=paste0(ghapdata_dir,"uwt_prev_rf.Rdata"))

#merge in covariates
d <- left_join(meanwaz, cov, by=c("studyid", "subjid", "country"))
save(d, file=paste0(ghapdata_dir,"uwt_meanZ_rf.Rdata"))






#---------------------------------------------
# Specify analysis
#---------------------------------------------

load(here("results/adjustment_sets_list.Rdata"))
A <- names(adjustment_sets)

Avars <- c( "sex",  "brthmon", "month", names(adjustment_sets))


#---------------------------------------------
#Adjustment specifying function
#---------------------------------------------


specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("agecat","studyid","country"), id="id", adj_sets=adjustment_sets){
  
  analyses <- expand.grid(A=A,Y=Y, stringsAsFactors = FALSE, KEEP.OUT.ATTRS = FALSE)
  analyses$id <- id
  analyses$strata <- list(V)
  if(is.null(W)){analyses$W <- adj_sets[analyses$A]}else{
    analyses$W <- list(W)
  }
  names(analyses$W) <- NULL
  analyses$file <- file
  
  return(analyses)
}


#---------------------------------------------
# Specify the binary analyses
#---------------------------------------------

uwt_prev <- specify_rf_analysis(A=Avars, Y=c("underwt","sunderwt"), file="uwt_prev_rf.Rdata")

uwt_cuminc <- specify_rf_analysis(A=c( "sex",               "mage",          "mhtcm",         "mwtkg",        
                                      "mbmi",          "single",        "fage",          "fhtcm",       
                                      "nrooms",      "nchldlt5",    "nhh",              
                                      "hhwealth_quart", "brthmon", "parity",   "meducyrs", 
                                      "feducyrs", "hfoodsec"),
                                 Y=c("ever_underwt","ever_sunderwt"), file="uwt_cuminc_rf.Rdata")

#bind together datasets
analyses <- rbind(uwt_prev, uwt_cuminc)

#Save analysis specification
save(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/adjusted_binary_uwt_analyses.rdata")))


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/unadjusted_binary_uwt_analyses.rdata")))



#---------------------------------------------
# Specify the continuous analyses
#---------------------------------------------

Avars <- c( "sex",  "brthmon", "month", names(adjustment_sets))


analyses <- specify_rf_analysis(A=Avars, Y="waz", file="uwt_meanZ_rf.Rdata")


#Save analysis specification
save(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/adjusted_waz.rdata")))


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here("/4-longbow-tmle-analysis/analysis specification/unadjusted_waz.rdata")))



