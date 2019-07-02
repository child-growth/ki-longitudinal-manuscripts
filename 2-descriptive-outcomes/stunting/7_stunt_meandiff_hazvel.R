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
d <- readRDS(file=paste0(ghapdata_dir, "velocity_longfmt.rds"))
head(d)

d <- d %>% rename(agecat=diffcat)


#-------------------------------------------
# function to fit the mean difference in haz by sex
#-------------------------------------------
est_mean_diff = function(data, age){
  
  data_sub = data %>% filter(agecat == age)
  
  # only run if there are sufficient observations
  # within age, sex strata and that there are at least
  # 100 observations in that age category
  if(length(unique(data_sub$sex))==2 & nrow(data_sub)>100){
    glm_fit = glm(y_rate ~ sex, data = data_sub)
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

# Length velocity 
meandiff_sex_list_lencm = list()

for(i in 1:length(cohort_list)){
  print(paste0("studyid ", cohort_list[i]))
  reslist = lapply(agecat_list, function(x) est_mean_diff(
    data = d %>% filter(studyid==cohort_list[[i]] & ycat == "lencm"),
    age = x
  ))
  meandiff_sex_list_lencm[[i]] = bind_rows(reslist) %>%
    mutate(studyid = cohort_list[[i]])
}

meandiff_sex_df_lencm = as.data.frame(bind_rows(meandiff_sex_list_lencm))
meandiff_sex_df_lencm = meandiff_sex_df_lencm %>% select(studyid, everything())

# laz velocity 
meandiff_sex_list_LAZ = list()

for(i in 1:length(cohort_list)){
  print(paste0("studyid ", cohort_list[i]))
  reslist = lapply(agecat_list, function(x) est_mean_diff(
    data = d %>% filter(studyid==cohort_list[[i]] & ycat == "haz"),
    age = x
  ))
  meandiff_sex_list_LAZ[[i]] = bind_rows(reslist) %>%
    mutate(studyid = cohort_list[[i]])
}

meandiff_sex_df_LAZ = as.data.frame(bind_rows(meandiff_sex_list_LAZ))
meandiff_sex_df_LAZ = meandiff_sex_df_LAZ %>% select(studyid, everything())

#-------------------------------------------
# function to pool using rma
#-------------------------------------------

fit_rma_diff = function(data, age){
  fit = rma(yi = yi,  sei = sei,
            method="FE", data = data %>% filter(agecat==age))
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
pooled_diff_age_list_lencm = lapply(agecat_list, function(x) 
  fit_rma_diff(data = meandiff_sex_df_lencm %>% filter(agecat==x), age =x))
pooled_diff_age_list_laz = lapply(agecat_list, function(x) 
  fit_rma_diff(data = meandiff_sex_df_LAZ %>% filter(agecat==x), age =x))

pooled_diff_age_df_lencm = bind_rows(pooled_diff_age_list_lencm)
pooled_diff_age_df_laz = bind_rows(pooled_diff_age_list_laz)

#-------------------------------------------
# save data
#-------------------------------------------
saveRDS(pooled_diff_age_df_lencm, file = paste0(res_dir, "lencm_vel_meandiff_sex.RDS"))
saveRDS(pooled_diff_age_df_laz, file = paste0(res_dir, "haz_vel_meandiff_sex.RDS"))

