##########################################
# ki longitudinal manuscripts
# wasting analysis

# create indicators for newly wasted, 
# recovered, relapsed, and never wasted
##########################################

#-----------------------------------------
# Process data for wasting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


load("U:/ucb-superlearner/data/wasting_data.RData")

d <- d %>% filter(measurefreq=="monthly")

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

# identify ever wasted children
wast_data = d %>%
  filter(!is.na(agecat)) %>%
  group_by(studyid, country, subjid, agecat) %>%
  arrange(subjid) %>%
  
  summarize(minwhz = min(whz)) %>%
  
  # create indicator for whether the child 
  # was wasted in CURRENT age category
  mutate(wasted=ifelse(minwhz< -2,1,0)) %>%
  
  # create indicator for whether the child 
  # was wasted in PREVIOUS age category
  group_by(studyid, country, subjid) %>%
  
  mutate(minwhz_prev = lag(minwhz)) %>%
  
  # mutate(minwhz_prev=ifelse(
  #   agecat=="Birth",NA,
  #   ifelse(agecat=="0-3 months",minwhz[agecat=="Birth"],
  #          ifelse(agecat=="3-6 months",minwhz[agecat=="0-3 months"],
  #                 ifelse(agecat=="6-9 months",minwhz[agecat=="3-6 months"],
  #                        ifelse(agecat=="9-12 months",minwhz[agecat=="6-9 months"],
  #                               ifelse(agecat=="12-15 months",minwhz[agecat=="9-12 months"],
  #                                      ifelse(agecat=="15-18 months",minwhz[agecat=="12-15 months"],
  #                                             ifelse(agecat=="18-21 months",minwhz[agecat=="15-18 months"],
  #                                                    ifelse(agecat=="21-24 months",minwhz[agecat=="18-21 months"],
#                                                           NA)))))))))) %>%
mutate(cum_minwhz = cummin(minwhz)) %>%
  mutate(still_wasted = ifelse(minwhz_prev < -2 & minwhz < -2, 1, 0),
         prev_wasted = ifelse(minwhz >= -2 & cum_minwhz < -2, 1, 0)) %>%
  mutate(still_wasted = ifelse(is.na(minwhz_prev) & agecat=="Birth", 0, still_wasted ),
         prev_wasted = ifelse(is.na(minwhz_prev) & agecat=="Birth", 0, prev_wasted ))


# create indicator for whether the child 
# was NEVER wasted 
wast_data = wast_data %>%
  group_by(studyid, country, subjid) %>%
  arrange(studyid, country, subjid, agecat) %>%
  mutate(first_age=first(agecat)) %>%
  mutate(never_wasted = ifelse(cum_minwhz >= -2, 1, 0)) %>%
  mutate(cum_wast = cummax(wasted)) %>%
  mutate(cum_wast_lag = lag(cum_wast),
         cum_wast_lag = ifelse(agecat==first_age,0,cum_wast_lag)) %>%
  
  # create indicator for whether the child 
  # was NEWLY wasted 
  mutate(newly_wasted = ifelse(minwhz < -2 & never_wasted==0 & still_wasted==0 & prev_wasted==0, 1, 0)) %>%
  mutate(newly_wasted = ifelse(agecat==first_age & minwhz< -2, 1, newly_wasted)) %>%
  # create indicator for whether the child 
  # had a wasting RELAPSE
  mutate(relapse = ifelse(newly_wasted==1 & cum_wast_lag==1,1,0)) %>%
  # reassign NEWLY wasted = 0 if relapse = 1
  mutate(newly_wasted = ifelse(relapse==1 & newly_wasted==1 & !is.na(relapse),
                               0,newly_wasted)) %>%
  mutate(still_wasted = ifelse(agecat==first_age,0,still_wasted),
         prev_wasted = ifelse(agecat==first_age,0,prev_wasted),
         relapse = ifelse(agecat==first_age,0,relapse)) %>%
  select(studyid, country, subjid, agecat, minwhz, minwhz_prev, cum_minwhz, wasted, 
         never_wasted, prev_wasted, newly_wasted, still_wasted, relapse) %>%
  mutate(total_indicators = never_wasted + prev_wasted + 
           newly_wasted + still_wasted + relapse)

table(wast_data$total_indicators)

