##########################################
# ki longitudinal manuscripts
# wasting analysis

# create cohorts of children who 
# recovered at different ages 
##########################################

#-----------------------------------------
# Process data for wasting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


load("U:/ucb-superlearner/data/wasting_data.RData")


d = d %>% ungroup() %>% mutate(studyid = as.character(studyid))

##########################################
# Define indicators of wasting at each time point
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


# identify maximum age measurement
# within each age category
ds = d %>% 
  group_by(studyid, country, subjid, agecat) %>%
  arrange(studyid, country, subjid, agecat) %>%
  mutate(maxage = max(agedays)) %>%
  
  # get whz within 1 month of maximum
  # measurement within each age range
  mutate(minwhz = min(whz)) %>%
  
  # create indicator for whether the child 
  # was wasted in PREVIOUS age category
  group_by(studyid, country, subjid) %>%
  mutate(born_wasted = ifelse(agecat=="Birth" & minwhz < (-2), 1, 0), born_wasted=max(born_wasted)) %>%
  filter(agecat!="Birth") %>%
  mutate(minwhz_prev = lag(minwhz)) %>%
  mutate(cum_minwhz = cummin(minwhz), minwhz_prev = ifelse(agecat=="0-3 months", 0, minwhz_prev)) %>%
  mutate(prev_wasted = ifelse(minwhz >= -2 & minwhz_prev < -2, 1, 0)) %>%
  mutate(minwhz_prev = ifelse(is.na(minwhz_prev) & agecat=="Birth", 0, minwhz_prev)) %>%
  mutate(inc_wasted = ifelse(minwhz < -2 & minwhz_prev >= -2, 1, 0)) 

table(ds$agecat, ds$inc_wasted)
table(ds$agecat, ds$prev_wasted)
table(ds$agecat, ds$born_wasted)
table(ds$agecat, ds$inc_wasted, ds$born_wasted)


saveRDS(ds, file=paste0(res_dir, "wast_rec_cohort.RDS"))

