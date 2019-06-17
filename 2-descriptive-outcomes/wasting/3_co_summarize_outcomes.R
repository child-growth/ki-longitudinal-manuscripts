



rm(list = ls())

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))

load("U://ucb-superlearner/Manuscript analysis data/co-occurrence_data.RData")



#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")


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

#Severe wasting and stunting prevalence
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

#Underweight Prevalence
summary(d$whz)
df <- d %>% rename(whz=waz)
summary(df$whz)

d <- calc.prev.agecat(d)
prev.data <-  summary.prev.whz(d)
prev.region <- d %>% group_by(region) %>% do(summary.prev.whz(.)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

underweight.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
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




#Prevalence of wasting based on MUAC
d <- calc.prev.agecat(d)
m.prev.data <- summary.prev.muaz(d)
m.prev.region <- d %>% group_by(region) %>% do(summary.prev.muaz(.)$m.prev.res)
m.prev.cohort <-
  m.prev.data$m.prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

muaz.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", m.prev.data$m.prev.res),
  data.frame(cohort = "pooled", m.prev.region),
  m.prev.cohort
)

#make wasting comparison in same subset
prev.region <- d %>% group_by(region) %>% do(summary.prev.muaz(.)$prev.res)
prev.cohort <-
  m.prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

m.whz.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", m.prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)



co_desc_data <- bind_rows(
  data.frame(disease = "co-occurrence", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence", prev),
  data.frame(disease = "co-occurrence", age_range="3 months",   birth="yes", severe="yes", measure= "Prevalence", sev.prev),
  data.frame(disease = "Underweight", age_range="3 months",   birth="yes", severe="no", measure= "Mean WAZ",  waz),
  data.frame(disease = "Underweight", age_range="1 month",   birth="yes", severe="no", measure= "Mean WAZ",  monthly.waz),
  data.frame(disease = "Underweight", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence",  underweight.prev),
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="no", measure= "MUAC Prevalence",  muaz.prev),
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="no", measure= "MUAC WHZ Prevalence",  m.whz.prev)
)




co_desc_data <- co_desc_data %>% subset(., select = -c(se, nmeas.f,  ptest.f))

unique(co_desc_data$agecat)
co_desc_data$agecat <- factor(co_desc_data$agecat, levels=unique(co_desc_data$agecat))

unique(co_desc_data$region)
co_desc_data$region <- factor(co_desc_data$region, levels=c("Overall", "Africa", "Latin America", "Asia", "Pakistan"))



save(co_desc_data, file = "U:/Data/Wasting/co_desc_data.Rdata")
save(co_desc_data, file = paste0(here(),"/results/co_desc_data.Rdata"))



