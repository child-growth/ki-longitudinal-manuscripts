######################
# Ki DHS Analysis
# Spring 2019

# This script cleans data that
# was directly downloaded from DHS.
######################

source(paste0(here::here(), "/0-config.R"))

df <- readRDS(here("data/dhs_data_combined.rds"))

#-------------------------------------------
# Drop unnecessary variables and rename selected variables
#-------------------------------------------
# extra variables beginning with m or shhc are results of the stata lookfor function and
# can be ignored4
d <- df %>%
  rename(
    country = hv000,
    weight = hv005,
    cluster_no = hv001,
    psu = hv021,
    stratification = hv023
  ) %>%
  select("country", "weight", "dataset", "cluster_no", "psu", "stratification", 
         grep("hc", colnames(df))) %>%
  select(-contains("sh"))

d <- as.data.table(d)

d$region <- rep(NA, nrow(d))
d <- d %>%
  mutate(region = case_when(
    country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" | country == "AF7" | country == "KH6" | country == "VNT" ~ "South Asia",
    country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "Latin America",
    is.na(region) ~ "Africa"
  )) 

d <- d %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))

# recode country
d <- d %>%
  mutate(cntry_name = case_when(
    country == "AF7" ~ "Afghanistan",
    country == "AO7" ~ "Angola",
    country == "BD6" ~ "Bangladesh",
    country == "BF6" ~ "Burkina Faso",
    country == "BJ6" ~ "Benin",
    country == "BO6" ~ "Bolivia",
    country == "BR3" ~ "Brazil",
    country == "BU7" ~ "Burundi",
    country == "CD6" ~ "Congo Democratic Republic",
    country == "CF3" ~ "Central African Republic",
    country == "CG6" ~ "Congo",
    country == "CI6" ~ "Cote d'Ivoire",
    country == "CM6" ~ "Cameroon",
    country == "CO7" ~ "Colombia",
    country == "DR6" ~ "Dominican Republic",
    country == "EC" ~ "Ecuador",
    country == "ES" ~ "El Salvador",
    country == "ET7" ~ "Ethiopia",
    country == "GA6" ~ "Gabon",
    country == "GH6" ~ "Ghana",
    country == "GM6" ~ "Gambia",
    country == "GN6" ~ "Guinea",
    country == "GU6" ~ "Guatemala",
    country == "GY5" ~ "Guyana",
    country == "HN6" ~ "Honduras",
    country == "HT7" ~ "Haiti",
    country == "IA6" ~ "India",
    country == "ID6" ~ "Indonesia",
    country == "KE6" ~ "Kenya",
    country == "KH6" ~ "Cambodia",
    country == "KM6" ~ "Comoros",
    country == "LB6" ~ "Liberia",
    country == "LK" ~ "Sri Lanka",
    country == "LS6" ~ "Lesotho",
    country == "MD5" ~ "Madagascar",
    country == "ML6" ~ "Mali",
    country == "MM7" ~ "Myanmar",
    country == "MV7" ~ "Maldives",
    country == "MW7" ~ "Malawi",
    country == "MX" ~ "Mexico",
    country == "MZ6" ~ "Mozambique",
    country == "NC4" ~ "Nicaragua",
    country == "NG6" ~ "Nigeria",
    country == "NI6" ~ "Niger",
    country == "NM6" ~ "Namibia",
    country == "NP7" ~ "Nepal",
    country == "OS" ~ "Nigeria (Ondo State)",
    country == "PE6" ~ "Peru",
    country == "PH7" ~ "Philippines",
    country == "PK7" ~ "Pakistan",
    country == "PY2" ~ "Paraguay",
    country == "RW6" ~ "Rwanda",
    country == "SD" ~ "Sudan",
    country == "SL6" ~ "Sierra Leone",
    country == "SN7" ~ "Senegal",
    country == "ST5" ~ "Sao Tome and Princpe",
    country == "SZ5" ~ "Swaziland",
    country == "TD6" ~ "Chad",
    country == "TG6" ~ "Togo",
    country == "TH" ~ "Thailand",
    country == "TL7" ~ "Timor-Leste",
    country == "TT" ~ "Trinidad and Tobago",
    country == "TZ7" ~ "Tanzania",
    country == "UG7" ~ "Uganda",
    country == "VNT" ~ "Vietnam",
    country == "ZA7" ~ "South Africa",
    country == "ZM6" ~ "Zambia",
    country == "ZW7" ~ "Zimbabwe"
  ))
d$country <- NULL
names(d)[names(d) == "cntry_name"] <- "country"


# remove duplicates
nrow(d)
d <- d %>%
  rename(agem = hc1) %>%
  distinct()
nrow(d)

# Subsetting to relevant variables
year_vars <- c("hc19")
# age_vars <- c("hc1")
age_vars <- c("agem")
haz_vars <- colnames(df)[grep("hc70", colnames(df))]
waz_vars <- colnames(df)[grep("hc71", colnames(df))]
whz_vars <- colnames(df)[grep("hc72", colnames(df))]

