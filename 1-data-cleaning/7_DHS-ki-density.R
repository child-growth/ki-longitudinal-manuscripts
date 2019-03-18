
#---------------------------------------
#Ki DHS Analysis
#Spring 2019

# This script plots Z-score densities for the 
# KI cohort data 
#---------------------------------------

#---------------------------------------
# source configuration file
#---------------------------------------
source(paste0(here::here(), "/0-config.R"))



load("U://ucb-superlearner/data/co-occurrence_data.RData")

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






#Function to estimate density by region and Z-score
ki.density <- function(data, Region, Measure){
  d <- data %>% filter(region==Region) %>% as.data.frame()
  
  dens <- density(d[,Measure])
  
  dat <- data.frame(x=dens$x,y=dens$y, region=Region, measure=Measure)
  return(dat)
}





set.seed(123)
haz1 <- ki.density(d, Region="SEARO", Measure="haz")
haz2 <- ki.density(d, Region="PAHO", Measure="haz")
haz3 <- ki.density(d, Region="AFRO", Measure="haz")
whz1 <- ki.density(d, Region="SEARO", Measure="whz")
whz2 <- ki.density(d, Region="PAHO", Measure="whz")
whz3 <- ki.density(d, Region="AFRO", Measure="whz")

d <- d %>% filter(waz > (-5) & waz < 5)
waz1 <- ki.density(d, Region="SEARO", Measure="waz")
waz2 <- ki.density(d, Region="PAHO", Measure="waz")
waz3 <- ki.density(d, Region="AFRO", Measure="waz")

resdf <- rbind(haz1, haz2, haz3, whz1, whz2, whz3, waz1, waz2, waz3)

saveRDS(resdf, file = paste0(here(),"/results/ki.density.fits.rds"))


