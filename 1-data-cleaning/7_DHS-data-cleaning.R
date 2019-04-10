######################
#Ki DHS Analysis
#Spring 2019

# This script cleans data that 
# was directly downloaded from DHS.
######################

source(paste0(here::here(), "/0-config.R"))


df <- read_rds(paste0(data_dir, "dhs-combined/", "dhs_data_combined.rds"))
# df1 <- read_rds(paste0(data_dir, "AOIR71DT/AOIR71FL.DTA"))

#-------------------------------------------
# Drop unnecessary variables and rename selected variables
#-------------------------------------------
#extra variables beginning with m or shhw are results of the stata lookfor function and
#can be ignored4
d <- df %>% rename(country = v000,
                   weight = v005,
                   cluster_no = v001,
                   psu = v021,
                   stratification = v023) %>%
  select("caseid", "country", "weight", "dataset", "cluster_no", "psu", "stratification", grep("hw", colnames(df))) %>%
  select(-contains("sh"))

d <- as.data.table(test)

#recode country
d <- d %>%
  mutate(cntry_name=case_when(country=="AF7"~ "Afghanistan",
                              country=="AO7"~ "Angola",
                              country=="BD6"~ "Bangladesh",
                              country=="BF6"~ "Burkina Faso",
                              country=="BJ6"~ "Benin",
                              country=="BO6"~ "Bolivia",
                              country=="BR3"~ "Brazil",
                              country=="BU7"~ "Burundi",
                              country=="CD6"~ "Congo Democratic Republic",
                              country=="CF3"~ "Central African Republic",
                              country=="CG6"~ "Congo",
                              country=="CI6"~ "Cote d'Ivoire",
                              country=="CM6"~ "Cameroon",
                              country=="CO7"~ "Colombia",
                              country=="DR6"~ "Dominican Republic",
                              country=="EC"~ "Ecuador",
                              country=="ES"~ "El Salvador",
                              country=="ET7"~ "Ethiopia",
                              country=="GA6"~ "Gabon",
                              country=="GH6"~ "Ghana",
                              country=="GM6"~ "Gambia",
                              country=="GN6"~ "Guinea",
                              country=="GU6"~ "Guatemala",
                              country=="GY5"~ "Guyana",
                              country=="HN6"~ "Honduras",
                              country=="HT7"~ "Haiti",
                              country=="IA6"~ "India",
                              country=="ID6"~ "Indonesia",
                              country=="KE6"~ "Kenya",
                              country=="KH6"~ "Cambodia",
                              country=="KM6"~ "Comoros",
                              country=="LB6"~ "Liberia",
                              country=="LK"~ "Sri Lanka",
                              country=="LS6"~ "Lesotho",
                              country=="MD5"~ "Madagascar",
                              country=="ML6"~ "Mali",
                              country=="MM7"~ "Myanmar",
                              country=="MV7"~ "Maldives",
                              country=="MW7"~ "Malawi",
                              country=="MX"~ "Mexico",
                              country=="MZ6"~ "Mozambique",
                              country=="NC4"~ "Nicaragua",
                              country=="NG6"~ "Nigeria",
                              country=="NI6"~ "Niger",
                              country=="NM6"~ "Namibia",
                              country=="NP7"~ "Nepal",
                              country=="OS"~ "Nigeria (Ondo State)",
                              country=="PE6"~ "Peru",
                              country=="PH7"~ "Philippines",
                              country=="PK7"~ "Pakistan",
                              country=="PY2"~ "Paraguay",
                              country=="RW6"~ "Rwanda",
                              country=="SD"~ "Sudan",
                              country=="SL6"~ "Sierra Leone",
                              country=="SN7"~ "Senegal",
                              country=="ST5"~ "Sao Tome and Princpe",
                              country=="SZ5"~ "Swaziland",
                              country=="TD6"~ "Chad",
                              country=="TG6"~ "Togo",
                              country=="TH"~ "Thailand",
                              country=="TL7"~ "Timor-Leste",
                              country=="TT"~ "Trinidad and Tobago",
                              country=="TZ7"~ "Tanzania",
                              country=="UG7"~ "Uganda",
                              country=="VNT"~ "Vermont",
                              country=="ZA7"~ "South Africa",
                              country=="ZM6"~ "Zambia", 
                              country=="ZW7"~ "Zimbabwe"))
