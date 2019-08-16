##########################################
# ki longitudinal manuscripts
# DHS analysis - KI densities

# This script reads in clean KI cohort data and estimates kernel densities. 
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in fig-DHS-plots-laz.R and fig-DHS-plots-whz.R.

# Inputs:
#   0-config.R : configuration file
#   stunting_data.RData
#   wasting_data.RData
#   waz_data.RData

# Outputs:
#   ki.zscore.medians.monthly.rds
#   ki.zscore.medians.quarterly.rds
#   ki.density.fits.monthly.rds
#   ki.density.fits.quarterly.rds
#   ki.quantiles.monthly.rds
#   ki.quantiles.quarterly.rds
##########################################


#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# read in outcome data 
st = readRDS(rf_stunting_data_path)
wst = readRDS(rf_wasting_data_path)
waz = readRDS(rf_underweight_path)



#Subset to ages under 2 years.
waz <- waz %>% filter(agedays < 24 * 30.4167)
wst <- wst %>% filter(agedays < 24 * 30.4167)
st <- st %>% filter(agedays < 24 * 30.4167)


#Save Overall region
waz.overall <- waz %>% mutate(region="Overall")
wst.overall <- wst %>% mutate(region="Overall")
st.overall <- st %>% mutate(region="Overall")

waz <- waz %>% mutate(region = case_when(
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
waz <- waz %>% filter(region!="Other")

wst <- wst %>% mutate(region = case_when(
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
wst <- wst %>% filter(region!="Other")

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
kimedian <- function(d, measure){

  if(measure=="haz"){
    med_haz <- median(d$haz[d$haz > (-6) & d$haz < 6])
    res <- data.frame(measure="haz", median=c(med_haz))
  }
  if(measure=="whz"){
    med_whz <- median(d$whz[d$whz > (-5) & d$whz < 5])
    res <- data.frame(measure="whz", median=c(med_whz))
  }
  if(measure=="waz"){
    med_waz <- median(d$waz[d$waz > (-5) & d$waz < 5])
    res <- data.frame(measure="waz", median=c(med_waz))
  }
    
  return(res)
}

medians_overall_waz <- data.frame(region="Overall", kimedian(waz, measure="waz"))
medians_overall_wst <- data.frame(region="Overall", kimedian(wst, measure="whz"))
medians_overall_st <- data.frame(region="Overall", kimedian(st, measure="haz"))

medians_strat_waz <- waz %>% group_by(region) %>% do(kimedian(., measure="waz")) %>% as.data.frame()
medians_strat_wst <- wst %>% group_by(region) %>% do(kimedian(., measure="whz")) %>% as.data.frame()
medians_strat_st <- st %>% group_by(region) %>% do(kimedian(., measure="haz")) %>% as.data.frame()
medians.quarterly_waz <- rbind(medians_overall_waz, medians_strat_waz)
medians.quarterly_wst <- rbind(medians_overall_wst, medians_strat_wst)
medians.quarterly_st <- rbind(medians_overall_st, medians_strat_st)

medians.quarterly <- bind_rows(medians.quarterly_waz, medians.quarterly_wst, medians.quarterly_st) %>%
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

whz1 <- ki.density(wst, Region="SEARO", Measure="whz")
whz2 <- ki.density(wst, Region="PAHO", Measure="whz")
whz3 <- ki.density(wst, Region="AFRO", Measure="whz")
whz4 <- ki.density(wst.overall, Region="Overall", Measure="whz")

waz1 <- ki.density(waz, Region="SEARO", Measure="waz")
waz2 <- ki.density(waz, Region="PAHO", Measure="waz")
waz3 <- ki.density(waz, Region="AFRO", Measure="waz")
waz4 <- ki.density(waz.overall, Region="Overall", Measure="waz")

resdf.quarterly <- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)

resdf.quarterly <- resdf.quarterly %>%
  mutate(region = case_when(
    region == "SEARO" ~ "South Asia",
    region == "PAHO" ~ "Latin America",
    region == "AFRO" ~ "Africa",
    region == "Overall" ~ "Overall")
  ) %>%
  mutate(
    region = factor(region,
                    levels = c("Overall", "Africa", "South Asia", "Latin America"),
                    labels = c("Overall", "Africa", "South Asia", "Latin America")
    ),
    measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
  ) 

#Subset to monthly data 
st.mon <- st %>% filter(measurefreq=="monthly")
wst.mon <- wst %>% filter(measurefreq=="monthly")
waz.mon <- waz %>% filter(measurefreq=="monthly")

waz.overall.mon <- waz.overall %>% filter(measurefreq=="monthly")
wst.overall.mon <- wst.overall %>% filter(measurefreq=="monthly")
st.overall.mon <- st.overall %>% filter(measurefreq=="monthly")

medians_overall.mon_st <- data.frame(region="Overall", kimedian(st.overall.mon, measure="haz"))
medians_strat.mon_st <- st.mon %>% group_by(region) %>% do(kimedian(., measure="haz")) %>% as.data.frame()
medians.monthly_st <- rbind(medians_overall_st, medians_strat_st)

medians_overall.mon_wst <- data.frame(region="Overall", kimedian(wst.overall.mon, measure="whz"))
medians_strat.mon_wst <- wst.mon %>% group_by(region) %>% do(kimedian(., measure="whz")) %>% as.data.frame()
medians.monthly_wst <- rbind(medians_overall_wst, medians_strat_wst)

medians_overall.mon_waz <- data.frame(region="Overall", kimedian(waz.overall.mon, measure="waz"))
medians_strat.mon_waz <- waz.mon %>% group_by(region) %>% do(kimedian(., measure="waz")) %>% as.data.frame()
medians.monthly_waz <- rbind(medians_overall_waz, medians_strat_waz)

medians.monthly <- bind_rows(medians.monthly_waz, medians.monthly_wst, medians.monthly_st) %>%
  arrange(region, measure)
medians.monthly

set.seed(123)
haz1 <- ki.density(st.mon, Region="SEARO", Measure="haz")
haz2 <- ki.density(st.mon, Region="PAHO", Measure="haz")
haz3 <- ki.density(st.mon, Region="AFRO", Measure="haz")
haz4 <- ki.density(st.overall.mon, Region="Overall", Measure="haz")

whz1 <- ki.density(wst.mon, Region="SEARO", Measure="whz")
whz2 <- ki.density(wst.mon, Region="PAHO", Measure="whz")
whz3 <- ki.density(wst.mon, Region="AFRO", Measure="whz")
whz4 <- ki.density(wst.overall.mon, Region="Overall", Measure="whz")

waz1 <- ki.density(waz.mon, Region="SEARO", Measure="waz")
waz2 <- ki.density(waz.mon, Region="PAHO", Measure="waz")
waz3 <- ki.density(waz.mon, Region="AFRO", Measure="waz")
waz4 <- ki.density(waz.overall.mon, Region="Overall", Measure="waz")

resdf.monthly <- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)

resdf.monthly <- resdf.monthly %>%
  mutate(region = case_when(
    region == "SEARO" ~ "South Asia",
    region == "PAHO" ~ "Latin America",
    region == "AFRO" ~ "Africa",
    region == "Overall" ~ "Overall")
  ) %>%
  mutate(
    region = factor(region,
                    levels = c("Overall", "Africa", "South Asia", "Latin America"),
                    labels = c("Overall", "Africa", "South Asia", "Latin America")
    ),
    measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
  )

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

whz1 <- ki.quantiles(wst, Region="SEARO", Measure="whz")
whz2 <- ki.quantiles(wst, Region="PAHO", Measure="whz")
whz3 <- ki.quantiles(wst, Region="AFRO", Measure="whz")
whz4 <- ki.quantiles(wst.overall, Region="Overall", Measure="whz")

waz1 <- ki.quantiles(waz, Region="SEARO", Measure="waz")
waz2 <- ki.quantiles(waz, Region="PAHO", Measure="waz")
waz3 <- ki.quantiles(waz, Region="AFRO", Measure="waz")
waz4 <- ki.quantiles(waz.overall, Region="Overall", Measure="waz")

quantdf.quarterly <- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)


set.seed(123)
haz1 <- ki.quantiles(st.mon, Region="SEARO", Measure="haz")
haz2 <- ki.quantiles(st.mon, Region="PAHO", Measure="haz")
haz3 <- ki.quantiles(st.mon, Region="AFRO", Measure="haz")
haz4 <- ki.quantiles(st.overall.mon, Region="Overall", Measure="haz")

whz1 <- ki.quantiles(wst.mon, Region="SEARO", Measure="whz")
whz2 <- ki.quantiles(wst.mon, Region="PAHO", Measure="whz")
whz3 <- ki.quantiles(wst.mon, Region="AFRO", Measure="whz")
whz4 <- ki.quantiles(wst.overall.mon, Region="Overall", Measure="whz")

waz1 <- ki.quantiles(waz.mon, Region="SEARO", Measure="waz")
waz2 <- ki.quantiles(waz.mon, Region="PAHO", Measure="waz")
waz3 <- ki.quantiles(waz.mon, Region="AFRO", Measure="waz")
waz4 <- ki.quantiles(waz.overall.mon, Region="Overall", Measure="waz")

quantdf.monthly <- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)




#---------------------------------------------------------
# Save objects
#---------------------------------------------------------

#Save medians
saveRDS(medians.monthly, file = paste0(here(),"/results/dhs/ki.zscore.medians.monthly.rds"))
saveRDS(medians.quarterly, file = paste0(here(),"/results/dhs/ki.zscore.medians.quarterly.rds"))


#Save densities
saveRDS(resdf.monthly, file = paste0(here(),"/results/dhs/ki.density.fits.monthly.rds"))
saveRDS(resdf.quarterly, file = paste0(here(),"/results/dhs/ki.density.fits.quarterly.rds"))


#Save quantiles
saveRDS(quantdf.monthly, file = paste0(here(),"/results/dhs/ki.quantiles.monthly.rds"))
saveRDS(quantdf.quarterly, file = paste0(here(),"/results/dhs/ki.quantiles.quarterly.rds"))

