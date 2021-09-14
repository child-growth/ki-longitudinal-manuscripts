

rm(list=ls())
source(paste0(here::here(),"/0-config.R"))
#remotes::install_github("benjaminrich/table1") #install dev version for missing package
library(table1)

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

d <- cov %>% filter(studyid %in% monthly_and_quarterly_cohorts)
colnames(d)
d <- d %>% 
  mutate(country=str_to_title(country),
         cohort=paste0(studyid,", ",country)) %>%
  select(cohort, sex, W_birthwt, W_mage, W_mwtkg, W_meducyrs,  nrooms, nchldlt5, impsan, hfoodsec)
head(d)

colnames(d)
d <- d %>% rename(Sex=sex,
                  Birthweight=W_birthwt,
                  `Maternal age`=W_mage,
                  `Maternal weight`=W_mwtkg,
                  `Maternal education\n(years)`=W_meducyrs,
                  `Number of rooms`=nrooms,
                  `Improved sanitation`=impsan,
                  `Number of children <5yrs`=nchldlt5,
                  `Food security level`=hfoodsec)


length(unique(d$cohort))

res<-table1(~ .| cohort, data=d, 
       # transpose=TRUE,
       # overall=F, 
       # droplevels=T,
       render.missing=NULL,
       render.categorical="FREQ (PCTnoNA%)")
df <- as.data.frame(res)

for(i in 1:ncol(df)){
  df[,i] <- gsub("NA \\(NA\\)","",df[,i])
  df[,i] <- gsub("NA \\[NA, NA\\]","",df[,i])
  df[is.na(df[,i]),i] <- ""
}
df <- df[!grepl("Median",df[,1]),]


dim(df)

#saveRDS(df, file=paste0(BV_dir,"/results/enrol_tab_wast.RDS"))
saveRDS(df, file=paste0(here(),"/data/enrol_tab_stunt.RDS"))

res<-knitr::kable(df, format="pipe")
#res <- knitr::kable(df, format="html")
write.table(res, file=paste0(here(),"/data/enrol_tab_stunt.txt"))

# res<-table1(~ .| cohort, data=d,
#        transpose=TRUE,
#        droplevels=T,
#        # render.missing=NULL, #note these arguements don't work with transposing
#        # render.categorical="FREQ (PCTnoNA%)"
#        )
# df <- as.data.frame(res)

#Open in new window, select all, then ctrl+Alt+V to paste special in Word