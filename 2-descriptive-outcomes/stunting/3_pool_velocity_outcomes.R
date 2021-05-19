##########################################
# ki longitudinal manuscripts
# stunting analysis

# pool velocity outcomes
##########################################


# load packages
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_stunt_functions.R"))

d <- readRDS(paste0(ghapdata_dir, "velocity_longfmt.rds"))

#-------------------------------------------
# check included cohorts
#-------------------------------------------

vel_cohorts = monthly_and_quarterly_cohorts
assert_that(setequal(unique(d$studyid), vel_cohorts),
            msg = "Check data. Included cohorts do not match.")

setdiff(monthly_and_quarterly_cohorts, unique(d$studyid))

#Summarize N's in study
d %>% group_by(studyid, country, subjid) %>% slice(1) %>% ungroup() %>% summarize(N=n())
d %>% group_by(studyid, country, subjid) %>% slice(1) %>%  group_by(studyid, country)  %>% summarize(N=n()) %>% as.data.frame()



#Format results for pooling
table(d$diffcat)

d <- d %>% rename(agecat = diffcat) %>%
  group_by(studyid, country, agecat, ycat, sex) %>%
  summarise(mean=mean(y_rate, na.rm=T), var=var(y_rate, na.rm=T), sd=sd(y_rate, na.rm=T), n=n()) %>%
  mutate(ci.lb=mean - 1.96 * sd/sqrt(n), ci.ub=mean + 1.96 * sd/sqrt(n)) %>% 
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
  ),
  country_cohort=paste0(studyid," ", country))


#----------------------------------------------------
# age specific pooled results
#----------------------------------------------------
RE_pool <- function(df, ycategory, gender, method = "REML"){
  
  df <- df %>% filter(ycat==ycategory)
  df <- df %>% filter(sex==gender)
  
  agecat = list("0-3 months", "3-6 months",  "6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")
  
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
  
  return(plotdf)
}



#----------------------------------------------------
# pool results -- all quarterly studies
#----------------------------------------------------

poolhaz_boys <- RE_pool(d, ycategory="haz", gender="Male")
poolhaz_girls <- RE_pool(d, ycategory="haz", gender="Female")
poollencm_boys <- RE_pool(d, ycategory="lencm", gender="Male")
poollencm_girls <- RE_pool(d, ycategory="lencm", gender="Female")

pooled_vel <- rbind(
  poolhaz_boys, poolhaz_girls, poollencm_boys, poollencm_girls
)

saveRDS(pooled_vel, 
        file=paste0(res_dir,"stunting/pool_vel.RDS"))


#----------------------------------------------------
# pool results -- all quarterly studies -- fixed effects
#----------------------------------------------------

poolhaz_boys_fe <- RE_pool(d, ycategory="haz", gender="Male", method="FE")
poolhaz_girls_fe <- RE_pool(d, ycategory="haz", gender="Female", method="FE")
poollencm_boys_fe <- RE_pool(d, ycategory="lencm", gender="Male", method="FE")
poollencm_girls_fe <- RE_pool(d, ycategory="lencm", gender="Female", method="FE")

pooled_vel_fe <- rbind(
  poolhaz_boys_fe, poolhaz_girls_fe, poollencm_boys_fe, poollencm_girls_fe
)

saveRDS(pooled_vel_fe, 
        file=paste0(res_dir,"stunting/pool_vel_fe.RDS"))

#----------------------------------------------------
# pool results -- sensitivity analysis with monthly 
# cohorts with measurements at each age up to 24 months of age
#----------------------------------------------------
study24 = c("MAL-ED", "CMC-V-BCS-2002", "IRC", 
            "Keneba", "GMS-Nepal", "CMIN", 
            "CONTENT", "PROVIDE")

dmonth24 <- d %>% filter(studyid %in% study24)

poolhaz_boys_month24 <- RE_pool(dmonth24, ycategory="haz", gender="Male")
poolhaz_girls_month24 <- RE_pool(dmonth24, ycategory="haz", gender="Female")
poollencm_boys_month24 <- RE_pool(dmonth24, ycategory="lencm", gender="Male")
poollencm_girls_month24 <- RE_pool(dmonth24, ycategory="lencm", gender="Female")

pooled_vel_month24 <- rbind(
  poolhaz_boys_month24, poolhaz_girls_month24, 
  poollencm_boys_month24, poollencm_girls_month24
)

saveRDS(pooled_vel_month24,
        file=paste0(res_dir,"stunting/pool_vel_month24.RDS"))


#----------------------------------------------------
#Pool velocity - sensitivity analysis dropping CONTENT and Cohorts Guat.
#----------------------------------------------------
dsub <- d %>% filter(studyid!="CONTENT") %>% filter(!(studyid=="COHORTS" & country=="GUATEMALA"))
poolhaz_boys <- RE_pool(dsub, ycategory="haz", gender="Male")
poolhaz_girls <- RE_pool(dsub, ycategory="haz", gender="Female")
poollencm_boys <- RE_pool(dsub, ycategory="lencm", gender="Male")
poollencm_girls <- RE_pool(dsub, ycategory="lencm", gender="Female")

pooled_vel_sub <- rbind(
  poolhaz_boys, poolhaz_girls, poollencm_boys, poollencm_girls
)

saveRDS(pooled_vel_sub,
        file=paste0(res_dir,"stunting/pool_vel_sub.RDS"))

