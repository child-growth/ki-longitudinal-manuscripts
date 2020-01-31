




#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
require(cowplot)
library(RcppRoll)


#rain <- read.csv(here("/data/monthly_rainfall.csv"))
rain <- readRDS(here("/data/cohort_rain_data.rds"))

d <- readRDS(paste0(ghapdata_dir,"/seasonality_rf_data.rds"))

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
  select(studyid, country, month_end_max_rain) %>% unique(.)
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


d <- subset(df, select = c(studyid, subjid, id, country, agedays, whz, haz, month, rain_quartile))
head(d)




#Mark age categories for tmle analysis and subset to wasting or stunting data
#drop outliers 
dim(d)
d_whz <- d %>% filter(!is.na(whz)) %>% filter(whz < 5 & whz > (-5))
d_haz <- d %>% filter(!is.na(haz)) %>% filter(haz < 6 & haz > (-6))
dim(d_whz)
dim(d_haz)

# define age windows
dprev_whz <- calc.prev.agecat(d_whz)
dprev_haz <- calc.prev.agecat(d_haz)

#Get N's for table 1
mode <- function(codes){
  which.max(tabulate(codes))
}

Ndf <- dprev_haz %>% filter(agecat=="24 months") %>% group_by(studyid, subjid) %>% summarize(rain_quartile=mode(rain_quartile))
Ndf %>% ungroup %>% summarize(N=n())
table(Ndf$rain_quartile)
prop.table(table(Ndf$rain_quartile))*100

#--------------------------------------
# Calculate prevalence of
# Wasting in certain ages for the
# risk factor analysis
#--------------------------------------


# take mean of multiple measurements within age window
dmn_wast <- dprev_whz %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,id, subjid,agecat) %>%
  arrange(agedays) %>%
  summarise(whz=mean(whz), month= median(as.numeric(month)), rain_quartile= mode(rain_quartile)) %>%
  mutate(wasted=ifelse(whz< -2, 1,0),swasted=ifelse(whz< -3, 1,0)) %>% 
  filter(agecat=="Birth" | agecat=="6 months" | agecat=="24 months")


# export
wastprev = dmn_wast %>% 
  select(studyid,subjid, id, country,agecat, rain_quartile, wasted, swasted)

# save mean Z scores at each age
meanWHZ = dmn_wast %>% 
  select(studyid,subjid, id, country,agecat, rain_quartile, whz)


#--------------------------------------
# Calculate prevalence of
# Wasting in certain ages for the
# risk factor analysis
#--------------------------------------

dmn_stunt <- dprev_haz %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid,country,subjid,id, agecat) %>%
  arrange(agedays) %>%
  summarise(haz=mean(haz), month= median(as.numeric(month)), rain_quartile= mode(rain_quartile)) %>%
  mutate(stunted=ifelse(haz< -2, 1,0),sstunted=ifelse(haz< -3, 1,0)) %>% 
  filter(agecat=="Birth" | agecat=="6 months" | agecat=="24 months")


# export
stuntprev = dmn_stunt %>% 
  select(studyid,subjid, id, country,agecat, rain_quartile, stunted, sstunted)

# save mean Z scores at each age
meanHAZ = dmn_stunt %>% 
  select(studyid,subjid, id, country,agecat, rain_quartile, haz)



#save analysis dataset
save(meanWHZ, file = paste0(ghapdata_dir, "seasonality_rf_whz.Rdata"))
save(meanHAZ, file = paste0(ghapdata_dir, "seasonality_rf_haz.Rdata"))
save(wastprev, file = paste0(ghapdata_dir, "seasonality_rf_wast.Rdata"))
save(stuntprev, file = paste0(ghapdata_dir, "seasonality_rf_stunt.Rdata"))

#Specify analyses
specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("studyid","country","agecat"), id="id", adj_sets=adjustment_sets){
  
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


WHZanalyses <- specify_rf_analysis(A="rain_quartile", Y="whz", file="seasonality_rf_whz.Rdata", adj_sets=NULL)
HAZanalyses <- specify_rf_analysis(A="rain_quartile", Y="haz", file="seasonality_rf_haz.Rdata", adj_sets=NULL)
wastanalyses <- specify_rf_analysis(A="rain_quartile", Y=c("wasted", "swasted"), file="seasonality_rf_wast.Rdata", adj_sets=NULL)
stuntanalyses <- specify_rf_analysis(A="rain_quartile", Y=c("stunted", "sstunted"), file="seasonality_rf_stunt.Rdata", adj_sets=NULL)


#Save analysis specification
analyses <- rbind(WHZanalyses, HAZanalyses)
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/seasonality_rf_Zscore_analyses.rdata"))

analyses <- rbind(wastanalyses, stuntanalyses)
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/seasonality_rf_prev_analyses.rdata"))



