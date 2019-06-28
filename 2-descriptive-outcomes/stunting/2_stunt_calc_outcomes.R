##########################################
# ki longitudinal manuscripts
# stunting analysis

# calculate mean LAZ, prevalence, incidence, 
# and recovery 
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# reloading because some overlap with stunting
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_stunt_functions.R"))


d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

head(d)
d <- d %>% subset(., select = -c(tr))

dprev <- calc.prev.agecat(d)
dmon <- calc.monthly.agecat(d)
d3 <- calc.ci.agecat(d, range = 3, birth="yes")
d6 <- calc.ci.agecat(d, range = 6, birth="yes")
d3_birthstrat <- calc.ci.agecat(d, range = 3, birth="no")
d6_birthstrat <- calc.ci.agecat(d, range = 6, birth="no")

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

agelst6 = list(
  "0-6 months", 
  "6-12 months", 
  "12-18 months", 
  "18-24 months"
)

agelst3_birthstrat = list(
  "Birth",
  "1 day-3 months",
  "3-6 months",
  "6-9 months",
  "9-12 months",
  "12-15 months",
  "15-18 months",
  "18-21 months",
  "21-24 months"
)

agelst6_birthstrat = list(
  "Birth",
  "1 day-6 months", 
  "6-12 months", 
  "12-18 months", 
  "18-24 months"
)

######################################################################
# Prevalence
######################################################################

#----------------------------------------
# Prevalence and WHZ  - not including yearly studies
#----------------------------------------
prev.data <- summary.prev.haz(dprev)
prev.region <- dprev  %>% group_by(region) %>% do(summary.prev.haz(.)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)

#----------------------------------------
# Severe stunting prevalence
#----------------------------------------
sev.prev.data <- summary.prev.haz(dprev, severe.stunted = T)
sev.prev.region <-
  dprev  %>% group_by(region) %>% do(summary.prev.haz(., severe.stunted = T)$prev.res)
sev.prev.cohort <-
  sev.prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

sev.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.prev.data$prev.res),
  data.frame(cohort = "pooled", sev.prev.region),
  sev.prev.cohort
)

######################################################################
# Mean HAZ
######################################################################
#----------------------------------------
# mean haz
#----------------------------------------
haz.data <- summary.haz(dprev)
haz.region <- dprev %>% group_by(region) %>% do(summary.haz(.)$haz.res)
haz.cohort <-
  haz.data$haz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanhaz,  ci.lb,  ci.ub)) %>%
  rename(est = meanhaz,  lb = ci.lb,  ub = ci.ub)

haz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", haz.data$haz.res),
  data.frame(cohort = "pooled", haz.region),
  haz.cohort
)

#----------------------------------------
# mean haz for growth velocity age categories
#----------------------------------------
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
haz.region.vel <-  d_vel  %>% group_by(region) %>% do(summary.haz.age.sex(.)$haz.res)
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

#----------------------------------------
# monthly mean haz
#----------------------------------------
dmon <- calc.monthly.agecat(d)
monthly.haz.data <- summary.haz(dmon)
monthly.haz.region <-  dmon  %>% group_by(region) %>% do(summary.haz(.)$haz.res)
monthly.haz.cohort <-
  monthly.haz.data$haz.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  meanhaz,  ci.lb,  ci.ub)) %>%
  rename(est = meanhaz,  lb = ci.lb,  ub = ci.ub)

monthly.haz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.haz.data$haz.res),
  data.frame(cohort = "pooled", monthly.haz.region),
  monthly.haz.cohort
)

#----------------------------------------
# Get monthly HAZ quantiles
#----------------------------------------
quantile_d_cohort <- dmon %>% group_by(agecat, region, studyid) %>%
  mutate(fifth_perc = quantile(haz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]]) %>%
  select(studyid, agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc)

quantile_d <- dmon %>% group_by(agecat, region) %>%
  mutate(fifth_perc = quantile(haz, probs = c(0.05))[[1]],
         fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
         ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]]) %>%
  mutate(studyid = "pooled") %>%
  select(studyid, agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc) 

