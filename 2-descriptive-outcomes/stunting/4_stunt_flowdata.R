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

d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

d = d %>% ungroup() %>% mutate(studyid = as.character(studyid))

# since this will include recovery, 
# subsetting to monthly cohorts
d <- d %>% filter(measurefreq=="monthly")

# drop variables we don't need
d = d %>% select(studyid, subjid, region, country, measid, agedays, haz)

# # create reverse measid
# d = d %>% 
#   group_by(studyid, country, subjid) %>%
#   mutate(revmeasid = rev(seq_along(agedays)))

##########################################
# Define indicators of stunting at each time point
##########################################
# define age windows
d <- d %>% 
      mutate(agecat=ifelse(agedays<=7, "Birth",
                      ifelse(agedays>7 & agedays<=3*30.4167,"0-3 months",
                           ifelse(agedays>3*30.4167 & agedays<=6*30.4167,"3-6 months",
                                  ifelse(agedays>6*30.4167 & agedays<=9*30.4167,"6-9 months",
                                         ifelse(agedays>9*30.4167 & agedays<=12*30.4167,"9-12 months",
                                                ifelse(agedays>12*30.4167 & agedays<=15*30.4167,"12-15 months",
                                                       ifelse(agedays>15*30.4167 & agedays<=18*30.4167,"15-18 months",
                                                              ifelse(agedays>18*30.4167 & agedays<=21*30.4167,"18-21 months",
                                                                     ifelse(agedays>21*30.4167& agedays<=24*30.4167,"21-24 months","")))))))))) %>%
      mutate(agecat=factor(agecat,levels=c("Birth","0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")))
  
# check age categories
d %>% group_by(agecat) %>%
  summarise(min = min(agedays)/30.4167,
            max = max(agedays)/30.4167)


#--------------------------------------------------
# classify stunting status each month
#--------------------------------------------------
flow_m = d %>%
  mutate(agem = agedays / 30.4167, agem = round(agem)) %>%
  group_by(studyid,country,subjid, region, agem) %>%
    summarize(haz=mean(haz)) %>%
  group_by(studyid,country,subjid) %>%
  # # create reverse measid
  mutate(measid = seq_along(agem),
         revmeasid = rev(seq_along(agem))) %>%

  mutate(stunted=ifelse(haz< -2,1,0),
         lagstunted=lag(stunted),
         lageverstunted = lag(cummax(stunted))) %>%
  
  mutate(newly_stunted = ifelse(stunted==1 & 
                                  lageverstunted == 0 , 1, 0),
         
         recover =       ifelse(stunted==0 &
                                  lagstunted==1 &
                                  lageverstunted==1, 1, 0),
         
         never_stunted =       ifelse(stunted==0 &
                                        lagstunted==0 &
                                        lageverstunted==0, 1, 0)) %>%
  
  # recoding indicators at first measurement since lag is NA
  mutate(newly_stunted = ifelse(stunted==1 & measid==1, 1, newly_stunted),
         
         never_stunted = ifelse(stunted==0 & measid==1, 1, never_stunted),
         
         recover = ifelse(stunted==0 & measid==1, 0, recover)) %>%
  
  # code relapse 
  mutate(everrecover = cummax(recover),
         evernew = cummax(newly_stunted),
         
         relapse =       ifelse(stunted==1 &
                                  lageverstunted==1 &
                                  lagstunted==0 &
                                  everrecover==1, 1, 0),
         
         still_stunted = ifelse(stunted==1 & 
                                  evernew==1 &
                                  lagstunted==1, 1, 0),
         
         not_stunted =   ifelse(stunted==0 & 
                                  lagstunted==0 &
                                  everrecover==1, 1, 0))  %>%
  
  # recode still stunted at first measurement  
  mutate(still_stunted = ifelse(measid==1, 0, still_stunted))


# drop measurements with ages over 24 months
#flow_m = flow_m %>% filter(!is.na(agecat)) 
flow_m = flow_m %>% filter(agem < 25) 


#Number of children in primary plot
flow_m %>% filter(agem < 16) %>% ungroup() %>%
  summarize(Nchild=length(unique(paste0(studyid, subjid))))
d %>% filter(agedays<=16 * 30.4167) %>% ungroup() %>%
  summarize(Nchild=length(unique(paste0(studyid, subjid))))


#--------------------------------------------------
# check that indicators do not contain missing values
#--------------------------------------------------
assert_that(names(table(is.na(flow_m$newly_stunted)))=="FALSE")
assert_that(names(table(is.na(flow_m$recover)))=="FALSE")
assert_that(names(table(is.na(flow_m$relapse)))=="FALSE")
assert_that(names(table(is.na(flow_m$still_stunted)))=="FALSE")
assert_that(names(table(is.na(flow_m$not_stunted)))=="FALSE")
assert_that(names(table(is.na(flow_m$never_stunted)))=="FALSE")

# check for multiple categories
flow_m = flow_m %>% mutate(sum = newly_stunted + 
                             still_stunted + recover + not_stunted + never_stunted + 
                             relapse)
assert_that(names(table(flow_m$sum))=="1")
  

