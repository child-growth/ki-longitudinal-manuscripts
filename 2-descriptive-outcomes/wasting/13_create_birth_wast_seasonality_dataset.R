

#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
require(cowplot)
library(RcppRoll)

d <- readRDS(seasonality_data_path)


#subset to monthly cohorts
d <- d %>% filter(measurefreq=="monthly", region=="South Asia", agedays<=7)

#drop outliers 
d <- d %>% filter(!is.na(whz)) %>% filter(whz < 5 & whz > (-5))


d$country[d$country=="tanzania, united republic of"] <- "tanzania"
d$studyid <- gsub("^k.*?-" , "", d$studyid)
d$country <- str_to_title(d$country)

levels(d$brthmon)
table(d$brthmon)

#Set up dataset for longbow analysis
df <- filter(d, agedays < 24 * 30.4167)

df <- subset(df, select = c(studyid, subjid, country, whz, brthmon))
head(df)


#Load covariate dataset
cov <- readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))
cov$country <- as.character(cov$country)
cov$country[cov$country=="TANZANIA, UNITED REPUBLIC OF"]<-"TANZANIA"
cov <- mark_region(cov)
cov$region <- factor(cov$region, levels = c("South Asia","Africa","Latin America"))
cov$country <- tolower(cov$country)
cov$studyid <- gsub("^k.*?-" , "", cov$studyid)
cov$country <- str_to_title(cov$country)
#drop duplicate birthmonth
cov <- cov %>% subset(., select = -c(brthmon))


#Merge WLZ, birthmonth, and ID from covariates
dim(df)
dim(cov)
d <- left_join(df, cov, by = c("studyid", "subjid", "country"))
dim(d)

#Set adjustment variables
W <- NULL


#save analysis dataset
save(d, file = paste0(ghapdata_dir, "seasonality_birth_rf.Rdata"))

#get N's for figure caption
d %>% summarize(N=n(), nchild=length(unique(subjid)))
cohort_Ns <- d %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid)))

#Specify analysis
specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("studyid","country"), id="id", adj_sets=adjustment_sets){
  
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


analyses <- specify_rf_analysis(A="brthmon", Y="whz", file="seasonality_birth_rf.Rdata", adj_sets=NULL)


#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/seasonality_birth_analyses.rdata"))

#Save cohort Ns
saveRDS(cohort_Ns, file=paste0(here(),"/results/season_birthTMLE_Ns.rds")) 





