



rm(list = ls())
library(tidyverse)
library(metafor)
library(data.table)

source("U:/Wasting/1-outcomes/0_wast_incfunctions.R")


load("U:/Data/Wasting/Stunting_inc_data.RData")


dstunt$whz <- dstunt$haz
dstunt_noBW$whz <- dstunt_noBW$haz

dstunt$wast_inc <- dstunt$stunt_inc
dstunt_noBW$wast_inc <- dstunt_noBW$stunt_inc

dstunt$sevwast_inc <- dstunt$sevstunt_inc
dstunt_noBW$sevwast_inc <- dstunt_noBW$sevstunt_inc


#Drop yearly studies
d <- dstunt %>% filter(measurefreq != "yearly")
d_noBW <- dstunt_noBW %>% filter(measurefreq != "yearly")


head(d)


#Prevalence and WHZ  - not including yearly studies
d <- calc.prev.agecat(d)
prev.data <- summary.prev(d)
prev.region <- d  %>% group_by(region) %>% do(summary.prev(.)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)

#Severe wasting prevalence
sev.prev.data <- summary.prev(d, severe.wasted = T)
sev.prev.region <-
  d  %>% group_by(region) %>% do(summary.prev(., severe.wasted = T)$prev.res)
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
whz.region <- d  %>% group_by(region) %>% do(summary.whz(.)$whz.res)
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
monthly.whz.data <- summary.whz(d)
monthly.whz.region <- d  %>% group_by(region) %>% do(summary.whz(.)$whz.res)
monthly.whz.cohort <-
  monthly.whz.data$whz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanwhz,  ci.lb,  ci.ub)) %>%
  rename(est = meanwhz,  lb = ci.lb,  ub = ci.ub)

monthly.whz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.whz.data$whz.res),
  data.frame(cohort = "pooled", monthly.whz.region),
  monthly.whz.cohort
)

#Get monthly HAZ quantiles
quantile_d <- d %>% group_by(agecat, region) %>%
  mutate(fifth_perc = quantile(whz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
  select()
quantile_d_overall <- d %>% group_by(agecat) %>%
  mutate(fifth_perc = quantile(whz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]])
save(shiny_desc_data, file = "U:/Data/Wasting/shiny_desc_data_stunting.Rdata")
  

#Incidence proportion
d <- calc.ci.agecat(d, range = 6)
agelst = list("0-6 months", "6-12 months", "12-18 months", "18-24 months")
ci.data <- summary.incprop(d, agelist = agelst)
ci.region <- d  %>% group_by(region) %>% do(summary.incprop(., agelist = agelst)$ci.res)
ci.cohort <-
  ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


ci <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data$ci.res),
  data.frame(cohort = "pooled", ci.region),
  ci.cohort
)

#Incidence proportion 3 month intervals
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
ci.data3 <- summary.incprop(d3, agelist = agelst3)
ci.region3 <- d3  %>% group_by(region) %>% do(summary.incprop(., agelist = agelst3)$ci.res)
ci.cohort3 <-
  ci.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


ci_3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data3$ci.res),
  data.frame(cohort = "pooled", ci.region3),
  ci.cohort3
)



#Incidence proportion, no birth
d_noBW <- calc.ci.agecat(d_noBW, range = 6)
ci.data.nobirth <- summary.incprop(d_noBW, agelist = agelst)
ci.region.nobirth <-
  d  %>% group_by(region) %>% do(summary.incprop(., agelist = agelst)$ci.res)
ci.cohort.nobirth <-
  ci.data.nobirth$ci.cohort  %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


ci_nobw <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data.nobirth$ci.res),
  data.frame(cohort = "pooled", ci.region.nobirth),
  ci.cohort.nobirth
)


#Incidence proportion 3 month intervals
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
ci.data.nobirth3 <- summary.incprop(d3, agelist = agelst3)
ci.region.nobirth3 <-
  d3  %>% group_by(region) %>% do(summary.incprop(., agelist = agelst3)$ci.res)
ci.cohort.nobirth3 <-
  ci.data.nobirth3$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


ci_nobw3 <- bind_rows(
  data.frame(
    cohort = "pooled",
    region = "Overall",
    ci.data.nobirth3$ci.res
  ),
  data.frame(cohort = "pooled", ci.region.nobirth3),
  ci.cohort.nobirth3
)


#Cumulative Incidence 
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
ci.region3 <- d3  %>% group_by(region) %>% do(summary.ci(., agelist = agelst3)$ci.res)
ci.cohort3 <-
  ci.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


cuminc <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data3$ci.res),
  data.frame(cohort = "pooled", ci.region3),
  ci.cohort3
)





#Incidence proportion of severe stunting
d <- calc.ci.agecat(d, range = 6)
agelst = list("0-6 months", "6-12 months", "12-18 months", "18-24 months")
sev.ci.data <- summary.incprop(d, agelist = agelst, severe.wasted = T)
sev.ci.region <- d  %>% group_by(region) %>% do(summary.incprop(., agelist = agelst, severe.wasted = T)$ci.res)
sev.ci.cohort <-
  sev.ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


