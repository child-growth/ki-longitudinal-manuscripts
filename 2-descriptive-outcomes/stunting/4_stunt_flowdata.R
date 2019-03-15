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


load("U:/ucb-superlearner/data/stunting_data.RData")


d = d %>% ungroup() %>% mutate(studyid = as.character(studyid))

# since this will include recovery, 
# subsetting to monthly cohorts
d <- d %>% filter(measurefreq=="monthly")

# drop variables we don't need
d = d %>% select(studyid, subjid, country, measid, agedays, haz)

# temporarily just subset to first study
d = d %>% filter(studyid == "ki0047075b-MAL-ED")

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

d <- d %>% mutate(agem=round(agedays/30.4167))

# # obtain minimum haz within each age group
# stunt_data1 = d %>%
#   filter(!is.na(agecat)) %>%
#   group_by(studyid, country, subjid, agecat) %>%
#   arrange(subjid) %>%
#   
#   summarize(minhaz = min(haz)) %>%
#   
#   # create indicator for whether the child 
#   # was stunted in CURRENT age category
#   # mutate(stunted=ifelse(minhaz< -2,1,0)) %>%
#   
#   group_by(studyid, country, subjid) %>%
#   
#   mutate(minhaz_prev = lag(minhaz),
#          cumminhaz = cummin(minhaz)) %>%
#   mutate(cumminhaz_prev = lag(cumminhaz))
#   
  
  # mutate(minhaz_prev=ifelse(
  #   agecat=="Birth",NA,
  #   ifelse(agecat=="0-3 months",minhaz[agecat=="Birth"],
  #          ifelse(agecat=="3-6 months",minhaz[agecat=="0-3 months"],
  #                 ifelse(agecat=="6-9 months",minhaz[agecat=="3-6 months"],
  #                        ifelse(agecat=="9-12 months",minhaz[agecat=="6-9 months"],
  #                               ifelse(agecat=="12-15 months",minhaz[agecat=="9-12 months"],
  #                                      ifelse(agecat=="15-18 months",minhaz[agecat=="12-15 months"],
  #                                             ifelse(agecat=="18-21 months",minhaz[agecat=="15-18 months"],
  #                                                    ifelse(agecat=="21-24 months",minhaz[agecat=="18-21 months"],
  #                                                           NA)))))))))) %>%
# 
# # create indicator for whether the child 
# # is STILL stunted in age category
# # and indictor for recovery
# stunt_data2 = stunt_data1 %>%
#   mutate(
#     never_stunted = ifelse(minhaz >= -2, 1, 0),
#     newly_stunted = ifelse(minhaz < -2 & cumminhaz_prev >= -2, 1, 0),
#     still_stunted = ifelse(minhaz_prev < -2 & minhaz < -2, 1, 0),
#     recovered = ifelse(minhaz >= -2 & minhaz_prev < -2, 1, 0),
#     relapsed = ifelse(minhaz < -2 & minhaz_prev >= -2, 1, 0)
#   ) %>%
#   mutate(
#     still_stunted = ifelse(is.na(minhaz_prev) & agecat == "Birth", 
#                            0, still_stunted),
#     recovered = ifelse(is.na(minhaz_prev) & agecat == "Birth", 
#                           0, recovered)
#   )
# 
# 
# 
# 
# 
# 
# stunt_data2[stunt_data2$subjid==2,]
# drec[drec$subjid==2,]
# drec[drec$subjid==2,][10:20,]
# 
# stunt_data2[stunt_data2$subjid==132,]
# drec[drec$subjid==132,]
# drec[drec$subjid==132,][10:20,]



