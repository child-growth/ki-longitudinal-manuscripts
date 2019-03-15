##########################################
# ki longitudinal manuscripts
# stunting analysis

# create indicators for newly stunted, 
# recovered, relapsed, and never stunted
##########################################

#-----------------------------------------
# Process data for stunting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# IS THIS THE RIGHT DATA? 
load("U:/ucb-superlearner/data/stunting_data.RData")

# load("U:/Data/Stunting/stunting_data.RData")

d = d %>% ungroup() %>% mutate(studyid = as.character(studyid))

# since this will include recovery, 
# subsetting to monthly cohorts
d <- d %>% filter(measurefreq=="monthly")

# drop variables we don't need
d = d %>% select(studyid, subjid, country, measid, agedays, haz)

# create reverse measid
d = d %>% 
  group_by(studyid, country, subjid) %>%
  mutate(revmeasid = rev(seq_along(agedays)))

# temporarily just subset to first study
# d = d %>% filter(studyid == "ki0047075b-MAL-ED")

# drop kids who only have measurements at birth
drop = d %>% group_by(studyid, country, subjid) %>%
  summarise(measid = max(measid)) %>%
  filter(measid==1)

d = d %>% filter(!subjid %in% drop$subjid)

##########################################
# Define indicators of stunting at each time point
##########################################
# define age windows
d <- calc.ci.agecat(d, range = 3)

rec.prev <- d %>%

  group_by(studyid,country,subjid, agecat) %>%

  group_by(studyid,country,subjid) %>%
  mutate(stunted=ifelse(haz< -2,1,0),
         lagstunted=lag(stunted),
         leadstunted=lead(stunted),
         lageverstunted = lag(cummax(stunted)),
         two_stunt = ifelse(stunted==1 & leadstunted==1,1,0),
         ctwo_stunt = lag(cummax(two_stunt))) %>%
  
  # newly stunted if the last observation
  # in that age category LAZ < -2
  mutate(newly_stunted = ifelse(stunted==1 & 
                                leadstunted==1 &
                                ctwo_stunt == 0 , 1, 0),
         
         recover =       ifelse(stunted==0 &
                                leadstunted==0 &
                                lagstunted==1 &
                                ctwo_stunt==1, 1, 0)) %>%
         
  # recoding indicators at first measurement since lag is NA
  mutate(newly_stunted = ifelse(stunted==1 & measid==1, 1, newly_stunted),
         
         recover = ifelse(stunted==0 & measid==1, 0, recover),
           
         everrecover = cummax(recover),
         
         relapse =       ifelse(stunted==1 &
                                leadstunted==1 &
                                ctwo_stunt==1 &
                                everrecover==1, 1, 0)) %>%
  
  # recoding indicators at first measurement since lag is NA
  mutate(relapse = ifelse(stunted==1 & measid==1, 0, relapse)) %>%
  

  # recoding indicators for last measurement since lead is NA
  mutate(newly_stunted = ifelse(stunted==1 & 
                                revmeasid==1 &
                                ctwo_stunt == 0, 1, newly_stunted),
       
         relapse =       ifelse(stunted==1 &
                                revmeasid==1 &
                                ctwo_stunt==1 &
                                everrecover==1, 1, relapse),
         
         recover = ifelse(stunted==0 &
                          revmeasid==1 &
                          lagstunted==1 &
                          ctwo_stunt==1, 1, recover))
  
# ever recover, relapse, newly stunted in each age  
rec_agecat = rec.prev %>% group_by(studyid, country, subjid, agecat) %>%
  summarise(new_age = max(newly_stunted),
            rec_age = max(recover),
            rel_age = max(relapse)) %>%
  mutate(lag_new_age = lag(new_age),
         lag_rec_age = lag(rec_age),
         lag_rel_age = lag(rel_age))

rec.prev = full_join(rec.prev, rec_agecat, by = c("studyid", "country", "subjid", "agecat"))

