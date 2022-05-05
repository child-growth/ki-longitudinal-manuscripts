
rm(list=ls())
library(tidyverse)
library(here)
library(Hmisc)

gdp_raw <- read.csv(here("data/country metrics/gpd per capita.csv")) %>% rename(country=`ï..Country.Name`)
gdi_raw <- read.csv(here("data/country metrics/Gender Development Index (GDI).csv")) %>% rename(country=Country)
gii_raw <- read.csv(here("data/country metrics/Gender Inequality Index (GII).csv")) %>% rename(country=Country)
chi_raw <- read.csv(here("data/country metrics/Coefficient of human inequality.csv")) %>% rename(country=Country)
gini_raw <- read.csv(here("data/country metrics/gini.csv")) %>% rename(country=`ï..Country.Name`)
he_raw <- read.csv(here("data/country metrics/health_expenditure.csv")) %>% rename(country=`ï..Country.Name`)
pov_raw <- read.csv(here("data/country metrics/perc_pov.csv")) %>% rename(country=`ï..Country.Name`)

ki_countries <- read.csv(here("data/country metrics/KI country-years.csv")) %>% rename(country=Country, year=Year) %>% select(country, year)



head(gdp_raw)
gdp <- gdp_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "gdp", values_drop_na = TRUE) %>%
  select(country, year, gdp) %>%
  mutate(year=as.numeric(gsub("X","",year)), gdp=as.numeric(gdp), country=gsub(" ","",country))
gdp


head(gdi_raw)
gdi <- gdi_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "gdi", values_drop_na = TRUE) %>%
  select(country, year, gdi) %>%
  mutate(year=as.numeric(gsub("X","",year)), gdi=as.numeric(gdi), country=gsub(" ","",country))
gdi


head(gii_raw)
gii <- gii_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "gii", values_drop_na = TRUE) %>%
  select(country, year, gii) %>%
  mutate(year=as.numeric(gsub("X","",year)), gii=as.numeric(gii), country=gsub(" ","",country))
gii

chi <- chi_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "chi", values_drop_na = TRUE) %>%
  select(country, year, chi) %>% mutate(year=as.numeric(gsub("X","",year)), chi=as.numeric(chi), country=gsub(" ","",country))
gini <- gini_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "gini", values_drop_na = TRUE) %>%
  select(country, year, gini) %>% mutate(year=as.numeric(gsub("X","",year)), gini=as.numeric(gini), country=gsub(" ","",country))
he <- he_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "he", values_drop_na = TRUE) %>%
  select(country, year, he) %>% mutate(year=as.numeric(gsub("X","",year)), he=as.numeric(he), country=gsub(" ","",country))
pov <- pov_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "pov", values_drop_na = TRUE) %>%
  select(country, year, pov) %>% mutate(year=as.numeric(gsub("X","",year)), pov=as.numeric(pov), country=gsub(" ","",country))



#Get rows for all years
years <- data.frame(year=1987:2020)
years <-expand_grid(years, data.frame(country=unique(gii$country)))

gdp <- left_join(years, gdp, by=c("country","year")) %>% filter(!is.na(country), country!="")
gdi <- left_join(years, gdi, by=c("country","year")) %>% filter(!is.na(country), country!="") 
gii <- left_join(years, gii, by=c("country","year")) %>% filter(!is.na(country), country!="")
chi <- left_join(years, chi, by=c("country","year")) %>% filter(!is.na(country), country!="")
gini <- left_join(years, gini, by=c("country","year")) %>% filter(!is.na(country), country!="")
he <- left_join(years, he, by=c("country","year")) %>% filter(!is.na(country), country!="")
pov <- left_join(years, pov, by=c("country","year")) %>% filter(!is.na(country), country!="")


#drop countries with less than 2 NA
gdp <- gdp %>% group_by(country) %>% mutate(non_NA =sum(!is.na(gdp))) %>% filter(non_NA>2) %>% subset(., select = -c(non_NA))
gdi <- gdi %>% group_by(country) %>% mutate(non_NA =sum(!is.na(gdi))) %>% filter(non_NA>2) %>% subset(., select = -c(non_NA))
gii <- gii %>% group_by(country) %>% mutate(non_NA =sum(!is.na(gii))) %>% filter(non_NA>2) %>% subset(., select = -c(non_NA))
chi <- chi %>% group_by(country) %>% mutate(non_NA =sum(!is.na(chi))) %>% filter(non_NA>2) %>% subset(., select = -c(non_NA))
gini <- gini %>% group_by(country) %>% mutate(non_NA =sum(!is.na(gini))) %>% filter(non_NA>2) %>% subset(., select = -c(non_NA))
he <- he %>% group_by(country) %>% mutate(non_NA =sum(!is.na(he))) %>% filter(non_NA>2) %>% subset(., select = -c(non_NA))
pov <- pov %>% group_by(country) %>% mutate(non_NA =sum(!is.na(pov))) %>% filter(non_NA>2) %>% subset(., select = -c(non_NA))

  
#linearly interpolate 
gdp<-gdp %>% group_by(country) %>%
  mutate(gdp = approxExtrap(which(!is.na(gdp)), gdp[!is.na(gdp)],xout = 1:n(), rule=2)$y) %>%
  as.data.frame() %>% arrange(country, year)
gdi<-gdi %>% group_by(country) %>%
  mutate(gdi = approxExtrap(which(!is.na(gdi)), gdi[!is.na(gdi)],xout = 1:n(), rule=2)$y) %>%
  as.data.frame() %>% arrange(country, year)
gii<-gii %>% group_by(country) %>%
  mutate(gii = approxExtrap(which(!is.na(gii)), gii[!is.na(gii)],xout = 1:n(), rule=2)$y) %>%
  as.data.frame() %>% arrange(country, year)
chi<-chi %>% group_by(country) %>% mutate(chi = approxExtrap(which(!is.na(chi)), chi[!is.na(chi)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)
gini<-gini %>% group_by(country) %>% mutate(gini = approxExtrap(which(!is.na(gini)), gini[!is.na(gini)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)
he<-he %>% group_by(country) %>% mutate(he = approxExtrap(which(!is.na(he)), he[!is.na(he)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)
pov<-pov %>% group_by(country) %>% mutate(pov = approxExtrap(which(!is.na(pov)), pov[!is.na(pov)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)

#merge indicators together
d <- left_join(ki_countries, gdp, by=c("country","year"))
d <- left_join(d, gdi, by=c("country","year"))
d <- left_join(d, gii, by=c("country","year"))
d <- left_join(d, chi, by=c("country","year"))
d <- left_join(d, gini, by=c("country","year"))
d <- left_join(d, he, by=c("country","year"))
d <- left_join(d, pov, by=c("country","year"))


head(d)

saveRDS(d, file=here("data/country metrics/combined_country_metrics.RDS"))

#get indicator distributions by country.
#maybe get after merging kids in because based on their birthyear.