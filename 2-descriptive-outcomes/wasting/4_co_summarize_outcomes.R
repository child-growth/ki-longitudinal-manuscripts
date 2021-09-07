



rm(list = ls())

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))

d <- readRDS(rf_co_occurrence_path)
waz <- readRDS(rf_underweight_path)

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")
waz <- waz %>% filter(measurefreq == "monthly")


#clean country names
d$country[d$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"
d$country <- stringr::str_to_title(d$country)
waz$country[waz$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"
waz$country <- stringr::str_to_title(waz$country)



#Overall absolute counts
df <- d %>% filter(agedays < 24 *30.4167) %>%
  mutate(co = 1*(whz < (-2) & haz < (-2)),
         sevco = 1*(whz < (-3) & haz < (-3))) %>%
  group_by(studyid, country, subjid) %>%
  mutate(co=max(co), sevco=max(sevco)) %>% slice(1)
table(df$co)
prop.table(table(df$co))
table(df$sevco)
prop.table(table(df$sevco))

#get the pooled CI
cuminc.data= df%>%
  group_by(studyid,country) %>%
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=sum(co),
    N=sum(length(co))) %>%
  filter(N>=50)
cuminc.data$agecat <- "0-24 months"
co.ci.res=fit.rma(data=cuminc.data,ni="N", xi="ncases",age="0-24 months",measure="PLO",nlab=" measurements", method="REML")
co.ci.res

#get the pooled CI
sevcuminc.data= df%>%
  group_by(studyid,country) %>%
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=sum(sevco),
    N=sum(length(sevco))) %>%
  filter(N>=50)
sevcuminc.data$agecat <- "0-24 months"
sev.co.ci.res=fit.rma(data=sevcuminc.data,ni="N", xi="ncases",age="0-24 months",measure="PLO",nlab=" measurements", method="REML")
sev.co.ci.res


#Prevalence
d <- calc.prev.agecat(d)
prev.data <- summary.prev.co(d)
prev.region <- d %>% group_by(region) %>% do(summary.prev.co(.)$prev.res)
prev.country <- d %>% group_by(country) %>% do(summary.prev.co(.)$prev.res) %>% mutate(region=country)

prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, country, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.country),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)

#cumulative incidence
d <- calc.ci.agecat(d)
ci.data <- summary.co.ci(d)
ci.region <- d %>% group_by(region) %>% do(summary.co.ci(.)$ci.res)
ci.country <- d %>% group_by(country) %>% do(summary.co.ci(.)$ci.res) %>% mutate(region=country)

ci.cohort <-
  ci.data$ci.cohort %>% subset(., select = c(cohort, region, agecat,  yi,  ci.lb,  ci.ub)) %>%
  rename(est = yi,  lb = ci.lb,  ub = ci.ub)

ci <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", ci.data$ci.res),
  data.frame(cohort = "pooled", ci.country),
  data.frame(cohort = "pooled", ci.region),
  ci.cohort
)


#Severe wasting and stunting prevalence
d <- calc.prev.agecat(d)
sev.prev.data <- summary.prev.co(d, severe = T)
sev.prev.region <-
  d %>% group_by(region) %>% do(summary.prev.co(., severe = T)$prev.res)
sev.prev.country <- d %>% group_by(country) %>% do(summary.prev.co(., severe = T)$prev.res) %>% mutate(region=country)

sev.prev.cohort <-
  sev.prev.data$prev.cohort %>% subset(., select = c(cohort, region, country, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

sev.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", sev.prev.data$prev.res),
  data.frame(cohort = "pooled", sev.prev.region),
  data.frame(cohort = "pooled", sev.prev.country),
  sev.prev.cohort
)

#Underweight Prevalence
df <- waz %>% subset(., select = -c(whz)) %>% mutate(whz=waz)
summary(df$whz)

df <- calc.prev.agecat(df)
prev.data <-  summary.prev.whz(df)
prev.region <- df %>% group_by(region) %>% do(summary.prev.whz(.)$prev.res)
prev.country <- df %>% group_by(country) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(region=country)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, country, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

underweight.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  data.frame(cohort = "pooled", prev.country),
  prev.cohort
)




