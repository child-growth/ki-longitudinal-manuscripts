
#---------------------------------------
#Ki DHS Analysis
#Spring 2019

# This script plots Z-score densities for the 
# KI cohort data 
#---------------------------------------

#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# read in stunting outcome data 
load("U:/ucb-superlearner/data/stunting_data.RData")
st = d
rm(d)

load(paste0(ghapdata_dir, "co-occurrence_data.RData"))


#Subset to ages under 2 years.
d <- d %>% filter(agedays < 24 * 30.4167)
st <- st %>% filter(agedays < 24 * 30.4167)

#Save Overall region
d.overall <- d %>% mutate(region="Overall")
st.overall <- st %>% mutate(region="Overall")

d <- d %>% mutate(region = case_when(
  country=="BANGLADESH" | country=="INDIA"|
    country=="NEPAL" | country=="PAKISTAN"|
    country=="PHILIPPINES"| country=="CHINA"|
    country=="THAILAND"|country=="SINGAPORE"|
    country=='OMAN'~ "SEARO",
  country=="KENYA"|
    country=="GHANA"|
    country=="BURKINA FASO"|
    country=="GUINEA-BISSAU"|
    country=="MALAWI"|
    country=="SOUTH AFRICA"|
    country=="TANZANIA, UNITED REPUBLIC OF"|
    country=="TANZANIA"|
    country=="ZIMBABWE"|
    country=="GAMBIA"|
    country=='CONGO, THE DEMOCRATIC REPUBLIC OF' ~ "AFRO",
  country=="BRAZIL" | country=="GUATEMALA" |
    country=="PERU"|country=='ECUADOR'   ~ "PAHO",
  TRUE                                    ~ "Other"
))
d <- d %>% filter(region!="Other")

st <- st %>% mutate(region = case_when(
  country=="BANGLADESH" | country=="INDIA"|
    country=="NEPAL" | country=="PAKISTAN"|
    country=="PHILIPPINES"| country=="CHINA"|
    country=="THAILAND"|country=="SINGAPORE"|
    country=='OMAN'~ "SEARO",
  country=="KENYA"|
    country=="GHANA"|
    country=="BURKINA FASO"|
    country=="GUINEA-BISSAU"|
    country=="MALAWI"|
    country=="SOUTH AFRICA"|
    country=="TANZANIA, UNITED REPUBLIC OF"|
    country=="TANZANIA"|
    country=="ZIMBABWE"|
    country=="GAMBIA"|
    country=='CONGO, THE DEMOCRATIC REPUBLIC OF' ~ "AFRO",
  country=="BRAZIL" | country=="GUATEMALA" |
    country=="PERU"|country=='ECUADOR'   ~ "PAHO",
  TRUE                                    ~ "Other"
))
st <- st %>% filter(region!="Other")

#---------------------------------------------------------
# Calculate medians
#---------------------------------------------------------

#Function to estimate median by region and Z-score
kimedian <- function(d, hazonly=FALSE){

  if(hazonly){
    med_haz <- median(d$haz[d$haz > (-6) & d$haz < 6])

    res <- data.frame(measure="haz", median=c(med_haz))
  }else{
    med_haz <- median(d$haz[d$haz > (-6) & d$haz < 6])
    med_whz <- median(d$whz[d$whz > (-5) & d$whz < 5])
    med_waz <- median(d$waz[d$waz > (-5) & d$waz < 5])
    res <- data.frame(measure=c("haz","whz","waz"), median=c(med_haz, med_whz, med_waz))
  }

    
  return(res)
}

medians_overall <- data.frame(region="Overall", kimedian(d))
medians_overall_st <- data.frame(region="Overall", kimedian(st,hazonly=TRUE))

medians_strat <- d %>% group_by(region) %>% do(kimedian(.)) %>% as.data.frame()
medians.quarterly <- rbind(medians_overall, medians_strat)


