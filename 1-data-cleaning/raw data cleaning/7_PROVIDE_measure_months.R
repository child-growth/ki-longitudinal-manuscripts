
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

cohortdata_dir

months <- read.table(paste0(cohortdata_dir, "adam versions/provide/PROVIDE_ext_bv_birthmonth.txt"))
head(months)
colnames(months) <- c("subjido", "birthmon_provide")

#Get the KI subject ID's
d <- readRDS(paste0(cohortdata_dir,"prvd.rds")) 
colnames(d) <- tolower(colnames(d))
d <- d %>% subset(., select = c("subjid", "subjido")) %>% group_by(subjid) %>% slice(1)

dim(d)
dim(months)
df <- left_join(d, months, by = c("subjido"))
dim(df)
table(is.na(df$brthmon))

df <- df %>% subset(., select = -c(subjido))

saveRDS(df, file=paste0(ghapdata_dir, "covariate creation intermediate datasets/derived covariate datasets/PROVIDE_birthmonth.rds"))



