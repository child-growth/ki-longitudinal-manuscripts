


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Load mediation results
load(here("/results/rf results/raw longbow results/mediation_2019-08-01.rdata"))
md <- results %>% filter(type=="ATE") %>% mutate(analysis="med")
head(md)

#load primary results
dfull <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds"))
head(dfull)

dfull <- dfull %>% filter(type=="ATE", adjustment_set!="unadjusted") %>% mutate(analysis="prim")

d <- bind_rows(dfull, md)

#subset to primary outcomes
d <- d %>% filter(outcome_variable %in% c("haz", "whz"))

#Subset to parental variables
unique(d$intervention_variable)
d <- d %>% filter(intervention_variable %in% c("mage", "fage", "mhtcm", "mwtkg", "mbmi", "single", "fhtcm"))


#Mark how many birth variables are adjusted for in each study
d$num_birth_vars <- 0
d$num_birth_vars <- ifelse(grepl("gagebrth",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("birthwt",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("birthlen",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("vagbrth",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("hdlvry",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("parity",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)

table(d$num_birth_vars, d$analysis)

#Subset to cohorts measuring suffiicient birth covariates
df <- d %>% filter(num_birth_vars>3 | analysis=="prim")
med_studies <- unique(df$studyid[df$analysis=="med"])

d <- d %>% filter(studyid %in% med_studies)


#Drop reference levels
d <- d %>% filter(ci_lower !=  ci_upper)

#Compare cohort-specific estimates
plotdf <- d %>% filter(agecat=="6 months") %>% select(strata_label, intervention_variable, outcome_variable, intervention_level, analysis, estimate) %>% spread(analysis, estimate)
head(plotdf)
ggplot(plotdf, aes(x=prim, y=med)) + 
  geom_point() + 
  coord_cartesian(xlim=c(-1.5, 1.5), ylim=c(-1.5, 1.5)) + geom_abline(intercept = 0, slope = 1) 


# Pool estimates
d <- droplevels(d)
RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,analysis) %>%
  do(pool.cont(.)) %>% as.data.frame()
head(RMAest)


#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest)
head(RMAest_clean)

p <- ggplot(RMAest_clean %>% filter(agecat=="6 months", CI1!=CI2), 
       aes(x=paste0(intervention_level,"\n",analysis), y=ATE, color=analysis)) +
      geom_point() + 
      geom_linerange(aes(ymin=CI1 , ymax=CI2)) + 
      facet_wrap(RFlabel~outcome_variable, scales="free")
print(p)


ggsave(p, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-mediation.png", width=14, height=6)


#Make a plot of differences
plotdf <- plotdf %>% mutate(diff=prim-med)
summary(plotdf$diff)

