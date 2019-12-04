



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load(paste0(ghapdata_dir, "Wasting_inc_rf_data.RData"))
load(paste0(ghapdata_dir, "Wasting_inc_sens_data.RData"))

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")
d30 <- d30 %>% filter(measurefreq == "monthly")
d90 <- d90 %>% filter(measurefreq == "monthly")


d <- calc.ci.agecat(d, range = 6)
d30 <- calc.ci.agecat(d30, range = 6)
d90 <- calc.ci.agecat(d90, range = 6)





#Incidence rate - 30 days
ir.data <- summary.ir(d30)
ir.region <- d30 %>% group_by(region) %>% do(summary.ir(.)$ir.res)
ir.cohort <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir30 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
  data.frame(cohort = "pooled", ir.region),
  ir.cohort
)


#Incidence rate - 60 days
ir.data <- summary.ir(d)
ir.region <- d %>% group_by(region) %>% do(summary.ir(.)$ir.res)
ir.cohort <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir60 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
  data.frame(cohort = "pooled", ir.region),
  ir.cohort
)


#Incidence rate - 90 days
ir.data <- summary.ir(d90)
ir.region <- d90 %>% group_by(region) %>% do(summary.ir(.)$ir.res)
ir.cohort <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir90 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
  data.frame(cohort = "pooled", ir.region),
  ir.cohort
)


d <- bind_rows(
  data.frame(disease = "Wasting", age_range="30 days",   birth="yes", severe="no", measure= "Incidence rate",  ir30),
  data.frame(disease = "Wasting", age_range="60 days",   birth="yes", severe="no", measure= "Incidence rate",  ir60),
  data.frame(disease = "Wasting", age_range="90 days",   birth="yes", severe="no", measure= "Incidence rate",  ir90)
)


d$est <- d$est * 1000
d$lb <- d$lb * 1000
d$ub <- d$ub * 1000

d <- d %>% subset(., select = -c(se, nmeas.f,  ptest.f, pt.f))

unique(d$agecat)
d$agecat <- factor(d$agecat, levels=unique(d$agecat))

unique(d$region)
d$region <- factor(d$region, levels=c("Overall", "Africa", "Latin America", "South Asia"))


saveRDS(d, file = paste0(here(),"/results/wast_ir_sens_data.rds"))



