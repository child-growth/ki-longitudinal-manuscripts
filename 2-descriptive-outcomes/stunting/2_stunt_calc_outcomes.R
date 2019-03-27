##########################################
# ki longitudinal manuscripts
# stunting analysis

# calculate mean LAZ, prevalence, incidence, 
# and recovery 
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_stunt_functions.R"))

#load("U:/Data/Stunting/stunting_data.RData")
load("U:/ucb-superlearner/data/stunting_data.RData")

head(d)
d <- d %>% subset(., select = -c(tr))


#Prevalence and WHZ  - not including yearly studies
d <- calc.prev.agecat(d)
prev.data <- summary.prev.haz(d)
prev.region <- d  %>% group_by(region) %>% do(summary.prev.haz(.)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)

#Severe stunting prevalence
sev.prev.data <- summary.prev.haz(d, severe.stunted = T)
sev.prev.region <-
  d  %>% group_by(region) %>% do(summary.prev.haz(., severe.stunted = T)$prev.res)
sev.prev.cohort <-
  sev.prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

sev.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.prev.data$prev.res),
  data.frame(cohort = "pooled", sev.prev.region),
  sev.prev.cohort
)

#mean haz
haz.data <- summary.haz(d)
haz.region <- d  %>% group_by(region) %>% do(summary.haz(.)$haz.res)
haz.cohort <-
  haz.data$haz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanhaz,  ci.lb,  ci.ub)) %>%
  rename(est = meanhaz,  lb = ci.lb,  ub = ci.ub)

haz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", haz.data$haz.res),
  data.frame(cohort = "pooled", haz.region),
  haz.cohort
)

# mean haz for growth velocity age categories
d_vel = d %>% 
  mutate(agecat=ifelse(agedays<3*30.4167,"0-3",
                              ifelse(agedays>=3*30.4167 & agedays<6*30.4167,"3-6",
                                     ifelse(agedays>=6*30.4167 & agedays<9*30.4167,"6-9",
                                            ifelse(agedays>=9*30.4167 & agedays<12*30.4167,"9-12",
                                                   ifelse(agedays>=12*30.4167 & agedays<15*30.4167,"12-15",
                                                          ifelse(agedays>=15*30.4167 & agedays<18*30.4167,"15-18",
                                                                 ifelse(agedays>=18*30.4167 & agedays<21*30.4167,"18-21",
                                                                        ifelse(agedays>=21*30.4167& agedays<24*30.4167,"21-24",""))))))))) %>%
  mutate(agecat=factor(agecat,levels=c("0-3","3-6","6-9","9-12",
                                       "12-15","15-18","18-21","21-24"))) 
haz.data.vel <- summary.haz.age.sex(d_vel)
haz.region.vel <- d_vel  %>% group_by(region) %>% do(summary.haz.age.sex(.)$haz.res)
haz.cohort.vel <-
  haz.data.vel$haz.cohort %>% 
  subset(., select = c(cohort, region, agecat, sex, nmeas,  meanhaz, 
                       ci.lb,  ci.ub)) %>%
  rename(est = meanhaz,  lb = ci.lb,  ub = ci.ub)

haz.vel <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", haz.data.vel$haz.res),
  data.frame(cohort = "pooled", haz.region.vel),
  haz.cohort.vel
)

saveRDS(haz.vel, file = paste0(here(), "/results/meanlaz_velocity.RDS"))

#monthly mean haz
d <- calc.monthly.agecat(d)
monthly.haz.data <- summary.haz(d)
monthly.haz.region <- d  %>% group_by(region) %>% do(summary.haz(.)$haz.res)
monthly.haz.cohort <-
  monthly.haz.data$haz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanhaz,  ci.lb,  ci.ub)) %>%
  rename(est = meanhaz,  lb = ci.lb,  ub = ci.ub)

monthly.haz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.haz.data$haz.res),
  data.frame(cohort = "pooled", monthly.haz.region),
  monthly.haz.cohort
)

#Get monthly HAZ quantiles
quantile_d <- d %>% group_by(agecat, region) %>%
  mutate(fifth_perc = quantile(haz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]]) %>%
  select()
quantile_d_overall <- d %>% group_by(agecat) %>%
  mutate(fifth_perc = quantile(haz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]])
save(quantile_d, quantile_d_overall, file = paste0(here(),"/results/quantile_data_stunting.Rdata"))


