##########################################
# ki longitudinal manuscripts
# stunting analysis

# calculate mean difference in HAZ and HAZ velocity 
# by sex within age strata
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_stunt_functions.R"))

#-------------------------------------------
# Load and pre-process data
#-------------------------------------------
d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

head(d)
d <- d %>% subset(., select = -c(tr))

# using growth velocity cutoffs
d = d %>% 
  mutate(agecat=ifelse(agedays<3*30.4167,"0-3",
                       ifelse(agedays>=3*30.4167 & agedays<6*30.4167,"3-6",
                              ifelse(agedays>=6*30.4167 & agedays<9*30.4167,"6-9",
                                     ifelse(agedays>=9*30.4167 & agedays<12*30.4167,"9-12",
                                            ifelse(agedays>=12*30.4167 & agedays<15*30.4167,"12-15",
                                                   ifelse(agedays>=15*30.4167 & agedays<18*30.4167,"15-18",
                                                          ifelse(agedays>=18*30.4167 & agedays<21*30.4167,"18-21",
                                                                 ifelse(agedays>=21*30.4167& agedays<24*30.4167,"21-24",""))))))))) %>%
  mutate(agecat=factor(agecat,levels=c("0-3","3-6","6-9","9-12",
                                       "12-15","15-18","18-21","21-24"))) 

d <- d %>%  filter(!is.na(agecat)) 


#-------------------------------------------
# function to fit the mean difference in haz by sex
#-------------------------------------------
est_mean_diff = function(data, age){
  
  data_sub = data %>% filter(agecat == age)
  
  # only run if there are sufficient observations
  # within age, sex strata and that there are at least
  # 100 observations in that age category
  if(length(unique(data_sub$sex))==2 & nrow(data_sub)>100){
     glm_fit = glm(haz ~ sex, data = data_sub)
     yi = glm_fit$coefficients[2]
     sei = sqrt(diag(vcov(glm_fit)))[2]
     out = data.frame(agecat = age, yi = yi, sei = sei)
     return(out)
  }
  
}

#-------------------------------------------
# within each cohort, estimate the mean difference in haz
# by sex and age and save the mean difference and variance
#-------------------------------------------
cohort_list = as.list(unique(d$studyid))
agecat_list = unique(d$agecat)

meandiff_sex_list = list()

for(i in 1:length(cohort_list)){
  print(paste0("studyid ", cohort_list[i]))
  reslist = lapply(agecat_list, function(x) est_mean_diff(
    data = d %>% filter(studyid==cohort_list[[i]]),
    age = x
  ))
  meandiff_sex_list[[i]] = bind_rows(reslist) %>%
    mutate(studyid = cohort_list[[i]])
}

meandiff_sex_df = as.data.frame(bind_rows(meandiff_sex_list))
meandiff_sex_df = meandiff_sex_df %>% select(studyid, everything())


#-------------------------------------------
# function to pool using rma
#-------------------------------------------

fit_rma_diff = function(data, age){
  fit = rma(yi = yi,  sei = sei,
                method="REML", data = data %>% filter(agecat==age))
  out = data.frame(
    agecat = age,
    est = fit$beta,
    se = fit$se,
    lb = fit$beta - 1.96 * fit$se,
    ub = fit$beta + 1.96 * fit$se
  )
  
  rownames(out)=NULL
  
  return(out)
}

#-------------------------------------------
# obtained pooled mean differences by sex by age
#-------------------------------------------
pooled_diff_age_list = lapply(agecat_list, function(x) 
  fit_rma_diff(data = meandiff_sex_df %>% filter(agecat==x), age =x))

pooled_diff_age_df = bind_rows(pooled_diff_age_list)

#-------------------------------------------
# save data
#-------------------------------------------
saveRDS(pooled_diff_age_df, file = paste0(res_dir, "haz_meandiff_sex.RDS"))
