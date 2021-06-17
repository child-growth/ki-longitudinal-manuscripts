


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
library(ggvenn)

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds")) %>% filter(measurefreq=="monthly", agedays < 730) %>%
  mutate(
    waz = ifelse(waz < -6 | waz > 5, NA, waz),
    whz = ifelse(abs(whz) > 6, NA, whz),
    haz = ifelse(abs(haz) > 5, NA, haz)
  )

#Need to address misssing obs?
d <- d %>% filter(!is.na(waz), !is.na(haz), !is.na(whz))

d <- d %>%
  mutate(
    uwt= ifelse(waz < -2, T, F),
    wast= ifelse(whz < -2, T, F),
    stunt= ifelse(haz < -2, T, F),
    mod_uwt= ifelse(waz < -2 & waz > (-3), T, F),
    mod_wast= ifelse(whz < -2 & whz > (-3), T, F),
    mod_stunt= ifelse(haz < -2 & haz > (-3), T, F),
    sev_uwt= ifelse(waz < -3, T, F),
    sev_wast= ifelse(whz < -3, T, F),
    sev_stunt= ifelse(haz < -3, T, F)
    )


d <- d %>%
  mutate(
    Wasting = factor(cut(whz, breaks=c(-6,-3,-2,6), labels=c("Sev. wasted", "Mod. wasted",  "Not wasted"), include.lowest = T, right=F), levels=c("Not wasted", "Mod. wasted", "Sev. wasted")),
    Stunting = factor(cut(haz, breaks=c(-6,-3,-2,6), labels=c("Sev. stunted", "Mod. stunted",  "Not stunted"), include.lowest = T, right=F), levels=c("Not stunted", "Mod. stunted", "Sev. stunted")),
    Underweight = factor(cut(waz, breaks=c(-6,-3,-2,6), labels=c("Sev. underweight", "Mod. underweight",  "Not underweight"), include.lowest = T, right=F), levels=c("Not underweight", "Mod. underweight", "Sev. underweight")),
  )
table(d$Wasting)




tab <- xtabs(~Wasting+Stunting+Underweight, data=d)
ftable(tab) 
prop_tab <- ftable(round(prop.table(tab)*100,2)) 
format_tab <- stats:::format.ftable(prop_tab, quote = FALSE)

knitr::kable(format_tab)



#ggplot(d, aes(x=haz, y=waz))  + geom_point(alpha=0.1) + geom_smooth(se=F)
ggplot(d, aes(x=whz, y=waz)) + geom_point(alpha=0.1) + geom_smooth(se=F) 





#Compare to DHS
df <- readRDS(paste0(BV_dir,"/data/dhs_data_combined.rds")) 
df <- df %>%
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

# recode country
df <- df %>%
  mutate(country = case_when(
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

# remove duplicates
nrow(df)
df <- df %>%
  rename(agem = hc1) %>%
  distinct()
nrow(df)
table(df$country)

#subset to ki countries
ki_countries <- str_to_title(unique(d$country))
df <- df %>% filter(country %in% ki_countries)
table(df$country)

df <- df %>% rename(haz=hc70, waz=hc71, whz=hc72) %>% filter(!is.na(haz)|!is.na(waz)|!is.na(whz))
df <- df %>%
  mutate(
    haz=haz/ 100,
    waz=waz/ 100,
    whz=whz/ 100,
    waz = ifelse(waz < -6 | waz > 5, NA, waz),
    whz = ifelse(abs(whz) > 6, NA, whz),
    haz = ifelse(abs(haz) > 5, NA, haz))
df <- df %>% filter(agem < 25)


#Need to transform dataset
df <- df %>%
  mutate(
    uwt= ifelse(waz < -2, T, F),
    wast= ifelse(whz < -2, T, F),
    stunt= ifelse(haz < -2, T, F),
    mod_uwt= ifelse(waz < -2 & waz > (-3), T, F),
    mod_wast= ifelse(whz < -2 & whz > (-3), T, F),
    mod_stunt= ifelse(haz < -2 & haz > (-3), T, F),
    sev_uwt= ifelse(waz < -3, T, F),
    sev_wast= ifelse(whz < -3, T, F),
    sev_stunt= ifelse(haz < -3, T, F)
  )


df <- df %>%
  mutate(
    Wasting = factor(cut(whz, breaks=c(-6,-3,-2,6), labels=c("Sev. wasted", "Mod. wasted",  "Not wasted"), include.lowest = T, right=F), levels=c("Not wasted", "Mod. wasted", "Sev. wasted")),
    Stunting = factor(cut(haz, breaks=c(-6,-3,-2,6), labels=c("Sev. stunted", "Mod. stunted",  "Not stunted"), include.lowest = T, right=F), levels=c("Not stunted", "Mod. stunted", "Sev. stunted")),
    Underweight = factor(cut(waz, breaks=c(-6,-3,-2,6), labels=c("Sev. underweight", "Mod. underweight",  "Not underweight"), include.lowest = T, right=F), levels=c("Not underweight", "Mod. underweight", "Sev. underweight")),
  )
table(df$Wasting)




tab_DHS <- xtabs(~Wasting+Stunting+Underweight, data=df)
ftable(tab_DHS)
prop_tab_DHS <- ftable(round(prop.table(tab_DHS)*100,2))
format_tab_DHS <- stats:::format.ftable(prop_tab_DHS, quote = FALSE)

knitr::kable(format_tab_DHS)


