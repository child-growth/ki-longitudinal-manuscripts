######################
#Ki DHS Analysis
#Spring 2019

# This script plots age by HAZ and WHZ for DHS data
######################
source(paste0(here::here(), "/0-config.R"))

#load data
haz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))
waz <- readRDS(file = (here::here("data", "clean-DHS-waz.rds")))
whz <- readRDS(file = (here::here("data", "clean-DHS-whz.rds")))

# make new new region variable 
haz$region <- rep(NA, nrow(haz))
haz <- haz %>% 
  mutate(region = case_when(country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" | country == "AF7" | country == "KH6" | country == "VNT" ~ "SEARO",
                            country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO", 
                            is.na(region) ~ "AFRO"))

waz$region <- rep(NA, nrow(waz))
waz <- waz %>% 
  mutate(region = case_when(country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" | country == "AF7" | country == "KH6" | country == "VNT" ~ "SEARO",
                            country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO", 
                            is.na(region) ~ "AFRO"))

whz$region <- rep(NA, nrow(whz))
whz <- whz %>% 
  mutate(region = case_when(country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" ~ "SEARO",
                            country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO", 
                            is.na(region) ~ "AFRO"))

#age-specific mean z-scores
#country.haz <- haz %>% group_by(country) %>% summarize(haz_mn = mean(haz), haz_sd = sd(haz))
#country.whz <- whz %>% group_by(country) %>% summarize(whz_mn = mean(whz), whz_sd = sd(whz))

#why is madagascar not in whz dataset??

#merge in mean z-scores estimates
#haz <- merge(haz, country.haz, by="country")
#whz <- merge(whz, country.whz, by="country")



#merge in GHAP data
load(paste0(here::here(),"/results/desc_data_cleaned.Rdata"))