#Incidence proportion
d <- calc.ci.agecat(d, range = 6)
agelst = list("0-6 months", "6-12 months", "12-18 months", "18-24 months")
ci.data <- summary.stunt.incprop(d, agelist = agelst)
ci.region <- d  %>% group_by(region) %>% do(summary.stunt.incprop(., agelist = agelst)$ci.res)
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
ci.data3 <- summary.stunt.incprop(d3, agelist = agelst3)
ci.region3 <- d3  %>% group_by(region) %>% do(summary.stunt.incprop(., agelist = agelst3)$ci.res)
ci.cohort3 <-
  ci.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


ci_3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data3$ci.res),
  data.frame(cohort = "pooled", ci.region3),
  ci.cohort3
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
sev.ci.data <- summary.stunt.incprop(d, agelist = agelst, severe.stunted = T)
sev.ci.region <- d  %>% group_by(region) %>% do(summary.stunt.incprop(., agelist = agelst, severe.stunted = T)$ci.res)
sev.ci.cohort <-
  sev.ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


sev.ci <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ci.data$ci.res),
  data.frame(cohort = "pooled", sev.ci.region),
  sev.ci.cohort
)



# #Incidence rate
# ir.data <- summary.stunt.ir(d, agelist = agelst)
# ir.region <- d  %>% group_by(region) %>% do(summary.stunt.ir(., agelist = agelst)$ir.res)
# ir.cohort <-
#   ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
#   rename(est = yi,  lb = ci.lb,  ub = ci.ub)
# 
# ir <- bind_rows(
#   data.frame(cohort = "pooled", region = "Overall", ir.data$ir.res),
#   data.frame(cohort = "pooled", ir.region),
#   ir.cohort
# )
# 
# #Convert to per-1000 person days
# ir$est <- ir$est * 1000
# ir$lb <- ir$lb * 1000
# ir$ub <- ir$ub * 1000


# # #Incidence rate - severe stunting
# sev.ir.data <- summary.stunt.ir(d, sev_stunt = T, agelist = agelst)
# sev.ir.region <- d  %>% group_by(region) %>% do(summary.stunt.ir(., agelist = agelst, sev.stunting = T)$ir.res)
# sev.ir.cohort <-
#   sev.ir.data$ir.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
#   rename(est = yi,  lb = ci.lb,  ub = ci.ub)
# 
# sev.ir <- bind_rows(
#   data.frame(cohort = "pooled", region = "Overall", sev.ci.data$ci.res),
#   data.frame(cohort = "pooled", sev.ci.region),
#   sev.ci.cohort
# )
# 
# #Convert to per-1000 person days
# sev.ir$est <- sev.ir$est * 1000
# sev.ir$lb <- sev.ir$lb * 1000
# sev.ir$ub <- sev.ir$ub * 1000



# #Reversal
# #-subset to monthly
# df <- d %>% filter(measurefreq=="monthly")
# 
# rev.data <- summary.stunt.rev(df)
# rev.region <- df  %>% group_by(region) %>% do(summary.stunt.rev(.)$rev.res)
# rev.cohort <-
#   rev.data$rev.cohort %>% subset(., select = c(cohort, region, agecat, N,  y,  ci.lb,  ci.ub)) %>%
#   rename(est = y,  lb = ci.lb,  ub = ci.ub, nmeas=N)
# rev <- bind_rows(
#   data.frame(cohort = "pooled", region = "Overall", rev.data$rev.res),
#   data.frame(cohort = "pooled", rev.region),
#   rev.cohort
# )



save(prev, sev.prev,  haz,  monthly.haz, rev, ci, ci_3,   sev.ci,  file = "U:/ki-longitudinal-manuscripts/results/stunting/shiny_desc_data_stunting_objects.Rdata")


shiny_desc_data <- bind_rows(
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence", prev),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="yes", measure= "Prevalence", sev.prev),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Mean LAZ",  haz),
  data.frame(disease = "Stunting", age_range="1 month",   birth="yes", severe="no", measure= "Mean LAZ",  monthly.haz),
  #data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Recovery", rev),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Cumulative incidence", cuminc),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="no", measure= "Incidence_proportion", ci),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Incidence_proportion", ci_3),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="yes", measure= "Incidence_proportion",  sev.ci)#,
  #data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="no", measure= "Incidence rate",  ir),
  #data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="yes", measure= "Incidence rate",  sev.ir)
)





shiny_desc_data <- shiny_desc_data %>% subset(., select = -c(se, nmeas.f,  ptest.f))

unique(shiny_desc_data$agecat)
shiny_desc_data$agecat <- factor(shiny_desc_data$agecat, levels=unique(shiny_desc_data$agecat))

unique(shiny_desc_data$region)
shiny_desc_data$region <- factor(shiny_desc_data$region, levels=c("Overall", "Africa", "Latin America", "Asia"))


save(shiny_desc_data, file = paste0(here(),"/results/shiny_desc_data_stunting_objects.Rdata"))



