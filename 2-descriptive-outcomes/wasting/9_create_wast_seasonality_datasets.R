

#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
require(cowplot)
library(RcppRoll)

rain <- readRDS(paste0(BV_dir,"/data/cohort_rain_data.rds"))
head(rain)

d <- readRDS(seasonality_data_path)

#subset to monthly cohorts
d <- d %>% filter(measurefreq=="monthly")

#drop outliers 
d <- d %>% filter(!is.na(whz)) %>% filter(whz < 5 & whz > (-5))

#rain <- rain %>% mutate(rain=1) %>% filter(!is.na(avg_ppt))
d <- d %>% mutate(child=1) %>% rename(lat=latitude, long=longitud)

head(rain)
head(d)


#3-month Rolling sum of rainfall

#Set a second ordering of month so all 3-month rain sums can be calculated (i.e grouping "Nov", "Dec","Jan" and "Dec","Jan", "Feb")
rain$month2 = factor(rain$month, levels=c("6", "7", "8", "9", "10", "11", "12","1", "2", "3", "4", "5"))

#summarize rain by month
#rain <- rain %>% group_by(studyid, month, month2, long, lat) %>% summarise(rain=mean(avg_ppt))
  
rain_quartile <- rain %>% group_by(studyid, long, lat, cohort_index) %>%
  mutate(month_number = as.numeric(month),
         month_number2 = as.numeric(month2)) %>%
  arrange(studyid, long, lat, month_number) %>%
  mutate(roll_sum1 = roll_sum(rain, 3, align = "right", fill = 0, na.rm=T)) %>%
  arrange(studyid, long, lat, month_number2) %>%
  mutate(roll_sum2 = roll_sum(rain, 3, align = "right", fill = 0, na.rm=T),
         max_rain_quarter = ifelse(roll_sum1>roll_sum2, roll_sum1, roll_sum2),
         month_end_max_rain = month_number[max_rain_quarter==max(max_rain_quarter)]) %>%
  subset(., select=c(studyid, long, lat, cohort_index, month_end_max_rain)) %>% unique(.)
head(rain_quartile, 12)



dim(d)
dim(rain_quartile)
#d <- d %>% mutate(long=round(long, 1),   lat=round(lat, 1))
df <- left_join(d, rain_quartile, by = c("studyid","lat","long"))
dim(df)

df <- df %>% mutate(
              rain_quartile = case_when(
                month_end_max_rain == 1 & month %in% c(11, 12, 1) ~ "Max rain", 
                month_end_max_rain == 2 & month %in% c(12, 1, 2) ~ "Max rain", 
                month_end_max_rain == 3 & month %in% c(1, 2, 3) ~ "Max rain", 
                month_end_max_rain == 4 & month %in% c(2, 3, 4) ~ "Max rain", 
                month_end_max_rain == 5 & month %in% c(3, 4, 5) ~ "Max rain", 
                month_end_max_rain == 6 & month %in% c(4, 5, 6) ~ "Max rain", 
                month_end_max_rain == 7 & month %in% c(5, 6, 7) ~ "Max rain", 
                month_end_max_rain == 8 & month %in% c(6, 7, 8) ~ "Max rain", 
                month_end_max_rain == 9 & month %in% c(7, 8, 9) ~ "Max rain", 
                month_end_max_rain == 10 & month %in% c(8, 9, 10) ~ "Max rain", 
                month_end_max_rain == 11 & month %in% c(9, 10, 11) ~ "Max rain", 
                month_end_max_rain == 12 & month %in% c(10, 11, 12) ~ "Max rain", 
                
                month_end_max_rain == 10 & month %in% c(11, 12, 1) ~ "Post-max rain", 
                month_end_max_rain == 11 & month %in% c(12, 1, 2) ~ "Post-max rain", 
                month_end_max_rain == 12 & month %in% c(1, 2, 3) ~ "Post-max rain", 
                month_end_max_rain == 1 & month %in% c(2, 3, 4) ~ "Post-max rain", 
                month_end_max_rain == 2 & month %in% c(3, 4, 5) ~ "Post-max rain", 
                month_end_max_rain == 3 & month %in% c(4, 5, 6) ~ "Post-max rain", 
                month_end_max_rain == 4 & month %in% c(5, 6, 7) ~ "Post-max rain", 
                month_end_max_rain == 5 & month %in% c(6, 7, 8) ~ "Post-max rain", 
                month_end_max_rain == 6 & month %in% c(7, 8, 9) ~ "Post-max rain", 
                month_end_max_rain == 7 & month %in% c(8, 9, 10) ~ "Post-max rain", 
                month_end_max_rain == 8 & month %in% c(9, 10, 11) ~ "Post-max rain", 
                month_end_max_rain == 9 & month %in% c(10, 11, 12) ~ "Post-max rain", 
                
                month_end_max_rain == 4 & month %in% c(11, 12, 1) ~ "Pre-max rain", 
                month_end_max_rain == 5 & month %in% c(12, 1, 2) ~ "Pre-max rain", 
                month_end_max_rain == 6 & month %in% c(1, 2, 3) ~ "Pre-max rain", 
                month_end_max_rain == 7 & month %in% c(2, 3, 4) ~ "Pre-max rain", 
                month_end_max_rain == 8 & month %in% c(3, 4, 5) ~ "Pre-max rain", 
                month_end_max_rain == 9 & month %in% c(4, 5, 6) ~ "Pre-max rain", 
                month_end_max_rain == 10 & month %in% c(5, 6, 7) ~ "Pre-max rain", 
                month_end_max_rain == 11 & month %in% c(6, 7, 8) ~ "Pre-max rain", 
                month_end_max_rain == 12 & month %in% c(7, 8, 9) ~ "Pre-max rain", 
                month_end_max_rain == 1 & month %in% c(8, 9, 10) ~ "Pre-max rain", 
                month_end_max_rain == 2 & month %in% c(9, 10, 11) ~ "Pre-max rain", 
                month_end_max_rain == 3 & month %in% c(10, 11, 12) ~ "Pre-max rain", 
                
                month_end_max_rain == 7 & month %in% c(11, 12, 1) ~ "Opposite max rain", 
                month_end_max_rain == 8 & month %in% c(12, 1, 2) ~ "Opposite max rain", 
                month_end_max_rain == 9 & month %in% c(1, 2, 3) ~ "Opposite max rain", 
                month_end_max_rain == 10 & month %in% c(2, 3, 4) ~ "Opposite max rain", 
                month_end_max_rain == 11 & month %in% c(3, 4, 5) ~ "Opposite max rain", 
                month_end_max_rain == 12 & month %in% c(4, 5, 6) ~ "Opposite max rain", 
                month_end_max_rain == 1 & month %in% c(5, 6, 7) ~ "Opposite max rain", 
                month_end_max_rain == 2 & month %in% c(6, 7, 8) ~ "Opposite max rain", 
                month_end_max_rain == 3 & month %in% c(7, 8, 9) ~ "Opposite max rain", 
                month_end_max_rain == 4 & month %in% c(8, 9, 10) ~ "Opposite max rain", 
                month_end_max_rain == 5 & month %in% c(9, 10, 11) ~ "Opposite max rain", 
                month_end_max_rain == 6 & month %in% c(10, 11, 12) ~ "Opposite max rain", 
                TRUE ~ ""
                )
            )

