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



#merge in GHAP data
load(paste0(here::here(),"/results/desc_data_cleaned.Rdata"))

d = d %>% 
  mutate(region = ifelse(region=="Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))


############################# HAZ plots ###############################
df <- d %>% filter(
  disease == "Stunting" &
    measure == "Mean LAZ" &
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)

df <- df %>% filter(region != "Overall")

df <- droplevels(df)

df <- df %>% 
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", "0", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) 

names(df)[names(df)=="agecat"] <- "agem"

df <- df %>% mutate(region=case_when(region=="Africa" ~ "AFRO",
                                     region=="Latin America" ~ "PAHO",
                                     region=="South Asia" ~ "SEARO"))

#merge together DHS and GHAP data
combine.haz <- merge(haz, df, by=c("agem","region"))

p <- ggplot(combine.haz,aes(x=agem)) +
  stat_smooth(aes(y=est,fill=region, color=region, linetype="GHAP"), se=F, span = 0.5) +
  stat_smooth(aes(y=haz_mn,fill=region, color=region, linetype="DHS"), se=F, span = 0.5) +
  facet_wrap(~region)+
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("mean Length-for-age Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  theme(legend.position="left") + 
  scale_linetype_manual("Data",values=c("DHS"=2,"GHAP"=1))

ggsave(p, file="figures/stunting/fig_stunt_mean_LAZ_region_DHS.png", width=10, height=8)

############################ WHZ plots ###################################
df <- d %>% filter(
  disease == "Wasting" &
    measure == "Mean WLZ" &
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)

df <- df %>% filter(region != "Overall")

df <- droplevels(df)

df <- df %>% 
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", "0", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) 

names(df)[names(df)=="agecat"] <- "agem"

df <- df %>% mutate(region=case_when(region=="Africa" ~ "AFRO",
                                     region=="Latin America" ~ "PAHO",
                                     region=="South Asia" ~ "SEARO"))

#merge together DHS and GHAP data
combine.whz <- merge(whz, df, by=c("agem","region"))


q <- ggplot(combine.whz,aes(x=agem)) +
  stat_smooth(aes(y=est,fill=region, color=region, linetype="GHAP"), se=F, span = 0.5) +
  stat_smooth(aes(y=whz_mn,fill=region, color=region, linetype="DHS"), se=F, span = 0.5) +
  facet_wrap(~region)+
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("mean weight-for-length Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  theme(legend.position="none") + 
  scale_linetype_manual("Data",values=c("DHS"=2,"GHAP"=1))

ggsave(q, file="figures/wasting/fig_wasting_mean_WLZ_region_DHS.png", width=10, height=8)