rec.prev <- d %>%
  # identify last two measurements within each 
  # age category
  group_by(studyid,country,subjid, agecat) %>%
  mutate(rank=min_rank(-agedays),
         maxrank = max(rank)) %>%

  
  group_by(studyid,country,subjid) %>%
  mutate(stunted=ifelse(haz< -2,1,0),
         lagstunted=lag(stunted),
         leadstunted=lead(stunted),
         lageverstunted = lag(cummax(stunted))) %>%
  
  # newly stunted if the last observation
  # in that age category LAZ < -2
  mutate(newly_stunted = ifelse(stunted==1 & 
                                lagstunted==1 &
                                lag(lageverstunted) == 0 &
                                rank==1 , 1, 0),
         
         still_stunted = ifelse(stunted==1 & 
                                lagstunted==1 &
                                lag(lagstunted)==1 &
                                lageverstunted == 1 &
                                rank==1, 1, 0),
         
         still_stunted = ifelse(stunted==0 & 
                                  lagstunted==1 &
                                  lag(lagstunted)==1 &
                                  lageverstunted == 1 &
                                  rank==1, 1, still_stunted),
         
         # relapse =       ifelse(stunted==1 &
         #                        lagstunted==1 &
         #                        lag(lagstunted)==1 &
         #                        lageverstunted==1 &
         #                        rank==1, 1, 0),
         
         recover =       ifelse(stunted==0 &
                                lagstunted==0 &
                                lag(lagstunted)==1 &
                                lageverstunted==1 &
                                rank==1, 1, 0)) %>%
       mutate(  
         everrecover = cummax(recover),
         
         not_stunted =       ifelse(stunted==0 &
                                  lagstunted==0 &
                                  lag(lagstunted)==0 &
                                  everrecover==1 &
                                  rank==1, 1, 0),
         
         never_stunted = ifelse(stunted == 0 & 
                                lageverstunted == 0 &
                                rank==1, 1, 0)) %>%
  
  # recoding indicators at first measurement since
  # lag is NA
  mutate(newly_stunted = ifelse(stunted==1 & measid==1, 1, newly_stunted),
         still_stunted = ifelse(stunted==1 & measid==1, 0, still_stunted),
         # relapse = ifelse(stunted==1 & measid==1, 0, relapse),
         recover = ifelse(stunted==0 & measid==1, 0, recover),
         not_stunted = ifelse(stunted==0 & measid==1, NA, not_stunted),
         never_stunted = ifelse(stunted==0 & measid==1, 1, never_stunted)) 
  
  # recoding indicators for last measurement since
  # lead is NA
  # mutate(newly_stunted = ifelse(stunted==1 & measid==1, 1, newly_stunted),
  #        still_stunted = ifelse(stunted==1 & measid==1, 0, still_stunted),
  #        # relapse = ifelse(stunted==1 & measid==1, 0, relapse),
  #        recover = ifelse(stunted==0 & measid==1, 0, recover),
  #        not_stunted = ifelse(stunted==0 & measid==1, NA, not_stunted),
  #        never_stunted = ifelse(stunted==0 & measid==1, 1, never_stunted)) 
  
rec.prev[rec.prev$subjid==103,]

# what to do with the last row of 103? 
# id 108 meas id 12
rec.prev[rec.prev$subjid==108,-c(1, 3)][1:10,]

rec.prev[rec.prev$subjid==2,]
rec.prev[rec.prev$subjid==2,][9:22,]
# is id 2 recovered at 18-21 months? NO
# 
# rec.prev[rec.prev$subjid==73,]

x=rec.age(s.agem = 18, r.agem = 21, data = d)












table(stunt_data$total_indicators)

stunt_data = rec.prev






# # create indicator for whether the child 
# # was NEVER stunted 
# stunt_data = stunt_data %>%
#   group_by(studyid, country, subjid) %>%
#   arrange(studyid, country, subjid, agecat) %>%
#   mutate(first_age=first(agecat)) %>%
#   mutate(never_stunted = ifelse(cum_minhaz >= -2, 1, 0)) %>%
#   mutate(cum_stunt = cummax(stunted)) %>%
#   mutate(cum_stunt_lag = lag(cum_stunt),
#          cum_stunt_lag = ifelse(agecat==first_age,0,cum_stunt_lag)) %>%
#   
#   # create indicator for whether the child 
#   # was NEWLY stunted 
#   mutate(newly_stunted = ifelse(minhaz < -2 & never_stunted==0 & still_stunted==0 & prev_stunted==0, 1, 0)) %>%
#   mutate(newly_stunted = ifelse(agecat==first_age & minhaz< -2, 1, newly_stunted)) %>%
#   # create indicator for whether the child 
#   # had a stunting RELAPSE
#   mutate(relapse = ifelse(newly_stunted==1 & cum_stunt_lag==1,1,0)) %>%
#   # reassign NEWLY stunted = 0 if relapse = 1
#   mutate(newly_stunted = ifelse(relapse==1 & newly_stunted==1 & !is.na(relapse),
#                                 0,newly_stunted)) %>%
#   mutate(still_stunted = ifelse(agecat==first_age,0,still_stunted),
#          prev_stunted = ifelse(agecat==first_age,0,prev_stunted),
#          relapse = ifelse(agecat==first_age,0,relapse)) %>%
#   select(studyid, country, subjid, agecat, minhaz, minhaz_prev, cum_minhaz, stunted, 
#          never_stunted, prev_stunted, newly_stunted, still_stunted, relapse) %>%
#   mutate(total_indicators = never_stunted + prev_stunted + 
#            newly_stunted + still_stunted + relapse)
# 
# table(stunt_data$total_indicators)