table(!is.na(df$month), df$rain_quartile)


#Drop observations without a month variable
df <- df %>% filter(rain_quartile!="")
df <- droplevels(df)

#Set reference levels
df$rain_quartile <- factor(df$rain_quartile, levels=c("Opposite max rain","Post-max rain", "Pre-max rain", "Max rain"))

#Set up dataset for longbow analysis
df <- filter(df, agedays < 24 * 30.4167)

df <- subset(df, select = c(studyid, subjid, id, agedays, country, cohort_index, whz, rain_quartile))
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
cov <- cov %>% subset(., select = -c(id))

#Set reference level to the lowest
cov$trth2o <- relevel(cov$trth2o, ref="1")
cov$cleanck <- relevel(cov$cleanck, ref="1")
cov$impfloor <- relevel(cov$impfloor, ref="1")
cov$earlybf <- relevel(cov$earlybf, ref="1")
cov$impsan <- relevel(cov$impsan, ref="1")
cov$safeh20 <- relevel(cov$safeh20, ref="1")
cov$predfeed3 <- relevel(cov$predfeed3, ref="1")
cov$exclfeed3 <- relevel(cov$exclfeed3, ref="1")
cov$predfeed6 <- relevel(cov$predfeed6, ref="1")
cov$exclfeed6 <- relevel(cov$exclfeed6, ref="1")
cov$predfeed36 <- relevel(cov$predfeed36, ref="1")
cov$exclfeed36 <- relevel(cov$exclfeed36, ref="1")
cov$predexfd6 <- relevel(cov$predexfd6, ref="1")
# cov$perdiar6 <- relevel(cov$perdiar6, ref="0%")
# cov$perdiar24 <- relevel(cov$perdiar24, ref="0%")

#Merge WLZ, season, and covariates
dim(df)
dim(cov)
d <- left_join(df, cov, by = c("studyid", "subjid", "country"))
dim(d)

#Set adjustment variables
W <- NULL


#save analysis dataset
save(d, file = paste0(ghapdata_dir, "seasonality_rf.Rdata"))

table(d$studyid)
table(d$country)
table(d$rain_quartile)
table(is.na(d$id))
table(is.na(d$whz))



#duration by age 
d6 <- calc.ci.agecat(d, range=6, birth="no")
df2 <- d6 %>% group_by(studyid, subjid, agecat,episode_id) %>% slice(1) %>% filter(!is.na(wasting_duration)) %>% filter(agedays < 30.6417 * 24)
df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))


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


analyses <- specify_rf_analysis(A="rain_quartile", Y="whz", file="seasonality_rf.Rdata", adj_sets=NULL)


#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/seasonality_analyses.rdata"))



#get N's for figure caption
cohort_Ns <- d %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid)))


#NOTE: Need to updated cohort index cutoffs

#all
d %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid))) %>% ungroup %>% summarize(min(N), max(N))
#high
d %>% filter(cohort_index>=0.9) %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid))) %>% ungroup %>% summarize(min(N), max(N))
#med
d %>% filter(cohort_index<0.9 & cohort_index>=0.7) %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid))) %>% ungroup %>% summarize(min(N), max(N))
#low
d %>% filter(cohort_index<0.7) %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid))) %>% ungroup %>% summarize(min(N), max(N))


#Save cohort Ns
saveRDS(cohort_Ns, file=paste0(BV_dir,"/results/seasonTMLE_Ns.rds")) 





