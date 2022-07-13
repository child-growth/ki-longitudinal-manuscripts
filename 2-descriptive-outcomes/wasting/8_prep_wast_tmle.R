

rm(list = ls())
library(epiR)

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))

dfull <- readRDS(paste0(ghapdata_dir,"co_occurrence_data.rds"))
dfull <- dfull %>% filter(measurefreq=="monthly")

#load covariates for clustering id
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))
cov <- cov %>% subset(., select = c(studyid, subjid, country, id))
dfull <- left_join(dfull, cov, by=c("studyid", "subjid", "country"))


#Risk of growth failure by next age
calc.ci.agecat <- function(d, range = 3, birth = "yes") {
  # ----------------------------------------------
  # first age interval includes birth
  # ----------------------------------------------
  if (range == 3 & birth == "yes") {
    d <- d %>%
      mutate(agecat = ifelse(agedays <= 3 * 30.4167, "0-3 months",
                             ifelse(agedays > 3 * 30.4167 & agedays <= 6 * 30.4167, "3-6 months",
                                    ifelse(agedays > 6 * 30.4167 & agedays <= 9 * 30.4167, "6-9 months",
                                           ifelse(agedays > 9 * 30.4167 & agedays <= 12 * 30.4167, "9-12 months",
                                                  ifelse(agedays > 12 * 30.4167 & agedays <= 15 * 30.4167, "12-15 months",
                                                         ifelse(agedays > 15 * 30.4167 & agedays <= 18 * 30.4167, "15-18 months",
                                                                ifelse(agedays > 18 * 30.4167 & agedays <= 21 * 30.4167, "18-21 months",
                                                                       ifelse(agedays > 21 * 30.4167 & agedays <= 24 * 30.4167, "21-24 months", "")
                                                                )
                                                         )
                                                  )
                                           )
                                    )
                             )
      )) %>%
      mutate(agecat = factor(agecat, levels = c("0-3 months", "3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months")))
  }
  if (range == 6 & birth == "yes") {
    d <- d %>%
      mutate(agecat = ifelse(agedays <= 6 * 30.4167, "0-6 months",
                             ifelse(agedays > 6 * 30.4167 & agedays <= 12 * 30.4167, "6-12 months",
                                    ifelse(agedays > 12 * 30.4167 & agedays <= 18 * 30.4167, "12-18 months",
                                           ifelse(agedays > 18 * 30.4167 & agedays <= 24 * 30.4167, "18-24 months", "")
                                    )
                             )
      )) %>%
      mutate(agecat = factor(agecat, levels = c("0-6 months", "6-12 months", "12-18 months", "18-24 months")))
  }
  
  # ----------------------------------------------
  # first age interval excludes birth
  # ----------------------------------------------
  if (range == 3 & birth == "no") {
    d <- d %>%
      mutate(agecat = ifelse(agedays <= 14, "Birth",
                             ifelse(agedays > 14 & agedays <= 3 * 30.4167, "15 days-3 months",
                                    ifelse(agedays > 3 * 30.4167 & agedays <= 6 * 30.4167, "3-6 months",
                                           ifelse(agedays > 6 * 30.4167 & agedays <= 9 * 30.4167, "6-9 months",
                                                  ifelse(agedays > 9 * 30.4167 & agedays <= 12 * 30.4167, "9-12 months",
                                                         ifelse(agedays > 12 * 30.4167 & agedays <= 15 * 30.4167, "12-15 months",
                                                                ifelse(agedays > 15 * 30.4167 & agedays <= 18 * 30.4167, "15-18 months",
                                                                       ifelse(agedays > 18 * 30.4167 & agedays <= 21 * 30.4167, "18-21 months",
                                                                              ifelse(agedays > 21 * 30.4167 & agedays <= 24 * 30.4167, "21-24 months", "")
                                                                       )
                                                                )
                                                         )
                                                  )
                                           )
                                    )
                             ))) %>%
      mutate(agecat = factor(agecat, levels = c("Birth","15 days-3 months", "3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months")))
  }
  if (range == 6 & birth == "no") {
    d <- d %>%
      mutate(agecat = ifelse(agedays <= 7, "Birth",
                             ifelse(agedays > 7 & agedays <= 6 * 30.4167, "8 days-6 months",
                                    ifelse(agedays > 6 * 30.4167 & agedays <= 12 * 30.4167, "6-12 months",
                                           ifelse(agedays > 12 * 30.4167 & agedays <= 18 * 30.41867, "12-18 months",
                                                  ifelse(agedays > 18 * 30.4167 & agedays <= 24 * 30.4167, "18-24 months", "")
                                           )
                                    )
                             ))) %>%
      mutate(agecat = factor(agecat, levels = c("Birth", "8 days-6 months", "6-12 months", "12-18 months", "18-24 months")))
  }
  
  return(d)
}
dfull <- calc.ci.agecat(dfull, range = 3, birth="no")
table(dfull$agecat)