# Check that no child was classified in more
# than one category at any time point 
summary = stunt_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    childmonths=n(),
    
    newly_stunted = sum(newly_stunted, na.rm = TRUE),
    still_stunted = sum(still_stunted, na.rm = TRUE),
    recover = sum(recover, na.rm = TRUE),
    never_stunted = sum(never_stunted, na.rm = TRUE),
    relapse = sum(relapse, na.rm = TRUE)) %>%
  mutate(newly_stunted = newly_stunted/childmonths,
         still_stunted = still_stunted/childmonths,
         recover = recover/childmonths,
         never_stunted = never_stunted/childmonths,
         relapse = relapse/childmonths)



summary = stunt_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_stunted = mean(newly_stunted, na.rm = TRUE),
    still_stunted = mean(still_stunted, na.rm = TRUE),
    prev_stunted = mean(prev_stunted, na.rm = TRUE),
    never_stunted = mean(never_stunted, na.rm = TRUE),
    relapse = mean(relapse, na.rm = TRUE))

summary = summary %>%
  mutate(sum = still_stunted + newly_stunted + recover + never_stunted + relapse)

summary



# check indicators against minimum HAZ within age groups
# assert_that(min(stunt_data$minhaz[stunt_data$never_stunted==1]) >= -2)
# 
# assert_that(min(stunt_data$minhaz[stunt_data$prev_stunted==1]) >= -2)
# assert_that(min(stunt_data$minhaz[stunt_data$prev_stunted==0]) < -2) 
# 
# assert_that(min(stunt_data$minhaz[stunt_data$still_stunted==1]) < -2)
# assert_that(min(stunt_data$minhaz[stunt_data$still_stunted==0 & 
#                                     stunt_data$newly_stunted==0 & 
#                                     stunt_data$relapse==0]) >= -2)
# 
# assert_that(min(stunt_data$minhaz[stunt_data$relapse==1]) < -2)
# 
# assert_that(min(stunt_data$minhaz[stunt_data$newly_stunted==1]) < -2)

# aggregate data within study, country, and agecat
stunt_agg = stunt_data %>%
  group_by(studyid, country, agem) %>%
  summarise(
    childmonths=length(unique(subjid)),
    newly_stunted = sum(newly_stunted),
    still_stunted = sum(still_stunted),
    recover = sum(recover),
    never_stunted = sum(never_stunted),
    relapse = sum(relapse))  %>%
  mutate(agecat = factor(agem))

# estimate random effects, format results
pooled_newly = run_rma(data = stunt_agg, 
                       n_name = "childmonths", 
                       x_name = "newly_stunted", 
                       label = "Newly stunted",
                       method = "REML")

pooled_still = run_rma(data = stunt_agg, 
                       n_name = "nchild", 
                       x_name = "still_stunted", 
                       label = "Still stunted",
                       method = "REML")

pooled_prev = run_rma(data = stunt_agg, 
                      n_name = "nchild", 
                      x_name = "prev_stunted",
                      label = "Previously stunted",
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
                         pooled_prev,
                         pooled_relapse,
                         pooled_never
)

#----------------------------------------------
# setting estimates to 0 at birth for
# still, previously, relapse stunted
#----------------------------------------------

# identify which cells have 0's 
newly_0 = as.character(summary$agecat[summary$newly_stunted==0])
still_0 = as.character(summary$agecat[summary$still_stunted==0])
prev_0 = as.character(summary$agecat[summary$prev_stunted==0])
relapse_0 = as.character(summary$agecat[summary$relapse==0])
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
                                 age_list = prev_0,
                                 label = "Previously stunted")

stunt_pooled_corr = replace_zero(data = stunt_pooled_corr,
                                 age_list = relapse_0,
                                 label = "Stunting relapse")

stunt_pooled_corr = replace_zero(data = stunt_pooled_corr,
                                 age_list = never_0,
                                 label = "Never stunted")


saveRDS(stunt_data, file=paste0(res_dir, "stuntflow.RDS"))
saveRDS(stunt_pooled_corr, file=paste0(res_dir, "stuntflow_pooled.RDS"))


