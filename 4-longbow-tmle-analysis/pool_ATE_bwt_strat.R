


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



dfull <- readRDS(paste0(BV_dir,"/results/rf results/longbow results/results_cont_bwt_strat.RDS"))
saveRDS(Zscores_bwt_strat, paste0(res_dir, "rf results/longbow results/results_cont_bwt_strat.RDS"))

d <- dfull %>% filter(type=="ATE", agecat!="All")

# Drop non-sensical combinations
unique(d$intervention_variable)
atbirth <- c("vagbrth", "hdlvry", "trth2o", "safeh20", "cleanck", "impfloor", "impsan", "earlybf",  "enstunt", "enwast", "birthlen")
postnatal <- c("anywast06", "pers_wast", "perdiar6","predexfd6")
full2years <- "perdiar24"
wastingvars <- c("anywast06", "pers_wast", "enwast")
wasting_outcomevars <- c("whz","wasted", "swasted", "wast_rec90d", "ever_wasted", "ever_swasted", "pers_wast", "ever_co" )



dim(d)
d <- d %>% filter(!(intervention_variable %in% atbirth & agecat=="Birth"))
d <- d %>% filter(!(intervention_variable == "birthwt" & agecat=="Birth" & outcome_variable %in% wasting_outcomevars))
d <- d %>% filter(!(intervention_variable %in% postnatal & agecat %in% c("Birth", "0-6 months",  "0-24 months")))
d <- d %>% filter(!(intervention_variable %in% full2years & agecat!="24 months"))
d <- d %>% filter(!(intervention_variable %in% wastingvars & outcome_variable %in% wasting_outcomevars & agecat!="24 months"))
dim(d)



#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)


RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable, birthwt) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

# RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
#   do(pool.cont(.)) %>% as.data.frame()
# 
# RMAest_raw <- rbind(RMAest, RMAest_region)
RMAest_raw <- RMAest


#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to labe
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$baseline_level)

saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_ATE_results_BW_strat.rds"))




#Where is age < 24 months for WHZ
plotdf <- RMAest_clean %>% filter(agecat=="24 months") %>% mutate(RF_lev = paste0(intervention_variable,": ",intervention_level))


p_bw_strat<- ggplot(plotdf, aes(x=RF_lev, group=birthwt)) + 
  geom_point(aes(y=ATE, color=birthwt, fill=birthwt), position=position_dodge(width=0.5), size = 3) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=birthwt), position=position_dodge(width=0.5), alpha=0.5, size = 1) +
  labs(x = "Exposure", y = "ATE") +
  geom_hline(yintercept = 0) +
  coord_flip(ylim =c(-0.5, 0.5)) +
  facet_grid(~outcome_variable) +
  scale_fill_manual(values=tableau10[1:2]) +
  scale_colour_manual(values=tableau10[1:2]) +
  theme(strip.background = element_blank(),
        legend.position="bottom",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=14),
        axis.text.x = element_text(size=10), 
        panel.spacing = unit(0, "lines")) 
p_bw_strat


