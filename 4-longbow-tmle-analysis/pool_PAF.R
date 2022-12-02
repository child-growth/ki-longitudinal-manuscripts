

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Load data
d <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds")) %>%
  filter( intervention_variable!="nhh",intervention_variable!="nrooms",intervention_variable!="parity")


bin_primary_alt_ref <- readRDS(paste0(BV_dir,"/results/rf results/bin_primary_alt_ref_subset.rds")) #%>% filter(intervention_variable!="sga")
unique(d$intervention_variable)
unique(bin_primary_alt_ref$intervention_variable)
bin_primary_alt_ref %>% filter(intervention_variable=="nrooms", outcome_variable=="ever_stunted")


d %>% filter(intervention_variable=="gagebrth",outcome_variable=="ever_stunted", type=="RR",intervention_level==baseline_level)
bin_primary_alt_ref %>% filter(intervention_variable=="gagebrth",outcome_variable=="ever_stunted", type=="RR")


d <- bind_rows(d, bin_primary_alt_ref)


#drop sparse outcomes
unique(d$intervention_variable)
d$min_n_cell[d$intervention_variable=="sga"]
d <- d %>% filter(min_n_cell >=10, untransformed_se!=0)


#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

d <- droplevels(d)

prev <- d %>% filter(type=="E(Y)")
dpaf <- d %>% filter(type=="PAF")
d <- d %>% filter(type=="PAR")

prev %>% filter(intervention_variable=="nhh", agecat=="0-24 months", outcome_variable=="ever_wasted")
dpaf %>% filter(intervention_variable=="nhh", agecat=="0-24 months", outcome_variable=="ever_wasted")
d %>% filter(intervention_variable=="nhh", agecat=="0-24 months", outcome_variable=="ever_wasted")



RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.par(.)) %>% as.data.frame()
RMAest$region <- "Pooled"
RMAest



RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.par(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)



#Calculate pooled prevalences
Prev_est <- prev %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.prev(.)) %>% as.data.frame()
Prev_est$region <- "Pooled"

Prev_est_region <- prev %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.prev(.)) %>% as.data.frame()

Prev_est_raw <- rbind(Prev_est, Prev_est_region)
Prev_est_raw <- Prev_est_raw %>% subset(., select = - c(CI1, CI2, Nstudies, baseline_level, intervention_level))





dim(RMAest_raw)
df <- left_join(RMAest_raw, Prev_est_raw, by = c("outcome_variable","intervention_variable", "agecat","region"))
dim(df)
unique(df$intervention_variable)

#Calculate PAF 
df2 <- df %>% group_by(intervention_variable, agecat, outcome_variable, region) %>%
  mutate(PAF=PAR/prev*100, PAF.CI1=CI1/prev*100, PAF.CI2=CI2/prev*100)
summary(df2$PAR)
summary(df2$prev)
summary(df2$PAF)
summary(df2$PAF.CI1)
summary(df2$PAF.CI2)

df2[df2$intervention_variable=="nrooms",]
df2 %>% filter(intervention_variable=="nrooms",outcome_variable =="ever_stunted")


# #------------------------------------------
# # Check that pooled estimate is reasonable:
# #------------------------------------------
# 
# df3 <- df2 %>% filter(agecat=="24 months", outcome_variable=="stunted", intervention_variable=="hhwealth_quart", region=="Pooled") %>% mutate(studyid="Pooled")
# df3_study <- dpaf %>% filter(agecat=="24 months", outcome_variable=="stunted", intervention_variable=="hhwealth_quart") %>%
#     rename(PAF=estimate, PAF.CI1=ci_lower, PAF.CI2=ci_upper) %>% mutate(PAF=PAF*100,PAF.CI1=PAF.CI1*100,PAF.CI2=PAF.CI2*100)
# df3 <- bind_rows(df3, df3_study)
# ggplot(df3, aes(x=studyid)) +
#   geom_point(aes(y=PAF,  color=studyid), size = 4) +
#   geom_linerange(aes(ymin=PAF.CI1, ymax=PAF.CI2, color=studyid)) +
#   coord_flip(ylim=c(-10, 40)) +
#   labs(x = "Exposure", y = "Attributable Fraction") +
#   geom_hline(yintercept = 0) +
#   theme(strip.background = element_blank(),
#         legend.position="right",
#         axis.text.y = element_text(hjust = 1),
#         strip.text.x = element_text(size=12),
#         axis.text.x = element_text(size=12,
#                                    margin = margin(t = -20)),
#         axis.title.x = element_text(margin = margin(t = 20))) +
#   ggtitle(paste0("Population attributable fractions (%),\nPrevalence of stunting")) +
#   guides(color=FALSE, shape=FALSE)





RMAest <- df2 %>% filter(!(intervention_variable=="nrooms" & intervention_level =="1"))


#Clean up dataframe for plotting
RMAest[RMAest$intervention_variable=="nhh",]

RMAest_clean <- RMA_clean(RMAest)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)
RMAest_clean[RMAest_clean$intervention_variable=="sga",]
RMAest_clean <- RMAest_clean %>% filter(!is.na(region))

# save pooled PAF's
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_PAF_results.rds"))

df <- RMAest_clean %>% filter(intervention_variable=="nrooms",outcome_variable =="ever_stunted",agecat=="0-24 months")
df
