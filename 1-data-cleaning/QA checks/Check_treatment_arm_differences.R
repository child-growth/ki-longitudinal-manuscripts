
#-----------------------------------
# Check difference in Z-scores across treatment arms
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#--------------------------------------------
# Read in master data file
#--------------------------------------------

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
dim(d)
length(unique(paste0(d$studyid,d$country,d$subjid)))


#--------------------------------------------
# Subset to  just identifying and anthro data
#--------------------------------------------

d <- d %>% subset(., select=c(studyid, subjid, country, region, measurefreq, tr, sex, agedays, haz, whz, waz, muaz, latitude, longitud))

#--------------------------------------------
# merge in Arm variable
#--------------------------------------------

cov <- readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))
cov <- cov %>% subset(., select = c("studyid", "subjid", "country", "arm"))

d <- left_join(d, cov, by = c("studyid", "subjid", "country"))


#--------------------------------------------
# order data, create measurement id, and 
# drop unrealistic measures depending on 
# anthropometry measure
#--------------------------------------------

nobsq <- nrow(d %>% filter(measurefreq!="yearly" & agedays < 24*30.4167))
stunt_mort <- d %>% filter(haz >= -6 & haz <=6) %>%
  subset(., select = - c(whz, waz, muaz)) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 


wast_mort <- d %>% filter(whz >= -5 & whz <=5) %>%
  subset(., select = - c(haz, waz, muaz)) %>%
  arrange(studyid,subjid,agedays) %>%
  group_by(studyid,subjid) %>%
  arrange(studyid,subjid,agedays) %>%
  mutate(measid=seq_along(subjid)) 


#--------------------------------------------
# Subset to non-yearly and save risk factor data
#--------------------------------------------

#Keep monthly and quarterly studies
stunt_rf <- stunt_mort %>% filter(measurefreq!="yearly")
wast_rf <- wast_mort %>% filter(measurefreq!="yearly")


#--------------------------------------------
#Look at mean Z-scores by arm
#--------------------------------------------

d %>% filter(tr!="", !is.na(haz)) %>% group_by(studyid, country, tr) %>% 
  summarize(mn_haz=mean(haz), sd=sd(haz)) %>% 
  mutate(ci.lb = mn_haz-1.96*sd, ci.ub = mn_haz+1.96*sd) %>%
  as.data.frame()



#--------------------------------------------
# Subset to final Z-score measurement under 2 years 
#--------------------------------------------

laz_tr <- stunt_rf %>% filter(agedays < 731) %>% 
  filter(tr!="", !is.na(haz)) %>% group_by(studyid, country, subjid) %>% 
  arrange(studyid, country, subjid, agedays) %>%
  slice(1) %>% as.data.frame()


laz_tr %>% filter(tr!="", !is.na(haz)) %>% group_by(studyid, country, tr) %>% 
  summarize(mn_haz=mean(haz), sd=sd(haz)) %>% 
  mutate(ci.lb = mn_haz-1.96*sd, ci.ub = mn_haz+1.96*sd) %>%
  as.data.frame()


unique(laz_tr$studyid)

res <- aov(haz~arm , data = laz_tr[laz_tr$studyid=="kiGH5241-JiVitA-3",])
summary(res)

for(i in unique(laz_tr$studyid)){
  cat(i, "\n")
  res <- aov(haz~arm , data = laz_tr[laz_tr$studyid==i,])
  print(summary(res))
}


# drop_int_arms <- function(d){
#   d=d[-which(d$studyid=="kiGH5241-JiVitA-4" & d$tr!="Control"),]
#   d=d[-which(d$studyid=="ki1119695-PROBIT" & d$tr!="Control"),]
#   d=d[-which(d$studyid=="ki1000304b-SAS-FoodSuppl" & d$tr!="Control"),]
#   d=d[-which(d$studyid=="ki1112895-iLiNS-Zinc" & d$tr!="Control"),]
#   d=d[-which(d$studyid=="ki1000304b-SAS-CompFeed" & d$tr!="Control"),]
#   d=d[-which(d$studyid=="kiGH5241-JiVitA-3" & d$tr!="Control"),]
#   d=d[-which(d$studyid=="ki1135781-COHORTS" & d$tr=="Other"),]
#   return(d)
# }


#--------------------------------------------
# Compare specific arms
#--------------------------------------------

df <- laz_tr %>% filter(studyid=="ki1000304b-SAS-FoodSuppl")
df <- droplevels(df)
table(df$arm)

t.test(haz ~ arm , data = df[df$arm %in% c("Food supplementation","No intervention"),])
t.test(haz ~ arm , data = df[df$arm %in% c("Nutritional counselling","No intervention"),])
t.test(haz ~ arm , data = df[df$arm %in% c("Visitation","No intervention"),])

df <- laz_tr %>% filter(studyid=="ki1126311-ZVITAMBO")
df <- droplevels(df)
table(df$arm)

t.test(haz ~ arm , data = df[df$arm %in% c("50,000 IU nippled + Placebo Oval","Placebo nippled + Placebo Oval"),])
t.test(haz ~ arm , data = df[df$arm %in% c("Placebo nippled + 400,000 IU Oval","Placebo nippled + Placebo Oval"),])
t.test(haz ~ arm , data = df[df$arm %in% c("50,000 IU nippled + 400,000 IU Oval","Placebo nippled + Placebo Oval"),])

