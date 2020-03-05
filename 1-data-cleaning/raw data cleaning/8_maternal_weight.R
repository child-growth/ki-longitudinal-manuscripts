


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(haven)

dfull <- readRDS(included_studies_path)
head(dfull)

df <- dfull %>% filter(studyid=="JiVitA-3")
df <- df %>% group_by(subjid) %>% slice(1)
df$mwtkg[df$mwtkg==99.9] <-NA
summary(df$mwtkg)

M1MOP <- read_sas("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/raw SAS datasets/JiVitA-3/raw/hbgd_m1mop.sas7bdat")

M1MOP$m1weight <- as.numeric(M1MOP$m1weight)
M1MOP$m1weight[M1MOP$m1weight==99.9] <-NA
M1MOP$m1weight[M1MOP$m1weight==0] <-NA
summary(M1MOP$m1weight)

PEF <- read_sas("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/raw SAS datasets/JiVitA-3/raw/hbgd_pef.sas7bdat")

PEF$peweight <- as.numeric(PEF$peweight)
PEF$peweight[PEF$peweight==0] <-NA
PEF$peweight[PEF$peweight==99.9] <-NA
summary(PEF$peweight)


summary(df$mwtkg)
summary(M1MOP$m1weight)
summary(PEF$peweight)



df <- dfull %>% filter(studyid=="SAS-CompFeed")
df <- df %>% group_by(subjid) %>% slice(1)
summary(df$mwtkg)


baseline <- read_sas("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/raw SAS datasets/SAS-CompFeed/f2_base.sas7bdat")
baseline$mat_wt[baseline$mat_wt>88.8] <- NA
summary(baseline$mat_wt)


M3 <- read_sas("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/raw SAS datasets/SAS-CompFeed/f3_3mo.sas7bdat")

M3$matwt_3mo[M3$matwt_3mo>999] <- NA
summary(M3$matwt_3mo)


summary(df$mwtkg)
summary(baseline$mat_wt)
summary(M3$matwt_3mo)

#merge in with ki ID's
cpfd <- readRDS("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/cleaned individual study datasets/cpfd.rds")
colnames(cpfd) <- tolower(colnames(cpfd))
head(cpfd)

cpfd <- cpfd %>% select(studyid, subjid, subjido, mwtkg)
M3 <- M3 %>% select(child_id, matwt_3mo) %>% rename(subjido=child_id)

table(cpfd$subjido)
table(M3$subjido)

dim(cpfd)
dim(M3)
cpfd$subjido <- as.numeric(cpfd$subjido)
cpfd <- left_join(cpfd, M3, by="subjido")
dim(cpfd)
head(cpfd)


cpfd_sub <- cpfd %>% group_by(subjid) %>% slice(1)
summary(cpfd_sub$mwtkg)
summary(cpfd$matwt_3mo)

cpfd <- cpfd %>% select(studyid, subjid, matwt_3mo) %>% rename(mwtkg=matwt_3mo)


#Create a cleaned maternal weight dataset
M1MOP$subjid <- as.numeric(M1MOP$hbgdmid)
M1MOP$mwtkg <- M1MOP$m1weight
jvta3 <- M1MOP %>% select (subjid, mwtkg) %>% mutate(studyid="JiVitA-3")


mat_weight = rbind(jvta3, cpfd)

#Mark missingness codeas missing
mat_weight$mwtkg[mat_weight$studyid=="JiVitA-3"& mat_weight$mwtkg==99.9] <-NA
mat_weight$mwtkg[mat_weight$studyid=="SAS-CompFeed" & mat_weight$mwtkg>88] <-NA
summary(mat_weight$mwtkg)

summary(mat_weight$mwtkg[mat_weight$studyid=="JiVitA-3"])
summary(mat_weight$mwtkg[mat_weight$studyid=="SAS-CompFeed"])


saveRDS(mat_weight, file=paste0(ghapdata_dir,"covariate creation intermediate datasets/derived covariate datasets/maternal_weight_dataset.RDS"))

