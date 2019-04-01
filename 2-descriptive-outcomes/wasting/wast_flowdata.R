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

# IS THIS THE RIGHT DATA? 
load("U:/ucb-superlearner/data/wasting_data.RData")

# load("U:/Data/Wasting/wasting_data.RData")

d = d %>% ungroup() %>% mutate(studyid = as.character(studyid))

# since this will include recovery, 
# subsetting to monthly cohorts
d <- d %>% filter(measurefreq=="monthly")

# drop variables we don't need
d = d %>% select(studyid, subjid, country, measid, agedays, whz)

# create reverse measid
d = d %>% 
  group_by(studyid, country, subjid) %>%
  mutate(revmeasid = rev(seq_along(agedays)))

# temporarily just subset to first study
d = d %>% filter(studyid == "ki0047075b-MAL-ED")

##########################################
# Define indicators of wasting at each time point
##########################################
# define age windows
d <- d %>% 
  mutate(agecat=ifelse(agedays==1, "Birth",
                       ifelse(agedays>1 & agedays<=3*30.4167,"0-3 months",
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


flow_m = d %>%
  mutate(agem = agedays / 30.4167) %>%
  group_by(studyid,country,subjid) %>%
  
  mutate(wasted=ifelse(whz< -2,1,0),
         lagwasted=lag(wasted),
         lageverwasted = lag(cummax(wasted))) %>%
  
  mutate(newly_wasted = ifelse(wasted==1 & 
                                  lageverwasted == 0 , 1, 0),
         
         recover =       ifelse(wasted==0 &
                                  lagwasted==1 &
                                  lageverwasted==1, 1, 0),
         
         never_wasted =       ifelse(wasted==0 &
                                        lagwasted==0 &
                                        lageverwasted==0, 1, 0)) %>%
  
  # recoding indicators at first measurement since lag is NA
  mutate(newly_wasted = ifelse(wasted==1 & measid==1, 1, newly_wasted),
         
         never_wasted = ifelse(wasted==0 & measid==1, 1, never_wasted),
         
         recover = ifelse(wasted==0 & measid==1, 0, recover)) %>%
  
  # code relapse 
  mutate(everrecover = cummax(recover),
         evernew = cummax(newly_wasted),
         
         relapse =       ifelse(wasted==1 &
                                  lageverwasted==1 &
                                  lagwasted==0 &
                                  everrecover==1, 1, 0),
         
         still_wasted = ifelse(wasted==1 & 
                                  evernew==1 &
                                  lagwasted==1, 1, 0),
         
         not_wasted =   ifelse(wasted==0 & 
                                  lagwasted==0 &
                                  everrecover==1, 1, 0))  %>%
  
  # recode still wasted at first measurement  
  mutate(still_wasted = ifelse(measid==1, 0, still_wasted))






# rec.prev[rec.prev$subjid==103,-c(1:5, 7,10:11, 14)]
# rec.prev[rec.prev$subjid==103,c("whz","agecat","newly_wasted","recover","relapse","still_wasted2", "not_wasted2", "never_wasted")]
# # age 3-6 should be still wasted
# # age 12-15 months should be not wasted
# 
# # what to do with the last row of 103?
# # id 108 meas id 12
# rec.prev[rec.prev$subjid==108,-c(1:5, 7,9:11, 13:14)][1:10,]
# rec.prev[rec.prev$subjid==108,-c(1:5, 7,9:11, 13:14)][11:24,]
# rec.prev[rec.prev$subjid==108,c("whz","agecat","newly_wasted","recover","relapse","still_wasted2", "not_wasted2", "never_wasted")][1:10,]
# rec.prev[rec.prev$subjid==108,c("whz","agecat","newly_wasted","recover","relapse","still_wasted2", "not_wasted2", "never_wasted")][11:24,]
# 
# rec.prev[rec.prev$subjid==2,-c(1:5, 7)][1:8,]
# rec.prev[rec.prev$subjid==2,-c(1:5, 7)][9:24,]
# rec.prev[rec.prev$subjid==2,c("whz","agecat","newly_wasted","recover","relapse","still_wasted2", "not_wasted2", "never_wasted")][1:8,]
# rec.prev[rec.prev$subjid==2,c("whz","agecat","newly_wasted","recover","relapse","still_wasted2", "not_wasted2", "never_wasted")][9:24,]
# 
# rec.prev[rec.prev$subjid==2091,-c(1:3,5, 7,9:11)][1:9,]
# rec.prev[rec.prev$subjid==2091,-c(1:3,5, 7,9:11,14)][10:23,]
# rec.prev[rec.prev$subjid==2091,c("whz","agecat","newly_wasted","recover","relapse","still_wasted2", "not_wasted2", "never_wasted")]
# rec.prev[rec.prev$subjid==2091,c("whz","agecat","newly_wasted","new_age","never_wasted","nev_age")][1:9,]


# drop measurements with ages over 24 months
flow_m = flow_m %>% filter(!is.na(agecat)) 

# summarise within age months
flow_m = flow_m %>% mutate(agem = round(agem))

# check that indicators do not contain missing values
assert_that(names(table(is.na(flow_m$newly_wasted)))=="FALSE")
assert_that(names(table(is.na(flow_m$recover)))=="FALSE")
assert_that(names(table(is.na(flow_m$relapse)))=="FALSE")
assert_that(names(table(is.na(flow_m$still_wasted)))=="FALSE")
assert_that(names(table(is.na(flow_m$not_wasted)))=="FALSE")
assert_that(names(table(is.na(flow_m$never_wasted)))=="FALSE")

# check for multiple categories
flow_m = flow_m %>% mutate(sum = newly_wasted + 
                             still_wasted + recover + not_wasted + never_wasted + 
                             relapse)
assert_that(names(table(flow_m$sum))=="1")


# Check that no child was classified in more
# than one category at any time point 
summary = flow_m %>%
  group_by(agem) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_wasted = mean(newly_wasted, na.rm = TRUE),
    still_wasted = mean(still_wasted, na.rm = TRUE),
    recover = mean(recover, na.rm = TRUE),
    not_wasted = mean(not_wasted, na.rm = TRUE),
    never_wasted = mean(never_wasted, na.rm = TRUE),
    relapse = mean(relapse, na.rm = TRUE))

summary = summary %>%
  mutate(sum = still_wasted + newly_wasted + recover + 
           never_wasted + not_wasted + relapse)

summary


# aggregate data within study, country, and agecat
wast_agg = flow_m %>%
  ungroup() %>%
  mutate(agem = as.factor(agem)) %>%
  group_by(studyid, country, agem) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_wasted = sum(newly_wasted),
    still_wasted = sum(still_wasted),
    recover = sum(recover),
    not_wasted = sum(not_wasted),
    never_wasted = sum(never_wasted),
    relapse = sum(relapse))  

# estimate random effects, format results
pooled_newly = run_rma_agem(data = wast_agg, 
                            n_name = "nchild", 
                            x_name = "newly_wasted", 
                            label = "Newly wasted",
                            method = "REML")

pooled_still = run_rma_agem(data = wast_agg, 
                            n_name = "nchild", 
                            x_name = "still_wasted", 
                            label = "Still wasted",
                            method = "REML")

pooled_not = run_rma_agem(data = wast_agg, 
                          n_name = "nchild", 
                          x_name = "not_wasted", 
                          label = "Not wasted",
                          method = "REML")

pooled_rec = run_rma_agem(data = wast_agg, 
                          n_name = "nchild", 
                          x_name = "recover",
                          label = "Recovered",
                          method = "REML")

pooled_relapse = run_rma_agem(data = wast_agg, 
                              n_name = "nchild", 
                              x_name = "relapse",
                              label = "Wasting relapse",
                              method = "REML")

pooled_never = run_rma_agem(data = wast_agg, 
                            n_name = "nchild", 
                            x_name = "never_wasted",
                            label = "Never wasted",
                            method = "REML")

wast_pooled = bind_rows(pooled_newly, 
                         pooled_still,
                         pooled_rec,
                         pooled_relapse,
                         pooled_not,
                         pooled_never
)

#----------------------------------------------
# setting estimates to 0 at birth for
# still, previously, relapse wasted
#----------------------------------------------

# identify which cells have 0's 
newly_0 = as.character(summary$agem[summary$newly_wasted==0])
still_0 = as.character(summary$agem[summary$still_wasted==0])
rec_0 = as.character(summary$agem[summary$recover==0])
relapse_0 = as.character(summary$agem[summary$relapse==0])
not_0 = as.character(summary$agem[summary$not_wasted==0])
never_0 = as.character(summary$agem[summary$never_wasted==0])

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

wast_pooled_corr = replace_zero(data = wast_pooled,
                                 age_list = newly_0,
                                 label = "Newly wasted")

wast_pooled_corr = replace_zero(data = wast_pooled_corr,
                                 age_list = still_0,
                                 label = "Still wasted")

wast_pooled_corr = replace_zero(data = wast_pooled_corr,
                                 age_list = not_0,
                                 label = "Not wasted")

wast_pooled_corr = replace_zero(data = wast_pooled_corr,
                                 age_list = rec_0,
                                 label = "Recovered")

wast_pooled_corr = replace_zero(data = wast_pooled_corr,
                                 age_list = relapse_0,
                                 label = "Wasting relapse")

wast_pooled_corr = replace_zero(data = wast_pooled_corr,
                                 age_list = never_0,
                                 label = "Never wasted")


saveRDS(flow_m, file=paste0(res_dir, "wastflow.RDS"))
saveRDS(wast_pooled_corr, file=paste0(res_dir, "wastflow_pooled.RDS"))


