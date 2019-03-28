



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load("U:/ucb-superlearner/data/Wasting_inc_data.RData")
load("U:/ucb-superlearner/data/Wasting_inc_noRec_data.RData")


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")
d_noBW <- d_noBW %>% filter(measurefreq == "monthly")
d_noRec <- d_noRec %>% filter(measurefreq == "monthly")
d_noBW_noRec <- d_noBW_noRec %>% filter(measurefreq == "monthly")


#Prevalence
d <- calc.prev.agecat(d)
prev.data <- summary.prev.whz(d)
prev.region <- d %>% group_by(region) %>% do(summary.prev.whz(.)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)

#Severe wasting prevalence
sev.prev.data <- summary.prev.whz(d, severe.wasted = T)
sev.prev.region <-
  d %>% group_by(region) %>% do(summary.prev.whz(., severe.wasted = T)$prev.res)
sev.prev.cohort <-
  sev.prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

sev.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.prev.data$prev.res),
  data.frame(cohort = "pooled", sev.prev.region),
  sev.prev.cohort
)

#mean whz
whz.data <- summary.whz(d)
whz.region <- d %>% group_by(region) %>% do(summary.whz(.)$whz.res)
whz.cohort <-
  whz.data$whz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanwhz,  ci.lb,  ci.ub)) %>%
  rename(est = meanwhz,  lb = ci.lb,  ub = ci.ub)

whz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", whz.data$whz.res),
  data.frame(cohort = "pooled", whz.region),
  whz.cohort
)


#monthly mean whz
d <- calc.monthly.agecat(d)
monthly.data <- summary.whz(d)
monthly.region <- d %>% group_by(region) %>% do(summary.whz(.)$whz.res)
monthly.cohort <-
  monthly.data$whz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanwhz,  ci.lb,  ci.ub)) %>%
  rename(est = meanwhz,  lb = ci.lb,  ub = ci.ub)

monthly.whz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.data$whz.res),
  data.frame(cohort = "pooled", monthly.region),
  monthly.cohort
)

#Get monthly whz quantiles
quantile_d <- d %>% group_by(agecat, region) %>%
  mutate(fifth_perc = quantile(whz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
  select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc)
quantile_d_overall <- d %>% group_by(agecat) %>%
  mutate(fifth_perc = quantile(whz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
  select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc)
save(quantile_d, quantile_d_overall, file = paste0(here(),"/results/quantile_data_wasting.Rdata"))




#Cumulative inc
d <- calc.ci.agecat(d, range = 6)
agelst = list("0-6 months", "6-12 months", "12-18 months", "18-24 months")
ci.data <- summary.ci(d, agelist = agelst)
ci.region <- d %>% group_by(region) %>% do(summary.ci(., agelist = agelst)$ci.res)
ci.cohort <-
  ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ci <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data$ci.res),
  data.frame(cohort = "pooled", ci.region),
  ci.cohort
)

#Cumulative inc 3 month intervals
d3 <- calc.ci.agecat(d, range = 3)
agelst3 = list(
  "0-3 months",
  "3-6 months",
  "6-9 months",
  "9-12 months",
  "12-15 months",
  "15-18 months",
  "18-21 months",
  "21-24 months"
)
ci.data3 <- summary.ci(d3, agelist = agelst3)
ci.region3 <- d3 %>% group_by(region) %>% do(summary.ci(., agelist = agelst3)$ci.res)
ci.cohort3 <-
  ci.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ci_3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data3$ci.res),
  data.frame(cohort = "pooled", ci.region3),
  ci.cohort3
)

#Incidence proportions 3 month intervals
ip.data3 <- summary.incprop(d3, agelist = agelst3)
ip.region3 <- d3 %>% group_by(region) %>% do(summary.incprop(., agelist = agelst3)$ci.res)
ip.cohort3 <-
  ip.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ip_3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ip.data3$ci.res),
  data.frame(cohort = "pooled", ip.region3),
  ip.cohort3
)


