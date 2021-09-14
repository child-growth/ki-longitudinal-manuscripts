######################
#Ki DHS Analysis
#Spring 2019
######################

#DHScode = country code used by DHS
#recode = DHS code for children, women, men, or houshold
#year = year
#ISO3 = ISO3 country code
#lon = longitude of cluster
#lat = latitude of cluster
#alt = elevation of cluster
#v001 = Cluster number
#v002 = Household number
#v005 = sample weight
#v022, v023, v024 = stratification (including administrative unit and rural/urban) 
#v012 = Age
#v025 = Type of place of residence, urban or rural
#v102 = Type of place of residence, urban or rural
#v113 = Source of drinking water
#v115 = Time to drinking water 
#v116 = Toilet facilities
#v119 = Has electricity?
#v137 = number of children under 5 (de jure)
#v149 = Highest level of educational attainment
#v459 = Children sleeping under mosquito net
#b4   = Sex of child
#h11  = Had diarrhea recently 
#hw1  = age in months
#hw2  = Weight in kg (1 decimal, 999 missing)
#hw3  = HWeight in cm (1 decimal, 9999 missing)
#hw4  = Height/Age percentile 
#hw5  = Height/Age z score; standard deviation
#hw7  = Weight/Age percentile 
#hw10 = Weight/Height percentile
#hw11 = Weight/Height standard deviation                1
#hw53 = Hemoglobin level in g/dl with 1 implied decimal
#hw70 = Height for age standard deviation (according to WHO)
#hw72 = Weight for height standard deviations (according to WHO)


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

dhs_children_individuals <- read_csv("/data/KI/UCB-SuperLearner/Manuscript analysis data/Other data/DHS/dhs_children_individuals.csv")
cluster <- read_csv("/data/KI/UCB-SuperLearner/Manuscript analysis data/Other data/DHS/dhs_children_cluster.csv")

#subset to countries in latin america, sub-saharan africa and south asia
DHS <- dhs_children_individuals %>%
  filter(DHScode != "AZ" & DHScode !="BJ" & DHScode != "JO" & DHScode != "KK" & 
           DHScode != "KY" & DHScode != "MB" & DHScode != "TR" & DHScode != "UA" & 
           DHScode != "UZ" & DHScode != "YE" & DHScode != "TH" & DHScode != "VN" & 
           DHScode != "ID" & DHScode != "KH")


#subset to most recent year for each country
DHS <- DHS %>% group_by(DHScode) %>% mutate(maxyear=max(year)) %>% filter(year==maxyear)
DHS %>% distinct(DHScode, year)

# make new new region variable 
DHS$region <- rep(NA, nrow(DHS))
DHS <- DHS %>% 
  mutate(region = case_when(DHScode == "BD" | DHScode == "IA" | DHScode == "LK" | 
                              DHScode == "MV" | DHScode == "NP" | DHScode == "PK" 
                            ~ "South Asia",
                            DHScode == "BO" | DHScode == "BR" | DHScode == "DR" | 
                              DHScode == "EC" | DHScode == "GU" | DHScode == "HN" | 
                              DHScode == "HT" | DHScode == "MX" | DHScode == "NC" | 
                              DHScode == "PE" | DHScode == "PH" | DHScode == "PY" ~ "Latin America", 
                            is.na(region) ~ "Sub Saharan Africa")) 

# hw1, hw2, hw3 are age (in months), weight (in kg), and height (in cm)
d <- DHS %>% #subset(., select=c(DHScode, region, year, b4, hw1, hw3, hw2)) %>%
  rename(sex=b4, age=hw1, weight=hw2, height=hw3) %>%
  filter(age <= 24) %>% #Drop children over two
  mutate(age=round(age*30.4167)) #Convert age to days for Z-score calculation

#Get most recent survey year
dim(d)
d <- d %>% group_by(DHScode) %>% mutate(lastyear=max(year)) %>% filter(year==lastyear)
dim(d)

#sex must be "Male" or "Female"
table(d$sex)
d$sex[d$sex=="female"] <- "Female"
d$sex[d$sex=="male"] <- "Male"

#Replace missing weight and height
summary(d$height)
summary(d$weight)
d$height[d$height>2000 | d$height<400] <- NA
d$weight[d$weight>900 | d$weight<10] <- NA
summary(d$height)
summary(d$weight)
d$haz <- who_htcm2zscore(d$age, d$height/10, sex = d$sex)
d$haz[d$haz < -6 | d$haz > 6] <- NA
summary(d$haz)

d$whz <- who_value2zscore(
  x=d$height/10,
  y=d$weight/10,
  x_var = "lencm",
  y_var = "wtkg",
  sex = d$sex)
d$whz[d$whz < -5 | d$whz > 5] <- NA
summary(d$whz)  
  
