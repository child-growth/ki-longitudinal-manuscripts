

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load data
d <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_unadj_results.rds"))

d$agecat[grepl("0-24 months",d$agecat)] <- "0-24 months"
d$agecat[grepl("0-6 months",d$agecat)] <- "0-6 months"


#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

d <- droplevels(d)


prev <- d %>% filter(type=="E(Y)")
dpaf <- d %>% filter(type=="PAF")
d <- d %>% filter(type=="PAR")







RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.par(., method="FE")) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.par(., method="FE")) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)








#Calculate pooled prevalences
Prev_est <- prev %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.prev(., method="FE")) %>% as.data.frame()
Prev_est$region <- "Pooled"

Prev_est_region <- prev %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.prev(., method="FE")) %>% as.data.frame()

Prev_est_raw <- rbind(Prev_est, Prev_est_region)
Prev_est_raw <- Prev_est_raw %>% subset(., select = - c(CI1, CI2, Nstudies, baseline_level, intervention_level))






dim(RMAest_raw)
df <- left_join(RMAest_raw, Prev_est_raw, by = c("outcome_variable","intervention_variable", "agecat","region"))
dim(df)


#temp
df <- df %>% filter(!is.na(prev))



#Calculate PAF 
df2 <- df %>% group_by(intervention_variable, agecat, outcome_variable, region) %>%
  mutate(PAF=PAR/prev*100, PAF.CI1=CI1/prev*100, PAF.CI2=CI2/prev*100)
summary(df2$PAR)
summary(df2$prev)
summary(df2$PAF)
summary(df2$PAF.CI1)
summary(df2$PAF.CI2)



RMAest <- df2


#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)


# save pooled PAF's
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_PAF_results_unadj_FE.rds"))