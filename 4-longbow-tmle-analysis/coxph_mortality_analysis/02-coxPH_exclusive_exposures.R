

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(caret)
library(lmtest)

#Set adjustment covariates
Wvars <- c("sex", "tr", "brthmon", "vagbrth", "hdlvry", "single", "trth2o",       
 "cleanck",       "impfloor",      "hfoodsec",      "hhwealth_quart","W_mage",        "W_mhtcm",       "W_mwtkg",      
  "W_mbmi",        "W_fage",        "W_fhtcm",       "W_meducyrs",    "W_feducyrs",    "W_nrooms",      "W_nhh",        
  "W_nchldlt5",    "W_parity",      "impsan",        "safeh20")  


#load data
d <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/mortality_age_no_overlap.rds")
table(d$studyid, d$country)
table(d$studyid, d$country, d$dead)


d$sex <-factor(d$sex)
d$single <-as.numeric(d$single)
d$impsan  <-as.numeric(d$impsan )
d$safeh20  <-as.numeric(d$safeh20 )
d$vagbrth   <-as.numeric(d$vagbrth  )
d$hdlvry   <-as.numeric(d$hdlvry  )
d$trth2o    <-as.numeric(d$trth2o   )
d$cleanck     <-as.numeric(d$cleanck    )
d$impfloor     <-as.numeric(d$impfloor    )
d$hfoodsec     <-addNA(d$hfoodsec    )
d$hhwealth_quart     <-addNA(d$hhwealth_quart    )

d <- as.data.frame(d)
for(i in Wvars){
  var<-d[,i]
  #colnames(var)<-"X"
  cat(i,": ",class(var),"\n")
  print(table(var))
  if(class(var)=="factor"){
    d[,i] <- addNA(d[,i])
  }
}

d$subjid <- as.numeric(d$subjid)
d <- d %>% arrange(studyid, subjid, agedays)
table(d$studyid)
length(unique(d$studyid))

#Drop older ages 
table(d$agecat)
d <- d %>% filter(agedays <= 730)

df <- d %>% group_by(studyid, subjid) %>% 
  filter(agedays==max(agedays)) %>%
  ungroup()
prop.table(table(paste0(df$studyid,"-",df$country), df$dead),1) * 100
table(paste0(df$studyid,"-",df$country), df$dead)

d <- droplevels(d)

#Drop imputed age of death and studies with only imputed age of death
df <- d %>% filter(dead==1)
table(df$studyid, df$imp_agedth)

d <- d %>% filter(imp_agedth==0, !(studyid %in% c("GMS-Nepal","SAS-CompFeed","SAS-FoodSuppl")))
length(unique(d$studyid))

# #Drop measures too close to event
dim(d)
d <- d %>% filter(!(dead==1 & agedth-agedays <= 7))
dim(d)

#Only keep final observations
table(d$studyid, d$dead)
#d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, desc(agedays)) %>% slice(1)
d <- d %>% group_by(studyid, subjid) %>% filter(agedays==max(agedays))
table(d$studyid, d$dead)



#get the N's for the studies with enough mortality to estimate
df <- d %>% filter(studyid %in% c("Burkina Faso Zn", "iLiNS-DOSE", "iLiNS-DYAD-M", "JiVitA-3", "JiVitA-4", "Keneba","VITAMIN-A","ZVITAMBO"    ))
table(df$dead)
df %>% ungroup() %>% summarize(n())
df %>% summarize(n())


X_vector <- c("stunt", "wast","underwt",          
               "stunt_uwt", "wast_uwt", "co")
X_vector_sev <- c("sstunt","swast","sunderwt","sstunt_suwt","swast_suwt","sev_co")


# df=d %>% filter(studyid=="JiVitA-3")
# i=X_vector="wast"
# #i=X_vector[1]
# Y="dead"
# Wvars=Wvars
# V=NULL
# no_exp_overlap=T
# 
res_temp <- run_cox_meta(df=d, X_vector="swast", Y="dead", Wvars=Wvars, V=NULL, agecat=NULL, no_exp_overlap=T)


#All ages < 730 days
set.seed(12345)
res_mod <- res_sev <- NULL
res_mod <- run_cox_meta(df=d, X_vector=X_vector, Y="dead", Wvars=Wvars, V=NULL, agecat=NULL, no_exp_overlap=T)
res_sev <- run_cox_meta(df=d, X_vector=X_vector_sev, Y="dead", Wvars=Wvars, V=NULL, agecat=NULL, no_exp_overlap=T)
    
res <- bind_rows(res_mod, res_sev)
 
res_adj <-res %>% filter(studyid=="pooled", is.na(region), method=="RE", adj==1)
res_adj

res_unadj <-res %>% filter(studyid=="pooled", is.na(region), method=="RE", adj==0)
res_unadj

res_unadj_FE <-res %>% filter(studyid=="pooled", is.na(region), method=="FE", adj==0)
res_unadj_FE


saveRDS(res, file=paste0(BV_dir,"/results/cox_results_no_overlap.RDS"))


# temp <-res %>% filter(studyid!="pooled",   adj==0, sparseN>0)
# table(temp$studyid)
# 
# temp <-res %>% filter(X=="swast",   adj==0)
# 
# 
# temp <- temp %>% arrange(X, HR)
# 
# 
# temp <- d %>% filter(studyid=="JiVitA-4")
# table(temp$wast, temp$dead)
# table(temp$stunt, temp$dead)
# table(temp$co, temp$dead)
