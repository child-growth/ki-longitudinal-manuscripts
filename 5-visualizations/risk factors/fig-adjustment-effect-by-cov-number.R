
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
dfull <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds"))
head(dfull)

#Mark region
dfull <- mark_region(dfull)

d <- dfull %>% filter(type=="ATE")

#Drop velocities
d <- d %>% filter(outcome_variable=="haz" | outcome_variable=="whz")

#Drop reference levels
d <- d %>% filter(intervention_level != baseline_level)

#temp
#d <- d %>% filter(agecat=="24 months", outcome_variable=="haz", intervention_variable=="meducyrs")

d <- droplevels(d)

d_unadj <- d %>% filter(adjustment_set=="unadjusted")
d_adj <- d %>% filter(adjustment_set!="unadjusted")
summary(d_unadj$estimate)
summary(d_adj$estimate)

#number of selected covariates
d_adj$num_cov <- str_count(d_adj$adjustment_set, ",") + 1
d_adj$num_cov[d_adj$adjustment_set==""] <- 0
summary(d_adj$num_cov)

dim(d_unadj)
dim(d_adj)
df <- merge(d_unadj, d_adj, all.x=F, all.y=F, by = c("studyid","country","agecat","type","outcome_variable", "intervention_variable", "intervention_level","baseline_level","strata_label", "parameter"))
df <- df %>% arrange(studyid,country,agecat,type,outcome_variable, intervention_variable, intervention_level,baseline_level,strata_label, parameter)

dim(df)
head(df)
table(!is.na(df$estimate.x) & !is.na(df$estimate.y))



df$diff <- (df$estimate.y -df$estimate.x)
df$abs_diff <- abs(df$estimate.y -df$estimate.x)


mean(df$diff)
ave_abs_diff = round(mean(df$abs_diff),2)

p <-  ggplot(df, aes(x=num_cov , y=diff)) + 
  geom_point(size = 4, alpha=0.25) + geom_smooth(se=F) +
  xlab("Number of covariates adjusted for") + ylab("Difference between unadjusted and adjusted average treatment effect") +
  geom_hline(yintercept = 0) + theme_ki() +
  geom_text(aes(x=20, y=0.75, label=paste0("Average absolute difference: ",ave_abs_diff))) +
  ggtitle("Difference in unadjusted and adjusted estimates\nof average treatment effect on LAZ and WLZ outcomes") 


ggsave(p, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-adjusted-unadjusted-differences.png", height=8, width=8)

