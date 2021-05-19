##########################################
# ki longitudinal manuscripts
# stunting analysis

# growth velocity analysis
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)

d <- readRDS(paste0(ghapdata_dir,"ki-manuscript-dataset.rds"))

# check included cohorts NOTE: won't match because some studies not dropped yet/arms dropped at bottom of the script
# assert_that(setequal(unique(d$studyid), monthly_and_quarterly_cohorts),
#             msg = "Check data. Included cohorts do not match.")

#Drop yearly
d <- d %>% filter(measurefreq!="yearly")

d <- as.data.table(d)
setkeyv(d, cols = c("country","studyid","subjid"))

#--------------------------------------------------------
# filter out obs with missing sex
# filter out person-time obs with missing both haz & waz
#--------------------------------------------------------
#sex must be "Male" or "Female"
table(d$sex)
#set blank sex to missing
d$sex[d$sex=="" | d$sex=="Unknown"]<-NA
#drop kids missing sex
d <- d[!is.na(d$sex), ]
# d <- d %>% filter(!is.na(sex)) %>% data.table
#drop if both haz and waz are missing
d <- d[!(is.na(d$haz) & is.na(d$waz)), ]

#--------------------------------------------------------------------------
# birth characteristics
# separate W_birthweight and W_birthlength
# convert to waz / haz and add to main data set as a new row with "agedays=0"
#--------------------------------------------------------------------------
table(d$studyid, is.na(d$W_birthlen))
table(d$studyid, is.na(d$W_birthwt))
dblenwt <- d[,list(W_birthwt=first(W_birthwt), W_birthlen=first(W_birthlen), sex=first(sex)), by = list(studyid, country, subjid)]
dblenwt <- dblenwt[!(is.na(W_birthwt) & is.na(W_birthlen)), ]
dblenwt[is.na(W_birthlen), ]
dblenwt[is.na(W_birthwt), ]
dblenwt[, agedays := 0]
dblenwt[, waz := round(who_wtkg2zscore(agedays, W_birthwt/1000, sex = sex),2)]
dblenwt[, haz := round(who_htcm2zscore(agedays, W_birthlen, sex = sex),2)]
setkeyv(dblenwt, cols = c("country","studyid", "subjid", "agedays"))

## check things are matching with main haz/waz when agedays=1 was observed
d[subjid==5444, ]
dblenwt[subjid==5444, ]
dblenwt[, W_birthwt := NULL][, W_birthlen := NULL]

## merge birth haz / waz into main dataset
d <- merge(d, dblenwt, all=TRUE, by = c("country","studyid", "subjid","sex","agedays"))
setnames(d,c("waz.x","haz.x"),c("waz","haz"))
d[agedays==0, waz := waz.y][, waz.y := NULL]
d[agedays==0, haz := haz.y][, haz.y := NULL]
setkeyv(d, cols = c("country","studyid","subjid","agedays"))

#Drop outlier birth HAZ and WAZ
d[waz < -6 | waz > 5, waz := NA]
d[haz < -6 | haz > 6, haz := NA]


# convert waz / haz back to wtkg / lencm (that way everything is standardized and always matching)
# save actual wtkg / lencm as back-up for comparison
#setnames(d, c("wtkg", "lencm"), c("wtkg.orig", "lencm.orig"))
d[agedays==0, wtkg := round(who_zscore2wtkg(agedays, waz, sex = sex),3)]
d[agedays>0, wtkg := round(who_zscore2wtkg(agedays-1, waz, sex = sex),3)]
d[agedays==0, lencm := round(who_zscore2htcm(agedays, haz, sex = sex),1)]
d[agedays>0, lencm := round(who_zscore2htcm(agedays-1, haz, sex = sex),1)]


#--------------------------------------------------------------------------
# calculate velocity between two observational time-points (t1,t2) (e.g., diff in haz divided by months lapsed)
#--------------------------------------------------------------------------
# when exact t is not available, impute:
# take the closest available observations within (t1-/+tgap,t2-/+tgap)
# where tgap is a preset window in days (14)
t1vec = c(0,3,6,9,12,15,18,21)  ## 1st time-point in months
t2vec = c(3,6,9,12,15,18,21,24) ## 2nd time-point in months
outvec = c("haz","waz","lencm","wtkg")

