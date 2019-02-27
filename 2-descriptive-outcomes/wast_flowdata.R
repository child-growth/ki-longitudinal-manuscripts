#-----------------------------------------
# Process data for wasting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


load("U:/Data/Wasting/wasting_data.RData")

d <- d %>% filter(measurefreq=="monthly")


##########################################
# Define indicators of wasting at each time point
##########################################

# define age windows
d = d %>% 
  mutate(agecat = case_when(
    agedays==1 ~ "Birth",
    agedays>1 & agedays<=3*30.4167 ~ "3 months",
    agedays>3*30.4167 & agedays<=6*30.4167 ~ "6 months",
    agedays>6*30.4167 & agedays<=9*30.4167 ~ "9 months",
    agedays>9*30.4167 & agedays<=12*30.4167 ~ "12 months",
    agedays>12*30.4167 & agedays<=15*30.4167 ~ "15 months",
    agedays>15*30.4167 & agedays<=18*30.4167 ~"18 months",
    agedays>18*30.4167 & agedays<=21*30.4167 ~ "21 months",
    agedays>21*30.4167& agedays<=24*30.4167 ~ "24 months",
    TRUE ~ ""
  )) %>%
  mutate(agecat=factor(agecat,levels=c("Birth","3 months","6 months","9 months",
                                       "12 months","15 months","18 months","21 months","24 months")))

# check age categories
d %>%
  group_by(agecat) %>%
  summarise(n=sum(!is.na(agedays)),
            min=min(agedays/30.4167),
            mean=mean(agedays/30.4167),
            max=max(agedays/30.4167))

# identify ever wasted children
wast_data = d %>%
  filter(!is.na(agecat)) %>%
  group_by(subjid, agecat) %>%
  arrange(subjid) %>%
  
  summarize(minwhz = min(whz)) %>%
  
  # create indicator for whether the child 
  # was wasted in CURRENT age category
  mutate(wasted=ifelse(minwhz< -2,1,0)) %>%
  
  # create indicator for whether the child 
  # was wasted in PREVIOUS age category
  group_by(subjid) %>%
  mutate(minwhz_prev=ifelse(
    agecat=="Birth",NA,      
    ifelse(agecat=="3 months",minwhz[agecat=="Birth"],
           ifelse(agecat=="6 months",minwhz[agecat=="3 months"],
                  ifelse(agecat=="9 months",minwhz[agecat=="6 months"],
                         ifelse(agecat=="12 months",minwhz[agecat=="9 months"],
                                ifelse(agecat=="15 months",minwhz[agecat=="12 months"],
                                       ifelse(agecat=="18 months",minwhz[agecat=="15 months"],
                                              ifelse(agecat=="21 months",minwhz[agecat=="18 months"],
                                                     ifelse(agecat=="24 months",minwhz[agecat=="21 months"],
                                                            NA)))))))))) %>%
  mutate(still_wasted = ifelse(minwhz_prev < -2 & minwhz < -2, 1, 0),
         prev_wasted = ifelse(minwhz_prev < -2 & minwhz >= -2 , 1, 0)) 


# create indicator for whether the child 
# was NEVER wasted 
wast_data = wast_data %>%
  group_by(subjid) %>%
  mutate(cum_minwhz = cummin(minwhz)) %>%
  mutate(never_wasted = ifelse(cum_minwhz >= -2, 1, 0)) %>%
  
  # create indicator for whether the child 
  # was NEWLY wasted 
  mutate(newly_wasted = ifelse(never_wasted==0 & still_wasted==0 & prev_wasted==0, 1, 0)) %>%
  mutate(newly_wasted = ifelse(agecat=="Birth" & minwhz< -2, 1, newly_wasted)) %>%
  select(subjid, agecat, minwhz, minwhz_prev, cum_minwhz, wasted, 
         never_wasted, prev_wasted, newly_wasted, still_wasted) 

# Check that no child was classified in more
# than one category at any time point 
summary = wast_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_wasted = sum(newly_wasted, na.rm=T),
    still_wasted = sum(still_wasted, na.rm=T),
    prev_wasted = sum(prev_wasted, na.rm=T),
    never_wasted = sum(never_wasted, na.rm=T)) %>%
  mutate(newly_wasted = newly_wasted/nchild,
         still_wasted = still_wasted/nchild,
         prev_wasted = prev_wasted/nchild,
         never_wasted = never_wasted/nchild)

summary = summary %>%
  mutate(still_wasted = ifelse(agecat=="Birth",0,still_wasted),
         prev_wasted = ifelse(agecat=="Birth",0,prev_wasted)) 

summary = summary %>%
  mutate(sum = still_wasted + newly_wasted + prev_wasted + never_wasted)

summary

saveRDS(wast_data, file=paste0(res_dir, "wastflow.RDS"))