# Check that no child was classified in more
# than one category at any time point 
summary = wast_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_wasted = sum(newly_wasted, na.rm = TRUE),
    still_wasted = sum(still_wasted, na.rm = TRUE),
    prev_wasted = sum(prev_wasted, na.rm = TRUE),
    never_wasted = sum(never_wasted, na.rm = TRUE),
    relapse = sum(relapse, na.rm = TRUE)) %>%
  mutate(newly_wasted = newly_wasted/nchild,
         still_wasted = still_wasted/nchild,
         prev_wasted = prev_wasted/nchild,
         never_wasted = never_wasted/nchild,
         relapse = relapse/nchild)

summary = wast_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_wasted = mean(newly_wasted, na.rm = TRUE),
    still_wasted = mean(still_wasted, na.rm = TRUE),
    prev_wasted = mean(prev_wasted, na.rm = TRUE),
    never_wasted = mean(never_wasted, na.rm = TRUE),
    relapse = mean(relapse, na.rm = TRUE))

summary = summary %>%
  mutate(sum = still_wasted + newly_wasted + prev_wasted + never_wasted + relapse)

summary


# check indicators against minimum whz within age groups
assert_that(min(wast_data$minwhz[wast_data$never_wasted==1]) >= -2)

assert_that(min(wast_data$minwhz[wast_data$prev_wasted==1]) >= -2)
assert_that(min(wast_data$minwhz[wast_data$prev_wasted==0]) < -2) 

assert_that(min(wast_data$minwhz[wast_data$still_wasted==1]) < -2)
assert_that(min(wast_data$minwhz[wast_data$still_wasted==0 & 
                                   wast_data$newly_wasted==0 & 
                                   wast_data$relapse==0]) >= -2)

assert_that(min(wast_data$minwhz[wast_data$relapse==1]) < -2)

assert_that(min(wast_data$minwhz[wast_data$newly_wasted==1]) < -2)

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
                       label = "Newly wasted",
                       method = "REML")

pooled_still = run_rma(data = wast_agg, 
                       n_name = "nchild", 
                       x_name = "still_wasted", 
                       label = "Still wasted",
                       method = "REML")

pooled_prev = run_rma(data = wast_agg, 
                      n_name = "nchild", 
                      x_name = "prev_wasted",
                      label = "Previously wasted",
                      method = "REML")

pooled_relapse = run_rma(data = wast_agg, 
                         n_name = "nchild", 
                         x_name = "relapse",
                         label = "wasting relapse",
                         method = "REML")

pooled_never = run_rma(data = wast_agg, 
                       n_name = "nchild", 
                       x_name = "never_wasted",
                       label = "Never wasted",
                       method = "REML")

wast_pooled = bind_rows(pooled_newly, 
                        pooled_still,
                        pooled_prev,
                        pooled_relapse,
                        pooled_never
)

#----------------------------------------------
# setting estimates to 0 at birth for
# still, previously, relapse wasted
#----------------------------------------------

# identify which cells have 0's 
newly_0 = as.character(summary$agecat[summary$newly_wasted==0])
still_0 = as.character(summary$agecat[summary$still_wasted==0])
prev_0 = as.character(summary$agecat[summary$prev_wasted==0])
relapse_0 = as.character(summary$agecat[summary$relapse==0])
never_0 = as.character(summary$agecat[summary$never_wasted==0])

# function to replace est, se, lb, ub, est.f if
# no observations in summary
replace_zero = function(data, age_list, label, df=NULL){
  
  if(length(age_list)>0){
    
    data$est[data$label==label & data$agecat %in% age_list] = 0
    data$ptest.f[data$label==label & data$agecat %in% age_list] = "0"
    data$se[data$label==label & data$agecat %in% age_list] = 0
    data$lb[data$label==label & data$agecat %in% age_list] = 0
    data$ub[data$label==label & data$agecat %in% age_list] = 0
    
  }
  return(data)
}

# No newly_0
# wast_pooled_corr = replace_zero(data = wast_pooled,
#                                 age_list = newly_0,
#                                 label = "Newly wasted")

wast_pooled_corr = replace_zero(data = wast_pooled,
                                age_list = still_0,
                                label = "Still wasted")

wast_pooled_corr = replace_zero(data = wast_pooled_corr,
                                age_list = prev_0,
                                label = "Previously wasted")

wast_pooled_corr = replace_zero(data = wast_pooled_corr,
                                age_list = relapse_0,
                                label = "wasting relapse")

wast_pooled_corr = replace_zero(data = wast_pooled_corr,
                                age_list = never_0,
                                label = "Never wasted")


saveRDS(wast_data, file=paste0(res_dir, "wastflow.RDS"))
saveRDS(wast_pooled_corr, file=paste0(res_dir, "wastflow_pooled.RDS"))