d$country <- NULL
names(d)[names(dt)=="cntry_name"] <- "country"


#check for duplicates
table(duplicated(d))
duplicates <- d[duplicated(d),]

#remove duplicates
d <- d %>% distinct()

# Subsetting to relevant variables
year_vars = c("hw19_1", "hw19_2", "hw19_3", "hw19_4", "hw19_5", "hw19_6")
age_vars = c("hw1_1", "hw1_2", "hw1_3", "hw1_4", "hw1_5", "hw1_6")
haz_vars = colnames(df)[grep("hw70", colnames(df))]
waz_vars = colnames(df)[grep("hw71", colnames(df))]
whz_vars = colnames(df)[grep("hw72", colnames(df))]

d_haz_wide = d %>% select(caseid, country, dataset, weight, cluster_no, psu, stratification, year_vars, age_vars, haz_vars)

d_waz_wide = d %>% select(caseid, country, dataset, weight, cluster_no, psu, stratification,  year_vars, age_vars, waz_vars)

d_whz_wide = d %>% select(caseid, country, dataset, weight, cluster_no, psu, stratification, year_vars, age_vars, whz_vars) 

#68 countries

#-------------------------------------------
# Reshape from wide to long 
#-------------------------------------------
# reshape all the z-score measures to long
# filter to non-missing obs
dlz <- d_haz_wide %>%
  select("caseid" , "country" , "dataset", "weight", "cluster_no", "psu", "stratification", grep("hw70", colnames(d_haz_wide))) %>%
  gather("child" , "zscore" ,-"caseid",-"country",-"dataset", -"weight", -"cluster_no", -"psu", -"stratification") %>%
  mutate(childid=str_sub(child,start=6,end=6),
         measure="HAZ") %>%
  select("caseid", "country", "dataset", "weight", "cluster_no", "psu", "stratification", "childid", "measure", "zscore") %>%
  filter(!is.na(zscore))

# reshape the age measures to long
dla <- d_haz_wide %>%
  select("caseid",  "country" , "dataset","weight", "cluster_no", "psu", "stratification", grep("hw1_", colnames(d_haz_wide))) %>%
  gather("child", "agem", -"caseid", -"country", -"dataset", -"weight", -"cluster_no", -"psu", -"stratification") %>%
  mutate(childid=str_sub(child,start=5,end=5)) %>%
  select("caseid", "country", "dataset","weight", "cluster_no", "psu", "stratification", "childid", "agem") %>%
  filter(!is.na(agem))

# merge the ages onto the z-scores
d_haz_long <- left_join(dlz, dla, by=c("caseid","country","dataset","weight", "cluster_no", "psu", "stratification", "childid"))


dwz <- d_waz_wide %>%
  select("caseid" , "country" , "dataset", "weight", "cluster_no", "psu", "stratification", grep("hw71", colnames(d_waz_wide))) %>%
  gather("child" , "zscore" ,-"caseid",-"country",-"dataset", -"weight", -"cluster_no", -"psu", -"stratification") %>%
  mutate(childid=str_sub(child,start=6,end=6),
         measure="WAZ") %>%
  select("caseid", "country", "dataset", "weight", "cluster_no", "psu", "stratification", "childid", "measure", "zscore") %>%
  filter(!is.na(zscore))

# reshape the age measures to long
dwa <- d_waz_wide %>%
  select("caseid",  "country" , "dataset","weight", "cluster_no", "psu", "stratification", grep("hw1_", colnames(d_waz_wide))) %>%
  gather("child", "agem", -"caseid", -"country", -"dataset", -"weight", -"cluster_no", -"psu", -"stratification") %>%
  mutate(childid=str_sub(child,start=5,end=5)) %>%
  select("caseid", "country", "dataset","weight", "cluster_no", "psu", "stratification", "childid", "agem") %>%
  filter(!is.na(agem))

