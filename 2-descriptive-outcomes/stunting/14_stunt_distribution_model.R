##########################################
# ki longitudinal manuscripts
# stunting analysis

# parametric distributional model
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(fitdistrplus)
library(sn)

d <- readRDS(stunting_data_path)

#-------------------------------------------
# check included cohorts
#-------------------------------------------
assert_that(setequal(unique(d$studyid), monthly_and_quarterly_cohorts),
            msg = "Check data. Included cohorts do not match.")


#------------------------------
# define age windows
#------------------------------
d_clean <- calc.ci.agecat(d, range = 3, birth="no")

agelst3_birthstrat = list(
  "Birth",
  "8 days-3 months",
  "3-6 months",
  "6-9 months",
  "9-12 months",
  "12-15 months",
  "15-18 months",
  "18-21 months",
  "21-24 months"
)


#------------------------------
# fit skewed normal model 
#------------------------------
fit_sn = function(data){
  fit = selm(haz ~ 1, data = data)
  out = as.data.frame(t(fit@param$cp))
  out$agecat = unique(data$agecat)
  assert_that(length(unique(data$studyid))==1)
  out$studyid = unique(data$studyid)
  return(out)
}

studyid_list = as.list(unique(d_clean$studyid))

sn_fits_list = list()
sn_fits_age_list = list()

for(i in 1:length(studyid_list)){
  print(paste0("i: ", i))
  for(j in 1:length(agelst3_birthstrat)){
    print(paste0("j: ", j))
    fit_data = d_clean %>% 
      filter(agecat == agelst3_birthstrat[[j]]) %>% 
      filter(studyid==studyid_list[[i]])
    if(nrow(fit_data)<30){
      sn_fits_age_list[[j]] = data.frame(mean = NA, `s.d.` = NA, gamma1 = NA)
    }else{
      sn_fits_age_list[[j]] = fit_sn(data = fit_data)
    }
  }
  sn_fits_list[[i]] = bind_rows(sn_fits_age_list)
  sn_fits_age_list[[j]] = NULL
  
}

sn_fits_age_df = bind_rows(sn_fits_list)

sn_fits_age_df$mean_f = paste0("Mean: ", sprintf("%0.02f", sn_fits_age_df$mean))
sn_fits_age_df$sd_f = paste0("SD: ", sprintf("%0.02f", sn_fits_age_df$`s.d.`))
sn_fits_age_df$gamma1_f = paste0("Gamma: ", sprintf("%0.02f", sn_fits_age_df$gamma1))
sn_fits_age_df$label = paste0(sn_fits_age_df$mean_f, "\n", 
                              sn_fits_age_df$sd_f, "\n",
                              sn_fits_age_df$gamma1_f)

saveRDS(sn_fits_age_df, paste0(res_dir, "stunting/stunt_skewed_normal.RDS"))
