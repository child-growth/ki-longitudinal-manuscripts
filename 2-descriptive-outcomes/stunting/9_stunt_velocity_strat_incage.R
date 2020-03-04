##########################################
# ki longitudinal manuscripts
# stunting analysis

# calculate growth velocity by age and sex 
# by strata of age of incident stunting

# Inputs:
#   - 0-config.R
#   - 0_descriptive_epi_shared_functions.R
#   - 0_descriptive_epi_stunt_functions.R
#   - velocity_longfmt.rds

# Outputs:
#   - stunt_velocity_incage.RDS
#   - stunt_velocity_incage_monthly.RDS
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_stunt_functions.R"))

#######################################################################
# Load and process data
#######################################################################
d <- readRDS(paste0(ghapdata_dir, "velocity_longfmt.rds"))

#######################################################################
# Analyze data
#######################################################################
head(d)
#----------------------------------------
# Format results for stunting indicator generation
#----------------------------------------
d <- d %>% rename(agecat = diffcat) %>%
  mutate(region = case_when(
    country=="BANGLADESH" | country=="INDIA"|
      country=="NEPAL" | country=="PAKISTAN"|
      country=="PHILIPPINES"                   ~ "Asia", 
    country=="BURKINA FASO"|
      country=="GUINEA-BISSAU"|
      country=="MALAWI"|
      country=="KENYA"|
      country=="GHANA"|
      country=="SOUTH AFRICA"|
      country=="TANZANIA, UNITED REPUBLIC OF"|
      country=="ZIMBABWE"|
      country=="GAMBIA"                       ~ "Africa",
    country=="BELARUS"                      ~ "Europe",
    country=="BRAZIL" | country=="GUATEMALA" |
      country=="PERU"                         ~ "Latin America",
    TRUE ~ "Other"
  )) %>% 
  filter(agecat %in% c("Birth", "0-3 months", "3-6 months", "6-9 months", "9-12 months", "12-15 months"),
         ycat %in% c("haz", "lencm"))


#----------------------------------------
# Create indicator for incident stunting
# at birth, after birth to 3 months, 
# after 3 months to 6 months, never
#----------------------------------------
d_st_prepped = d %>% mutate(measurefreq = "monthly") %>% filter(ycat == "haz")
d_indicators = create_stunting_age_indicators(data = d_st_prepped, create_agecats = FALSE) %>% select(-c(measurefreq, haz))
d_st = left_join(d, d_indicators, by = colnames(d_indicators %>% select(-stunt_inc_age))) %>% distinct()

#----------------------------------------
# Format results for pooling
#----------------------------------------
d_st = d_st %>% group_by(studyid, country, agecat, ycat, sex, stunt_inc_age, region) %>%
  summarise(mean=mean(y_rate, na.rm=T), var=var(y_rate, na.rm=T), sd=sd(y_rate, na.rm=T), n=n()) %>%
  mutate(ci.lb=mean - 1.96 * sd, 
         ci.ub=mean + 1.96 * sd,
         country_cohort=paste0(studyid," ", country))

d_st$agecat <- factor(d_st$agecat)

#----------------------------------------
# Filter to monthly cohorts
#----------------------------------------
study24 = c("MAL-ED", "CMC-V-BCS-2002", "IRC", 
            "Keneba", "GMS-Nepal", "CMIN", 
            "CONTENT", "PROVIDE")

d_st_monthly <- d_st %>% filter(studyid %in% study24)

