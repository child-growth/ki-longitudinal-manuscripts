


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

load(file=here("results","rf results","raw longbow results","vel_wlz_quart_2019-08-20.rdata"))

d <- results %>% filter(type=="ATE")

#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)


RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()





plen_plotdf <- RMAest  
plen_plotdf$agecat <- factor(plen_plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months"))

plen_lagwhz <- ggplot(plen_plotdf, aes(x=intervention_level)) + 
  geom_point(aes(y=ATE, fill=intervention_level, color=intervention_level), size = 3) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=intervention_level),
                 alpha=0.5, size = 1) +
  facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
  labs(x = "Quartile of mean WLZ in the prior 3 months\nReference: quartile 1", y = "Difference in length velocity (cm)") +
  geom_hline(yintercept = 0) +
  geom_text(aes(x=1.2, y=(max(plen_plotdf$CI2))+.01, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
  scale_fill_manual(values=rep(tableau10[1],4)) +
  scale_colour_manual(values=rep(tableau10[1],4)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10),
        panel.spacing = unit(0, "lines")) +
  ggtitle("Age-specific growth velocity by prior mean WLZ")


ggsave(plen_lagwhz, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-WLZ-quart-len-vel.png"), height=4, width=10)

save(plen_lagwhz, plen_plotdf, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/fig-WLZ-quart-len-vel.rdata"))

