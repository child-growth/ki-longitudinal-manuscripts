
rm(list=ls())
library(tidyverse)
library(here)
library(Hmisc)
library(mice)
library(miceFast)


gdp_raw <- read.csv(here("data/country metrics/gpd per capita.csv")) %>% rename(country=`Country.Name`)
gdi_raw <- read.csv(here("data/country metrics/Gender Development Index (GDI).csv")) %>% rename(country=Country)
gii_raw <- read.csv(here("data/country metrics/Gender Inequality Index (GII).csv")) %>% rename(country=Country)
chi_raw <- read.csv(here("data/country metrics/Coefficient of human inequality.csv")) %>% rename(country=Country)
gini_raw <- read.csv(here("data/country metrics/gini.csv")) %>% rename(country=`Country.Name`)
he_raw <- read.csv(here("data/country metrics/health_expenditure.csv")) %>% rename(country=`Country.Name`)
pov_raw <- read.csv(here("data/country metrics/perc_pov.csv")) %>% rename(country=`Country.Name`)
mort_raw <- read.csv(here("data/country metrics/mort.csv")) %>% rename(country=`Country.Name`)

#ki_countries <- read.csv(here("data/country metrics/KI country-years.csv")) %>% rename(country=Country, year=Year) %>% select(country, year)
#remove space in countries for merge
#ki_countries <- ki_countries %>% mutate(country = gsub(" ","", country))

ki_countries <- readRDS(here("data/study_birth_years.rds"))
table(ki_countries$brthyr, ki_countries$country)
ki_countries <- ki_countries %>% ungroup() %>% distinct(country, brthyr) %>% rename(year=brthyr) %>% mutate(country = gsub(" ","", str_to_title(country)), country = gsub("-","", country))
unique(ki_countries$country)

#add missing rows

miss_years=data.frame(country=c(rep("GuineaBissau",4),rep("Tanzania",5)), year=c(1994,1995,  1996,  1997,  2007,  2008,  2009,  2010,  2011))
ki_countries = bind_rows(ki_countries, miss_years) %>% distinct()


head(gdp_raw)
gdp <- gdp_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "gdp", values_drop_na = TRUE) %>%
  select(country, year, gdp) %>%
  mutate(year=as.numeric(gsub("X","",year)), gdp=as.numeric(gdp), 
         country=gsub(" ","",country), country=gsub("-","",country), country=gsub("Tanzania(UnitedRepublicof)","Tanzania",country), country=gsub("Gambia,The","Gambia",country))
gdp


head(gdi_raw)
gdi <- gdi_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "gdi", values_drop_na = TRUE) %>%
  select(country, year, gdi) %>%
  mutate(year=as.numeric(gsub("X","",year)), gdi=as.numeric(gdi),
         country=gsub(" ","",country), country=gsub("-","",country), country=gsub("Tanzania(UnitedRepublicof)","Tanzania",country), country=gsub("Gambia,The","Gambia",country))
gdi


head(gii_raw)
gii <- gii_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "gii", values_drop_na = TRUE) %>%
  select(country, year, gii) %>%
  mutate(year=as.numeric(gsub("X","",year)), gii=as.numeric(gii), 
         country=gsub(" ","",country), country=gsub("-","",country), country=gsub("Tanzania(UnitedRepublicof)","Tanzania",country), country=gsub("Gambia,The","Gambia",country))

chi <- chi_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "chi", values_drop_na = TRUE) %>%
  select(country, year, chi) %>% mutate(year=as.numeric(gsub("X","",year)), chi=as.numeric(chi),
                                        country=gsub(" ","",country), country=gsub("-","",country), country=gsub("Tanzania(UnitedRepublicof)","Tanzania",country), country=gsub("Gambia,The","Gambia",country))
gini <- gini_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "gini", values_drop_na = TRUE) %>%
  select(country, year, gini) %>% mutate(year=as.numeric(gsub("X","",year)), gini=as.numeric(gini), 
                                         country=gsub(" ","",country), country=gsub("-","",country), country=gsub("Tanzania(UnitedRepublicof)","Tanzania",country), country=gsub("Gambia,The","Gambia",country))
