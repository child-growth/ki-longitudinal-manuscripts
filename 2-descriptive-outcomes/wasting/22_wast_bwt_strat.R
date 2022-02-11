



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

load(paste0(ghapdata_dir, "Wasting_inc_rf_data.RData"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

head(d)
cov <- cov %>% 
  subset(., select = c(studyid, subjid, birthwt, gagebrth)) %>% 
  filter(!is.na(birthwt) | !is.na(gagebrth)) %>% droplevels()

d <- left_join(d, cov,by=c("studyid", "subjid"))

table(d$studyid, d$birthwt)
table(d$studyid, d$birthwt, d$measurefreq)

table(d$studyid, d$gagebrth)
table(d$studyid, d$gagebrth, d$measurefreq)

table(d$studyid, d$gagebrth, d$region)
table(d$studyid, d$birthwt, d$gagebrth)

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")

#NOTE! DO I WANT TO SUBSET TO MONTHLY? HOW MANY DATAPOINTS


#monthly mean whz
d <- calc.monthly.agecat(d)

monthly.gagebrth <- d %>% filter(!is.na(gagebrth)) %>% 
  group_by(gagebrth) %>% do(summary.whz(., N_filter=5)$whz.res)
monthly.gagebrth.region <- d %>% filter(!is.na(gagebrth)) %>% 
  group_by(gagebrth,region) %>% do(summary.whz(., N_filter=5)$whz.res)


monthly.birthwt <- d %>% filter(!is.na(birthwt)) %>% 
  group_by(birthwt) %>% do(summary.whz(., N_filter=5)$whz.res)
monthly.birthwt.region <- d %>% filter(!is.na(birthwt)) %>% 
  group_by(birthwt,region) %>% do(summary.whz(., N_filter=5)$whz.res)

monthly.gagebrth.BW <- d %>% filter(!is.na(birthwt), !is.na(gagebrth)) %>% 
  group_by(gagebrth, birthwt) %>% do(summary.whz(., N_filter=5)$whz.res)
monthly.region.BW <- d %>% filter(!is.na(birthwt), !is.na(gagebrth)) %>% 
  filter(region!="Latin America") %>% droplevels(.) %>%
  group_by(gagebrth, birthwt, region) %>% do(summary.whz(., N_filter=5)$whz.res)



monthly.whz <- bind_rows(
  data.frame(V="gagebrth", cohort = "pooled", region = "Overall", monthly.gagebrth),
  data.frame(V="birthwt", cohort = "pooled", region = "Overall", monthly.birthwt),
  data.frame(V="birthwt and gagebrth", cohort = "pooled", region = "Overall", monthly.gagebrth.BW),
  data.frame(V="gagebrth", cohort = "pooled", monthly.gagebrth.region),
  data.frame(V="birthwt", cohort = "pooled", monthly.birthwt.region),
  data.frame(V="birthwt and gagebrth", cohort = "pooled", monthly.region.BW)
)




# #Get monthly whz quantiles
# quantile_d <- d %>% group_by(agecat, gagebrth, region) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# quantile_d_overall <- d %>% group_by(agecat, gagebrth) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# 
# quantile_d_birthwt <- d %>% group_by(agecat, birthwt, region) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# quantile_d_birthwt_overall <- d %>% group_by(agecat, birthwt) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# 
# 
# 
# #Get monthly whz quantiles - stratified by birthweight
# quantile_d_gagebrth_BW <- d %>% group_by(agecat, birthwt, gagebrth, region) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# quantile_d_gagebrth_BW_overall <- d %>% group_by(agecat, birthwt, gagebrth, birthwt) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)


# saveRDS(list(quantile_d=quantile_d, 
#              quantile_d_overall=quantile_d_overall), 
#         file = paste0(here(),"/results/quantile_data_wasting_gagebrth_strat.RDS"))
# 
# 
# saveRDS(list(quantile_d=quantile_d_BW, 
#              quantile_d_overall=quantile_d_BW_overall), 
#         file = paste0(here(),"/results/quantile_data_wasting_gagebrth_BW_strat.RDS"))




#Prevalence
d <- calc.prev.agecat(d)
prev.data <- summary.prev.whz(d, N_filter=5)
prev.birthwt <- d %>% filter(!is.na(birthwt)) %>% 
  group_by(birthwt) %>% do(summary.prev.whz(., N_filter=5)$prev.res)
prev.birthwt.region <- d %>% filter(!is.na(birthwt)) %>% droplevels() %>%
  group_by(birthwt, region) %>% do(summary.prev.whz(., N_filter=5)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub) %>% mutate(V="overall")

pres.res.birthwt <-
  prev <- bind_rows(
    data.frame(V="overall", cohort = "pooled", region = "Overall", prev.data$prev.res),
    data.frame(V="birthwt", cohort = "pooled", region = "Overall", prev.birthwt),
    data.frame(V="birthwt", cohort = "pooled", prev.birthwt.region),
    prev.cohort
  )  


prev.gagebrth <- d %>% filter(!is.na(gagebrth)) %>% 
  group_by(gagebrth) %>% do(summary.prev.whz(., N_filter=5)$prev.res)
prev.gagebrth.region <- d %>% filter(!is.na(gagebrth)) %>% droplevels() %>%
  group_by(gagebrth, region) %>% do(summary.prev.whz(., N_filter=5)$prev.res)

pres.res.gagebrth <- bind_rows(
    data.frame(V="gagebrth",cohort = "pooled", region = "Overall", prev.gagebrth),
    data.frame(V="gagebrth",cohort = "pooled", prev.gagebrth.region)
    )  


prev.birthwt.gagebrth <- d %>% filter(!is.na(birthwt),!is.na(gagebrth)) %>% 
  group_by(birthwt,gagebrth) %>% do(summary.prev.whz(., N_filter=5)$prev.res)
prev.birthwt.gagebrth.region <- d %>% filter(!is.na(birthwt),!is.na(gagebrth)) %>% droplevels() %>%
  group_by(birthwt,gagebrth, region) %>% do(summary.prev.whz(., N_filter=5)$prev.res)

pres.res.birthwt.gagebrth <- bind_rows(
  data.frame(V="birthwt and gagebrth",cohort = "pooled", region = "Overall", prev.birthwt.gagebrth),
  data.frame(V="birthwt and gagebrth",cohort = "pooled", prev.birthwt.gagebrth.region)
)  

pres.res <- bind_rows(
    pres.res.birthwt,
    pres.res.gagebrth,
    pres.res.birthwt.gagebrth
)


#Cumulative incidence
d3 <- calc.ci.agecat(d, range = 3)
ci.data <- summary.wast.ci(d3, age.range=3)

ci.birthwt <- d3 %>% filter(!is.na(birthwt)) %>% 
  group_by(birthwt) %>% do(summary.wast.ci(., age.range = 3, N_filter=5)$ci.res)
ci.birthwt.region <- d3 %>% filter(!is.na(birthwt)) %>% droplevels() %>%
  group_by(birthwt, region) %>% do(summary.wast.ci(., age.range = 3, N_filter=5)$ci.res)
ci.cohort <-
  ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub) %>% mutate(V="overall")

ci.res.birthwt <- bind_rows(
  data.frame(V="birthwt", cohort = "pooled", region = "Overall", ci.birthwt),
  data.frame(V="birthwt", cohort = "pooled", ci.birthwt.region),
  ci.cohort
)  


ci.gagebrth <- d3 %>% filter(!is.na(gagebrth)) %>% 
  group_by(gagebrth) %>% do(summary.wast.ci(., age.range = 3, N_filter=5)$ci.res)
ci.gagebrth.region <- d3 %>% filter(!is.na(gagebrth)) %>% droplevels() %>%
  group_by(gagebrth, region) %>% do(summary.wast.ci(., age.range = 3, N_filter=5)$ci.res)

ci.res.gagebrth <- bind_rows(
  data.frame(V="gagebrth",cohort = "pooled", region = "Overall", ci.gagebrth),
  data.frame(V="gagebrth",cohort = "pooled", ci.gagebrth.region)
)  


ci.birthwt.gagebrth <- d3 %>% filter(!is.na(birthwt),!is.na(gagebrth)) %>% 
  group_by(birthwt,gagebrth) %>% do(summary.wast.ci(., age.range = 3, N_filter=5)$ci.res)
ci.birthwt.gagebrth.region <- d3 %>% filter(!is.na(birthwt),!is.na(gagebrth)) %>% droplevels() %>%
  group_by(birthwt,gagebrth, region) %>% do(summary.wast.ci(., age.range = 3, N_filter=5)$ci.res)

ci.res.birthwt.gagebrth <- bind_rows(
  data.frame(V="birthwt and gagebrth",cohort = "pooled", region = "Overall", ci.birthwt.gagebrth),
  data.frame(V="birthwt and gagebrth",cohort = "pooled", ci.birthwt.gagebrth.region)
)  

ci.res <- bind_rows(
  ci.res.birthwt,
  ci.res.gagebrth,
  ci.res.birthwt.gagebrth
)



wasting_desc_data <- bind_rows(
  data.frame(disease = "wasting", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence",  pres.res),
  data.frame(disease = "wasting", age_range="1 month",   birth="yes", severe="no", measure= "Mean WLZ",  monthly.whz),
  data.frame(disease = "wasting", age_range="3 months",   birth="yes", severe="no", measure= "Cumulative incidence",  ci.res)
)
wasting_desc_data <- droplevels(wasting_desc_data)


#Add in prevalence above, then estimate wasting prevalence below



unique(wasting_desc_data$agecat)
wasting_desc_data$agecat <- factor(wasting_desc_data$agecat, levels=unique(wasting_desc_data$agecat))

unique(wasting_desc_data$region)
wasting_desc_data$region[wasting_desc_data$region=="Asia"] <- "South Asia"
wasting_desc_data$region <- factor(wasting_desc_data$region, levels=c("Overall", "Africa", "Latin America", "South Asia"))



saveRDS(wasting_desc_data, file = paste0(ghapdata_dir,"gagebrth_strat_wasting_desc_data.RDS"))



