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

d <- d %>% rename(agecat=diffcat) %>% 
  mutate(country_cohort=paste0(studyid," ", country))

#-------------------------------------------
# check included cohorts
#-------------------------------------------
# excluding iLiNS-Zinc because the measurement ages were so close to 24 months that
# velocity was not calculated
vel_cohorts = monthly_and_quarterly_cohorts[-which(monthly_and_quarterly_cohorts == "iLiNS-Zinc")]
assert_that(setequal(unique(d$studyid), vel_cohorts),
            msg = "Check data. Included cohorts do not match.")



#-------------------------------------------
# function to fit the mean difference in haz by sex
#-------------------------------------------
est_mean_diff = function(data, age){
  
  data_sub = data %>% filter(agecat == age)
  
  # only run if there are sufficient observations
  # within age, sex strata 
  if(length(unique(data_sub$sex))==2 ){
    glm_fit = glm(y_rate ~ sex, data = data_sub)
    yi = glm_fit$coefficients[2]
    sei = sqrt(diag(vcov(glm_fit)))[2]
    N = nrow(data_sub)
    out = data.frame(agecat = age, yi = yi, sei = sei, n=N)
    return(out)
  }
  
}

#-------------------------------------------
# within each cohort, estimate the mean difference in haz
# by sex and age and save the mean difference and variance
#-------------------------------------------
country_cohort_list = as.list(unique(d$country_cohort))
agecat_list = unique(d$agecat)

# Length velocity 
meandiff_sex_list_lencm = list()

for(i in 1:length(country_cohort_list)){
  print(paste0("country_cohort ", country_cohort_list[i]))
  reslist = lapply(agecat_list, function(x) est_mean_diff(
    data = d %>% filter(country_cohort==country_cohort_list[[i]] & ycat == "lencm"),
    age = x
  ))
  meandiff_sex_list_lencm[[i]] = bind_rows(reslist) %>%
    mutate(country_cohort = country_cohort_list[[i]])
}

meandiff_sex_df_lencm = as.data.frame(bind_rows(meandiff_sex_list_lencm))
meandiff_sex_df_lencm = meandiff_sex_df_lencm %>% dplyr::select(country_cohort, everything())

# laz velocity 
meandiff_sex_list_LAZ = list()

for(i in 1:length(country_cohort_list)){
  print(paste0("country_cohort ", country_cohort_list[i]))
  reslist = lapply(agecat_list, function(x) est_mean_diff(
    data = d %>% filter(country_cohort==country_cohort_list[[i]] & ycat == "haz"),
    age = x
  ))
  meandiff_sex_list_LAZ[[i]] = bind_rows(reslist) %>%
    mutate(country_cohort = country_cohort_list[[i]])
}

meandiff_sex_df_LAZ = as.data.frame(bind_rows(meandiff_sex_list_LAZ))
meandiff_sex_df_LAZ = meandiff_sex_df_LAZ %>% dplyr::select(country_cohort, everything())

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
pooled_diff_age_list_lencm = lapply(agecat_list, function(x) 
  fit_rma_diff(data = meandiff_sex_df_lencm %>% filter(agecat==x), age =x))
pooled_diff_age_list_laz = lapply(agecat_list, function(x) 
  fit_rma_diff(data = meandiff_sex_df_LAZ %>% filter(agecat==x), age =x))

pooled_diff_age_df_lencm = bind_rows(pooled_diff_age_list_lencm)
pooled_diff_age_df_laz = bind_rows(pooled_diff_age_list_laz)

#-------------------------------------------
# save data
#-------------------------------------------
saveRDS(pooled_diff_age_df_lencm, file = paste0(res_dir, "stunting/lencm_vel_meandiff_sex.RDS"))
saveRDS(pooled_diff_age_df_laz, file = paste0(res_dir, "stunting/haz_vel_meandiff_sex.RDS"))