#--------------------------------------------------
# Check that no child was classified in more
# than one category at any time point 
#--------------------------------------------------
summary = flow_m %>%
  group_by(agem) %>%
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

#--------------------------------------------------
# aggregate data within study, country, and agecat
#--------------------------------------------------
stunt_agg = flow_m %>%
  ungroup() %>%
  mutate(agem = as.factor(agem)) %>%
  group_by(studyid, country, agem) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_stunted = sum(newly_stunted),
    still_stunted = sum(still_stunted),
    recover = sum(recover),
    not_stunted = sum(not_stunted),
    never_stunted = sum(never_stunted),
    relapse = sum(relapse))  

#--------------------------------------------------
# estimate random effects, format results
#--------------------------------------------------
pooled_newly = run_rma_agem(data = stunt_agg, 
                       n_name = "nchild", 
                       x_name = "newly_stunted", 
                       label = "Newly stunted",
                       method = "REML")

pooled_still = run_rma_agem(data = stunt_agg, 
                       n_name = "nchild", 
                       x_name = "still_stunted", 
                       label = "Still stunted",
                       method = "REML")

pooled_not = run_rma_agem(data = stunt_agg, 
                       n_name = "nchild", 
                       x_name = "not_stunted", 
                       label = "Not stunted",
                       method = "REML")

pooled_rec = run_rma_agem(data = stunt_agg, 
                      n_name = "nchild", 
                      x_name = "recover",
                      label = "Recovered",
                      method = "REML")

pooled_relapse = run_rma_agem(data = stunt_agg, 
                         n_name = "nchild", 
                         x_name = "relapse",
                         label = "Stunting relapse",
                         method = "REML")

pooled_never = run_rma_agem(data = stunt_agg, 
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

#--------------------------------------------------
# estimate fixed effects, format results
#--------------------------------------------------
pooled_newly_fe = run_rma_agem(data = stunt_agg, 
                               n_name = "nchild", 
                               x_name = "newly_stunted", 
                               label = "Newly stunted",
                               method = "FE")

pooled_still_fe = run_rma_agem(data = stunt_agg, 
                               n_name = "nchild", 
                               x_name = "still_stunted", 
                               label = "Still stunted",
                               method = "FE")

pooled_not_fe = run_rma_agem(data = stunt_agg, 
                             n_name = "nchild", 
                             x_name = "not_stunted", 
                             label = "Not stunted",
                             method = "FE")

pooled_rec_fe = run_rma_agem(data = stunt_agg, 
                             n_name = "nchild", 
                             x_name = "recover",
                             label = "Recovered",
                             method = "FE")

pooled_relapse_fe = run_rma_agem(data = stunt_agg, 
                                 n_name = "nchild", 
                                 x_name = "relapse",
                                 label = "Stunting relapse",
                                 method = "FE")

pooled_never_fe = run_rma_agem(data = stunt_agg, 
                               n_name = "nchild", 
                               x_name = "never_stunted",
                               label = "Never stunted",
                               method = "FE")

stunt_pooled_fe = bind_rows(pooled_newly_fe, 
                            pooled_still_fe,
                            pooled_rec_fe,
                            pooled_relapse_fe,
                            pooled_not_fe,
                            pooled_never_fe
)


#----------------------------------------------
# setting estimates to 0 at birth for
# still, previously, relapse stunted
#----------------------------------------------

# identify which cells have 0's 
newly_0 = as.character(summary$agem[summary$newly_stunted==0])
still_0 = as.character(summary$agem[summary$still_stunted==0])
rec_0 = as.character(summary$agem[summary$recover==0])
relapse_0 = as.character(summary$agem[summary$relapse==0])
not_0 = as.character(summary$agem[summary$not_stunted==0])
never_0 = as.character(summary$agem[summary$never_stunted==0])

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

stunt_pooled_corr_fe = replace_zero(data = stunt_pooled_fe,
                                    age_list = newly_0,
                                    label = "Newly stunted")

stunt_pooled_corr_fe = replace_zero(data = stunt_pooled_corr_fe,
                                    age_list = still_0,
                                    label = "Still stunted")

stunt_pooled_corr_fe = replace_zero(data = stunt_pooled_corr_fe,
                                    age_list = not_0,
                                    label = "Not stunted")

stunt_pooled_corr_fe = replace_zero(data = stunt_pooled_corr_fe,
                                    age_list = rec_0,
                                    label = "Recovered")

stunt_pooled_corr_fe = replace_zero(data = stunt_pooled_corr_fe,
                                    age_list = relapse_0,
                                    label = "Stunting relapse")

stunt_pooled_corr_fe = replace_zero(data = stunt_pooled_corr_fe,
                                    age_list = never_0,
                                    label = "Never stunted")


saveRDS(flow_m, file=paste0(res_dir, "stuntflow.RDS"))
saveRDS(stunt_pooled_corr, file=paste0(res_dir, "stuntflow_pooled.RDS"))
saveRDS(stunt_pooled_corr_fe, file=paste0(res_dir, "stuntflow_pooled_fe.RDS"))