# t1mths   ## 1st time-point in months
# t2mths   ## 2nd time-point in months
# tgap     ## number of days around the time-point of interest (measurement time)
# yname    ## outcome
growth_velocity = function(d, t1mths, t2mths, yname = "haz", tgap = 14) {
  daysmth = 30.4167 ## average number of months in a year
  setkeyv(d, cols = c("country","studyid", "subjid", "sex","agedays"))
  t1 <- as.integer(round((daysmth)*t1mths,0))
  t1_int <- c(t1-tgap,t1+tgap)
  t2 <- as.integer(round((daysmth)*t2mths,0))
  t2_int <- c(t2-tgap,t2+tgap)
  
  d_yt1 <- d[(agedays >= t1_int[1]) & (agedays <= t1_int[2]) & (!is.na(eval(as.name(yname)))), ]
  d_yt2 <- d[(agedays >= t2_int[1]) & (agedays <= t2_int[2]) & (!is.na(eval(as.name(yname)))), ]
  
  dd_yt1 <- d_yt1[, list(t1agedays = agedays[which.min(abs(t1-agedays))], t1y = eval(as.name(yname))[which.min(abs(t1-agedays))]), by = list(country,studyid,subjid,sex)]
  dd_yt2 <- d_yt2[, list(t2agedays = agedays[which.min(abs(t2-agedays))], t2y = eval(as.name(yname))[which.min(abs(t2-agedays))]), by = list(country,studyid,subjid,sex)]
  
  ## merge both time-points and auto drop when one of the measurements is missing 
  ## obtain a single dataset where both measurements must be present)
  setkeyv(dd_yt1, cols = c("country","studyid","subjid", "sex"))
  setkeyv(dd_yt2, cols = c("country","studyid","subjid", "sex"))
  dd_diff <- merge(dd_yt1, dd_yt2, all=FALSE, by=c("country","studyid","subjid", "sex"))
  dd_diff[is.na(t1y),]
  dd_diff[is.na(t2y),]
  ## calculate diff in agedays between (t1,t2), convert to months
  ## calculate linear growth velocity (diff in growth divided by lapsed months)
  dd_diff[, 
          "diffdays" := t2agedays - t1agedays][, 
                                               "diffmths" := diffdays/daysmth][,
                                                                               "y_diff" := t2y-t1y][,
                                                                                                    "y_rate" := y_diff/diffmths][,
                                                                                                                                 "diffcat" := paste0(t1mths,"-",t2mths," months")][,
                                                                                                                                                                                   "ycat" := yname]
  
  cat("(t1 - t2) in months: ", t1mths, "-",t2mths, "\n")
  cat("y outcome: ", yname, "\n")
  cat("tgap value: ", tgap, "\n")
  cat("No. of subjects with y avail in window of t1: ", nrow(dd_yt1), "\n") 
  cat("No. of subjects with y avail in window of t2: ", nrow(dd_yt2), "\n") 
  cat("No. of subjects with both y avail (t1,t2): ", nrow(dd_diff), "\n") 
  
  return(dd_diff)
}

dd_diff = NULL
for (j in 1:length(outvec)) {
  for (i in 1:length(t1vec)) {
    dd_diff_tmp = growth_velocity(d, t1mths = t1vec[i], t2mths = t2vec[i], yname = outvec[j])
    # print(dd_diff_tmp[])
    dd_diff = c(dd_diff, list(dd_diff_tmp))
  }
}
dd_out = rbindlist(dd_diff)
diffcatlevs = paste0(t1vec, "-", t2vec, " months")
dd_out[, "diffcat" := factor(diffcat, levels = diffcatlevs)]
head(dd_out[["diffcat"]])

saveRDS(dd_out, file=paste0(ghapdata_dir,"velocity_longfmt_rf.rds"))

#--------------------------------------------
# drop trial arms with intervention impact on HAZ
# -either based on published literature or analysis
# of effects on CI of stunting by 24months of age
#--------------------------------------------

dd_sub <- as.data.frame(dd_out)

df <- as.data.frame(d)
df <- df %>% filter(agedays!=0) %>% subset(., select = c("studyid","subjid","tr")) %>% group_by(studyid, subjid) %>% slice(1)

dim(dd_sub)
dd_sub <- left_join(dd_sub, df, by=c("studyid","subjid"))
dim(dd_sub)
dd_sub$tr[is.na(dd_sub$tr)]<-""



dim(dd_sub)
dd_sub=dd_sub[!(dd_sub$studyid=="JiVitA-4" & dd_sub$tr!="Control"),]
dd_sub=dd_sub[!(dd_sub$studyid=="PROBIT" & dd_sub$tr!="Control"),]
dd_sub=dd_sub[!(dd_sub$studyid=="iLiNS-Zinc"),]
dd_sub=dd_sub[!(dd_sub$studyid=="SAS-CompFeed" & dd_sub$tr!="Control"),]
dd_sub=dd_sub[!(dd_sub$studyid=="JiVitA-3" & dd_sub$tr!="Control"),]
dd_sub=dd_sub[!(dd_sub$studyid=="COHORTS" & dd_sub$tr=="Other"),]
dim(dd_sub)

saveRDS(dd_sub, file=paste0(ghapdata_dir,"stunting/velocity_longfmt.rds"))