# merge the ages onto the z-scores
d_waz_long <- left_join(dwz, dwa, by=c("caseid","country","dataset","weight", "cluster_no", "psu", "stratification", "childid"))


dwhz <- d_whz_wide %>%
  select("caseid" , "country" , "dataset", "weight", "cluster_no", "psu", "stratification", grep("hw72", colnames(d_whz_wide))) %>%
  gather("child" , "zscore" ,-"caseid",-"country",-"dataset", -"weight", -"cluster_no", -"psu", -"stratification") %>%
  mutate(childid=str_sub(child,start=6,end=6),
         measure="WHZ") %>%
  select("caseid", "country", "dataset", "weight", "cluster_no", "psu", "stratification", "childid", "measure", "zscore") %>%
  filter(!is.na(zscore))

# reshape the age measures to long
dwha <- d_whz_wide %>%
  select("caseid",  "country" , "dataset","weight", "cluster_no", "psu", "stratification", grep("hw1_", colnames(d_whz_wide))) %>%
  gather("child", "agem", -"caseid", -"country", -"dataset", -"weight", -"cluster_no", -"psu", -"stratification") %>%
  mutate(childid=str_sub(child,start=5,end=5)) %>%
  select("caseid", "country", "dataset","weight", "cluster_no", "psu", "stratification", "childid", "agem") %>%
  filter(!is.na(agem))

# merge the ages onto the z-scores
d_whz_long <- left_join(dwhz, dwha, by=c("caseid","country","dataset","weight", "cluster_no", "psu", "stratification", "childid")) #after reshape 50 countries

# Age columns start with "b". Data for to 20 children were recorded per woman. 
# height for age columns start with "hw70". Data for up to 6 children under age 5 were collected
# weight for height columns start with "hw72". Data for up to 6 children under age 5 were #collected. 


#-------------------------------------------
# Clean long format data
#-------------------------------------------
# fix zscore variables
d_haz_long = d_haz_long %>% 
  mutate(zscore = zscore / 100)

d_waz_long = d_waz_long %>% 
  mutate(zscore = zscore / 100)

d_whz_long = d_whz_long %>%
  mutate(zscore = zscore / 100)

#exclude z-scores outside WHO plausible values
#HAZ[-6,6] and WHZ [-5,5]
d_haz_long$zscore[d_haz_long$zscore <= -6 | d_haz_long$zscore >= 6] <- NA
summary(d_haz_long$zscore)

d_waz_long$zscore[d_waz_long$zscore <= -6 | d_waz_long$zscore >= 5] <- NA
summary(d_waz_long$zscore)

d_whz_long$zscore[d_whz_long$zscore <= -5 | d_whz_long$zscore >= 5] <- NA
summary(d_whz_long$zscore)

#restrict to children ages 0-24 months
d_haz_long <- d_haz_long %>% filter(agem <= 24)
d_waz_long <- d_waz_long %>% filter(agem <= 24)
d_whz_long <- d_whz_long %>% filter(agem <= 24)

# drop rows with missing values 
d_haz_long = d_haz_long %>% filter(!is.na(agem) & !is.na(zscore)) #51 countries!
d_waz_long = d_waz_long %>% filter(!is.na(agem) & !is.na(zscore)) 
d_whz_long = d_whz_long %>% filter(!is.na(agem) & !is.na(zscore))



# Missing is indicated with 9999 or 99999
# Outside acceptable range is indicated with 9998 or 99998
# Inconsistent is indicated with 9997
# Other special responses are coded 9996


#save cleaned data as RDS
saveRDS(d_haz_long, file = (here::here("data", "clean-DHS-haz.rds")))
saveRDS(d_waz_long, file = (here::here("data", "clean-DHS-waz.rds")))
saveRDS(d_whz_long, file = (here::here("data", "clean-DHS-whz.rds")))