#mean waz
waz.data <- summary.waz(df)
waz.region <- d %>% group_by(region) %>% do(summary.waz(.)$waz.res)
waz.country <- d %>% group_by(country) %>% do(summary.waz(.)$waz.res) %>% mutate(region=country)

waz.cohort <-
  waz.data$waz.cohort %>% subset(., select = c(cohort, region, country, agecat, nmeas,  meanwaz,  ci.lb,  ci.ub)) %>%
  rename(est = meanwaz,  lb = ci.lb,  ub = ci.ub)

waz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", waz.data$waz.res),
  data.frame(cohort = "pooled", waz.region),
  data.frame(cohort = "pooled", waz.country),
  waz.cohort
)


#monthly mean waz
df <- calc.monthly.agecat(df)
monthly.data <- summary.waz(df)
monthly.region <- df %>% group_by(region) %>% do(summary.waz(.)$waz.res)
monthly.country <- df %>% group_by(country) %>% do(summary.waz(.)$waz.res) %>% mutate(region=country)

monthly.cohort <-
  monthly.data$waz.cohort %>% subset(., select = c(cohort, region, country, agecat, nmeas,  meanwaz,  ci.lb,  ci.ub)) %>%
  rename(est = meanwaz,  lb = ci.lb,  ub = ci.ub)

monthly.waz <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", monthly.data$waz.res),
  data.frame(cohort = "pooled", monthly.region),
  data.frame(cohort = "pooled", monthly.country),
  monthly.cohort
)




#Prevalence of wasting based on MUAC
d <- calc.prev.agecat(d)
m.prev.data <- summary.prev.muaz(d)
m.prev.region <- d %>% group_by(region) %>% do(summary.prev.muaz(.)$m.prev.res)
m.prev.country <- d %>% filter(!is.na(muaz)) %>% group_by(country) %>% do(summary.prev.muaz(.)$m.prev.res) %>% mutate(region=country)

m.prev.cohort <-
  m.prev.data$m.prev.cohort %>% subset(., select = c(cohort, region, country, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

muaz.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", m.prev.data$m.prev.res),
  data.frame(cohort = "pooled", m.prev.region),
  data.frame(cohort = "pooled", m.prev.country),
  m.prev.cohort
)

#make wasting comparison in same subset
prev.region <- d %>% group_by(region) %>% do(summary.prev.muaz(.)$prev.res)
prev.country <- d %>% filter(!is.na(muaz)) %>% group_by(country) %>% do(summary.prev.muaz(.)$prev.res) %>% mutate(region=country)
prev.cohort <-
  m.prev.data$prev.cohort %>% subset(., select = c(cohort, region, country, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

m.whz.prev <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", m.prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  data.frame(cohort = "pooled", prev.country),
  prev.cohort
)



co_desc_data <- bind_rows(
  data.frame(disease = "co-occurrence", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence", prev),
  data.frame(disease = "co-occurrence", age_range="3 months",   birth="yes", severe="no", measure= "Incidence proportion", ci),
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

#Clean up region marking
co_desc_data$region <- as.character(co_desc_data$region)

fix_region <- mark_region(co_desc_data[co_desc_data$region=="Other",])
co_desc_data$region[co_desc_data$region=="Other"] <- as.character(fix_region$region)
table(co_desc_data$region)



co_desc_data <- co_desc_data %>% 
  mutate(pooling = case_when(
    cohort != "pooled" ~ "no pooling",
    cohort == "pooled" & !is.na(country) ~ "country",
    region != "Overall" ~ "regional",
    region == "Overall" ~ "overall"
  ))


saveRDS(co_desc_data, file = paste0(BV_dir,"/results/co_desc_data.rds"))




