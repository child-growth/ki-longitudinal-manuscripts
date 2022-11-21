


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


results <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds"))
Ns <- readRDS(paste0(res_dir, "rf results/longbow results/velocity_wlz_quart_obs_counts.RDS")) %>%
  rename(intervention_level=lag_WHZ_quart)

d <- results %>% filter(type=="ATE", intervention_variable=="lag_WHZ_quart") %>%
  subset(., select = -c(n_cell, n)) %>% group_by(studyid, country) %>% mutate(N=n()) %>%
  droplevels() %>% filter(N>=20) #make sure study has sufficient age-specific measurements
unique(d$studyid)
head(d)
table(d$studyid,d$N)

d <- left_join(d, Ns, by = c("studyid", "country","agecat", "outcome_variable", "intervention_level"))
head(d)

#Drop reference levels
d <- d %>% filter(intervention_level != baseline_level) %>% filter(n_cell>5 | agecat=="Unstratified")
summary(d$untransformed_se)

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()



cohortRR <- d %>% select(studyid,country,intervention_variable, agecat,  intervention_level, baseline_level, outcome_variable, estimate, ci_lower,ci_upper) %>%
  rename(ATE=estimate,  CI1=ci_lower, CI2=ci_upper) %>% mutate(cohort=1)



plen_plotdf <- bind_rows(data.frame(RMAest %>% mutate(cohort=0)), data.frame(cohortRR))
plen_plotdf$agecat <- factor(plen_plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months", "Unstratified"))
plen_plotdf$pooled <- factor(ifelse(plen_plotdf$agecat=="Unstratified","Yes","No"), levels=c("No","Yes"))


#Pooled, all ages for "Unstratified"
levels(plen_plotdf$agecat)[length(levels(plen_plotdf$agecat))] <- "Pooled, all ages"


saveRDS(plen_plotdf, file=paste0(here::here(),"/data/wlz-quart_laz_vel_plotdf.RDS"))
plen_plotdf <- readRDS(paste0(here::here(),"/data/wlz-quart_laz_vel_plotdf.RDS"))

#Color the pooled point
color_vec<-c("#287D8EFF", tableau11[1])
unique(plen_plotdf$agecat)
plen_plotdf <- plen_plotdf %>% mutate(pooled=factor(ifelse(agecat=="Pooled, all ages","yes","no")))


plen_lagwhz <- ggplot(plen_plotdf %>% filter(cohort==0), aes(x=intervention_level)) + 
  geom_point(aes(y=ATE), color="#878787", fill="#878787", size=2.5, stroke=0, alpha=0.25,
             position=position_jitter(width=0.1), data=plen_plotdf %>% filter(cohort==1)) +
  geom_point(aes(y=ATE, color=pooled, fill=pooled), size = 3) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=pooled),
                 alpha=0.5, size = 1) +
  facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
  labs(x = "Quartile of mean WLZ in the prior 3 months\nReference: quartile 1", y = "Difference in linear growth\nvelocity (cm per 3-months)") +
  geom_hline(yintercept = 0) +
  coord_cartesian(ylim=c(-0.3, 0.55)) +
  scale_fill_manual(values=color_vec) +
  scale_colour_manual(values=color_vec) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10),
        panel.spacing = unit(0, "lines")) 
plen_lagwhz

ggsave(plen_lagwhz, file=paste0(here(),"/figures/risk-factor/fig-WLZ-quart-len-vel.png"), height=4, width=10)
ggsave(plen_lagwhz, file=paste0(BV_dir,"/figures/risk-factor/fig-WLZ-quart-len-vel.png"), height=4, width=10)
saveRDS(plen_lagwhz, file=paste0(BV_dir,"/figures/plot-objects/risk-factor/fig-WLZ-quart-len-vel.rds"))
saveRDS(plen_plotdf, file=paste0(BV_dir,"/figures/risk-factor/figure-data/fig-WLZ-quart-len-vel.rds"))