he <- he_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "he", values_drop_na = TRUE) %>%
  select(country, year, he) %>% mutate(year=as.numeric(gsub("X","",year)), he=as.numeric(he), 
                                       country=gsub(" ","",country), country=gsub("-","",country), country=gsub("Tanzania(UnitedRepublicof)","Tanzania",country), country=gsub("Gambia,The","Gambia",country))
pov <- pov_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "pov", values_drop_na = TRUE) %>%
  select(country, year, pov) %>% mutate(year=as.numeric(gsub("X","",year)), pov=as.numeric(pov), 
                                        country=gsub(" ","",country), country=gsub("-","",country), country=gsub("Tanzania(UnitedRepublicof)","Tanzania",country), country=gsub("Gambia,The","Gambia",country))
mort <- mort_raw %>% pivot_longer(cols = starts_with("X"), names_to = "year", values_to = "mort", values_drop_na = TRUE) %>%
  select(country, year, mort) %>% mutate(year=as.numeric(gsub("X","",year)), mort=as.numeric(mort), 
                                        country=gsub(" ","",country), country=gsub("-","",country), country=gsub("Tanzania(UnitedRepublicof)","Tanzania",country), country=gsub("Gambia,The","Gambia",country))




#Get rows for all years
years <- data.frame(year=1987:2020)
years <-expand_grid(years, data.frame(country=unique(gdp$country)))

gdp <- left_join(years, gdp, by=c("country","year")) %>% filter(!is.na(country), country!="")
gdi <- left_join(years, gdi, by=c("country","year")) %>% filter(!is.na(country), country!="") 
gii <- left_join(years, gii, by=c("country","year")) %>% filter(!is.na(country), country!="")
chi <- left_join(years, chi, by=c("country","year")) %>% filter(!is.na(country), country!="")
gini <- left_join(years, gini, by=c("country","year")) %>% filter(!is.na(country), country!="")
he <- left_join(years, he, by=c("country","year")) %>% filter(!is.na(country), country!="")
pov <- left_join(years, pov, by=c("country","year")) %>% filter(!is.na(country), country!="")
mort <- left_join(years, mort, by=c("country","year")) %>% filter(!is.na(country), country!="")


#drop countries with less than 2 NA
Nobs =2

gdp <- gdp %>% group_by(country) %>% mutate(non_NA =sum(!is.na(gdp))) %>% filter(non_NA>Nobs) %>% subset(., select = -c(non_NA))
gdi <- gdi %>% group_by(country) %>% mutate(non_NA =sum(!is.na(gdi))) %>% filter(non_NA>Nobs) %>% subset(., select = -c(non_NA))
gii <- gii %>% group_by(country) %>% mutate(non_NA =sum(!is.na(gii))) %>% filter(non_NA>Nobs) %>% subset(., select = -c(non_NA))
chi <- chi %>% group_by(country) %>% mutate(non_NA =sum(!is.na(chi))) %>% filter(non_NA>Nobs) %>% subset(., select = -c(non_NA))
gini <- gini %>% group_by(country) %>% mutate(non_NA =sum(!is.na(gini))) %>% filter(non_NA>Nobs) %>% subset(., select = -c(non_NA))
he <- he %>% group_by(country) %>% mutate(non_NA =sum(!is.na(he))) %>% filter(non_NA>Nobs) %>% subset(., select = -c(non_NA))
pov <- pov %>% group_by(country) %>% mutate(non_NA =sum(!is.na(pov))) %>% filter(non_NA>Nobs) %>% subset(., select = -c(non_NA))
mort <- mort %>% group_by(country) %>% mutate(non_NA =sum(!is.na(mort))) %>% filter(non_NA>Nobs) %>% subset(., select = -c(non_NA))

# # indicator for raw data
# gdp <- gdp %>% mutate(imputed_gdp = ifelse(is.na(gdp), "yes", "no"))
# gdi <- gdi %>% mutate(imputed_gdi = ifelse(is.na(gdi), "yes", "no"))
# gii <- gii %>% mutate(imputed_gii = ifelse(is.na(gii), "yes", "no"))
# chi <- chi %>% mutate(imputed_chi = ifelse(is.na(chi), "yes", "no"))
# gini <- gini %>% mutate(imputed_gini = ifelse(is.na(gini), "yes", "no"))
# he <- he %>% mutate(imputed_he = ifelse(is.na(he), "yes", "no"))
# pov <- pov %>% mutate(imputed_pov = ifelse(is.na(pov), "yes", "no"))
# mort <- mort %>% mutate(imputed_mort = ifelse(is.na(mort), "yes", "no"))