# create indicators for still, not, never stunted
rec.prev = rec.prev %>%
  group_by(studyid, country, subjid) %>%

  mutate(still_stunted = ifelse(new_age==0 &
                                rec_age==0 &
                                rel_age==0 &
                                stunted==1 &
                                ctwo_stunt == 1 , 1, 0),
         
         not_stunted =   ifelse(new_age==0 &
                                  rec_age==0 &
                                  rel_age==0 &
                                  stunted==0 &
                                  ctwo_stunt==1, 1, 0),
         
         never_stunted = ifelse(new_age==0 &
                                  rec_age==0 &
                                  rel_age==0 &
                                  ctwo_stunt==0, 1, 0)
         
         ) %>%
  
  group_by(studyid, country, subjid, agecat) %>%
  mutate(still_age = max(still_stunted),
         not_age = max(not_stunted)) %>%

  # recoding if LAZ fluctuated and so child had both 
  # still stunted and not stunted in same interval 
  # with no other indicator
  
  # stunted in previous age cat, fluctuate in current age cat
  group_by(studyid, country, subjid) %>%
  mutate(still_stunted2 = ifelse(new_age==0 &
                                  rec_age==0 &
                                  rel_age==0 &
                                  still_age==1 &
                                  not_age==1 &
                                  (lag_rel_age==1 | lag_new_age==1), 1,still_stunted),
         
         not_stunted2 = ifelse(new_age==0 &
                               rec_age==0 &
                               rel_age==0 &
                               still_age==1 &
                               not_age==1 &
                               (lag_rel_age==1 | lag_new_age==1), 0,not_stunted),
         
         still_stunted2 = ifelse(new_age==0 &
                                 rec_age==0 &
                                 rel_age==0 &
                                 still_age==1 &
                                 not_age==1 &
                                 lag_rec_age==1 , 0,still_stunted2),
         
         not_stunted2 = ifelse(new_age==0 &
                                 rec_age==0 &
                                 rel_age==0 &
                                 still_age==1 &
                                 not_age==1 &
                                 lag_rec_age==1 , 1,not_stunted2)
         ) %>%

  
  # if relapsed in previous category recode as still stunted, not relapsed again
  mutate(relapse = ifelse(lag_rel_age == 1 & !is.na(lag_rel_age) & 
                          relapse == 1, 0, relapse), 
         
         still_stunted2 = ifelse(lag_rel_age == 1 & 
                                 new_age==0 &
                                 rec_age==0 &
                                 stunted==1 &
                                 ctwo_stunt == 1, 1, still_stunted2)) %>%

  # if recovered in previous category recode as not stunted, not recovered again
    mutate(recover = ifelse(lag_rec_age == 1 & !is.na(lag_rec_age) & 
                          recover == 1, 0, recover), 
         
         not_stunted2 = ifelse(lag_rec_age == 1 & 
                                 new_age==0 &
                                 rel_age==0 &
                                 stunted==0 &
                                 ctwo_stunt == 1, 1, not_stunted2))  %>%
  
  # recoding indicators at first measurement since lag is NA
  mutate(still_stunted2 = ifelse(measid==1, 0, still_stunted2),
         not_stunted2 = ifelse(measid==1, 0, not_stunted2),
         never_stunted = ifelse(stunted==0 & measid==1, 1, never_stunted)) %>%
  
    
# if newly and never in same cat, choose newly
  group_by(studyid, country, subjid, agecat) %>%
  mutate(nev_age = max(never_stunted)) %>%
  group_by(studyid, country, subjid) %>%

  mutate(never_stunted = ifelse(new_age==1 &
                                nev_age==1 , 0, never_stunted))

# rec.prev[rec.prev$subjid==103,-c(1:5, 7,9:11, 13:14)]
# rec.prev[rec.prev$subjid==103,c("haz","agecat","newly_stunted","recover","relapse","still_stunted2", "not_stunted2", "never_stunted")]
# # age 3-6 should be still stunted 
# # age 12-15 months should be not stunted
# 
# # what to do with the last row of 103? 
# # id 108 meas id 12
# rec.prev[rec.prev$subjid==108,-c(1:5, 7,9:11, 13:14)][1:10,]
# rec.prev[rec.prev$subjid==108,-c(1:5, 7,9:11, 13:14)][11:24,]
# rec.prev[rec.prev$subjid==108,c("haz","agecat","newly_stunted","recover","relapse","still_stunted2", "not_stunted2", "never_stunted")][1:10,]
# rec.prev[rec.prev$subjid==108,c("haz","agecat","newly_stunted","recover","relapse","still_stunted2", "not_stunted2", "never_stunted")][11:24,]
# 
# rec.prev[rec.prev$subjid==2,-c(1:5, 7)][1:8,]
# rec.prev[rec.prev$subjid==2,-c(1:5, 7)][9:24,]
# rec.prev[rec.prev$subjid==2,c("haz","agecat","newly_stunted","recover","relapse","still_stunted2", "not_stunted2", "never_stunted")][1:8,]
# rec.prev[rec.prev$subjid==2,c("haz","agecat","newly_stunted","recover","relapse","still_stunted2", "not_stunted2", "never_stunted")][9:24,]

rec.prev[rec.prev$subjid==2091,-c(1:3,5, 7,9:11)][1:9,]
rec.prev[rec.prev$subjid==2091,-c(1:3,5, 7,9:11,14)][10:23,]
rec.prev[rec.prev$subjid==2091,c("haz","agecat","newly_stunted","recover","relapse","still_stunted2", "not_stunted2", "never_stunted")]
rec.prev[rec.prev$subjid==2091,c("haz","agecat","newly_stunted","new_age","never_stunted","nev_age")][1:9,]


# drop measurements with ages over 24 months
rec.prev = rec.prev %>% filter(!is.na(agecat)) 

# check that indicators do not contain missing values
assert_that(names(table(is.na(rec.prev$newly_stunted)))=="FALSE")
assert_that(names(table(is.na(rec.prev$recover)))=="FALSE")
assert_that(names(table(is.na(rec.prev$relapse)))=="FALSE")
assert_that(names(table(is.na(rec.prev$still_stunted2)))=="FALSE")
assert_that(names(table(is.na(rec.prev$not_stunted2)))=="FALSE")
assert_that(names(table(is.na(rec.prev$never_stunted)))=="FALSE")