quantile_d_overall <- dmon %>% 
  group_by(agecat) %>%
  summarise(fifth_perc = quantile(haz, probs = c(0.05))[[1]],
            fiftieth_perc = quantile(haz, probs = c(0.5))[[1]],
            ninetyfifth_perc = quantile(haz, probs = c(0.95))[[1]]) %>%
  mutate(region = "Overall") %>%
  mutate(studyid = "pooled") %>%
  select(studyid, agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc) 

# combine data
quantiles <- bind_rows(quantile_d, quantile_d_overall,quantile_d_cohort)

saveRDS(quantiles,
     file = paste0(here(),"/results/quantile_data_stunting.RDS"))


######################################################################
# Incidence proportion
######################################################################
#----------------------------------------
# Incidence proportion 3 month intervals
#----------------------------------------
ip.data3 <- summary.stunt.incprop(d3, agelist = agelst3, severe.stunted = F)
ip.region3 <- d3 %>% group_by(region) %>% do(summary.stunt.incprop(., agelist = agelst3)$ip.res)
ip.cohort3 <-
  ip.data3$ip.cohort %>% 
  subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


ip_3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ip.data3$ip.res),
  data.frame(cohort = "pooled", ip.region3),
  ip.cohort3
)

#----------------------------------------
# Incidence proportion 3 month intervals
# stratify by birth
#----------------------------------------
ip.data3.birthstrat <- summary.stunt.incprop(d3_birthstrat, agelist = agelst3_birthstrat, severe.stunted = F)
ip.region3.birthstrat <- d3_birthstrat %>% group_by(region) %>% do(summary.stunt.incprop(., agelist = agelst3_birthstrat)$ip.res)
ip.cohort3.birthstrat <-
  ip.data3.birthstrat$ip.cohort %>% 
  subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


ip_3.birthstrat <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ip.data3.birthstrat$ip.res),
  data.frame(cohort = "pooled", ip.region3.birthstrat),
  ip.cohort3.birthstrat
) 

#----------------------------------------
# Incidence proportion 6 month intervals
#----------------------------------------
ip.data6 <- summary.stunt.incprop(d6, agelist = agelst6, severe.stunted = F)
ip.region6 <- d6  %>% group_by(region)%>% do(summary.stunt.incprop(., agelist = agelst6)$ip.res)
ip.cohort6 <-
  ip.data6$ip.cohort %>%
  subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)

ip_6 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ip.data6$ip.res),
  data.frame(cohort = "pooled", ip.region6),
  ip.cohort6
)




#----------------------------------------
# Incidence proportion of severe stunting 
# 3 month interval
#----------------------------------------
sev.ip.data3 <- summary.stunt.incprop(d3, agelist = agelst3, severe.stunted = T)
sev.ip.region3 <- d3 %>% group_by(region) %>% do(summary.stunt.incprop(., agelist = agelst3, severe.stunted = T)$ip.res)
sev.ip.cohort3 <-
  sev.ip.data3$ip.cohort %>% 
  subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


sev.ip3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ip.data3$ip.res),
  data.frame(cohort = "pooled", sev.ip.region3),
  sev.ip.cohort3
)

#----------------------------------------
# Incidence proportion of severe stunting
# 6 month interval
#----------------------------------------
sev.ip.data6 <- summary.stunt.incprop(d6, agelist = agelst6, severe.stunted = T)
sev.ip.region6 <- d6 %>% group_by(region) %>% do(summary.stunt.incprop(., agelist = agelst6, severe.stunted = T)$ip.res)
sev.ip.cohort6 <-
  sev.ip.data6$ip.cohort %>% 
  subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


sev.ip6 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ip.data6$ip.res),
  data.frame(cohort = "pooled", sev.ip.region6),
  sev.ip.cohort6
)



######################################################################
# Cumulative incidence
######################################################################

#----------------------------------------
# Cumulative Incidence  - 3 month intervals
#----------------------------------------
ci.data3 <- summary.ci(d3, agelist = agelst3)
ci.region3 <- d3 %>% group_by(region) %>% do(summary.ci(., agelist = agelst3)$ci.res)
ci.cohort3 <-
  ci.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


cuminc3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data3$ci.res),
  data.frame(cohort = "pooled", ci.region3),
  ci.cohort3
)




