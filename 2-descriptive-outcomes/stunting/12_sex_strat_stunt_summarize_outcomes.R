



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_stunt_functions.R"))

d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

head(d)
d <- d %>% subset(., select = -c(tr))
cov <- cov %>% subset(., select = c(studyid, subjid, birthwt))

d <- left_join(d, cov,by=c("studyid", "subjid"))


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")



#monthly mean haz
d <- calc.monthly.agecat(d)

monthly.sex <- d %>% group_by(sex) %>% do(summary.haz(.)$haz.res)
monthly.region <- d %>% group_by(sex,region) %>% do(summary.haz(.)$haz.res)

monthly.sex.BW <- d %>% group_by(sex, birthwt) %>% do(summary.haz(.)$haz.res)
monthly.region.BW <- d %>% filter(!is.na(birthwt)) %>% 
  filter(region!="Latin America") %>% droplevels(.) %>%
  group_by(sex, birthwt, region) %>% do(summary.haz(.)$haz.res)


monthly.haz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.sex),
  data.frame(cohort = "pooled", monthly.region)
)

monthly.haz.BW <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.sex.BW),
  data.frame(cohort = "pooled", monthly.region.BW)
)


#Get monthly haz quantiles
quantile_d <- d %>% group_by(agecat, sex, region) %>%
  mutate(N=n(),
         fifth_perc = quantile(haz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]]) %>%
  select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
quantile_d_overall <- d %>% group_by(agecat, sex) %>%
  mutate(N=n(),
         fifth_perc = quantile(haz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]]) %>%
  select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)



#Get monthly haz quantiles - stratified by birthweight
quantile_d_BW <- d %>% group_by(agecat, sex, region, birthwt) %>%
  mutate(N=n(),
         fifth_perc = quantile(haz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]]) %>%
  select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
quantile_d_BW_overall <- d %>% group_by(agecat, sex, birthwt) %>%
  mutate(N=n(),
         fifth_perc = quantile(haz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]]) %>%
  select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)


saveRDS(list(quantile_d=quantile_d, 
             quantile_d_overall=quantile_d_overall), 
        file = paste0(here(),"/results/quantile_data_stunting_sex_strat.RDS"))


saveRDS(list(quantile_d=quantile_d_BW, 
             quantile_d_overall=quantile_d_BW_overall), 
        file = paste0(here(),"/results/quantile_data_stunting_sex_BW_strat.RDS"))







stunting_desc_data <- bind_rows(
  data.frame(disease = "stunting", age_range="1 month",   birth="yes", severe="no", measure= "Mean LAZ",  monthly.haz),
  data.frame(disease = "stunting", age_range="1 month",   birth="yes", severe="no", measure= "Mean LAZ - BW",  monthly.haz.BW)
  )

stunting_desc_data <- droplevels(stunting_desc_data)



unique(stunting_desc_data$agecat)
stunting_desc_data$agecat <- factor(stunting_desc_data$agecat, levels=unique(stunting_desc_data$agecat))

unique(stunting_desc_data$region)
stunting_desc_data$region[stunting_desc_data$region=="Asia"] <- "South Asia"
stunting_desc_data$region <- factor(stunting_desc_data$region, levels=c("Overall", "Africa", "Latin America", "South Asia"))


saveRDS(stunting_desc_data, file = paste0(here(),"/results/sex_strat_stunting_desc_data.RDS"))