#Save region-specific estimate plots



plen_plotdf <- RMAest_region %>% filter(region=="Africa")
plen_plotdf$agecat <- factor(plen_plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months", "Unstratified"))
plen_plotdf$pooled <- factor(ifelse(plen_plotdf$agecat=="Unstratified","Yes","No"), levels=c("No","Yes"))

plen_lagwhz_africa <- ggplot(plen_plotdf, aes(x=intervention_level)) + 
  geom_point(aes(y=ATE, fill=pooled, color=pooled#, shape=pooled
                 ), size = 3) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=pooled),
                 alpha=0.5, size = 1) +
  facet_wrap(~agecat, scales="free_x", nrow=1) +   
  ggtitle("African cohorts") +
  labs(x = "Quartile of mean WLZ in the prior 3 months\nReference: quartile 1", y = "Difference in linear\ngrowth velocity (cm)") +
  geom_hline(yintercept = 0) +
  scale_fill_manual(values=tableau11[c(9,1)]) +
  scale_colour_manual(values=tableau11[c(9,1)]) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10),
        panel.spacing = unit(0, "lines")) 

plen_plotdf <- RMAest_region %>% filter(region=="South Asia")
plen_plotdf$agecat <- factor(plen_plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months", "Unstratified"))
plen_plotdf$pooled <- factor(ifelse(plen_plotdf$agecat=="Unstratified","Yes","No"), levels=c("No","Yes"))

plen_lagwhz_SA <- ggplot(plen_plotdf, aes(x=intervention_level)) + 
  geom_point(aes(y=ATE, fill=pooled, color=pooled#, shape=pooled
                 ), size = 3) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=pooled),
                 alpha=0.5, size = 1) +
  facet_wrap(~agecat, scales="free_x", nrow=1) +   
  ggtitle("South Asian cohorts") +
  labs(x = "Quartile of mean WLZ in the prior 3 months\nReference: quartile 1", y = "Difference in linear\ngrowth velocity (cm)") +
  geom_hline(yintercept = 0) +
  scale_fill_manual(values=tableau11[c(9,1)]) +
  scale_colour_manual(values=tableau11[c(9,1)]) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10),
        panel.spacing = unit(0, "lines")) 

plen_plotdf <- RMAest_region %>% filter(region=="Latin America")
plen_plotdf$agecat <- factor(plen_plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months", "Unstratified"))
plen_plotdf$pooled <- factor(ifelse(plen_plotdf$agecat=="Unstratified","Yes","No"), levels=c("No","Yes"))

plen_lagwhz_LA <- ggplot(plen_plotdf, aes(x=intervention_level)) + 
  geom_point(aes(y=ATE, fill=pooled, color=pooled#, shape=pooled
                 ), size = 3) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=pooled),
                 alpha=0.5, size = 1) +
  facet_wrap(~agecat, scales="free_x", nrow=1) +   
  ggtitle("Latin American cohorts") +
  labs(x = "Quartile of mean WLZ in the prior 3 months\nReference: quartile 1", y = "Difference in linear\ngrowth velocity (cm)") +
  geom_hline(yintercept = 0) +
  scale_fill_manual(values=tableau11[c(9,1)]) +
  scale_colour_manual(values=tableau11[c(9,1)]) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10),
        panel.spacing = unit(0, "lines")) 


#Save region specific plots
ggsave(plen_lagwhz_africa, file=paste0(BV_dir,"/figures/risk-factor/fig-WLZ-quart-len-vel-Africa.png"), height=4, width=10)
ggsave(plen_lagwhz_SA, file=paste0(BV_dir,"/figures/risk-factor/fig-WLZ-quart-len-vel-SA.png"), height=4, width=10)
ggsave(plen_lagwhz_LA, file=paste0(BV_dir,"/figures/risk-factor/fig-WLZ-quart-len-vel-LA.png"), height=4, width=10)

