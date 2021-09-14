

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Load data
d <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds"))




temp <- d %>% filter(intervention_variable=="fage" & outcome_variable=="ever_stunted")
dim(temp)
table(temp$intervention_level)
table(temp$baseline_level)





#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

d <- droplevels(d)


prev <- d %>% filter(type=="E(Y)")
dpaf <- d %>% filter(type=="PAF")
d <- d %>% filter(type=="PAR")
# table(prev$intervention_level[prev$intervention_variable=="fage"])
# table(d$intervention_level[d$intervention_variable=="fage"])

df <- prev %>% filter(intervention_variable=="fage")
head(df)

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.par(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.par(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)


d[d$intervention_variable=="fage",]

RMAest[RMAest$intervention_variable=="fage",]




#Calculate pooled prevalences
Prev_est <- prev %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.prev(.)) %>% as.data.frame()
Prev_est$region <- "Pooled"

Prev_est_region <- prev %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.prev(.)) %>% as.data.frame()

Prev_est_raw <- rbind(Prev_est, Prev_est_region)
Prev_est_raw <- Prev_est_raw %>% subset(., select = - c(CI1, CI2, Nstudies, baseline_level, intervention_level))


Prev_est[Prev_est$intervention_variable=="fage",]




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

temp<-df2[df2$intervention_variable=="fage",]


#------------------------------------------
# Check that pooled estimate is reasonable:
#------------------------------------------

df3 <- df2 %>% filter(agecat=="24 months", outcome_variable=="stunted", intervention_variable=="hhwealth_quart", region=="Pooled") %>% mutate(studyid="Pooled")
df3_study <- dpaf %>% filter(agecat=="24 months", outcome_variable=="stunted", intervention_variable=="hhwealth_quart") %>%
    rename(PAF=estimate, PAF.CI1=ci_lower, PAF.CI2=ci_upper) %>% mutate(PAF=PAF*100,PAF.CI1=PAF.CI1*100,PAF.CI2=PAF.CI2*100)
df3 <- bind_rows(df3, df3_study)
ggplot(df3, aes(x=studyid)) +
  geom_point(aes(y=PAF,  color=studyid), size = 4) +
  geom_linerange(aes(ymin=PAF.CI1, ymax=PAF.CI2, color=studyid)) +
  coord_flip(ylim=c(-10, 40)) +
  labs(x = "Exposure", y = "Attributable Fraction") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(hjust = 1),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12,
                                   margin = margin(t = -20)),
        axis.title.x = element_text(margin = margin(t = 20))) +
  ggtitle(paste0("Population attributable fractions (%),\nPrevalence of stunting")) +
  guides(color=FALSE, shape=FALSE)





RMAest <- df2


#Clean up dataframe for plotting
RMAest[RMAest$intervention_variable=="fage",]

RMAest_clean <- RMA_clean(RMAest)

temp<-RMAest_clean[RMAest_clean$intervention_variable=="fage"&!is.na(RMAest_clean$intervention_variable),]

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)


# save pooled PAF's
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_PAF_results.rds"))