#Impute

ki_impute <- function(d, var){
  d$Intercept=1
  d$imputed = ifelse(is.na(d[[var]]), "yes", "no")
  varname <- paste(var, "imp" , sep="_")
  varname_imp <- paste("imputed", var , sep="_")
  
  #temp<- gii %>%   mice::complete("long", include = FALSE) %>%     group_by(.imp, gii) %>%     nest() %>%     mutate(lm_model = map(data, ~lm(fmla, data = .)))  %>%     group_split(gii) %>%      map(~pool(.$lm_model))
  d <- d %>%
    group_by(country) %>%
    #get first year imputed
    mutate(min_year=min(year[!is.na(!!(var))], na.rm=T),
           max_year=max(year[!is.na(!!(var))], na.rm=T)) %>%
    # Imputations with a grouping option (models are separately assessed for each group)
    do(mutate(., 
              temp_imp= fill_NA(
                x = .,
                model = "lm_pred",
                posit_y = var,
                posit_x = c("Intercept","year")
              ))) %>%
    mutate(temp_imp = ifelse(year>min_year & year<max_year & imputed=="yes",NA,temp_imp)) %>%
    mutate(temp_imp = approxExtrap(which(!is.na(temp_imp)), temp_imp[!is.na(temp_imp)],xout = 1:n(), rule=2)$y) %>% 
    rename(!!varname := temp_imp, !!varname_imp := imputed) %>%
    as.data.frame() %>% arrange(country, year)
    return(d)
}

gdp <- ki_impute(gdp, "gdp") 
gdi <- ki_impute(gdi, "gdi") 
gii <- ki_impute(gii, "gii") 
chi <- ki_impute(chi, "chi") 
gini <- ki_impute(gini, "gini") 
he <- ki_impute(he, "he") 
pov <- ki_impute(pov, "pov") 
mort <- ki_impute(mort, "mort") 


# 
# #linearly interpolate 
# gdp<-gdp %>% group_by(country) %>%
#   mutate(gdp = approxExtrap(which(!is.na(gdp)), gdp[!is.na(gdp)],xout = 1:n(), rule=2)$y) %>%
#   as.data.frame() %>% arrange(country, year)
# gdi<-gdi %>% group_by(country) %>%
#   mutate(gdi = approxExtrap(which(!is.na(gdi)), gdi[!is.na(gdi)],xout = 1:n(), rule=2)$y) %>%
#   as.data.frame() %>% arrange(country, year)
# gii<-gii %>% group_by(country) %>%
#   mutate(gii = approxExtrap(which(!is.na(gii)), gii[!is.na(gii)],xout = 1:n(), rule=2)$y) %>%
#   as.data.frame() %>% arrange(country, year)
# chi<-chi %>% group_by(country) %>% mutate(chi = approxExtrap(which(!is.na(chi)), chi[!is.na(chi)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)
# gini<-gini %>% group_by(country) %>% mutate(gini = approxExtrap(which(!is.na(gini)), gini[!is.na(gini)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)
# he<-he %>% group_by(country) %>% mutate(he = approxExtrap(which(!is.na(he)), he[!is.na(he)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)
# pov<-pov %>% group_by(country) %>% mutate(pov = approxExtrap(which(!is.na(pov)), pov[!is.na(pov)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)
# mort<-mort %>% group_by(country) %>% mutate(mort = approxExtrap(which(!is.na(mort)), mort[!is.na(mort)],xout = 1:n(), rule=2)$y) %>% as.data.frame() %>% arrange(country, year)

#merge indicators together
unique(ki_countries$country)
unique(gdp$country)


d <- left_join(ki_countries, gdp, by=c("country","year"))
d <- left_join(d, gdi, by=c("country","year"))
d <- left_join(d, gii, by=c("country","year"))
d <- left_join(d, chi, by=c("country","year"))
d <- left_join(d, gini, by=c("country","year"))
d <- left_join(d, he, by=c("country","year"))
d <- left_join(d, pov, by=c("country","year"))
d <- left_join(d, mort, by=c("country","year"))