d <- dfull %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, country, subjid) %>% 
  mutate(wast=1*(whz < (-2)), stunt=1*(haz < (-2)), co = 1*(whz < (-2) & haz < (-2))) %>%
  group_by(studyid, country, subjid, agecat) %>% 
  arrange(studyid, country, subjid, agecat) %>% 
  mutate(wast=max(wast,na.rm=T), stunt=max(stunt,na.rm=T), co=max(co,na.rm=T)) %>%
  slice(1) 


df_wide <- pivot_wider(data = d, 
            id_cols = c(studyid,subjid, country,id ), 
            names_from = "agecat", 
            values_from = c("wast", "stunt", "co"))
df_wide$agecat <- "Not applicable"
save(df_wide, file=paste0(ghapdata_dir,"all_age_growth_failure_rf.Rdata"))
all_rf_ages <- colnames(df_wide)[5:ncol(df_wide)]

#Proportion of co-occurrent wasting and stunting among children wasted under 6 months
dfull <- calc.ci.agecat(dfull, range = 6)

d <- dfull %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, country, subjid) %>% 
  mutate(wast=1*(whz < (-2)), stunt=1*(haz < (-2)), co = 1*(whz < (-2) & haz < (-2))) %>%
  group_by(studyid, country, subjid, agecat) %>% 
  arrange(studyid, country, subjid, agecat) %>% 
  mutate(wast=max(wast), stunt=max(stunt), co=max(co), wast24=max(wast), stunt24=max(stunt)) %>%
  filter(agecat %in% c("0-6 months","18-24 months")) %>%
  group_by(studyid, country, subjid) %>% 
  mutate(wast06=first(wast), stunt06=first(stunt), co24=last(co), wast24=last(wast24), stunt24=last(stunt24)) %>% 
  filter(first(agecat)=="0-6 months", last(agecat)=="18-24 months") %>%
  slice(1)

table(d$wast06, d$co24)
table(d$wast06, d$stunt24)
table(d$stunt06, d$wast24)
table(d$wast06, d$co24, paste0(d$studyid, d$country))

a<-prop.table(table(d$co24[d$wast06==0]))
b<-prop.table(table(d$co24[d$wast06==1]))

b/a

dat=table(-d$wast06, -d$co24)

epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         #homogeneity = "breslow.day", 
         outcome = "as.columns")

dat=table(-d$wast06, -d$stunt24)
epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         #homogeneity = "breslow.day", 
         outcome = "as.columns")

dat=table(-d$stunt06, -d$wast24)
epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         #homogeneity = "breslow.day", 
         outcome = "as.columns")

#Save dataset for longbow analysis
save(d, file=paste0(ghapdata_dir,"earlywast_strat_co_rf.Rdata"))
table(d$country)



df <- dfull %>% group_by(studyid, subjid, agecat) %>% mutate(anywast=1*(min(whz) < (-2)), anystunt=1*(min(haz) < (-2)))
d <- df %>% group_by(studyid, subjid) %>% filter(agecat %in% c("0-6 months", "18-24 months")) %>% arrange(agecat) %>% 
  filter(first(agecat)=="0-6 months", last(agecat)=="18-24 months") %>%
  mutate(N=n(), wast06=first(anywast), stunt06=first(anystunt), wast24=last(anywast), stunt24=last(anystunt)) %>% slice(1) 
table(d$N)

table(d$wast06, d$stunt24)
table(d$wast06, d$stunt24, paste0(d$studyid, d$country))

prop.table(table(d$stunt24[d$wast06==0]))
prop.table(table(d$stunt24[d$wast06==1]))



dat=table(-d$wast06, -d$stunt24)
epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
          outcome = "as.columns")

#Save dataset for longbow analysis
save(d, file=paste0(ghapdata_dir,"earlywast_strat_stunt_rf.Rdata"))

# 
# 
# df <- dfull %>% group_by(studyid, subjid, agecat) %>% mutate(anywast=1*(min(whz) < (-2)), anystunt=1*(min(haz) < (-2)))  %>% arrange(studyid, country, subjid,agedays)
# d <- df %>% group_by(studyid, subjid) %>% filter(agecat %in% c("0-6 months", "18-24 months")) %>% arrange(agecat, agedays) %>% 
#   filter(first(agecat)=="0-6 months", last(agecat)=="18-24 months") %>%
#   mutate(N=n(), stunt06=first(anystunt), wast24=last(anywast)) %>% slice(1) %>% arrange(studyid, country, subjid)
# 
# #Save dataset for longbow analysis
# save(d, file=paste0(ghapdata_dir,"earlystunt_strat_wast_rf.Rdata"))

