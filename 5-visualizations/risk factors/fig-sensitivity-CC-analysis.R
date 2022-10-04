


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))




dfull_main <- readRDS(paste0(here::here(),"/data/pooled_Zscore_PAR_results.rds")) %>% mutate(Analysis="Main analysis with covariate imputation")%>% filter(outcome_variable!="waz", agecat=="24 months", region=="Pooled")
dfull_cc <- readRDS(paste0(here::here(),"/data/pooled_Zscore_PAR_results_cc.rds")) %>% mutate(Analysis="Sensitivity analysis that excludes\nchildren with missing covariates")%>% filter(outcome_variable!="waz", agecat=="24 months", region=="Pooled")
dfull <- bind_rows(dfull_main, dfull_cc) 
unique(dfull$region)
table(dfull$intervention_variable, dfull$Analysis)
dfull <- dfull %>% group_by(outcome_variable, intervention_variable) %>% filter(n()>=2)

plotdf <- dfull %>% filter(agecat=="24 months") %>% mutate(RF_lev = paste0(RFlabel,": ",intervention_level, " vs. ",baseline_level," (Ref)"))

plotdf$outcome_variable <- gsub("haz", "LAZ", plotdf$outcome_variable)
plotdf$outcome_variable <- gsub("whz", "WLZ", plotdf$outcome_variable)
plotdf <- plotdf %>% filter(intervention_variable!="safeh20", intervention_variable!="pers_wast")

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
plotdf$intervention_level[plotdf$intervention_level=="Full or late term"] <- "Full/late term"
plotdf$intervention_level[plotdf$intervention_level=="(0%, 5%]"] <- "(0%,5%]"
plotdf$intervention_level[plotdf$intervention_level=="No"] <- "None"
plotdf$intervention_level[plotdf$intervention_level=="Yes"] <- "All"
plotdf$intervention_level[plotdf$intervention_level=="1" & plotdf$intervention_variable %in% c("brthmon","month")] <- "Jan."
plotdf$intervention_level[plotdf$intervention_level=="0" & plotdf$intervention_variable %in% c("single")] <- "Partnered"
plotdf$intervention_level[plotdf$intervention_level=="1" & plotdf$intervention_variable %in% c("parity")] <- "Firstborn"
plotdf$intervention_level[plotdf$intervention_level=="None" & plotdf$intervention_variable %in% c("vagbrth")] <- "C-section"
plotdf$intervention_level[plotdf$intervention_level=="None" & plotdf$intervention_variable %in% c("hdlvry")] <- "No"
plotdf$RFlabel[plotdf$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
plotdf$RFlabel[plotdf$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
plotdf$RFlabel[plotdf$RFlabel=="Gestational age at birth"] <- "Gestational age"

plotdf <- plotdf %>% subset(., select = c(Analysis, outcome_variable, intervention_variable, intervention_level, PAR, CI1, CI2, RFlabel, RFlabel_ref)) %>% 
  filter(!is.na(PAR)) %>% mutate(measure="PAR")  %>%
  group_by(outcome_variable) %>%
  arrange(-PAR) %>%
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))
plotdf <- plotdf %>% mutate(RFlabel_ref = factor(RFlabel_ref, levels = unique(plotdf$RFlabel_ref)))

min(-plotdf$CI2)
max(-plotdf$CI1)
p_cc_sens<- ggplot(plotdf, aes(x=RFlabel_ref, group=Analysis)) + 
  geom_point(aes(y=-PAR, color=Analysis, fill=Analysis), position=position_dodge(width=0.5), size = 3) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2, color=Analysis), position=position_dodge(width=0.5), alpha=0.5, size = 1) +
  labs(x = "Exposure", y = "Adjusted difference in Z-score at 24 months") +
  geom_hline(yintercept = 0) +
  coord_flip(ylim =c(-0.05,0.45)) +
  facet_grid(~outcome_variable) +
  scale_fill_manual(values=tableau11[3:1]) +
  scale_colour_manual(values=tableau11[3:1]) +
  guides(color=guide_legend(title="Analysis:", nrow=2,byrow=TRUE), 
         alpha=guide_legend(title="Analysis:", nrow=2,byrow=TRUE), 
         shape=guide_legend(title="Analysis:", nrow=2,byrow=TRUE), 
         fill=guide_legend(title="Analysis:", nrow=2,byrow=TRUE)) +
  theme(strip.background = element_blank(),
        legend.position="bottom",
        axis.text.y = element_text(size=8, hjust=0),
        strip.text.x = element_text(size=14),
        axis.text.x = element_text(size=10), 
        panel.spacing = unit((0), "lines")) 
p_cc_sens



ggsave(p_cc_sens, file=paste0(BV_dir,"/figures/risk-factor/PIE_CC_sens.png"), width=7, height=9)
ggsave(p_cc_sens, file=paste0(here::here(),"/figures/PIE_CC_sens.png"),  width=7, height=9)



#plot difference by CC analysis
df_diff <- left_join(dfull_main, dfull_cc, by=c("intervention_variable","intervention_level", "outcome_variable"))
head(df_diff)

summary(abs(df_diff$PAR.x-df_diff$PAR.y))








