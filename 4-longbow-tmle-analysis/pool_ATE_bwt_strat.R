


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



dfull <- readRDS(paste0(BV_dir,"/results/rf results/longbow results/results_cont_bwt_strat.RDS"))
saveRDS(Zscores_bwt_strat, paste0(res_dir, "rf results/longbow results/results_cont_bwt_strat.RDS"))

d <- dfull %>% filter(type=="ATE", agecat=="24 months")


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

#Count number of BW levels and only keep when estimates for both levels by study
d <- d %>% group_by(studyid, country, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  mutate(Nlevels=n()) %>% filter(Nlevels==2) %>% 
  group_by(birthwt,intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  mutate(Nstudies=n()) %>% filter(Nstudies>2)
table(d$Nlevels)
table(d$Nstudies)

df <- d %>% filter(Nstudies==16)
  
RMAest <- d %>% group_by(Nstudies, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable, birthwt) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

table(RMAest$Nstudies)

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

plotdf <- RMAest_clean %>% filter(agecat=="24 months") %>% mutate(RF_lev = paste0(RFlabel,": ",intervention_level, " vs. ",baseline_level," (Ref)"))


plotdf$outcome_variable <- gsub("haz", "LAZ", plotdf$outcome_variable)
plotdf$outcome_variable <- gsub("whz", "WLZ", plotdf$outcome_variable)

plotdf$intervention_level <- as.character(plotdf$intervention_level)
plotdf$intervention_level[plotdf$intervention_level=="Full or late term"] <- "Full/late term"
plotdf$intervention_level[plotdf$intervention_level=="[0%, 2%]"] <- "[0%,2%]"
plotdf$intervention_level[plotdf$intervention_level=="No" & !(plotdf$intervention_variable %in% c("enwast","enstunt"))] <- "None"
plotdf$intervention_level[plotdf$intervention_variable %in% c("enwast","enstunt")] <- "No"
plotdf$intervention_level[plotdf$intervention_level=="Yes"] <- "All"
plotdf$intervention_level[plotdf$intervention_level=="Normal weight"] <- ">=18.5 BMI"
plotdf$intervention_level[plotdf$intervention_level=="1" & plotdf$intervention_variable %in% c("brthmon","month")] <- "Jan."
plotdf$intervention_level[plotdf$intervention_level=="0" & plotdf$intervention_variable %in% c("single")] <- "partnered"
plotdf$intervention_level[plotdf$intervention_level=="1" & plotdf$intervention_variable %in% c("parity")] <- "Firstborn"
plotdf$intervention_level[plotdf$intervention_level=="None" & plotdf$intervention_variable %in% c("vagbrth")] <- "C-section"
plotdf$intervention_level[plotdf$intervention_level=="None" & plotdf$intervention_variable %in% c("hdlvry")] <- "No"
plotdf$RFlabel[plotdf$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
plotdf$RFlabel[plotdf$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
plotdf$RFlabel[plotdf$RFlabel=="Gestational age at birth"] <- "Gestational age"


plotdf$Nstudies <- as.character(plotdf$Nstudies)
plotdf$Nstudies[plotdf$birthwt=="Low birthweight"] <- ""
plotdf$Nstudies[plotdf$outcome=="WLZ"] <- ""
plotdf$`Birth weight` <- plotdf$birthwt


p_bw_strat<- ggplot(plotdf, aes(x=RF_lev, group=`Birth weight`)) + 
  geom_point(aes(y=ATE, color=`Birth weight`, fill=`Birth weight`), position=position_dodge(width=0.5), size = 3) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=`Birth weight`), position=position_dodge(width=0.5), alpha=0.5, size = 1) +
  geom_text(aes(label=Nstudies, y=-1)) +
  labs(x = "Exposure", y = "ATE") +
  geom_hline(yintercept = 0) +
  coord_flip(ylim =c(-1, 1)) +
  facet_grid(~outcome_variable) +
  scale_fill_manual(values=tableau10[1:2]) +
  scale_colour_manual(values=tableau10[1:2]) +
  theme(strip.background = element_blank(),
        legend.position="bottom",
        axis.text.y = element_text(size=8, hjust=0),
        strip.text.x = element_text(size=14),
        axis.text.x = element_text(size=10), 
        panel.spacing = unit(0, "lines")) 
p_bw_strat


ggsave(p_bw_strat, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/ATE_bw_strat.png"), width=30, height=18.3, units = 'cm')

paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/ATE_bw_strat.png")