#Look at -at birth and post-birth risk
df <- df %>%
  mutate(agecat = ifelse(agedays <= 14, "Birth",
                         ifelse(agedays > 14 & agedays <= 6 * 30.4167, "14 days-6 months",
                                ifelse(agedays > 6 * 30.4167 & agedays <= 12 * 30.4167, "6-12 months",
                                              ifelse(agedays > 12 * 30.4167 & agedays <= 24 * 30.4167, "12-24 months", ""))))) %>%
  mutate(agecat = factor(agecat, levels = c("Birth", "14 days-6 months", "6-12 months", "12-24 months")))
d <- df %>% group_by(studyid, subjid) %>% filter(agecat %in% c("Birth", "12-24 months")) %>% arrange(agecat, agedays) %>% 
  filter(first(agecat)=="Birth", last(agecat)=="12-24 months") %>%
  mutate(N=n(), birthwast=first(anywast), birthstunt=first(anystunt), wast24=last(anywast), stunt24=last(anystunt)) %>% slice(1) 
dat=table(-d$birthwast, -d$stunt24)
epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         outcome = "as.columns")

save(d, file=paste0(ghapdata_dir,"birth_wast_strat_stunt_rf.Rdata"))

#among those not born wasted who became wasted before 6 months
d <- df %>% group_by(studyid, subjid, agecat) %>% 
  mutate(birth_wast=1*(agecat=="Birth" & min(whz,na.rm=T) < (-2))) %>% filter(!is.na(birth_wast)) %>%
  group_by(studyid, subjid) %>% 
  mutate(flag=max(birth_wast, na.rm=T)) %>% filter(flag==0) %>%
  filter(agecat %in% c("14 days-6 months", "12-24 months")) %>% arrange(agecat, agedays) %>% 
  filter(first(agecat)=="14 days-6 months", last(agecat)=="12-24 months") %>%
  mutate(N=n(), wast_postbirth=first(anywast), stunt_postbirth=first(anystunt), wast24=last(anywast), stunt24=last(anystunt)) %>% slice(1) 
dat=table(-d$wast_postbirth, -d$stunt24)
epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         outcome = "as.columns")

save(d, file=paste0(ghapdata_dir,"postbirth_wast_strat_stunt_rf.Rdata"))


#Save analysis specifications
load(paste0(BV_dir,"/results/adjustment_sets_list.Rdata"))
A <- names(adjustment_sets)
Avars <- c( "sex",  "brthmon", "month", names(adjustment_sets))

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


earlywast_strat_co <- specify_rf_analysis(A=c("wast06","stunt06"), Y=c("co24"), file="earlywast_strat_co_rf.Rdata")
earlywast_strat_stunt <- specify_rf_analysis(A="wast06", Y=c("stunt24"), file="earlywast_strat_stunt_rf.Rdata")
earlystunt_strat_wast <- specify_rf_analysis(A="stunt06", Y=c("wast24"), file="earlywast_strat_stunt_rf.Rdata")
earlywast_strat_wast <- specify_rf_analysis(A="wast06", Y=c("wast24"), file="earlywast_strat_stunt_rf.Rdata")
earlystunt_strat_stunt <- specify_rf_analysis(A="stunt06", Y=c("stunt24"), file="earlywast_strat_stunt_rf.Rdata")

birthwast_strat <- specify_rf_analysis(A=c("birthwast","birthstunt"), Y=c("wast24","stunt24"), file="birth_wast_strat_stunt_rf.Rdata")
postbirthwast_strat <- specify_rf_analysis(A=c("wast_postbirth","stunt_postbirth"), Y=c("wast24","stunt24"), file="postbirth_wast_strat_stunt_rf.Rdata")





#bind together datasets
analyses <- rbind(earlywast_strat_stunt, earlystunt_strat_wast, earlywast_strat_co, earlywast_strat_wast, earlystunt_strat_stunt, birthwast_strat, postbirthwast_strat)

#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/earlywast_strat_analyses.rdata"))

#All age analyses
analyses <- specify_rf_analysis(A=all_rf_ages, Y=all_rf_ages, file="all_age_growth_failure_rf.Rdata")
dim(analyses)
analyses <- analyses %>% filter(A!=Y)
dim(analyses)

save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/all_ages_wast_analyses.rdata"))


