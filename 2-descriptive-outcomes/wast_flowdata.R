#-----------------------------------------
# Process data for wasting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


load("U:/Data/Wasting/wasting_data.RData")


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
  group_by(studyid, country, subjid, agecat) %>%
  arrange(studyid, country, subjid) %>%
  
  summarize(minwhz = min(whz)) %>%
  
  # create indicator for whether the child 
  # was wasted in CURRENT age category
  mutate(wasted=ifelse(minwhz< -2,1,0)) %>%
  
  # create indicator for whether the child 
  # was wasted in PREVIOUS age category
  group_by(studyid, country, subjid) %>%
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
         prev_wasted = ifelse(minwhz_prev < -2 & minwhz >= -2 , 1, 0)) %>%
  mutate(still_wasted = ifelse(is.na(minwhz_prev), 0, still_wasted ),
         prev_wasted = ifelse(is.na(minwhz_prev), 0, prev_wasted ))


# create indicator for whether the child 
# was NEVER wasted 
wast_data = wast_data %>%
  group_by(studyid, country, subjid) %>%
  mutate(cum_minwhz = cummin(minwhz)) %>%
  mutate(never_wasted = ifelse(cum_minwhz >= -2, 1, 0)) %>%
  mutate(cum_wast = cummax(wasted)) %>%
  mutate(cum_wast_lag = lag(cum_wast)) %>%
  
  # create indicator for whether the child 
  # was NEWLY wasted 
  mutate(newly_wasted = ifelse(never_wasted==0 & still_wasted==0 & prev_wasted==0, 1, 0)) %>%
  mutate(newly_wasted = ifelse(agecat=="Birth" & minwhz< -2, 1, newly_wasted)) %>%
  # create indicator for whether the child 
  # had a wasting RELAPSE
  mutate(relapse = ifelse(newly_wasted==1 & cum_wast_lag==1 & !is.na(cum_wast_lag),1,0)) %>%
  # reassign NEWLY wasted = 0 if relapse = 1
  mutate(newly_wasted = ifelse(relapse==1 & newly_wasted==1 & !is.na(relapse),
                               0,newly_wasted)) %>%
  
  select(studyid, country, subjid, agecat, minwhz, minwhz_prev, cum_minwhz, wasted, 
         never_wasted, prev_wasted, newly_wasted, still_wasted, relapse) %>%
  
  mutate(still_wasted = ifelse(agecat=="Birth",0,still_wasted),
         prev_wasted = ifelse(agecat=="Birth",0,prev_wasted),
         relapse = ifelse(agecat=="Birth",0,relapse)) 


# Check that no child was classified in more
# than one category at any time point 
summary = wast_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_wasted = sum(newly_wasted),
    still_wasted = sum(still_wasted),
    prev_wasted = sum(prev_wasted),
    never_wasted = sum(never_wasted),
    relapse = sum(relapse)) %>%
  mutate(newly_wasted = newly_wasted/nchild,
         still_wasted = still_wasted/nchild,
         prev_wasted = prev_wasted/nchild,
         never_wasted = never_wasted/nchild,
         relapse = relapse/nchild)

summary = summary %>%
  mutate(sum = still_wasted + newly_wasted + prev_wasted + never_wasted + relapse)



# aggregate data within study, country, and agecat
wast_agg = wast_data %>%
  group_by(studyid, country, agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_wasted = sum(newly_wasted),
    still_wasted = sum(still_wasted),
    prev_wasted = sum(prev_wasted),
    never_wasted = sum(never_wasted),
    relapse = sum(relapse)) 

# estimate random effects, format results
pooled_newly = run_rma(data = wast_agg, 
                       n_name = "nchild", 
                       x_name = "newly_wasted", 
                       label = "Newly wasted")

pooled_still = run_rma(data = wast_agg, 
                       n_name = "nchild", 
                       x_name = "still_wasted", 
                       label = "Still wasted")

pooled_prev = run_rma(data = wast_agg, 
                      n_name = "nchild", 
                      x_name = "prev_wasted",
                      label = "Previously wasted")

pooled_relapse = run_rma(data = wast_agg, 
                         n_name = "nchild", 
                         x_name = "relapse",
                         label = "wasting relapse")

pooled_never = run_rma(data = wast_agg, 
                       n_name = "nchild", 
                       x_name = "never_wasted",
                       label = "Never wasted")

wast_pooled = bind_rows(pooled_newly, 
                        pooled_still,
                        pooled_prev,
                        pooled_relapse,
                        pooled_never
)

saveRDS(wast_data, file=paste0(res_dir, "wastflow.RDS"))
saveRDS(wast_pooled, file=paste0(res_dir, "wastflow_pooled.RDS"))


