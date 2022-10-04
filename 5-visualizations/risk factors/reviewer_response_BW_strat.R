


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))





dfull <- readRDS(paste0(here::here(),"/data/plotdf_bw_strat.RDS"))



plotdf <- dfull %>% filter(agecat=="24 months") %>% mutate(RF_lev = paste0(RFlabel,": ",intervention_level, " vs. ",baseline_level," (Ref)"))


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

plotdf$birthwt <- factor(plotdf$birthwt, levels=(rev(c("Unstratified","Normal or high birthweight","Low birthweight"))))
plotdf$`Birth weight` <- plotdf$birthwt

p_bw_strat<- ggplot(plotdf, aes(x=RF_lev, group=`Birth weight`)) + 
  geom_point(aes(y=ATE, color=`Birth weight`, fill=`Birth weight`), position=position_dodge(width=0.5), size = 3) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=`Birth weight`), position=position_dodge(width=0.5), alpha=0.5, size = 1) +
  geom_text(aes(label=Nstudies, y=-1)) +
  labs(x = "Exposure", y = "ATE") +
  geom_hline(yintercept = 0) +
  coord_flip(ylim =c(-0.25, 0.5)) +
  facet_grid(~outcome_variable) +
  scale_fill_manual(values=tableau11[3:1]) +
  scale_colour_manual(values=tableau11[3:1]) +
  theme(strip.background = element_blank(),
        legend.position="bottom",
        axis.text.y = element_text(size=8, hjust=0),
        strip.text.x = element_text(size=14),
        axis.text.x = element_text(size=10), 
        panel.spacing = unit((0), "lines")) 
p_bw_strat

ggsave(p_bw_strat, file=paste0(here::here(),"/figures/bwstrat.png"), width=4, height=9)

# ggsave(p_bw_strat, filename = "bwstrat.png",height = 8, width = 10)
# 
# 
# ggsave(p_bw_strat, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/ATE_bw_strat.png"), width=30, height=18.3, units = 'cm')
# 
# paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/ATE_bw_strat.png")