# summarise within age categories
stunt_data = rec.prev %>%
  group_by(studyid, country, subjid, agecat) %>%
  summarise(newly_stunted = max(newly_stunted),
            recover = max(recover),
            relapse = max(relapse),
            still_stunted = max(still_stunted2),
            not_stunted = max(not_stunted2),
            never_stunted = max(never_stunted))


# Check that no child was classified in more
# than one category at any time point 
summary = stunt_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_stunted = mean(newly_stunted, na.rm = TRUE),
    still_stunted = mean(still_stunted, na.rm = TRUE),
    recover = mean(recover, na.rm = TRUE),
    not_stunted = mean(not_stunted, na.rm = TRUE),
    never_stunted = mean(never_stunted, na.rm = TRUE),
    relapse = mean(relapse, na.rm = TRUE))

summary = summary %>%
  mutate(sum = still_stunted + newly_stunted + recover + 
           never_stunted + not_stunted + relapse)

summary


# aggregate data within study, country, and agecat
stunt_agg = stunt_data %>%
  group_by(studyid, country, agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_stunted = sum(newly_stunted),
    still_stunted = sum(still_stunted),
    recover = sum(recover),
    not_stunted = sum(not_stunted),
    never_stunted = sum(never_stunted),
    relapse = sum(relapse))  

# estimate random effects, format results
pooled_newly = run_rma(data = stunt_agg, 
                       n_name = "nchild", 
                       x_name = "newly_stunted", 
                       label = "Newly stunted",
                       method = "REML")

pooled_still = run_rma(data = stunt_agg, 
                       n_name = "nchild", 
                       x_name = "still_stunted", 
                       label = "Still stunted",
                       method = "REML")

pooled_not = run_rma(data = stunt_agg, 
                       n_name = "nchild", 
                       x_name = "not_stunted", 
                       label = "Not stunted",
                       method = "REML")

pooled_rec = run_rma(data = stunt_agg, 
                      n_name = "nchild", 
                      x_name = "recover",
                      label = "Recovered",
                      method = "REML")

pooled_relapse = run_rma(data = stunt_agg, 
                         n_name = "nchild", 
                         x_name = "relapse",
                         label = "Stunting relapse",
                         method = "REML")

pooled_never = run_rma(data = stunt_agg, 
                       n_name = "nchild", 
                       x_name = "never_stunted",
                       label = "Never stunted",
                       method = "REML")

stunt_pooled = bind_rows(pooled_newly, 
                         pooled_still,
                         pooled_rec,
                         pooled_relapse,
                         pooled_not,
                         pooled_never
)

#----------------------------------------------
# setting estimates to 0 at birth for
# still, previously, relapse stunted
#----------------------------------------------

# identify which cells have 0's 
newly_0 = as.character(summary$agecat[summary$newly_stunted==0])
still_0 = as.character(summary$agecat[summary$still_stunted==0])
rec_0 = as.character(summary$agecat[summary$recover==0])
relapse_0 = as.character(summary$agecat[summary$relapse==0])
not_0 = as.character(summary$agecat[summary$not_stunted==0])
never_0 = as.character(summary$agecat[summary$never_stunted==0])

# function to replace est, se, lb, ub, est.f if
# no observations in summary
replace_zero = function(data, age_list, label){
  
  if(length(age_list)>0){
    
    data$est[data$label==label & data$agecat %in% age_list] = 0
    data$ptest.f[data$label==label & data$agecat %in% age_list] = "0"
    data$se[data$label==label & data$agecat %in% age_list] = 0
    data$lb[data$label==label & data$agecat %in% age_list] = 0
    data$ub[data$label==label & data$agecat %in% age_list] = 0
    
  }
  return(data)
}

stunt_pooled_corr = replace_zero(data = stunt_pooled,
                                 age_list = newly_0,
                                 label = "Newly stunted")

stunt_pooled_corr = replace_zero(data = stunt_pooled_corr,
                                 age_list = still_0,
                                 label = "Still stunted")

stunt_pooled_corr = replace_zero(data = stunt_pooled_corr,
                                 age_list = not_0,
                                 label = "Not stunted")

stunt_pooled_corr = replace_zero(data = stunt_pooled_corr,
                                 age_list = rec_0,
                                 label = "Recovered")

stunt_pooled_corr = replace_zero(data = stunt_pooled_corr,
                                 age_list = relapse_0,
                                 label = "Stunting relapse")

stunt_pooled_corr = replace_zero(data = stunt_pooled_corr,
                                 age_list = never_0,
                                 label = "Never stunted")


saveRDS(stunt_data, file=paste0(res_dir, "stuntflow.RDS"))
saveRDS(stunt_pooled_corr, file=paste0(res_dir, "stuntflow_pooled.RDS"))


