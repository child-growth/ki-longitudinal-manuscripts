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

d <- df %>% rename(country = v000, 
                   year = v007) %>%
  select("caseid", "country", "year", "dataset", grep("hw", colnames(df))) %>%
  select(-contains("sh"))


# Subsetting to relevant variables
age_vars = c("hw1_1", "hw1_2", "hw1_3", "hw1_4", "hw1_5", "hw1_6")
haz_vars = colnames(df)[grep("hw70", colnames(df))]
whz_vars = colnames(df)[grep("hw72", colnames(df))]

d_haz_wide = d %>% select(caseid, country, dataset, year, 
                  age_vars, haz_vars)

d_whz_wide = d %>% select(caseid, country, dataset, year, 
                  age_vars, whz_vars)


#-------------------------------------------
# Reshape from wide to long 
# Keep one column for case id 
# Convert age in months, WHZ, HAZ from wide to long 
#-------------------------------------------
# making a small dataset with a subset to 
# test out code below. once code is right, switch to
# real dataset

# Wendy: please try replacing temp with d_haz_wide 
# to double check everything, then remove temp and
# delete this comment
temp = d_haz_wide[29470:29476,]

d_haz_long <- reshape(temp,
                      varying = c(age_vars, haz_vars),
                      direction = "long",
                      idvar = c("caseid", "country", "year", "dataset"),
                      sep = "_",
                      new.row.names = NULL
)

# Wendy: please update the line below to match my 
# changes above then delete this comment 
d_whz_long <- reshape(d_haz_wide, varying=c(4:16), direction="long", idvar="caseid", sep="_", timevar="order")

# Age columns start with "b". Data for to 20 children were recorded per woman. 
# height for age columns start with "hw70". Data for up to 6 children under age 5 were collected.
# weight for height columns start with "hw72". Data for up to 6 children under age 5 were #collected. 


#-------------------------------------------
# Clean long format data
#-------------------------------------------
# rename variables
d_haz_long = d_haz_long %>% 
  rename(childid = time,
         agem = hw1, 
         haz = hw70) %>%
  mutate(haz = haz / 100)

# drop rows with missing values 
d_haz_long = d_haz_long %>% filter(!is.na(agem) & !is.na(haz))

# Missing is indicated with 9999 or 99999
# Outside acceptable range is indicated with 9998 or 99998
# Inconsistent is indicated with 9997
# Other special responses are coded 9996


# Try to figure out what the non sensical year codes are
# Add country names
# Figure out what sb19 s308b8 s402ab19 are - can ignore, result of stata lookfor function to #identify relevant variables
# Figure out codes for 9996 and 9997