d_haz_wide <- d %>% select(country, region, dataset, weight, cluster_no, psu, stratification, year_vars, age_vars, haz_vars)

d_waz_wide <- d %>% select(country, region, dataset, weight, cluster_no, psu, stratification, year_vars, age_vars, waz_vars)

d_whz_wide <- d %>% select(country, region, dataset, weight, cluster_no, psu, stratification, year_vars, age_vars, whz_vars) # 58 countries


#-------------------------------------------
# Reshape from wide to long
#-------------------------------------------
# reshape all the z-score measures to long
# filter to non-missing obs
dlz <- d_haz_wide %>%
  select("agem", "country", "region",  "dataset", "weight", "cluster_no", "psu", "stratification", grep("hc70", colnames(d_haz_wide))) %>%
  rename(zscore = hc70) %>%
  mutate(
    measure = "HAZ"
  ) %>%
  select("agem", "country", "region", "dataset", "weight", "cluster_no", "psu", "stratification", "measure", "zscore") %>%
  filter(!is.na(zscore))

dwz <- d_waz_wide %>%
  select("agem", "country", "region", "dataset", "weight", "cluster_no", "psu", "stratification", grep("hc71", colnames(d_waz_wide))) %>%
  rename(zscore = hc71) %>%
  mutate(
    measure = "WAZ"
  ) %>%
  select("agem", "country", "region", "dataset", "weight", "cluster_no", "psu", "stratification", "measure", "zscore") %>%
  filter(!is.na(zscore))

dwhz <- d_whz_wide %>%
  select("agem", "country", "region", "dataset", "weight", "cluster_no", "psu", "stratification", grep("hc72", colnames(d_whz_wide))) %>%
  rename(zscore = hc72) %>%
  mutate(
    measure = "WHZ"
  ) %>%
  select("agem", "country", "region", "dataset", "weight", "cluster_no", "psu", "stratification", "measure", "zscore") %>%
  filter(!is.na(zscore))

# Age columns start with "b". Data for to 20 children were recorded per woman.
# height for age columns start with "hc70". Data for up to 6 children under age 5 were collected
# weight for height columns start with "hc72". Data for up to 6 children under age 5 were #collected.


#-------------------------------------------
# Clean long format data
#-------------------------------------------
# fix zscore variables
d_haz_long <- dlz %>%
  mutate(zscore = zscore / 100)

d_waz_long <- dwz %>%
  mutate(zscore = zscore / 100)

d_whz_long <- dwhz %>%
  mutate(zscore = zscore / 100)

# exclude z-scores outside WHO plausible values
# HAZ[-6,6] and WHZ [-5,5]
d_haz_long$zscore[d_haz_long$zscore <= -6 | d_haz_long$zscore >= 6] <- NA
summary(d_haz_long$zscore)

d_waz_long$zscore[d_waz_long$zscore <= -6 | d_waz_long$zscore >= 5] <- NA
summary(d_waz_long$zscore)

d_whz_long$zscore[d_whz_long$zscore <= -5 | d_whz_long$zscore >= 5] <- NA
summary(d_whz_long$zscore)

# restrict to children ages 0-24 months
d_haz_long <- d_haz_long %>% filter(agem <= 24)
d_waz_long <- d_waz_long %>% filter(agem <= 24)
d_whz_long <- d_whz_long %>% filter(agem <= 24)

# drop rows with missing values
d_haz_long <- d_haz_long %>% filter(!is.na(agem) & !is.na(zscore)) #49 countries
d_waz_long <- d_waz_long %>% filter(!is.na(agem) & !is.na(zscore)) #48 countries
d_whz_long <- d_whz_long %>% filter(!is.na(agem) & !is.na(zscore)) #48 countries

# indicator for whether country is in ghap datasets
ghap_countries = c("Bangladesh", "Burkina Faso", "Brazil", "Gambia",
                   "Guatemala", "India", "Kenya", "Malawi", "Nepal", 
                   "Peru", "Philippines", "Pakistan", "Tanzania",
                   "South Africa", "Zimbabwe")

d_haz_long = d_haz_long %>%
  mutate(inghap = ifelse(country %in% ghap_countries, 1, 0 ))
d_waz_long = d_waz_long %>%
  mutate(inghap = ifelse(country %in% ghap_countries, 1, 0 ))
d_whz_long = d_whz_long %>%
  mutate(inghap = ifelse(country %in% ghap_countries, 1, 0 ))

# Missing is indicated with 9999 or 99999
# Outside acceptable range is indicated with 9998 or 99998
# Inconsistent is indicated with 9997
# Other special responses are coded 9996


# save cleaned data as RDS
saveRDS(d_haz_long, clean_DHS_haz_path)
saveRDS(d_waz_long, clean_DHS_waz_path)
saveRDS(d_whz_long, clean_DHS_whz_path)