#Cumulative inc, no birth
d_noBW <- calc.ci.agecat(d_noBW, range = 6)
ci.data.nobirth <- summary.ci(d_noBW, agelist = agelst)
ci.region.nobirth <-
  d %>% group_by(region) %>% do(summary.ci(., agelist = agelst)$ci.res)
ci.cohort.nobirth <-
  ci.data.nobirth$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ci_nobw <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data.nobirth$ci.res),
  data.frame(cohort = "pooled", ci.region.nobirth),
  ci.cohort.nobirth
)


#Cumulative inc 3 month intervals
d3 <- calc.ci.agecat(d_noBW, range = 3)
agelst3 = list(
  "0-3 months",
  "3-6 months",
  "6-9 months",
  "9-12 months",
  "12-15 months",
  "15-18 months",
  "18-21 months",
  "21-24 months"
)
ci.data.nobirth3 <- summary.ci(d3, agelist = agelst3)
ci.region.nobirth3 <-
  d3 %>% group_by(region) %>% do(summary.ci(., agelist = agelst3)$ci.res)
ci.cohort.nobirth3 <-
  ci.data.nobirth3$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ci_nobw3 <- bind_rows(
  data.frame(
    cohort = "pooled",
    region = "Overall",
    ci.data.nobirth3$ci.res
  ),
  data.frame(cohort = "pooled", ci.region.nobirth3),
  ci.cohort.nobirth3
)


#Cumulative inc of severe wasting
d <- calc.ci.agecat(d, range = 6)
agelst = list("0-6 months", "6-12 months", "12-18 months", "18-24 months")
sev.ci.data <- summary.ci(d=d, agelist = agelst, severe.wasted = T)
sev.ci.region <- d %>% group_by(region) %>% do(summary.ci(., agelist = agelst, severe.wasted = T)$ci.res)
sev.ci.cohort <-
  sev.ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

sev.ci <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ci.data$ci.res),
  data.frame(cohort = "pooled", sev.ci.region),
  sev.ci.cohort
)



#Recovery cumulative inc
#NOTE: need to make sure to only include those wasted in the denominator
#rec.data <- summary.ci(d, recovery = T)

#Incidence rate
ir.data <- summary.ir(d, agelist = agelst)
ir.region <- d %>% group_by(region) %>% do(summary.ir(., agelist = agelst)$ir.res)
ir.cohort <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
  data.frame(cohort = "pooled", ir.region),
  ir.cohort
)

#Incidence rate - no birth wasting
ir.data.nobirth <- summary.ir(d_noBW, agelist = agelst)
ir.region.nobirth <- d_noBW %>% group_by(region) %>% do(summary.ir(., agelist = agelst)$ir.res)
ir.cohort.nobirth <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir_noBW <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data.nobirth$ir.res),
  data.frame(cohort = "pooled", ir.region.nobirth),
  ir.cohort.nobirth
)

#Incidence rate - severe wasting
sev.ir.data <- summary.ir(d, sev.wasting = T, agelist = agelst)
sev.ir.region <- d %>% group_by(region) %>% do(summary.ir(., agelist = agelst, sev.wasting = T)$ir.res)
sev.ir.cohort <-
  sev.ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

sev.ir <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ir.data$ir.res),
  data.frame(cohort = "pooled", sev.ir.region),
  sev.ir.cohort
)





#Incidence rate - 3 month intervals
d <- calc.ci.agecat(d, range = 3)
ir.data <- summary.ir(d, agelist = agelst3)
ir.region <- d %>% group_by(region) %>% do(summary.ir(., agelist = agelst3)$ir.res)
ir.cohort <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
  data.frame(cohort = "pooled", ir.region),
  ir.cohort
)

#Incidence rate - no birth wasting
ir.data.nobirth <- summary.ir(d_noBW, agelist = agelst3)
ir.region.nobirth <- d_noBW %>% group_by(region) %>% do(summary.ir(., agelist = agelst3)$ir.res)
ir.cohort.nobirth <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir_noBW3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data.nobirth$ir.res),
  data.frame(cohort = "pooled", ir.region.nobirth),
  ir.cohort.nobirth
)


