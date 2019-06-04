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

d <- readRDS(file="U:/UCB-SuperLearner/Stunting rallies/velocity_longfmt.rds")
head(d)

#Merge in sex
cov<-readRDS("U:/UCB-SuperLearner/Stunting rallies/FINAL_temp_clean_covariates.rds")
cov <- subset(cov, select = c(studyid,subjid,country,sex))
setDT(cov)

dim(d)
d <- left_join(d, cov, by=c("studyid", "subjid", "country"))
dim(d)


# Subset to study datasets
#Drop studies Vishak added to data product that don't meet inclusion criteria
d <- d[d$studyid!="ki1000301-DIVIDS" & d$studyid!="ki1055867-WomenFirst" & d$studyid!="ki1135782-INCAP",]

#mark measure frequencies
d$measurefreq <- NA

d$measurefreq[d$studyid %in% c(
  "ki0047075b-MAL-ED",   
  "ki1000108-CMC-V-BCS-2002",              
  "ki1000108-IRC",               
  "ki1000109-EE",           
  "ki1000109-ResPak",  
  "ki1017093b-PROVIDE",  
  "ki1066203-TanzaniaChild2",           
  "ki1101329-Keneba",  
  "ki1112895-Guatemala BSC",       
  "ki1113344-GMS-Nepal",             
  "ki1114097-CONTENT"
)] <- "monthly"

d$measurefreq[d$studyid %in% c(
  "ki1112895-iLiNS-Zinc",  
  "kiGH5241-JiVitA-3",          
  "kiGH5241-JiVitA-4", 
  "ki1148112-LCNI-5",          
  "ki1017093-NIH-Birth",
  "ki1017093c-NIH-Crypto",   
  "ki1119695-PROBIT",         
  "ki1000304b-SAS-CompFeed",   
  "ki1000304b-SAS-FoodSuppl",   
  "ki1126311-ZVITAMBO",   
  "ki1114097-CMIN",                 
  "ki1135781-COHORTS"
)] <- "quarterly"

d$measurefreq[d$studyid %in% c(
  "ki1000110-WASH-Bangladesh",       
  "ki1000111-WASH-Kenya",  
  "ki1148112-iLiNS-DOSE",     
  "ki1148112-iLiNS-DYAD-M", 
  "ki1033518-iLiNS-DYAD-G",
  "ki1000125-AgaKhanUniv",           
  "ki1112895-Burkina Faso Zn",    
  "ki1000304-VITAMIN-A",  
  "ki1000304-Vitamin-B12",
  "ki1000107-Serrinha-VitA",   
  "ki1000304-EU",        
  "ki1000304-ZnMort"
)] <- "yearly"

#Mark COHORTS and CMIN cohorts with different measurement frequency than quarterly
d$measurefreq[d$studyid=="ki1114097-CMIN" & d$country=="BANGLADESH"] <- "monthly"
d$measurefreq[d$studyid=="ki1114097-CMIN" & d$country=="PERU"] <- "monthly"
d<- d[!(d$studyid=="ki1135781-COHORTS" & d$country=="BRAZIL"),] #Drop because yearly but not an RCT
d<- d[!(d$studyid=="ki1135781-COHORTS" & d$country=="SOUTH AFRICA"),] #Drop because yearly but not an RCT

#Drop yearly
d <- d %>% filter(measurefreq!="yearly")

saveRDS(d, file = paste0("U:/UCB-SuperLearner/Stunting rallies/velocity_longfmt_clean.RDS"))


#Summarize N's in study
d %>% group_by(studyid, country, subjid) %>% slice(1) %>% ungroup() %>% summarize(N=n())



#Format results for pooling
table(d$diffcat)

d <- d %>% rename(agecat = diffcat) %>%
  group_by(studyid, country, agecat, ycat, sex) %>%
  summarize(mean=mean(y_rate, na.rm=T), var=var(y_rate, na.rm=T), n=n()) %>%
  mutate(se=sqrt(var), ci.lb=mean - 1.96 * se, ci.ub=mean + 1.96 * se) %>% 
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
RE_pool <- function(df, ycategory, gender){
  
  df <- df %>% filter(ycat==ycategory)
  df <- df %>% filter(sex==gender)
  
  agecat = list("0-3 months", "3-6 months",  "6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")
  
  pooled.vel=lapply(agecat,function(x) 
    fit.rma(data=df, yi="mean", vi="var", ni="n", nlab="children",age=x, measure = "GEN"))

  
  pooled.vel=as.data.frame(do.call(rbind, pooled.vel))

  # age and region specific pooled results
  asia.vel=lapply(agecat,function(x) fit.rma(data=df[df$region=="Asia",], 
        yi="mean", vi="var", ni="n", nlab="children",age=x, measure = "GEN"))
  LA.vel=lapply(agecat,function(x) fit.rma(data=df[df$region=="Latin America",],
        yi="mean", vi="var", ni="n",age=x, nlab="children", measure = "GEN"))
  africa.vel=lapply(agecat,function(x) fit.rma(data=df[df$region=="Africa",],
        yi="mean", vi="var", ni="n",age=x, nlab="children", measure = "GEN"))
  
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
# pool results -- sensitivity analysis with monthly 
# cohorts with measurements at each age up to 24 months of age
#----------------------------------------------------
study24 = c("ki0047075b-MAL-ED", "ki1000108-CMC-V-BCS-2002", "ki1000108-IRC", 
            "ki1101329-Keneba", "ki1113344-GMS-Nepal", "ki1114097-CMIN", 
            "ki1114097-CONTENT", "ki1017093b-PROVIDE")

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
dsub <- d %>% filter(studyid!="ki1114097-CONTENT") %>% filter(!(studyid=="ki1135781-COHORTS" & country=="GUATEMALA"))
poolhaz_boys <- RE_pool(dsub, ycategory="haz", gender="Male")
poolhaz_girls <- RE_pool(dsub, ycategory="haz", gender="Female")
poollencm_boys <- RE_pool(dsub, ycategory="lencm", gender="Male")
poollencm_girls <- RE_pool(dsub, ycategory="lencm", gender="Female")

pooled_vel_sub <- rbind(
  poolhaz_boys, poolhaz_girls, poollencm_boys, poollencm_girls
)

saveRDS(pooled_vel_sub,
        file=paste0(res_dir,"stunting/pool_vel_sub.RDS"))

