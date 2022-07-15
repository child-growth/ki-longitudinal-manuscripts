

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_wast_inc_functions.R"))

load(paste0(ghapdata_dir, "seasonality_rf.Rdata"))

d <- d %>% group_by(studyid, country) %>% do(WastIncCalc(.))

saveRDS(d, file=paste0(BV_dir,"/results/seasonality_wast_inc.rds")) 

d <- readRDS(paste0(BV_dir,"/results/seasonality_wast_inc.rds")) 

#get episode duration by season
df <- d %>% group_by(studyid, subjid, episode_id) %>% slice(1) %>% filter(!is.na(wasting_duration)) %>% filter(agedays < 30.6417 * 24)
calc_dur_ci <- function(df){
  dur <- median(df$wasting_duration, na.rm=T)
  #Quantile CI's'
  ci <- sort(df$wasting_duration)[qbinom(c(.025,.975), length(df$wasting_duration), 0.5)]
  return(data.frame(dur=dur, ci.lb=ci[1], ci.ub=ci[2]))
}

calc_dur_ci(df)

#duration by season 
df2 <- df %>% group_by(studyid, subjid, rain_quartile,episode_id) %>% slice(1) %>% filter(!is.na(wasting_duration)) %>% filter(agedays < 30.6417 * 24)
df2 %>% group_by(rain_quartile) %>% do(calc_dur_ci(.))

#recovery
d$agecat <- d$rain_quartile
rec30.rain_quartile <- d %>% group_by(rain_quartile) %>% do(summary.rec60( ., length = 30)$ci.res)
rec60.rain_quartile <- d %>% group_by(rain_quartile) %>% do(summary.rec60( ., length = 60)$ci.res)
rec90.rain_quartile <- d %>% group_by(rain_quartile) %>% do(summary.rec60( ., length = 90)$ci.res)

rec30.rain_quartile
rec60.rain_quartile
rec90.rain_quartile

#look at risk of wasting by next period
head(d)



df<-d %>% filter(rain_quartile=="Max rain") %>%
  group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
  filter(agedays < min(agedays) + 30.4167*18) %>%
  mutate(year=case_when(agedays < min(agedays) + 30.4167*6 ~ "first",
         agedays > min(agedays) + 30.4167*6 ~ "second")) %>%
  group_by(studyid, subjid, year) %>%
  mutate(wast_inc=max(wast_inc, na.rm=T))
df_max_y1 <- df %>% filter(year=="first") %>% rename(first_inc=wast_inc) %>% ungroup() %>% select(studyid, country, subjid, rain_quartile, first_inc)
df_max_y2 <- df %>% filter(year=="second") %>% rename(second_inc=wast_inc) %>% ungroup() %>% select(studyid, country, subjid, rain_quartile, second_inc)
df_maxrain <- left_join(df_max_y1, df_max_y2, by = c("studyid", "country", "subjid", "rain_quartile"))
head(df_maxrain)
table(df_maxrain$first_inc , df_maxrain$second_inc)
dat_max=table(-df_maxrain$first_inc , -df_maxrain$second_inc)


df<-d %>% filter(rain_quartile=="Opposite max rain") %>%
  group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
  filter(agedays < min(agedays) + 30.4167*18) %>%
  mutate(year=case_when(agedays < min(agedays) + 30.4167*6 ~ "first",
                        agedays > min(agedays) + 30.4167*6 ~ "second")) %>%
  group_by(studyid, subjid, year) %>%
  mutate(wast_inc=max(wast_inc, na.rm=T))
df_min_y1 <- df %>% filter(year=="first") %>% rename(first_inc=wast_inc) %>% ungroup() %>% select(studyid, country, subjid, rain_quartile, first_inc)
df_min_y2 <- df %>% filter(year=="second") %>% rename(second_inc=wast_inc) %>% ungroup() %>% select(studyid, country, subjid, rain_quartile, second_inc)
df_minrain <- left_join(df_min_y1, df_min_y2, by = c("studyid", "country", "subjid", "rain_quartile"))
head(df_minrain)
table(df_minrain$first_inc , df_minrain$second_inc)
dat_min=table(-df_minrain$first_inc , -df_minrain$second_inc)


library(epiR)
epi.2by2(dat_max, method = "cross.sectional", conf.level = 0.95, units = 100, outcome = "as.columns")
epi.2by2(dat_min, method = "cross.sectional", conf.level = 0.95, units = 100, outcome = "as.columns")


df_minmax_rain <- left_join(df_min_y1 %>% mutate(rain_quartile="min to max"), df_max_y2 %>% mutate(rain_quartile="min to max"), by = c("studyid", "country", "subjid", "rain_quartile"))
df_maxmin_rain <- left_join(df_max_y1 %>% mutate(rain_quartile="max to min"), df_min_y2 %>% mutate(rain_quartile="max to min"), by = c("studyid", "country", "subjid", "rain_quartile"))


d <- bind_rows(df_minrain,df_maxrain, df_minmax_rain,df_maxmin_rain)
save(d, file=paste0(ghapdata_dir,"seasonality_inc_rf.Rdata"))


load(paste0(BV_dir,"/results/adjustment_sets_list.Rdata"))
A <- names(adjustment_sets)
Avars <- c( "sex",  "brthmon", "month", names(adjustment_sets))

specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("rain_quartile","studyid","country"), id="subjid", adj_sets=adjustment_sets){
  
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

analyses <- specify_rf_analysis(A="first_inc", Y="second_inc", file="seasonality_inc_rf.Rdata")


save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/seasonality_inc_analyses.rdata"))


library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)

# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","early wast"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

load(here("4-longbow-tmle-analysis","analysis specification","seasonality_inc_analyses.rdata"))

enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

run_ki_tmle(enumerated_analyses, results_folder="seasonality_inc_analyses", overwrite = T)





#Load data
dfull <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_seasonality_inc_analyses_2022-07-13.RDS"))


d <- dfull %>% filter(type=="RR", ci_lower != ci_upper)

RMAest <- d %>% group_by(intervention_variable, rain_quartile, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest
write.csv(RMAest, file=paste0(ghapdata_dir,"seasonality_inc_RRs.csv"))
