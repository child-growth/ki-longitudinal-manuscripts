


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))




#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")


#Number of episodes in persistently wasted kids
df <- d %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, country, subjid) %>% 
  mutate(pers_wast = 1*(mean(whz < (-2)) >= 0.5)) %>%
  filter(pers_wast == 1)

df2 <- df %>% group_by(studyid, country, subjid) %>% 
      summarize(N=n(), num_inc=sum(wast_inc)) %>% ungroup() %>%
      filter(N>=4)
(table(df2$num_inc))
prop.table(table(df2$num_inc))

#Number of episodes in wasted kids
df <- d %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, country, subjid) %>% 
  mutate(any_wast = max(1*(whz < (-2)))) %>%
  filter(any_wast == 1)

df2 <- df %>% group_by(studyid, country, subjid) %>% 
  summarize(N=n(), num_inc=sum(wast_inc)) %>% ungroup() 

table(df2$num_inc)
prop.table(table(df2$num_inc))







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

#Proportion of co-occurrent wasting and stunting among children wasted under 3 months
dfull <- calc.ci.agecat(dfull, range = 6)

d <- dfull %>% filter(agedays < 24 * 30.4167) %>% 
  group_by(studyid, country, subjid) %>% 
  mutate(wast=1*(whz < (-2)), co = 1*(whz < (-2) & haz < (-2))) %>%
  group_by(studyid, country, subjid, agecat) %>% 
  arrange(studyid, country, subjid, agecat) %>% 
  mutate(wast=max(wast), co=last(co)) %>%
  filter(agecat %in% c("0-6 months","18-24 months")) %>%
  group_by(studyid, country, subjid) %>% 
  mutate(wast06=first(wast), co24=last(co)) %>% 
  filter(first(agecat)=="0-6 months", last(agecat)=="18-24 months") %>%
  slice(1)

table(d$wast06, d$co24)
table(d$wast06, d$co24, paste0(d$studyid, d$country))

a<-prop.table(table(d$co24[d$wast06==0]))
b<-prop.table(table(d$co24[d$wast06==1]))

b/a

dat=table(-d$wast06, -d$co24)

epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         #homogeneity = "breslow.day", 
         outcome = "as.columns")

#Save dataset for longbow analysis
save(d, file=paste0(ghapdata_dir,"earlywast_strat_co_rf.Rdata"))





df <- dfull %>% group_by(studyid, subjid, agecat) %>% mutate(anywast=1*(min(whz) < (-2)), anystunt=1*(min(haz) < (-2)))
d <- df %>% group_by(studyid, subjid) %>% filter(agecat %in% c("0-6 months", "18-24 months")) %>% arrange(agecat) %>% 
  filter(first(agecat)=="0-6 months", last(agecat)=="18-24 months") %>%
  mutate(N=n(), wast06=first(anywast), stunt24=last(anystunt)) %>% slice(1) 
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



#Save analysis specifications
load(here("/results/adjustment_sets_list.Rdata"))
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


earlywast_strat_co <- specify_rf_analysis(A="wast06", Y=c("co24"), file="earlywast_strat_co_rf.Rdata")
earlywast_strat_stunt <- specify_rf_analysis(A="wast06", Y=c("stunt24"), file="earlywast_strat_stunt_rf.Rdata")

#bind together datasets
analyses <- rbind(earlywast_strat_stunt, earlywast_strat_co)

#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/earlywast_strat_analyses.rdata"))

