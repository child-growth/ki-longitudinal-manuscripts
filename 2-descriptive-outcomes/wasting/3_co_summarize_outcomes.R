



rm(list = ls())

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))

load("U://ucb-superlearner/data/co-occurrence_data.RData")


# load("U:/Data/Wasting/Wasting_inc_data.RData")
# load("U:/Data/Wasting/Wasting_inc_noRec_data.RData")


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")
# d_noBW <- d_noBW %>% filter(measurefreq == "monthly")
# d_noRec <- d_noRec %>% filter(measurefreq == "monthly")
# d_noBW_noRec <- d_noBW_noRec %>% filter(measurefreq == "monthly")


#Prevalence
d <- calc.prev.agecat(d)
prev.data <- summary.prev.co(d)
prev.region <- d %>% group_by(region) %>% do(summary.prev.co(.)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)

#Severe wasting prevalence
sev.prev.data <- summary.prev.co(d, severe = T)
sev.prev.region <-
  d %>% group_by(region) %>% do(summary.prev.co(., severe = T)$prev.res)
sev.prev.cohort <-
  sev.prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

sev.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.prev.data$prev.res),
  data.frame(cohort = "pooled", sev.prev.region),
  sev.prev.cohort
)

#mean waz
waz.data <- summary.waz(d)
waz.region <- d %>% group_by(region) %>% do(summary.waz(.)$waz.res)
waz.cohort <-
  waz.data$waz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanwaz,  ci.lb,  ci.ub)) %>%
  rename(est = meanwaz,  lb = ci.lb,  ub = ci.ub)

waz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", waz.data$waz.res),
  data.frame(cohort = "pooled", waz.region),
  waz.cohort
)


#monthly mean waz
d <- calc.monthly.agecat(d)
monthly.data <- summary.waz(d)
monthly.region <- d %>% group_by(region) %>% do(summary.waz(.)$waz.res)
monthly.cohort <-
  monthly.data$waz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanwaz,  ci.lb,  ci.ub)) %>%
  rename(est = meanwaz,  lb = ci.lb,  ub = ci.ub)

monthly.waz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.data$waz.res),
  data.frame(cohort = "pooled", monthly.region),
  monthly.cohort
)




# #Cumulative inc
# d <- calc.ci.agecat(d, range = 6)
# agelst = list("0-6 months", "6-12 months", "12-18 months", "18-24 months")
# ci.data <- summary.ci(d, agelist = agelst)
# ci.region <- d %>% group_by(region) %>% do(summary.ci(., agelist = agelst)$ci.res)
# ci.cohort <-
#   ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
#   rename(est = yi,  lb = ci.lb,  ub = ci.ub)
# 
# ci <- bind_rows(
#   data.frame(cohort = "pooled", region = "Overall", ci.data$ci.res),
#   data.frame(cohort = "pooled", ci.region),
#   ci.cohort
# )
# 
# #Cumulative inc 3 month intervals
# d3 <- calc.ci.agecat(d, range = 3)
# agelst3 = list(
#   "0-3 months",
#   "3-6 months",
#   "6-9 months",
#   "9-12 months",
#   "12-15 months",
#   "15-18 months",
#   "18-21 months",
#   "21-24 months"
# )
# ci.data3 <- summary.ci(d3, agelist = agelst3)
# ci.region3 <- d3 %>% group_by(region) %>% do(summary.ci(., agelist = agelst3)$ci.res)
# ci.cohort3 <-
#   ci.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
#   rename(est = yi,  lb = ci.lb,  ub = ci.ub)
# 
# ci_3 <- bind_rows(
#   data.frame(cohort = "pooled", region = "Overall", ci.data3$ci.res),
#   data.frame(cohort = "pooled", ci.region3),
#   ci.cohort3
# )







co_desc_data <- bind_rows(
  data.frame(disease = "co-occurrence", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence", prev),
  data.frame(disease = "co-occurrence", age_range="3 months",   birth="yes", severe="yes", measure= "Prevalence", sev.prev),
  data.frame(disease = "Underweight", age_range="3 months",   birth="yes", severe="no", measure= "Mean WAZ",  waz),
  data.frame(disease = "Underweight", age_range="1 month",   birth="yes", severe="no", measure= "Mean WAZ",  monthly.waz)
)




co_desc_data <- co_desc_data %>% subset(., select = -c(se, nmeas.f,  ptest.f))

unique(co_desc_data$agecat)
co_desc_data$agecat <- factor(co_desc_data$agecat, levels=unique(co_desc_data$agecat))

unique(co_desc_data$region)
co_desc_data$region <- factor(co_desc_data$region, levels=c("Overall", "Africa", "Latin America", "Asia", "Pakistan"))



save(co_desc_data, file = "U:/Data/Wasting/co_desc_data.Rdata")
save(co_desc_data, file = paste0(here(),"/results/co_desc_data.Rdata"))