#Change country format for merge
d <- d %>% rename(brthyr = year) %>% mutate(country=str_to_upper(country), 
                                            country=gsub("GUINEABISSAU","GUINEA-BISSAU",country),
                                            country=gsub("BURKINAFASO","BURKINA FASO",country),
                                            country=gsub("SOUTHAFRICA","SOUTH AFRICA",country))


unique(d$country)



# drop imputed values more than 5 years from last measurement
# combine input data
input_data <- bind_rows(gdp, gii, gdi, chi, gini, pov, mort, he)
meas_yr <- input_data %>% dplyr::select(c(country, year, imputed_gdp, imputed_gii, imputed_gdi,
                                 imputed_chi, imputed_gini, imputed_pov,imputed_he,
                                 imputed_mort)) %>% 
  pivot_longer(cols = c(imputed_gdp, imputed_gii, imputed_gdi,
                        imputed_chi, imputed_gini, imputed_pov,
                        imputed_mort, imputed_he), names_to = "variable", values_to = "imputed") %>% 
  filter(imputed=="no") %>% 
  dplyr::select(country, year, variable) %>% 
  mutate(country = toupper(country)) %>% 
  mutate(country = ifelse(country=="BURKINAFASO", "BURKINA FASO", country)) %>% 
  mutate(country = ifelse(country=="SOUTHAFRICA", "SOUTH AFRICA", country)) %>% 
  mutate(country = ifelse(country=="GUINEABISSAU", "GUINEA-BISSAU", country)) 
  

get_nearest_yr <- function(country_name, year_num, variable_name){
  yrs = meas_yr %>% dplyr::filter(country==country_name  & variable==variable_name) %>% 
    arrange(year) %>%  pull(year) %>% unique()
  
  if((country_name=="GUINEA-BISSAU"|country_name=="TANZANIA") &
     variable_name %in% c("imputed_gii", "imputed_gdi", "imputed_chi")){
    return(1000)
  }else{
    return(min(abs(year_num- yrs)))
  }
}

d$nearest_gdp = NA
d$nearest_gdi = NA
d$nearest_gii = NA
d$nearest_chi = NA
d$nearest_he = NA
d$nearest_gini = NA
d$nearest_mort = NA
d$nearest_pov = NA
for(i in 1:nrow(d)){
  d$nearest_gdp[i] = get_nearest_yr(country_name=d$country[i], year_num=d$brthyr[i], variable_name = "imputed_gdp")
  d$nearest_gdi[i] = get_nearest_yr(country_name=d$country[i], year_num=d$brthyr[i], variable_name = "imputed_gdi")
  d$nearest_gii[i] = get_nearest_yr(country_name=d$country[i], year_num=d$brthyr[i], variable_name = "imputed_gii")
  d$nearest_chi[i] = get_nearest_yr(country_name=d$country[i], year_num=d$brthyr[i], variable_name = "imputed_chi")
  d$nearest_he[i] = get_nearest_yr(country_name=d$country[i], year_num=d$brthyr[i], variable_name = "imputed_he")
  d$nearest_gini[i] = get_nearest_yr(country_name=d$country[i], year_num=d$brthyr[i], variable_name = "imputed_gini")
  d$nearest_mort[i] = get_nearest_yr(country_name=d$country[i], year_num=d$brthyr[i], variable_name = "imputed_mort")
  d$nearest_pov[i] = get_nearest_yr(country_name=d$country[i], year_num=d$brthyr[i], variable_name = "imputed_pov")
}

d <- d %>% mutate(
  gdp = ifelse(nearest_gdp > 5, NA, gdp_imp),
  gdi = ifelse(nearest_gdi > 5, NA, gdi_imp),
  gii = ifelse(nearest_gii > 5, NA, gii_imp),
  chi = ifelse(nearest_chi > 5, NA, chi_imp),
  he = ifelse(nearest_he > 5, NA, he_imp),
  mort = ifelse(nearest_mort > 5, NA, mort_imp),
  gini = ifelse(nearest_gini > 5, NA, gini_imp),
  pov = ifelse(nearest_pov > 5, NA, pov_imp)
)

#save
saveRDS(d, file=here("data/country metrics/combined_country_metrics.RDS"))
write.csv(d, file=here("data/country metrics/combined_country_metrics.csv"))
