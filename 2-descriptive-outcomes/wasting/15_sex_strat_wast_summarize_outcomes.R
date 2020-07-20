



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")



#monthly mean whz
d <- calc.monthly.agecat(d)

monthly.sex <- d %>% group_by(sex) %>% do(summary.whz(.)$whz.res)
monthly.region <- d %>% group_by(sex,region) %>% do(summary.whz(.)$whz.res)


monthly.whz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.sex),
  data.frame(cohort = "pooled", monthly.region)
)

#Get monthly whz quantiles
quantile_d <- d %>% group_by(agecat, sex, region) %>%
  mutate(N=n(),
         fifth_perc = quantile(whz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
  select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
quantile_d_overall <- d %>% group_by(agecat, sex) %>%
  mutate(N=n(),
         fifth_perc = quantile(whz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
  select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)

saveRDS(list(quantile_d=quantile_d, 
             quantile_d_overall=quantile_d_overall), 
        file = paste0(here(),"/results/quantile_data_wasting_sex_strat.RDS"))









wasting_desc_data <- bind_rows(
  data.frame(disease = "Wasting", age_range="1 month",   birth="yes", severe="no", measure= "Mean WLZ",  monthly.whz))

wasting_desc_data <- droplevels(wasting_desc_data)



unique(wasting_desc_data$agecat)
wasting_desc_data$agecat <- factor(wasting_desc_data$agecat, levels=unique(wasting_desc_data$agecat))

unique(wasting_desc_data$region)
wasting_desc_data$region[wasting_desc_data$region=="Asia"] <- "South Asia"
wasting_desc_data$region <- factor(wasting_desc_data$region, levels=c("Overall", "Africa", "Latin America", "South Asia"))



saveRDS(wasting_desc_data, file = paste0(here(),"/results/sex_strat_wasting_desc_data.RDS"))



