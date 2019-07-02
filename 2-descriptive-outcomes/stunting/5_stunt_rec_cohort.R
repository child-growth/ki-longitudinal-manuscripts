##########################################
# ki longitudinal manuscripts
# stunting analysis

# create cohorts of children who 
# recovered at different ages 
##########################################

#-----------------------------------------
# Process data for stunting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

# since this will include recovery, 
# subsetting to monthly cohorts
d <- d %>% filter(measurefreq=="monthly")

d = d %>% ungroup() %>% mutate(studyid = as.character(studyid))

##########################################
# Define indicators of stunting at each time point
##########################################

# define age windows
d = d %>% 
  mutate(agecat = case_when(
    agedays==1 ~ "Birth",
    agedays>1 & agedays<=3*30.4167 ~ "0-3 months",
    agedays>3*30.4167 & agedays<=6*30.4167 ~ "3-6 months",
    agedays>6*30.4167 & agedays<=9*30.4167 ~ "6-9 months",
    agedays>9*30.4167 & agedays<=12*30.4167 ~ "9-12 months",
    agedays>12*30.4167 & agedays<=15*30.4167 ~ "12-15 months",
    agedays>15*30.4167 & agedays<=18*30.4167 ~"15-18 months",
    agedays>18*30.4167 & agedays<=21*30.4167 ~ "18-21 months",
    agedays>21*30.4167& agedays<=24*30.4167 ~ "21-24 months",
    TRUE ~ ""
  )) %>%
  mutate(agecat=factor(agecat,levels=c("Birth","0-3 months","3-6 months","6-9 months",
                                       "9-12 months","12-15 months","15-18 months",
                                       "18-21 months","21-24 months")))

# check age categories
d %>%
  group_by(agecat) %>%
  summarise(n=sum(!is.na(agedays)),
            min=min(agedays/30.4167),
            mean=mean(agedays/30.4167),
            max=max(agedays/30.4167))

# drop measurements with ages over 24 months
d = d %>% filter(!is.na(agecat)) 


# identify children who have recovered 
ds = d %>% 
  group_by(studyid, country, subjid, agecat) %>%
  arrange(studyid, country, subjid, agecat) %>%
  mutate(maxage = max(agedays)) %>%
  
  # get minimum haz in this age range
  mutate(minhaz = min(haz)) %>%
  
  # create indicator for whether the child 
  # was stunted in PREVIOUS age category
  # but is no longer stunted
  group_by(studyid, country, subjid) %>%
  mutate(minhaz_prev = lag(minhaz)) %>%
  
  mutate(cum_minhaz = cummin(minhaz)) %>%
  mutate(prev_stunted = ifelse(minhaz >= -2 & cum_minhaz < -2, 1, 0)) %>%
  mutate(prev_stunted = ifelse(is.na(minhaz_prev) & 
                                 agecat=="Birth", 0, prev_stunted ))

saveRDS(ds, file=paste0(res_dir, "stunt_rec_cohort.RDS"))

