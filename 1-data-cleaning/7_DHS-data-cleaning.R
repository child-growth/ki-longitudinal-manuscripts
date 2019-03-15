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
#can be ignored
d <- df %>% rename(country = v000) %>%
  select("caseid", "country", "dataset", grep("hw", colnames(df))) %>%
  select(-contains("sh"))

#check for duplicates
table(duplicated(d))
duplicates <- d[duplicated(d),]

#remove duplicates
d <- d %>% distinct()

# Subsetting to relevant variables
year_vars = c("hw19_1", "hw19_2", "hw19_3", "hw19_4", "hw19_5", "hw19_6")
age_vars = c("hw1_1", "hw1_2", "hw1_3", "hw1_4", "hw1_5", "hw1_6")
haz_vars = colnames(df)[grep("hw70", colnames(df))]
whz_vars = colnames(df)[grep("hw72", colnames(df))]

d_haz_wide = d %>% select(caseid, country, dataset, year_vars, 
                  age_vars, haz_vars)

d_whz_wide = d %>% select(caseid, country, dataset, year_vars, 
                  age_vars, whz_vars) #68 countries

#-------------------------------------------
# Reshape from wide to long 
# Keep one column for case id 
# Convert age in months, WHZ, HAZ from wide to long 
#-------------------------------------------
haz.temp1 = d_haz_wide[1:500000,]
haz.temp2 = d_haz_wide[500001:1000000,]
haz.temp3 = d_haz_wide[1000001:1586661,]


tic()
d_haz_long1 <- reshape(haz.temp1,
                       varying = c(year_vars, age_vars, haz_vars),
                       direction = "long",
                       idvar = c("caseid", "country", "dataset"),
                       sep = "_",
                       new.row.names = NULL
)
toc()

tic()
d_haz_long2 <- reshape(haz.temp2,
                       varying = c(year_vars, age_vars, haz_vars),
                       direction = "long",
                       idvar = c("caseid", "country", "dataset"),
                       sep = "_",
                       new.row.names = NULL
)
toc()

tic()
d_haz_long3 <- reshape(haz.temp3,
                       varying = c(year_vars, age_vars, haz_vars),
                       direction = "long",
                       idvar = c("caseid", "country", "dataset"),
                       sep = "_",
                       new.row.names = NULL
)
toc()

d_haz_long <- bind_rows(d_haz_long1, d_haz_long2, d_haz_long3)

whz.temp1 = d_whz_wide[1:500000,]
whz.temp2 = d_whz_wide[500001:1000000,]
whz.temp3 = d_whz_wide[1000001:1586661,]

d_whz_long1 <- reshape(whz.temp1,
                       varying = c(year_vars, age_vars, whz_vars),
                       direction = "long",
                       idvar = c("caseid", "country", "dataset"),
                       sep = "_",
                       new.row.names = NULL
)

d_whz_long2 <- reshape(whz.temp2,
                       varying = c(year_vars, age_vars, whz_vars),
                       direction = "long",
                       idvar = c("caseid", "country", "dataset"),
                       sep = "_",
                       new.row.names = NULL
)

d_whz_long3 <- reshape(whz.temp3,
                       varying = c(year_vars, age_vars, whz_vars),
                       direction = "long",
                       idvar = c("caseid", "country", "dataset"),
                       sep = "_",
                       new.row.names = NULL
)

d_whz_long <- bind_rows(d_whz_long1, d_whz_long2, d_whz_long3) #after reshape 64 countries

# Age columns start with "b". Data for to 20 children were recorded per woman. 
# height for age columns start with "hw70". Data for up to 6 children under age 5 were collected
# weight for height columns start with "hw72". Data for up to 6 children under age 5 were #collected. 


#-------------------------------------------
# Clean long format data
#-------------------------------------------
# rename variables
d_haz_long = d_haz_long %>% 
  rename(childid = time,
         year = hw19,
         agem = hw1, 
         haz = hw70) %>%
  mutate(haz = haz / 100)

d_whz_long = d_whz_long %>%
  rename(childid = time,
         year = hw19,
         agem = hw1, 
         whz = hw72) %>%
  mutate(whz = whz / 100)

#exclude z-scores outside WHO plausible values
#HAZ[-6,6] and WHZ [-5,5]
d_haz_long$haz[d_haz_long$haz < -6 | d_haz_long$haz > 6] <- NA
summary(d_haz_long$haz)

d_whz_long$whz[d_whz_long$whz < -5 | d_whz_long$whz > 5] <- NA
summary(d_whz_long$whz)

# drop rows with missing values 
#confim OK to drop NAs for year
d_haz_long = d_haz_long %>% filter(!is.na(agem) & !is.na(haz) & !is.na(year)) #drops to 47 countries!
d_whz_long = d_whz_long %>% filter(!is.na(agem) & !is.na(whz) & !is.na(year))

#restrict to children ages 0-24 months
d_haz_long <- d_haz_long %>% filter(agem <= 24)
d_whz_long <- d_whz_long %>% filter(agem <= 24)

# Missing is indicated with 9999 or 99999
# Outside acceptable range is indicated with 9998 or 99998
# Inconsistent is indicated with 9997
# Other special responses are coded 9996


#save cleaned data as RDS
saveRDS(d_haz_long, file = (here::here("data", "clean-DHS-haz.rds")))
saveRDS(d_whz_long, file = (here::here("data", "clean-DHS-whz.rds")))