#Recovery incidence rate
#rec.ir.data <- summary.ir(d, recovery = T)

#Recovery incidence rate - no birth wasting
#rec.ir.data.d_noBW <- summary.ir(d_noBW, recovery = T)

#Duration
#dur.data <- summary.dur(d)

#Recovery within 30, 60, 90 days
d <- calc.ci.agecat(d, range = 6)
rec.data30 <- summary.rec60( d, length = 30, agelist = c("0-6 months", "6-12 months", "12-18 months", "18-24 months"))
rec.data60 <- summary.rec60( d, length = 60, agelist = c("0-6 months", "6-12 months", "12-18 months", "18-24 months"))
rec.data90 <- summary.rec60( d, length = 90, agelist = c("0-6 months", "6-12 months", "12-18 months", "18-24 months"))
rec30.region <- d %>% group_by(region) %>% do(summary.rec60( ., length = 30, agelist = c("0-6 months", "6-12 months", "12-18 months", "18-24 months"))$ci.res)
rec60.region <- d %>% group_by(region) %>% do(summary.rec60( ., length = 60, agelist = c("0-6 months", "6-12 months", "12-18 months", "18-24 months"))$ci.res)
rec90.region <- d %>% group_by(region) %>% do(summary.rec60( ., length = 90, agelist = c("0-6 months", "6-12 months", "12-18 months", "18-24 months"))$ci.res)

rec30.cohort <-
  rec.data30$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)
rec60.cohort <-
  rec.data60$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)
rec90.cohort <-
  rec.data90$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

rec30<- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", rec.data30$ci.res),
  data.frame(cohort = "pooled", rec30.region),
  rec30.cohort
)
rec60<- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", rec.data60$ci.res),
  data.frame(cohort = "pooled", rec60.region),
  rec60.cohort
)
rec90<- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", rec.data90$ci.res),
  data.frame(cohort = "pooled", rec90.region),
  rec90.cohort
)

#Persistant wasting
perswast.data <- summary.perswast(d, agelist = c("0-6 months", "6-12 months", "12-18 months", "18-24 months"))
perswast.region <- d %>% group_by(region) %>% do(summary.perswast(., agelist = c("0-6 months", "6-12 months", "12-18 months", "18-24 months"))$pers.res)
perswast.cohort <-
  perswast.data$pers.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

perswast <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", perswast.data$pers.res),
  data.frame(cohort = "pooled", perswast.region),
  perswast.cohort
)

#0-24 month persistent wasting
df<- d %>% mutate(agecat="0-24 months")
perswast.data <- summary.perswast(df, agelist = c("0-24 months"))
perswast.region <- df %>% group_by(region) %>% do(summary.perswast(., agelist = c("0-24 months"))$pers.res)
perswast.cohort <-
  perswast.data$pers.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

perswast024 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", perswast.data$pers.res),
  data.frame(cohort = "pooled", perswast.region),
  perswast.cohort
)
save(perswast024, file = paste0(here(),"/results/persistent_wasting024.Rdata"))



#------------------------------------
# Calculate outcomes with no recovery
#------------------------------------


#Cumulative inc 3 month intervals
d3 <- calc.ci.agecat(d_noRec, range = 3)
agelst3 = list(
  "0-3 months",
  "3-6 months",
  "6-9 months",
  "9-12 months",
  "12-15 months",
  "15-18 months",
  "18-21 months",
  "21-24 months"
)
ci.data3 <- summary.ci(d3, agelist = agelst3)
ci.region3 <- d3 %>% group_by(region) %>% do(summary.ci(., agelist = agelst3)$ci.res)
ci.cohort3 <-
  ci.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ci_3_noRec <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data3$ci.res),
  data.frame(cohort = "pooled", ci.region3),
  ci.cohort3
)


