######################
#Ki DHS Analysis
#Spring 2019

# This script cleans data that 
# was directly downloaded from DHS.
######################

source(paste0(here::here(), "/0-config.R"))


df <- read_rds(paste0(data_dir, "dhs_data_combined.rds"))
df1 <- read_rds(paste0(data_dir, "AOIR71DT/AOIR71FL.DTA"))

#-------------------------------------------
# Rename selected variables
#-------------------------------------------
d <- df %>% rename(country = v000, 
                   year = v007)

#-------------------------------------------
# Reshape from wide to long 
# Keep one column for case id 
# Convert age in months, WHZ, HAZ from wide to long 
#-------------------------------------------

# Age columns start with "b"
# height for age columns start with "hw70"
# weight for height columns start with "hw72"

#-------------------------------------------
# Clean long format data
#-------------------------------------------

# Missing is indicated with 9999 or 99999
# Outside acceptable range is indicated with 9998 or 99998
# What is 9996?
# What is 9997?


# Try to figure out what the non sensical year codes are
# Add country names
# Figure out what sb19 s308b8 s402ab19 are
# Figure out codes for 9996 and 9997