medians_strat_st <- st %>% group_by(region) %>% do(kimedian(.,hazonly=TRUE)) %>% as.data.frame()
medians.quarterly_st <- rbind(medians_overall_st, medians_strat_st)

medians.quarterly <- medians.quarterly %>% filter(measure!="haz")
medians.quarterly <- bind_rows(medians.quarterly, medians.quarterly_st) %>%
  arrange(region, measure)
medians.quarterly

#---------------------------------------------------------
# Estimate densities
#---------------------------------------------------------

#Function to estimate density by region and Z-score
ki.density <- function(data, Region, Measure){
  d <- data %>% filter(region==Region) %>% as.data.frame()
  
  dens <- density(d[,Measure])
  
  dat <- data.frame(x=dens$x,y=dens$y, region=Region, measure=Measure)
  return(dat)
}





set.seed(123)
haz1 <- ki.density(st, Region="SEARO", Measure="haz")
haz2 <- ki.density(st, Region="PAHO", Measure="haz")
haz3 <- ki.density(st, Region="AFRO", Measure="haz")
haz4 <- ki.density(st.overall, Region="Overall", Measure="haz")

whz1 <- ki.density(d, Region="SEARO", Measure="whz")
whz2 <- ki.density(d, Region="PAHO", Measure="whz")
whz3 <- ki.density(d, Region="AFRO", Measure="whz")
whz4 <- ki.density(d.overall, Region="Overall", Measure="whz")

df <- d %>% filter(waz > (-5) & waz < 5)
df2 <- d.overall %>% filter(waz > (-5) & waz < 5)
waz1 <- ki.density(df, Region="SEARO", Measure="waz")
waz2 <- ki.density(df, Region="PAHO", Measure="waz")
waz3 <- ki.density(df, Region="AFRO", Measure="waz")
waz4 <- ki.density(df2, Region="Overall", Measure="waz")

resdf.quarterly <- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)

#Subset to monthly data 
d.quart <- d %>% filter(measurefreq=="monthly")
d.overall.quart <- d.overall %>% filter(measurefreq=="monthly")

st.quart <- st %>% filter(measurefreq=="monthly")
st.overall.quart <- st.overall %>% filter(measurefreq=="monthly")

medians_overall <- data.frame(region="Overall", kimedian(d.overall.quart))
medians_strat <- d.quart %>% group_by(region) %>% do(kimedian(.)) %>% as.data.frame()
medians.monthly <- rbind(medians_overall, medians_strat)
medians.monthly

medians_overall_st <- data.frame(region="Overall", kimedian(st.overall.quart, hazonly=TRUE))
medians_strat_st <- st.quart %>% group_by(region) %>% do(kimedian(., hazonly=TRUE)) %>% as.data.frame()
medians.monthly_st <- rbind(medians_overall_st, medians_strat_st)

medians.monthly <- medians.monthly %>% filter(measure!="haz")
medians.monthly <- bind_rows(medians.monthly, medians.monthly_st) %>%
  arrange(region, measure)
medians.monthly

set.seed(123)
haz1 <- ki.density(st.quart, Region="SEARO", Measure="haz")
haz2 <- ki.density(st.quart, Region="PAHO", Measure="haz")
haz3 <- ki.density(st.quart, Region="AFRO", Measure="haz")
haz4 <- ki.density(st.overall.quart, Region="Overall", Measure="haz")

whz1 <- ki.density(d.quart, Region="SEARO", Measure="whz")
whz2 <- ki.density(d.quart, Region="PAHO", Measure="whz")
whz3 <- ki.density(d.quart, Region="AFRO", Measure="whz")
whz4 <- ki.density(d.overall.quart, Region="Overall", Measure="whz")

df <- d.quart %>% filter(waz > (-5) & waz < 5)
df2 <- d.overall.quart %>% filter(waz > (-5) & waz < 5)
waz1 <- ki.density(df, Region="SEARO", Measure="waz")
waz2 <- ki.density(df, Region="PAHO", Measure="waz")
waz3 <- ki.density(df, Region="AFRO", Measure="waz")
waz4 <- ki.density(df2, Region="Overall", Measure="waz")

