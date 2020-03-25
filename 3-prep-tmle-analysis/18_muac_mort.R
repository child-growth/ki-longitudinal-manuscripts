

source(paste0(here::here(), "/0-config.R"))
library(epiR)

#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# calculate muac-based wasting
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

dfull <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
d <- dfull %>% 
  group_by(studyid, country, subjid) %>%
  filter(agedays < 6*30.4167, !is.na(muaz)) %>%
  mutate(ever_mwasted06=1*(min(muaz) < -2), 
         ever_smwasted06=1*(min(muaz) < -3)) %>% 
  slice(1)
d <- droplevels(d)

table(d$studyid)
table(d$studyid, d$ever_mwasted06)

table(d$ever_mwasted06, d$dead)

dat <- table(-d$ever_mwasted06, -d$dead)

epi.2by2(dat, method = "cross.sectional", conf.level = 0.95, units = 100, 
         #homogeneity = "breslow.day", 
         outcome = "as.columns")




#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# merge muac exposures with mortality 
# outcomes and covariates
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX



#Load mortality outcomes
mort <- readRDS(paste0(ghapdata_dir,"mortality.rds"))


#load covariates
cov <- readRDS(paste0(ghapdata_dir,"/FINAL_clean_covariates.rds"))
cov$country <- as.character(cov$country)
#Drop wasting risk factors
cov <- cov %>% subset(., select= -c(pers_wast, enwast, anywast06))
d <- d %>% subset(., select=c(studyid,country,subjid,ever_mwasted06, ever_smwasted06)) 

#convert subjid to character for the merge with mortality dataset
mort$subjid <- as.character(mort$subjid)
d$subjid <- as.character(d$subjid)

#Merge in covariates
cov <- cov %>% subset(., select = - c(dead, agedth, causedth))
dim(d)
df <- merge(as.data.frame(d), cov, by=c("studyid", "subjid", "country"), all.x = T, all.y = F)
dim(df)
head(df)


# Merge in mortality information
dim(df)
dim(mort)
d <- left_join(df, mort, by=c("studyid",  "country", "subjid"))
dim(d)

#Check mortality variation for all exposures
table(d$ever_mwasted06, d$dead)
table(d$ever_smwasted06, d$dead)


#Drop studies with no mortality information
d <- d %>% group_by(studyid, country) %>% mutate(tot_dead = sum(dead)) %>% filter(tot_dead>0) %>% ungroup() %>% as.data.frame()

#Set exposures to factors
Avars <- c("ever_mwasted06",
           "ever_smwasted06")


for(i in Avars){
  print(i)
  d[,i] <- factor(d[,i])
}


#Summarize number of cohorts and children,
d %>% filter(tot_dead>10) %>% #group_by(studyid, country) %>% 
  summarize(ncohort=length(unique(paste0(studyid, country))), 
            nobs=n(), nchild=length(unique(paste0(studyid, country, subjid))),
            ndeath=sum(dead), missage=sum(is.na(agedth)))


save(d, file=paste0(ghapdata_dir,"muac_wast_mortality.Rdata"))


#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Create list of adjustment variables
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

cov=c(
  "sex","arm","brthmon","vagbrth","hdlvry","single","trth2o","cleanck",
  "impfloor","hfoodsec","hhwealth_quart",
  "W_mage","W_mhtcm","W_mwtkg",
  "W_mbmi","W_fage","W_fhtcm","W_meducyrs","W_feducyrs",          
  "W_nrooms","W_nhh","W_nchldlt5","W_parity",
  "impsan","safeh20")

adjustment_sets_mortality <- list( 
  ever_mwasted06=cov,
  ever_smwasted06=cov)


save(adjustment_sets_mortality, file=here("data/muac_mortality_adjustment_set_list.Rdata"))


#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Specify analysis
#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("agecat","studyid","country"), id="id", adj_sets=adjustment_sets_mortality){
  
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


#Specify the mortality analyses
Avars <- c("ever_mwasted06",
           "ever_smwasted06")

analyses <- specify_rf_analysis(A=Avars, Y=c("dead", "dead624", "dead0plus", "dead6plus"), 
                                V= c("studyid","country"), id="id", adj_sets=adjustment_sets_mortality, 
                                file="muac_wast_mortality.Rdata")


#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/muac_mortality_analyses.rdata"))











