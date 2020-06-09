

#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
require(cowplot)
library(RcppRoll)

rain <- readRDS(here("/data/cohort_rain_data.rds"))

d <- readRDS(seasonality_data_path)

#subset to monthly cohorts
d <- d %>% filter(measurefreq=="monthly")

#drop outliers 
d <- d %>% filter(!is.na(whz)) %>% filter(whz < 5 & whz > (-5))


head(rain)
head(d)

# rain$country <- toupper(rain$country)
# rain$country[rain$country=="TANZANIA "]<-"TANZANIA"
rain <- mark_region(rain)
rain$region <- factor(rain$region, levels = c("South Asia","Africa","Latin America"))
rain$country <- tolower(rain$country)
d$country <- tolower(d$country)
colnames(rain)[1] <- "studyid"
d$country[d$country=="tanzania, united republic of"] <- "tanzania"

#remove grant identifiers from studyid
d$studyid <- gsub("^k.*?-" , "", d$studyid)
rain$studyid <- gsub("^k.*?-" , "", rain$studyid)


#Transform rain dataset
rain <- rain %>% subset(., select = c("studyid", "country", "region", "cohort_index", "Jan", "Feb", "Mar", "Apr", "May",
                                      "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))

rain$country <- str_to_title(rain$country)
d$country <- str_to_title(d$country)

# gather meanWHZ by month data into long format
rain_long <- rain %>%
  gather(month,rain, -studyid, -country, -cohort_index, -region) 
rain_long$month = gsub("_pre","",rain_long$month)
rain_long$month = factor(rain_long$month, levels=c("Jan", "Feb", "Mar", "Apr", "May","Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
head(rain_long)

rain_long$month_day = as.numeric(rain_long$month) * 30.4167





#arrange cohorts by seasonality index and set factor levels
rain_long <- rain_long %>% arrange(region, -cohort_index) %>% 
  mutate(cohort = paste0(studyid, ", ", country),
         cohort=factor(cohort, levels=unique(cohort))) 
d <- d %>% mutate(cohort = paste0(studyid, ", ", country),
                  cohort=factor(cohort, levels=unique(rain_long$cohort)))

rain_long <- droplevels(rain_long)
d <- droplevels(d)
cohorts=levels(d$cohort)




# Quartile cohorts month by levels of rainfall

#3-month Rolling sum of rainfall

#Set a second ordering of month so all 3-month rain sums can be calculated (i.e grouping "Nov", "Dec","Jan" and "Dec","Jan", "Feb")
rain_long$month2 = factor(rain_long$month, levels=c("Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec","Jan", "Feb", "Mar", "Apr", "May"))

rain_quartile <- rain_long %>% group_by(studyid, country) %>%
  mutate(month_number = as.numeric(month),
         month_number2 = as.numeric(month2)) %>%
  arrange(studyid, country, month_number) %>%
  mutate(roll_sum1 = roll_sum(rain, 3, align = "right", fill = 0, na.rm=T)) %>%
  arrange(studyid, country, month_number2) %>%
  mutate(roll_sum2 = roll_sum(rain, 3, align = "right", fill = 0, na.rm=T),
         max_rain_quarter = ifelse(roll_sum1>roll_sum2, roll_sum1, roll_sum2),
         month_end_max_rain = month_number[max_rain_quarter==max(max_rain_quarter)]) %>%
  select(studyid, country, cohort_index, month_end_max_rain) %>% unique(.)
head(rain_quartile, 12)


df <- left_join(d, rain_quartile, by = c("studyid","country"))


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

df <- subset(df, select = c(studyid, subjid, agedays, country, cohort_index, whz, rain_quartile))
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

#all
d %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid))) %>% ungroup %>% summarize(min(N), max(N))
#high
d %>% filter(cohort_index>=0.8) %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid))) %>% ungroup %>% summarize(min(N), max(N))
#med
d %>% filter(cohort_index<0.8 & cohort_index>=0.5) %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid))) %>% ungroup %>% summarize(min(N), max(N))
#low
d %>% filter(cohort_index<0.5) %>% group_by(studyid, country) %>% summarize(N=n(), nchild=length(unique(subjid))) %>% ungroup %>% summarize(min(N), max(N))


#Save cohort Ns
saveRDS(cohort_Ns, file=paste0(here(),"/results/seasonTMLE_Ns.rds")) 