d = d %>% 
  mutate(region = ifelse(region=="Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))


########################################## HAZ plots #######################################
ghap.haz <- d %>% filter(
  disease == "Stunting" &
    measure == "Mean LAZ" &
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)

ghap.haz <- ghap.haz %>% filter(region != "Overall")

ghap.haz <- droplevels(ghap.haz)

ghap.haz <- ghap.haz %>% 
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

names(ghap.haz)[names(ghap.haz)=="agecat"] <- "agem"

ghap.haz <- ghap.haz %>% mutate(region=case_when(region=="Africa" ~ "AFRO",
                                     region=="Latin America" ~ "PAHO",
                                     region=="South Asia" ~ "SEARO"))

#merge together DHS and GHAP data
#combine.haz <- merge(haz, df, by=c("agem","region"))

#create DHS overlap data - HAZ
haz.overlap <- haz %>% 
  filter(country == "BD6" | country == "BF6" | country == "BR3" | country == "GM6" | country == "GU6" | country == "IA6" | country == "KE6" | country == "MW7" | country == "NP7" | country == "PE6" | country == "PH7" | country == "PK7" | country == "TZ7" | country == "ZA7" | country == "ZW7")


ghap.whz <- d %>% filter(
  disease == "Wasting" &
    measure == "Mean WLZ" &
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)

ghap.whz <- ghap.whz %>% filter(region != "Overall")

ghap.whz <- droplevels(ghap.whz)

ghap.whz <- ghap.whz%>% 
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

names(ghap.whz)[names(ghap.whz)=="agecat"] <- "agem"

ghap.whz <- ghap.whz %>% mutate(region=case_when(region=="Africa" ~ "AFRO",
                                                 region=="Latin America" ~ "PAHO",
                                                 region=="South Asia" ~ "SEARO"))

#merge together DHS and GHAP data
#combine.whz <- merge(whz, df, by=c("agem","region"))

#create DHS overlap data - WHZ
whz.overlap <- whz %>% 
  filter(country == "BD6" | country == "BF6" | country == "BR3" | country == "GM6" | country == "GU6" | country == "IA6" | country == "KE6" | country == "MW7" | country == "NP7" | country == "PE6" | country == "PH7" | country == "PK7" | country == "TZ7" | country == "ZA7" | country == "ZW7")

###############################################  LOESS  #################################################
# LOESS regressions - 3 regions x 3 z-scores = 9 separate regressions. doubled since there is overall 
#estimates for the region and subregion subset to countries in ghap

#HAZ loess regressions
afro.haz <- haz %>% filter(region =="AFRO")
loess.afro.haz = loess(haz ~ agem, data=afro.haz, span=0.5)
afro.haz$predhaz = predict(loess.afro.haz)

paho.haz <- haz %>% filter(region =="PAHO")
loess.paho.haz = loess(haz ~ agem, data=paho.haz, span=0.5)
paho.haz$predhaz = predict(loess.paho.haz)

searo.haz <- haz %>% filter(region == "SEARO")
loess.searo.haz = loess(haz ~ agem, data=searo.haz, span=0.5)
searo.haz$predhaz = predict(loess.searo.haz)

pred.haz <- bind_rows(afro.haz, paho.haz, searo.haz)

afro.haz.over <- haz.overlap %>% filter(region =="AFRO")
loess.afro.haz.over = loess(haz ~ agem, data=afro.haz.over, span=0.5)
afro.haz.over$predhaz = predict(loess.afro.haz.over)

paho.haz.over <- haz.overlap %>% filter(region =="PAHO")
loess.paho.haz.over = loess(haz ~ agem, data=paho.haz.over, span=0.5)
paho.haz.over$predhaz = predict(loess.paho.haz.over)

searo.haz.over <- haz.overlap %>% filter(region == "SEARO")
loess.searo.haz.over = loess(haz ~ agem, data=searo.haz.over, span=0.5)
searo.haz.over$predhaz = predict(loess.searo.haz.over)

pred.haz.over <- bind_rows(afro.haz.over, paho.haz.over, searo.haz.over)

#WHZ loess regressions
afro.whz <- whz %>% filter(region =="AFRO")
loess.afro.whz = loess(whz ~ agem, data=afro.whz, span=0.5)
afro.whz$predwhz = predict(loess.afro.whz)

paho.whz <- whz %>% filter(region =="PAHO")
loess.paho.whz = loess(whz ~ agem, data=paho.whz, span=0.5)
paho.whz$predwhz = predict(loess.paho.whz)

searo.whz <- whz %>% filter(region == "SEARO")
loess.searo.whz = loess(whz ~ agem, data=searo.whz, span=0.5)
searo.whz$predwhz = predict(loess.searo.whz)

pred.whz <- bind_rows(afro.whz, paho.whz, searo.whz)

afro.whz.over <- whz.overlap %>% filter(region =="AFRO")
loess.afro.whz.over = loess(whz ~ agem, data=afro.whz.over, span=0.5)
afro.whz.over$predwhz = predict(loess.afro.whz.over)

paho.whz.over <- whz.overlap %>% filter(region =="PAHO")
loess.paho.whz.over = loess(whz ~ agem, data=paho.whz.over, span=0.5)
paho.whz.over$predwhz = predict(loess.paho.whz.over)

searo.whz.over <- whz.overlap %>% filter(region == "SEARO")
loess.searo.whz.over = loess(whz ~ agem, data=searo.whz.over, span=0.5)
searo.whz.over$predwhz = predict(loess.searo.whz.over)

pred.whz.over <- bind_rows(afro.whz.over, paho.whz.over, searo.whz.over)

p <- ggplot(pred.haz, aes(color=region)) +
  geom_line(data=pred.haz, aes(y = predhaz, x=agem, linetype="solid"), size = 0.5) +
  geom_line(data=ghap.haz, aes(y=est, x=agem, group=region, linetype="dotted"), size = 0.5)+
  geom_line(data=pred.haz.over, aes(y=predhaz, x=agem, group=region, linetype="longdash"), size=0.5)+
  facet_grid(~region)+ 
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  xlab("Child age, months")+
  ylab("mean Length-for-age Z-score")+
  #ggtitle("") + 
  theme(strip.text = element_text(margin=margin(t=5))) 
  theme(legend.position="left") +
  scale_linetype_discrete(names="Region",values=c("DHS overlap"=3,"DHS"=2,"GHAP cohorts"=1))
  
ggsave(p, file="figures/stunting/fig_stunt_mean_LAZ_region_DHS.png", width=10, height=8)

q <- ggplot(pred.whz, aes(color=region)) +
  geom_line(data=pred.whz, aes(y = predwhz, x=agem, linetype="solid"), size = 0.5) +
  geom_line(data=ghap.whz, aes(y=est, x=agem, group=region, linetype="dotted"), size = 0.5)+
  geom_line(data=pred.whz.over, aes(y=predwhz, x=agem, group=region, linetype="longdash"), size=0.5)+
  facet_grid(~region)+ 
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  xlab("Child age, months")+
  ylab("mean weight-for-length Z-score")+
  #ggtitle("") + 
  theme(strip.text = element_text(margin=margin(t=5))) 
theme(legend.position="left") +
  scale_linetype_discrete("Region",values=c("DHS overlap"=3,"DHS"=2,"GHAP cohorts"=1))

ggsave(q, file="figures/wasting/fig_wasting_mean_WLZ_region_DHS.png", width=10, height=8)


#### HAZ GGPLOT
#p <- ggplot(combine.haz,aes(x=agem)) +
  #stat_smooth(aes(y=est,fill=region, color=region, linetype="GHAP cohorts"), se=F, span = 0.5) +
  #stat_smooth(aes(y=haz_mn,fill=region, color=region, linetype="DHS"), se=F, span = 0.5) +
  #facet_wrap(~region)+
  #geom_hline(yintercept = 0, colour = "black") +
  #scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  #scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  #scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                   # name = 'Region') +
  #scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                     #name = 'Region') +
  #xlab("Child age, months")+
  #ylab("mean Length-for-age Z-score") +
  #ggtitle("") +
  #theme(strip.text = element_text(margin=margin(t=5))) +
  #theme(legend.position="left") + 
  #scale_linetype_manual("Data",values=c("DHS"=2,"GHAP cohorts"=1))

#ggsave(p, file="figures/stunting/fig_stunt_mean_LAZ_region_DHS.png", width=10, height=8)


### WHZ GGPLOT
#q <- ggplot(combine.whz,aes(x=agem)) +
  #stat_smooth(aes(y=est,fill=region, color=region, linetype="GHAP cohorts"), se=F, span = 0.5) +
  #stat_smooth(aes(y=whz_mn,fill=region, color=region, linetype="DHS"), se=F, span = 0.5) +
  #facet_wrap(~region)+
  #geom_hline(yintercept = 0, colour = "black") +
  #scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  #scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  #scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                   # name = 'Region') +
  #scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                   #  name = 'Region') +
 # xlab("Child age, months")+
  #ylab("mean weight-for-length Z-score") +
  #ggtitle("") +
  #theme(strip.text = element_text(margin=margin(t=5))) +
  #theme(legend.position="none") + 
  #scale_linetype_manual("Data",values=c("DHS"=2,"GHAP cohorts"=1))

# ggsave(q, file="figures/wasting/fig_wasting_mean_WLZ_region_DHS.png", width=10, height=8)


#################### Density plots ######################
#library(ggthemes)
#library(scales)
set.seed(123)

z3 <- rnorm(215345,mean=-1.5,sd=1.2) #Andrew -add KI data


tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau10 <- tableau_color_pal("Tableau 10")
pcols <- tableau10[c(1,2,5)]


r <- ggplot(haz, aes(x=haz, group=region)) +
  geom_density() +
  geom_density(data=haz.overlap, aes(x=haz, group=region),col=pcols[3],lty=2)+
  #geom_density(data=z3, aes(z3),col=pcols[3],lty=3)+
  facet_grid(~region) +
  labs(x="length-for-age z-score")+
  theme_minimal()

ggsave(r, file="figures/stunting/fig_stunting_mean_LAZ_DHS_density.png", width=10, height=8)


z3 <- rnorm(213174,mean=-1.5,sd=1.2) #add KI data


tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau10 <- tableau_color_pal("Tableau 10")
pcols <- tableau10[c(1,2,5)]

s <- ggplot(whz, aes(x=whz, group=region)) +
  geom_density() +
  geom_density(data=whz.overlap, aes(x=whz, group=region),col=pcols[3],lty=2)+
  #geom_density(data=z3, aes(z3),col=pcols[3],lty=3)+
  facet_grid(~region) +
  labs(x="weight-for-length z-score")+
  theme_minimal()

ggsave(s, file="figures/wasting/fig_wasting_mean_WLZ_DHS_density.png", width=10, height=8)