#----------------------------------------
# Cumulative Incidence  - 3 month intervals
# stratify by birth 
#----------------------------------------
ci.data3.birthstrat <- summary.ci(d3_birthstrat, birthstrat=TRUE, agelist = agelst3_birthstrat)
ci.region3.birthstrat <- d3_birthstrat %>% group_by(region) %>%
  do(summary.ci(., agelist = agelst3_birthstrat,  birthstrat=TRUE, severe.stunted=FALSE)$ci.res)
ci.cohort3.birthstrat <-
  ci.data3.birthstrat$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


cuminc3.birthstrat <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data3.birthstrat$ci.res),
  data.frame(cohort = "pooled", ci.region3.birthstrat),
  ci.cohort3.birthstrat
)




#----------------------------------------
# Cumulative Incidence  - 6 month intervals
#----------------------------------------
ci.data6 <- summary.ci(d6, agelist = agelst6)
ci.region6 <- d6 %>% group_by(region) %>% do(summary.ci(., agelist = agelst6)$ci.res)
ci.cohort6 <-
  ci.data6$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


cuminc6 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data6$ci.res),
  data.frame(cohort = "pooled", ci.region6),
  ci.cohort6
)



#----------------------------------------
# Cumulative Incidence  - 3 month intervals 
# severe
#----------------------------------------
sev.ci.data3 <- summary.ci(d3, agelist = agelst3, severe.stunted = T)
sev.ci.region3 <- d3 %>% group_by(region) %>% do(summary.ci(., agelist = agelst3, severe.stunted = T)$ci.res)
sev.ci.cohort3 <-
  sev.ci.data3$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


sev.cuminc3 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ci.data3$ci.res),
  data.frame(cohort = "pooled", sev.ci.region3),
  sev.ci.cohort3
)


#----------------------------------------
# Cumulative Incidence  - 6 month intervals
# severe
#----------------------------------------
sev.ci.data6 <- summary.ci(d6, agelist = agelst6)
sev.ci.region6 <- d6 %>% group_by(region) %>% do(summary.ci(., agelist = agelst6, severe.stunted = T)$ci.res)
sev.ci.cohort6 <-
  sev.ci.data6$ci.cohort %>% subset(., select = c(cohort, region, agecat, nchild,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub, nmeas=nchild)


sev.cuminc6 <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.ci.data6$ci.res),
  data.frame(cohort = "pooled", sev.ci.region6),
  sev.ci.cohort6
)





shiny_desc_data <- bind_rows(
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence", prev),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="yes", measure= "Prevalence", sev.prev),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Mean LAZ",  haz),
  data.frame(disease = "Stunting", age_range="1 month",   birth="yes", severe="no", measure= "Mean LAZ",  monthly.haz),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Cumulative incidence", cuminc3),
  data.frame(disease = "Stunting", age_range="3 months",   birth="strat", severe="no", measure= "Cumulative incidence", cuminc3.birthstrat),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="no", measure= "Cumulative incidence", cuminc6),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="yes", measure= "Cumulative incidence", sev.cuminc3),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="yes", measure= "Cumulative incidence", sev.cuminc6),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="no", measure= "Incidence_proportion", ip_3),
  data.frame(disease = "Stunting", age_range="3 months",   birth="strat", severe="no", measure= "Incidence_proportion", ip_3.birthstrat),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="no", measure= "Incidence_proportion", ip_6),
  data.frame(disease = "Stunting", age_range="3 months",   birth="yes", severe="yes", measure= "Incidence_proportion",  sev.ip3),
  data.frame(disease = "Stunting", age_range="6 months",   birth="yes", severe="yes", measure= "Incidence_proportion",  sev.ip6)
)

# check that all pooling used random effects
assert_that(names(table(shiny_desc_data$method.used)) == "REML")


shiny_desc_data <- shiny_desc_data %>% subset(., select = -c(se, nmeas.f,  ptest.f))

unique(shiny_desc_data$agecat)
shiny_desc_data$agecat <- as.factor(shiny_desc_data$agecat)

unique(shiny_desc_data$region)
shiny_desc_data$region <- factor(shiny_desc_data$region, levels=c("Overall", "Africa", "Latin America", "Asia"))


save(shiny_desc_data, file = paste0(res_dir,"shiny_desc_data_stunting_objects.Rdata"))



