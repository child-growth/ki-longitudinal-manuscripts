######################
#Ki DHS Analysis
#Spring 2019

# This script plots age by HAZ and WHZ for DHS data
######################
source(paste0(here::here(), "/0-config.R"))

#load data
haz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))
whz <- readRDS(file = (here::here("data", "clean-DHS-whz.rds")))

# make new new region variable 
haz$region <- rep(NA, nrow(haz))
haz <- haz %>% 
  mutate(region = case_when(country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" ~ "SEARO",
                            country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO", 
                            is.na(region) ~ "AFRO"))

whz$region <- rep(NA, nrow(whz))
whz <- whz %>% 
  mutate(region = case_when(country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" ~ "SEARO",
                            country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO", 
                            is.na(region) ~ "AFRO"))

#age-specific mean z-scores
country.haz <- haz %>% group_by(country) %>% summarize(haz_mn = mean(haz), haz_sd = sd(haz))
country.whz <- whz %>% group_by(country) %>% summarize(whz_mn = mean(whz), whz_sd = sd(whz))

#why is madagascar not in whz dataset??

#merge in mean z-scores estimates
haz <- merge(haz, country.haz, by="country")
whz <- merge(whz, country.whz, by="country")

#plots
p <- ggplot(haz,aes(y=haz_mn,x=agem, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 0.5) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  xlab("Child age, months")+
  ylab("Mean height-for-age Z-score") +
  ggtitle("") +
  theme(legend.position="right")

q <- ggplot(whz,aes(y=whz_mn,x=agem, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 0.5) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  xlab("Child age, months")+
  ylab("Mean weight-for-height Z-score") +
  ggtitle("") +
  theme(legend.position="right")