d$waz <- who_wtkg2zscore(d$age, d$weight/10, sex = d$sex)
d$waz[d$waz < -6 | d$waz > 5] <- NA
summary(d$waz)

#summarize mean and SD by region
region <- d %>% group_by(region) %>% summarize(haz_mn=mean(haz, na.rm=T), haz_sd=sd(haz, na.rm=T), whz_mn=mean(whz, na.rm=T), whz_sd=sd(whz, na.rm=T))
region
country <- d %>% group_by(DHScode) %>% summarize(haz_mn=mean(haz, na.rm=T), haz_sd=sd(haz, na.rm=T), whz_mn=mean(whz, na.rm=T), whz_sd=sd(whz, na.rm=T))
country

#create region_subset variable that is just the regions for countries we have cohort data from
d$region_subset <- rep(NA, nrow(d))
d <- d %>% 
  mutate(region_subset = case_when (DHScode=="BD" | DHScode=="IA" | DHScode=="NP" |
                                      DHScode=="PK" | DHScode=="PH" ~ "South Asia", 
                                    DHScode=="BR" | DHScode=="GU" | DHScode=="PE" ~ "Latin America",
                                    DHScode=="BF" | DHScode=="KE" | DHScode=="MW" | DHScode=="ZA" |
                                      DHScode=="TZ" | DHScode=="ZW" ~ "Sub-Saharan Africa"))

#Save just Brazil for integration with main DHS workflow
br <- d %>% filter(DHScode=="BR")
head(br)

 

#DHScode = country code used by DHS
#v002 = Household number
#v022, v023, v024 = stratification (including administrative unit and rural/urban) 
#v012 = Age
#hw1  = age in months
#hw2  = Weight in kg (1 decimal, 999 missing)
#hw3  = HWeight in cm (1 decimal, 9999 missing)
#hw4  = Height/Age percentile 
#hw5  = Height/Age z score; standard deviation
#hw53 = Hemoglobin level in g/dl with 1 implied decimal
#hw70 = Height for age standard deviation (according to WHO)
#hw72 = Weight for height standard deviations (according to WHO)

br <- br %>%
  mutate(country = "Brazil") %>%
  select(-c(weight,height)) %>%
  rename(
    weight = v005,
    cluster_no = v001,
    #psu = v021,
    HAZ=haz,
    WAZ=waz,
    WHZ=whz,
    stratification = v023
  ) %>%
  mutate(agem=round(age/30.4167), inghap=1, region="Latin America", psu=NA, stratification=NA) %>%
  select("agem", "country", "region",
         "weight", "cluster_no", "psu", "stratification",
          "HAZ","WAZ","WHZ","inghap")
head(br)

#transform to long
br <- br %>% gather(HAZ:WHZ, key = measure, value = zscore)

saveRDS(br, paste0(dhs_res_dir,"brazil_dhs.RDS"))

# #code for plots
# p <- ggplot(data=d,aes(x=whz,group=agecat,color=agecat,fill=agecat)) +
#   facet_wrap(~agecat,ncol=1) +
#   geom_density(aes(y=..density..),color=NA,alpha=0.7)+
#   geom_vline(aes(xintercept= -2), size=2) +
#   scale_x_continuous(limits = c(-5,5), breaks = c(-4:4)) +
#   scale_fill_manual(values=rep(pcols[4],10)) +
#   scale_color_manual(values=rep(pcols[4],10))  +
#   labs(x="WLZ",y="Density") +
#   theme_minimal(base_size=16) +
#   theme(legend.position = "none") +
#   ggtitle("WLZ distribution by child age")


# ################################# DHS #############################
# install.packages("ipumsr")
# library(ipumsr)
# ddi <- read_ipums_ddi("idhs_00001.xml")
# data <- read_ipums_micro(ddi)
# 
# #if either weight or height of child is missing then hw70 and hw72 are set to missing code
# #9999 or 99999. If either the height or weight is outside of the acceptable range for the 
# #calculation of these measures, then hw70 and hw72 are set to code 9998 or 99998
# 
# #create HAZ variable and exclude <-6 or >6
# data <- data %>% mutate(HAZ=HW70/100)
# summary(data$HAZ)
# data$HAZ[data$HAZ < -6 | data$HAZ > 6] <- NA
# 
# #create WHZ variable and exclude <-6 or >6
# data <- data %>% mutate(WHZ=HW72/100)
# summary(data$WHZ)
# data$WHZ[data$WHZ < -5 | data$WHZ > 5] <- NA
# 
# 
# install.packages("haven")
# library(haven)
# dta <- read_dta("/Users/wjilek/Documents/HBGDKi/DHS\ data/AOIR71DT/AOIR71FL.DTA", convert.factors = FALSE)