sev.ci <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ci.data$ci.res),
  data.frame(cohort = "pooled", sev.ci.region),
  sev.ci.cohort
)



#Incidence rate
ir.data <- summary.stunt.ir(d, agelist = agelst)
ir.region <- d  %>% group_by(region) %>% do(summary.stunt.ir(., agelist = agelst)$ir.res)
ir.cohort <-
  ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ir <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
  data.frame(cohort = "pooled", ir.region),
  ir.cohort
)

#Convert to per-1000 person days
ir$est <- ir$est * 1000
ir$lb <- ir$lb * 1000
ir$ub <- ir$ub * 1000

# 
# #Incidence rate - no birth stunting
# ir.data.nobirth <- summary.ir(d_noBW, agelist = agelst)
# ir.region.nobirth <- d_noBW  %>% group_by(region) %>% do(summary.ir(., agelist = agelst)$ir.res)
# ir.cohort.nobirth <-
#   ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
#   rename(est = yi,  lb = ci.lb,  ub = ci.ub)
# 
# ir_noBW <- bind_rows(
#   data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
#   data.frame(cohort = "pooled", region = "Pakistan", ir.Pakistan.nobirth),
#   data.frame(cohort = "pooled", ir.region),
#   ci.cohort
# )
# 
# #Incidence rate - severe stunting
sev.ir.data <- summary.stunt.ir(d, sev_stunt = T, agelist = agelst)
sev.ir.region <- d  %>% group_by(region) %>% do(summary.stunt.ir(., agelist = agelst, sev.wasting = T)$ir.res)
sev.ir.cohort <-
  sev.ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

sev.ir <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ci.data$ci.res),
  data.frame(cohort = "pooled", sev.ci.region),
  sev.ci.cohort
)

#Convert to per-1000 person days
sev.ir$est <- sev.ir$est * 1000
sev.ir$lb <- sev.ir$lb * 1000
sev.ir$ub <- sev.ir$ub * 1000


#Recovery
#  -subset to monthly
# df <- d %>% filter(measurefreq=="monthly")
# rev.data <- summary.rec.stunt(df)
# rev.region <- df %>% group_by(region) %>% do(summary.rec.stunt(.)$rev.res)
# rev.cohort <-
#   rev.data$rec.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
#   rename(est = yi,  lb = ci.lb,  ub = ci.ub)
# 
# rev <- bind_rows(
#   data.frame(cohort = "pooled", region = "Overall", rev.data$rev.res),
#   data.frame(cohort = "pooled", rev.region),
#   rev.cohort
# )


#Reversal
#-subset to monthly
df <- d %>% filter(measurefreq=="monthly")

#df <- calc.prev.agecat(df)
rev.data <- summary.stunt.rev(df)
rev.region <- df  %>% group_by(region) %>% do(summary.stunt.rev(.)$rev.res)
rev.cohort <-
  rev.data$rev.cohort %>% subset(., select = c(cohort, region, agecat, N,  y,  ci.lb,  ci.ub)) %>%
  rename(est = y,  lb = ci.lb,  ub = ci.ub, nmeas=N)
rev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", rev.data$rev.res),
  data.frame(cohort = "pooled", rev.region),
  rev.cohort
)



save(prev, sev.prev,  whz,  monthly.whz, rev, ci, ci_3,  ci_nobw,  ci_nobw3,  sev.ci,  ir,  sev.ir, file = "U:/Data/Stunting/shiny_desc_data_stunting_objects.Rdata")


shiny_desc_data <- bind_rows(
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence", prev),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="yes", measure= "Prevalence", sev.prev),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Mean LAZ",  whz),
  data.frame(disease = "Stunting", age_range="1 month",   birth="yes", severe="no", measure= "Mean LAZ",  monthly.whz),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Recovery", rev),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Cumulative incidence", cuminc),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="no", measure= "Incidence_proportion", ci),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Incidence_proportion", ci_3),
  data.frame(disease = "Stunting", age_range="6 months",   birth="no",  severe="no",   measure= "Incidence_proportion",  ci_nobw),
  data.frame(disease = "Stunting", age_range="3 months",   birth="no",  severe="no",   measure= "Incidence_proportion",  ci_nobw3),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="yes", measure= "Incidence_proportion",  sev.ci),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="no", measure= "Incidence rate",  ir),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="yes", measure= "Incidence rate",  sev.ir)
)





shiny_desc_data <- shiny_desc_data %>% subset(., select = -c(se, nmeas.f,  ptest.f))

unique(shiny_desc_data$agecat)
shiny_desc_data$agecat <- factor(shiny_desc_data$agecat, levels=unique(shiny_desc_data$agecat))

unique(shiny_desc_data$region)
shiny_desc_data$region <- factor(shiny_desc_data$region, levels=c("Overall", "Africa", "Latin America", "Asia"))

save(shiny_desc_data, file = "U:/Data/Wasting/shiny_desc_data_stunting.Rdata")



