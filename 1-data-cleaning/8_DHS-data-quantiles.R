#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#---------------------------------------
# load cleaned DHS anthro data
# created by 7_DHS-data-cleaning.R
#---------------------------------------
dhaz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))
dwaz <- readRDS(file = (here::here("data", "clean-DHS-waz.rds")))
dwhz <- readRDS(file = (here::here("data", "clean-DHS-whz.rds")))

#---------------------------------------
# combine all of the DHS data
# into a single dataframe
#---------------------------------------
dhsz <- bind_rows(dhaz, dwaz, dwhz) %>%
  mutate(
    measure = factor(measure, levels = c("HAZ", "WAZ", "WHZ"), labels = c("LAZ", "WAZ", "WHZ"))
  )



#---------------------------------------
# make a WHO region variable
# flag countries that overlap with the
# ki cohorts
#
# Note: Philippines (Western Pacific)
# and Pakistan (Middle East) are classified
# into SEARO
#---------------------------------------
# recode country
dhsz <- dhsz %>%
  mutate(country = case_when(
    country == "Afghanistan"~ "AF7",
    country == "Angola"~ "AO7",
    country == "Bangladesh"~ "BD6",
    country == "Burkina Faso"~ "BF6",
    country == "Benin"~ "BJ6",
    country == "Bolivia"~ "BO6",
    country == "Brazil"~ "BR3",
    country == "Burundi"~ "BU7",
    country == "Congo Democratic Republic"~ "CD6",
    country == "Central African Republic"~ "CF3",
    country == "Congo"~ "CG6",
    country == "Cote d'Ivoire"~ "CI6",
    country == "Cameroon"~ "CM6",
    country == "Colombia"~ "CO7",
    country == "Dominican Republic"~ "DR6",
    country == "Ecuador"~ "EC",
    country == "El Salvador"~ "ES",
    country == "Ethiopia"~ "ET7",
    country == "Gabon"~ "GA6",
    country == "Ghana"~ "GH6",
    country == "Gambia"~ "GM6",
    country == "Guinea"~ "GN6",
    country == "Guatemala"~ "GU6",
    country == "Guyana"~ "GY5",
    country == "Honduras"~ "HN6",
    country == "Haiti"~ "HT7",
    country == "India"~ "IA6",
    country == "Indonesia"~ "ID6",
    country == "Kenya"~ "KE6",
    country == "Cambodia"~ "KH6",
    country == "Comoros"~ "KM6",
    country == "Liberia"~ "LB6",
    country == "Sri Lanka"~ "LK",
    country == "Lesotho"~ "LS6",
    country == "Madagascar"~ "MD5",
    country == "Mali"~ "ML6",
    country == "Myanmar"~ "MM7",
    country == "Maldives"~ "MV7",
    country == "Malawi"~ "MW7",
    country == "Mexico"~ "MX",
    country == "Mozambique"~ "MZ6",
    country == "Nicaragua"~ "NC4",
    country == "Nigeria"~ "NG6",
    country == "Niger"~ "NI6",
    country == "Namibia"~ "NM6",
    country == "Nepal"~ "NP7",
    country == "Nigeria (Ondo State)"~ "OS",
    country == "Peru"~ "PE6",
    country == "Philippines"~ "PH7",
    country == "Pakistan"~ "PK7",
    country == "Paraguay"~ "PY2",
    country == "Rwanda"~ "RW6",
    country == "Sudan"~ "SD",
    country == "Sierra Leone"~ "SL6",
    country == "Senegal"~ "SN7",
    country == "Sao Tome and Princpe"~ "ST5",
    country == "Swaziland"~ "SZ5",
    country == "Chad"~ "TD6",
    country == "Togo"~ "TG6",
    country == "Thailand"~ "TH",
    country == "Timor-Leste"~ "TL7",
    country == "Trinidad and Tobago"~ "TT",
    country == "Tanzania"~ "TZ7",
    country == "Uganda"~ "UG7",
    country == "Vietnam"~ "VNT",
    country == "South Africa"~ "ZA7",
    country == "Zambia"~ "ZM6",
    country == "Zimbabwe"~ "ZW7"
  ))

dhsz$region <- rep(NA, nrow(dhsz))
dhsz <- dhsz %>%
  mutate(region = case_when(
    country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" | country == "AF7" | country == "KH6" | country == "VNT" ~ "SEARO",
    country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO",
    is.na(region) ~ "AFRO"
  )) %>%
  mutate(inghap = ifelse(
    country == "BD6" | country == "BF6" | country == "BR3" | country == "GM6" | country == "GU6" | country == "IA6" | country == "KE6" | country == "MW7" | country == "NP7" | country == "PE6" | country == "PH7" | country == "PK7" | country == "TZ7" | country == "ZA7" | country == "ZW7", 1, 0
  ))

d.overall <- dhsz
d.overall$region <- "Overall"
dhsz<-rbind(dhsz, d.overall)

dhsz <- dhsz %>%
  mutate(region = factor(region, levels = c("Overall", "AFRO", "SEARO", "PAHO")))
table(dhsz$region)


#---------------------------------------------------------
# Estimate quantiles
#---------------------------------------------------------


#Function to estimate density by region and Z-score
dhs.quantiles <- function(data, Region, Measure){
  d <- data %>% filter(region==Region, measure==Measure) %>% as.data.frame()
  
  dquant <- quantile(d$zscore, probs = seq(0, 1, 0.01), na.rm = FALSE, names = TRUE, type = 7)
  
  dat <- data.frame(quantile=as.numeric(gsub("%","",names(dquant))),zscore=as.numeric(dquant), region=rep(Region,length(dquant)), measure=rep(Measure, length(dquant)))
  return(dat)
}

d <- dhsz
d$measure <- as.character(d$measure)
d$measure[d$measure=="LAZ"] <- "haz"
d$measure[d$measure=="WHZ"] <- "whz"
d$measure[d$measure=="WAZ"] <- "waz"

haz1 <- dhs.quantiles(d, Region="SEARO", Measure="haz")
haz2 <- dhs.quantiles(d, Region="PAHO", Measure="haz")
haz3 <- dhs.quantiles(d, Region="AFRO", Measure="haz")
haz4 <- dhs.quantiles(d, Region="Overall", Measure="haz")

df <- d %>% filter(measure=="whz", zscore > (-5) & zscore < 5)
whz1 <- dhs.quantiles(df, Region="SEARO", Measure="whz")
whz2 <- dhs.quantiles(df, Region="PAHO", Measure="whz")
whz3 <- dhs.quantiles(df, Region="AFRO", Measure="whz")
whz4 <- dhs.quantiles(df, Region="Overall", Measure="whz")

df <- d %>% filter(measure=="waz", zscore > (-5) & zscore < 5)
waz1 <- dhs.quantiles(df, Region="SEARO", Measure="waz")
waz2 <- dhs.quantiles(df, Region="PAHO", Measure="waz")
waz3 <- dhs.quantiles(df, Region="AFRO", Measure="waz")
waz4 <- dhs.quantiles(df, Region="Overall", Measure="waz")

quantdf.dhs<- rbind(haz1, haz2, haz3, haz4, whz1, whz2, whz3, whz4, waz1, waz2, waz3, waz4)


#Save quantiles
saveRDS(quantdf.dhs, dhs_quantiles_path)