resdf.monthly <- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)

#---------------------------------------------------------
# Estimate quantiles
#---------------------------------------------------------


#Function to estimate density by region and Z-score
ki.quantiles <- function(data, Region, Measure){
  d <- data %>% filter(region==Region) %>% as.data.frame()
  
  dquant <- quantile(d[,Measure], probs = seq(0, 1, 0.01), na.rm = FALSE, names = TRUE, type = 7)
  
  dat <- data.frame(quantile=as.numeric(gsub("%","",names(dquant))),zscore=as.numeric(dquant), region=rep(Region,length(dquant)), measure=rep(Measure, length(dquant)))
  return(dat)
}


haz1 <- ki.quantiles(st, Region="SEARO", Measure="haz")
haz2 <- ki.quantiles(st, Region="PAHO", Measure="haz")
haz3 <- ki.quantiles(st, Region="AFRO", Measure="haz")
haz4 <- ki.quantiles(st.overall, Region="Overall", Measure="haz")

whz1 <- ki.quantiles(d, Region="SEARO", Measure="whz")
whz2 <- ki.quantiles(d, Region="PAHO", Measure="whz")
whz3 <- ki.quantiles(d, Region="AFRO", Measure="whz")
whz4 <- ki.quantiles(d.overall, Region="Overall", Measure="whz")

df <- d %>% filter(waz > (-5) & waz < 5)
df2 <- d.overall %>% filter(waz > (-5) & waz < 5)
waz1 <- ki.quantiles(df, Region="SEARO", Measure="waz")
waz2 <- ki.quantiles(df, Region="PAHO", Measure="waz")
waz3 <- ki.quantiles(df, Region="AFRO", Measure="waz")
waz4 <- ki.quantiles(df2, Region="Overall", Measure="waz")

quantdf.quarterly <- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)



set.seed(123)
haz1 <- ki.quantiles(st.quart, Region="SEARO", Measure="haz")
haz2 <- ki.quantiles(st.quart, Region="PAHO", Measure="haz")
haz3 <- ki.quantiles(st.quart, Region="AFRO", Measure="haz")
haz4 <- ki.quantiles(st.overall.quart, Region="Overall", Measure="haz")

whz1 <- ki.quantiles(d.quart, Region="SEARO", Measure="whz")
whz2 <- ki.quantiles(d.quart, Region="PAHO", Measure="whz")
whz3 <- ki.quantiles(d.quart, Region="AFRO", Measure="whz")
whz4 <- ki.quantiles(d.overall.quart, Region="Overall", Measure="whz")

df <- d.quart %>% filter(waz > (-5) & waz < 5)
df2 <- d.overall.quart %>% filter(waz > (-5) & waz < 5)
waz1 <- ki.quantiles(df, Region="SEARO", Measure="waz")
waz2 <- ki.quantiles(df, Region="PAHO", Measure="waz")
waz3 <- ki.quantiles(df, Region="AFRO", Measure="waz")
waz4 <- ki.quantiles(df2, Region="Overall", Measure="waz")

quantdf.monthly <- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)




#---------------------------------------------------------
# Save objects
#---------------------------------------------------------

#Save medians
saveRDS(medians.monthly, file = paste0(here(),"/results/ki.zscore.medians.monthly.rds"))
saveRDS(medians.quarterly, file = paste0(here(),"/results/ki.zscore.medians.quarterly.rds"))


#Save densities
saveRDS(resdf.monthly, file = paste0(here(),"/results/ki.density.fits.monthly.rds"))
saveRDS(resdf.quarterly, file = paste0(here(),"/results/ki.density.fits.quarterly.rds"))


#Save quantiles
saveRDS(quantdf.monthly, file = paste0(here(),"/results/ki.quantiles.monthly.rds"))
saveRDS(quantdf.quarterly, file = paste0(here(),"/results/ki.quantiles.quarterly.rds"))