#Cumulative inc of severe wasting
sev.ci.data <- summary.ci(d3, agelist = agelst3, severe.wasted = T)
sev.ci.region <- d3 %>% group_by(region) %>% do(summary.ci(., agelist = agelst3, severe.wasted = T)$ci.res)
sev.ci.cohort <-
  sev.ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

sev.ci_noRec <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ci.data$ci.res),
  data.frame(cohort = "pooled", sev.ci.region),
  sev.ci.cohort
)



#Incidence rate
d_noRec <- calc.ci.agecat(d_noRec, range = 6)
ir.data <- summary.ir(d_noRec, agelist = agelst)
ir.region <- d_noRec %>% group_by(region) %>% do(summary.ir(., agelist = agelst)$ir.res)
ir.cohort <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir_noRec <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
  data.frame(cohort = "pooled", ci.region),
  ir.cohort
)







shiny_desc_data <- bind_rows(
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence", prev),
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="yes", measure= "Prevalence", sev.prev),
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="no", measure= "Mean WLZ",  whz),
  data.frame(disease = "Wasting", age_range="1 month",   birth="yes", severe="no", measure= "Mean WLZ",  monthly.whz),
  data.frame(disease = "Wasting", age_range="6 months",   birth="yes", severe="no", measure= "Cumulative incidence", ci),
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="no", measure= "Cumulative incidence", ci_3),
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="no", measure= "Incidence_proportion", ip_3),
  data.frame(disease = "Wasting", age_range="6 months",   birth="no",  severe="no",   measure= "Cumulative incidence",  ci_nobw),
  data.frame(disease = "Wasting", age_range="3 months",   birth="no",  severe="no",   measure= "Cumulative incidence",  ci_nobw3),
  data.frame(disease = "Wasting", age_range="6 months",   birth="yes", severe="yes", measure= "Cumulative incidence",  sev.ci),
  data.frame(disease = "Wasting", age_range="6 months",   birth="yes", severe="no", measure= "Incidence rate",  ir),
  data.frame(disease = "Wasting", age_range="6 months",   birth="no", severe="no", measure= "Incidence rate",  ir_noBW),
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="no", measure= "Incidence rate",  ir3),
  data.frame(disease = "Wasting", age_range="3 months",   birth="no", severe="no", measure= "Incidence rate",  ir_noBW3),  
  data.frame(disease = "Wasting", age_range="6 months",   birth="yes", severe="yes", measure= "Incidence rate",  sev.ir),
  data.frame(disease = "Wasting", age_range="6 months",   birth="yes", severe="no", measure= "Persistent wasting", perswast),
  data.frame(disease = "Wasting", age_range="30 days",   birth="yes", severe="no", measure= "Recovery", rec30),
  data.frame(disease = "Wasting", age_range="60 days",   birth="yes", severe="no", measure= "Recovery", rec60),
  data.frame(disease = "Wasting", age_range="90 days",   birth="yes", severe="no", measure= "Recovery", rec90),
  data.frame(disease = "Wasting", age_range="3 months",   birth="yes", severe="no", measure= "Cumulative incidence - no recovery", ci_3_noRec),
  data.frame(disease = "Wasting", age_range="6 months",   birth="yes", severe="yes", measure= "Cumulative incidence - no recovery", sev.ci_noRec),
  data.frame(disease = "Wasting", age_range="6 months",   birth="yes", severe="no", measure= "Incidence rate - no recovery", ir_noRec)
)




shiny_desc_data <- shiny_desc_data %>% subset(., select = -c(se, nmeas.f,  ptest.f, pt.f))

unique(shiny_desc_data$agecat)
shiny_desc_data$agecat <- factor(shiny_desc_data$agecat, levels=unique(shiny_desc_data$agecat))

unique(shiny_desc_data$region)
shiny_desc_data$region <- factor(shiny_desc_data$region, levels=c("Overall", "Africa", "Latin America", "Asia", "Pakistan"))


save(shiny_desc_data, file = "U:/Data/Wasting/shiny_desc_data.Rdata")
save(shiny_desc_data, file = paste0(here(),"/results/shiny_desc_data.Rdata"))