#----------------------------------------------------
# age specific pooled results
#----------------------------------------------------
RE_pool <- function(df, ycategory, gender, method = "REML", age_stunt_onset){
  
  df <- df %>% filter(ycat==ycategory)
  df <- df %>% filter(sex==gender)
  df <- df %>% filter(stunt_inc_age==age_stunt_onset)
  
  agecat = list("0-3 months", "3-6 months", "6-9 months","9-12 months","12-15 months")
  
  pooled.vel=lapply(agecat,function(x) 
    fit.rma(data=df, yi="mean", vi="var", ni="n", nlab="children",age=x,
            measure = "MN", method=method))
  
  pooled.vel=as.data.frame(do.call(rbind, pooled.vel))
  
  # age and region specific pooled results
  asia.vel=lapply(agecat,function(x) fit.rma(data=df[df$region=="Asia",], 
                                             yi="mean", vi="var", ni="n", nlab="children",age=x, measure = "MN", method = method))
  LA.vel=lapply(agecat,function(x) fit.rma(data=df[df$region=="Latin America",],
                                           yi="mean", vi="var", ni="n",age=x, nlab="children", measure = "MN", method = method))
  africa.vel=lapply(agecat,function(x) fit.rma(data=df[df$region=="Africa",],
                                               yi="mean", vi="var", ni="n",age=x, nlab="children", measure = "MN", method = method))
  
  asia.vel=as.data.frame(do.call(rbind, asia.vel))
  LA.vel=as.data.frame(do.call(rbind, LA.vel))
  africa.vel=as.data.frame(do.call(rbind, africa.vel))
  
  #Bind together pooled and cohort specific estimates
  
  pooled.df <- rbind(
    data.frame(country_cohort="Pooled - All", pooled=1, region="Overall", pooled.vel),
    data.frame(country_cohort="Pooled - Asia", pooled=1, region="Asia",asia.vel),
    data.frame(country_cohort="Pooled - Africa", pooled=1, region="Africa",africa.vel),
    data.frame(country_cohort="Pooled - Amer.", pooled=1, region="Latin America",LA.vel)
  ) %>% subset(., select = -c(se)) %>%
    rename(Mean=est, N=nmeas, Lower.95.CI=lb, Upper.95.CI=ub)
  
  pooled.df$strata=as.character(unlist(agecat))
  
  cohort.df <- df %>% subset(., select = c(country_cohort, agecat, n, mean, ci.lb, ci.ub, region)) %>%
    rename(N=n, Mean=mean, Lower.95.CI=ci.lb, Upper.95.CI=ci.ub,
           strata=agecat) %>%
    mutate(pooled=0, nstudies=1)
  
  plotdf <- bind_rows(pooled.df, cohort.df)
  
  #Format variables for plotting
  
  #remove grant identifier
  plotdf$country_cohort<- gsub("^k.*?-" , "",plotdf$country_cohort)
  
  simpleCap <- function(x) {
    s <- strsplit(x, " ")[[1]]
    paste(toupper(substring(s, 1,1)), tolower(substring(s, 2)),
          sep="", collapse=" ")
  }
  
  for(i in 1:length(plotdf$country_cohort)){
    plotdf$country_cohort[i] <- simpleCap(plotdf$country_cohort[i])
  }
  
  plotdf$statistic="Velocity"
  plotdf$country_cohort <- factor(plotdf$country_cohort, levels=unique(plotdf$country_cohort))
  plotdf$strata <- factor(plotdf$strata, levels=unique(plotdf$strata))
  
  plotdf$stratacol <- "strata"
  plotdf$stratacol[plotdf$strata=="Overall"] <- "overall"
  plotdf$stratacol[plotdf$pooled==1] <- "pooled"
  plotdf$stratacol[plotdf$strata=="Overall" & plotdf$pooled==1] <- "pooled_unstrat"
  
  plotdf$sex <- gender
  plotdf$ycat <- ycategory
  plotdf$stunt_inc_age = age_stunt_onset
  
  return(plotdf)
}

#----------------------------------------------------
# pool results -- all quarterly studies
#----------------------------------------------------
stunt_inc_age_list = list("Never", "0-3 months", "3-6 months", "6-9 months","9-12 months","12-15 months")

#----------------------------------------
# Random effects pooling within age and sex 
# length velocity
#----------------------------------------
poollencm_boys = lapply(stunt_inc_age_list, function(x) RE_pool(d_st, ycategory="lencm", gender="Male", age_stunt_onset = x))
poollencm_boys = as.data.frame(do.call(rbind, poollencm_boys))

poollencm_girls = lapply(stunt_inc_age_list, function(x) RE_pool(d_st, ycategory="lencm", gender="Female", age_stunt_onset = x))
poollencm_girls = as.data.frame(do.call(rbind, poollencm_girls))


#----------------------------------------
# Random effects pooling within age and sex 
# LAZ velocity
#----------------------------------------
poolhaz_boys = lapply(stunt_inc_age_list, function(x) RE_pool(d_st, ycategory="haz", gender="Male", age_stunt_onset = x))
poolhaz_boys = as.data.frame(do.call(rbind, poolhaz_boys))

poolhaz_girls = lapply(stunt_inc_age_list, function(x) RE_pool(d_st, ycategory="haz", gender="Female", age_stunt_onset = x))
poolhaz_girls = as.data.frame(do.call(rbind, poolhaz_girls))

#----------------------------------------
# Random effects pooling within age and sex 
# length velocity
#----------------------------------------
poollencm_boys_monthly = lapply(stunt_inc_age_list, function(x) RE_pool(d_st_monthly, ycategory="lencm", gender="Male", age_stunt_onset = x))
poollencm_boys_monthly = as.data.frame(do.call(rbind, poollencm_boys_monthly))

poollencm_girls_monthly = lapply(stunt_inc_age_list, function(x) RE_pool(d_st_monthly, ycategory="lencm", gender="Female", age_stunt_onset = x))
poollencm_girls_monthly = as.data.frame(do.call(rbind, poollencm_girls_monthly))


#----------------------------------------
# Random effects pooling within age and sex 
# LAZ velocity
#----------------------------------------
poolhaz_boys_monthly = lapply(stunt_inc_age_list, function(x) RE_pool(d_st_monthly, ycategory="haz", gender="Male", age_stunt_onset = x))
poolhaz_boys_monthly = as.data.frame(do.call(rbind, poolhaz_boys_monthly))

poolhaz_girls_monthly = lapply(stunt_inc_age_list, function(x) RE_pool(d_st_monthly, ycategory="haz", gender="Female", age_stunt_onset = x))
poolhaz_girls_monthly = as.data.frame(do.call(rbind, poolhaz_girls_monthly))

#######################################################################
# save data
#######################################################################

pooled_vel <- rbind(
  poolhaz_boys, poolhaz_girls, poollencm_boys, poollencm_girls
)
saveRDS(pooled_vel, file = paste0(res_dir, "stunt_velocity_incage.RDS"))

pooled_vel_monthly <- rbind(
  poolhaz_boys_monthly, poolhaz_girls_monthly, poollencm_boys_monthly, poollencm_girls_monthly
)
saveRDS(pooled_vel_monthly, file = paste0(res_dir, "stunt_velocity_incage_monthly.RDS"))


