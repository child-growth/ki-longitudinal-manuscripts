######################
#Ki DHS Analysis
#Spring 2019

# This script plots age by HAZ and WHZ for DHS data
######################

#restrict to children ages 0-24 months
d_haz_long <- d_haz_long %>% filter(agem <= 24)
d_whz_long <- d_whz_long %>% filter(agem <= 24)

#exclude z-scores outside WHO plausible values
#HAZ[-6,6] and WHZ [-5,5]
d_haz_long$haz[d_haz_long$haz < -6 | d_haz_long$haz > 6] <- NA
summary(d_haz_long$haz)

d_whz_long$whz[d_whz_long$whz < -5 | d_whz_long$whz > 5] <- NA
summary(d_whz_long$whz)

# make new new region variable 
d_haz_long$region <- rep(NA, nrow(d_haz_long))
d_haz_long <- d_haz_long %>% 
  mutate(region = case_when(country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" ~ "SEARO",
country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO", 
                            is.na(region) ~ "AFRO"))