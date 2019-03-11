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

df <- df %>% rename(country = v000, 
                   year = v007) %>%
  # Wendy please confirm it is ok to drop this: 
  select(-s308b8)

# Wendy, I suggest you change this to use
# column names instead of numbers. If you reran
# the data processing and the row or column numbers
# changed, this would no longer be reproducible. 
# d[, c(4:23,56:59)] <- NULL

# Here is my suggested way of selecting relevant
# variables: 
# Wendy: please double check the age variables -- what
# are the variables that start with b19? 
age_vars = colnames(df)[grep("b8", colnames(df))]
haz_vars = colnames(df)[grep("hw70", colnames(df))]
whz_vars = colnames(df)[grep("hw72", colnames(df))]

d_haz_wide = df %>% select(caseid, country, dataset, year, 
                  age_vars, haz_vars)

d_whz_wide = df %>% select(caseid, country, dataset, year, 
                  age_vars, whz_vars)

#-------------------------------------------
# Reshape from wide to long 
# Keep one column for case id 
# Convert age in months, WHZ, HAZ from wide to long 
#-------------------------------------------

# Wendy: an easier to read way of doing this is as follows
# I'm also not sure why you're assigning all of these to NAs

# d$hw70_7 <- d$hw70_8 <- d$hw70_9 <- d$hw70_10 <- d$hw70_11 <- d$hw70_12 <- d$hw70_13 <- d$hw70_14 <- d$hw70_15 <- d$hw70_16 <- d$hw70_17 <- d$hw70_18 <- d$hw70_19 <- d$hw70_20 <- NA

# d$hw72_7 <- d$hw72_8 <- d$hw72_9 <- d$hw72_10 <- d$hw72_11 <- d$hw72_12 <- d$hw72_13 <- d$hw72_14 <- d$hw72_15 <- d$hw72_16 <- d$hw72_17 <- d$hw72_18 <- d$hw72_19 <- d$hw72_20 <- NA

# same comment -- hard coding is not as reproducible
# d = d[, c(1:29, 36, 39, 38, 37, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 30:35, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50)]

# d.long <- reshape(d, varying=list(c(4:23), c(24:43), c(44:63)), direction="long", idvar="caseid", sep="_")


# Age columns start with "b". Data for to 20 children were recorded per woman. 
# height for age columns start with "hw70". Data for up to 6 children under age 5 were collected.
# weight for height columns start with "hw72". Data for up to 6 children under age 5 were #collected. 


#-------------------------------------------
# Clean long format data
#-------------------------------------------

# Missing is indicated with 9999 or 99999
# Outside acceptable range is indicated with 9998 or 99998
# Inconsistent is indicated with 9997
# Other special responses are coded 9996


# Try to figure out what the non sensical year codes are
# Add country names
# Figure out what sb19 s308b8 s402ab19 are - can ignore, result of stata lookfor function to #identify relevant variables
# Figure out codes for 9996 and 9997



