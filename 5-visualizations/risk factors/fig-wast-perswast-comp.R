

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Load data
d <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds")) %>% mutate(pooled=1)

dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds")) %>% filter(type=="RR") %>% select(studyid,country,intervention_variable, agecat,  intervention_level, baseline_level, outcome_variable, estimate, ci_lower,ci_upper) %>%
  rename(RR=estimate,  RR.CI1=ci_lower, RR.CI2=ci_upper) %>% mutate(pooled=0)
dfull <- RMA_clean(dfull)


d <- bind_rows(d, dfull)
head(d)
tail(d)

unique(d$outcome_variable)
unique(d$agecat)
d <- d %>% filter(outcome_variable %in% c("ever_wasted", "ever_swasted", "pers_wast", "ever_stunted","ever_sstunted"),
                  agecat %in% c("0-24 months", "0-24 months (no birth st.)", "0-24 months (no birth wast)") | intervention_variable=="predexfd6" & agecat=="6-24 months")


unique(d$intervention_variable)
#d <- d %>% filter(intervention_variable %in% c("pers_wast","enwast","anywast06","lag_WHZ_quart"))

#Subset agecat
d <- droplevels(d)


yticks <- c(0.8, 1, 1.5, 2, 3, 4)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)



df <- d
df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_", "Ever ", df$outcome_variable)
df$agecat[df$agecat=="0-24 months (no birth wast)"] <- "0-24 months"
df$agecat[df$agecat=="0-24 months (no birth st.)"] <- "0-24 months"


unique(df$region)
unique(df$outcome_variable)
unique(df$intervention_variable)

plotdf <- df %>% 
  filter(region!="N.America & Europe" | is.na(region),
         intervention_variable %in% c("sex", "hhwealth_quart",  "meducyrs", "mwtkg" )) %>%
         #outcome_variable %in% c("Ever stunted", "Ever wasted"),
         #agecat %in% c("0-24 months", "6-24 months")) %>%
  filter(!is.na(intervention_level), !is.na(agecat)) %>%
  filter(intervention_level!=baseline_level) %>%
  mutate(Outcome =  case_when(
    outcome_variable=="Ever stunted" ~ "Stunted",
    outcome_variable=="Ever sstunted" ~ "Severely stunted",
    outcome_variable=="Ever wasted" ~ "Wasted", 
    outcome_variable=="Ever swasted" ~ "Severely wasted",  
    outcome_variable=="pers_wast" ~ "Persistently wasted"
  ),
  Outcome = factor(Outcome, levels=c("Stunted","Severely stunted","Wasted", "Severely wasted",  "Persistently wasted"))) %>%
  arrange(intervention_variable) %>%
  group_by(intervention_variable, outcome_variable)
as.data.frame(plotdf)

plotdf$severe<-factor(ifelse(grepl("evere",plotdf$Outcome),1,0),levels=c("0","1"))


#Keep only the high risk comparison
unique(plotdf$intervention_level)
plotdf <- plotdf %>% filter(intervention_level %in% c("Male","<52 kg","Low","Q1"))


#Add comparison to facet lable
unique(plotdf$RFlabel)
plotdf$RFlabel_ref[plotdf$RFlabel=="Sex"] <- "Sex:\nboys vs girls (ref.)"
plotdf$RFlabel_ref[plotdf$RFlabel=="Mother's weight"] <- "Mother's weight:\n<52 kg vs >=58 kg (ref.)"
plotdf$RFlabel_ref[plotdf$RFlabel=="Mother's education"] <- "Mother's education:\nlow vs high (ref.)"
plotdf$RFlabel_ref[plotdf$RFlabel=="HH wealth"] <- "HH wealth:\nQ1 vs Q4 (ref.)"


# p_severecomp_old <- ggplot(plotdf[plotdf$region=="Pooled",], aes(x=Outcome, group=intervention_level)) + 
#   geom_point(aes(y=RR), color="#287D8EFF", size=3) +
#   geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color="#287D8EFF"),
#                  alpha=0.5, size = 1) +
#   facet_wrap(~RFlabel_ref, scales="free_x", nrow = 1) +   #,  labeller = label_wrap) +
#   labs(x = "Cumulative incidence of growth failure\noutcome from birth to 24 months", y = "Adjusted cumulative incidence ratio\ncomparing highest to lowest risk strata") +
#   geom_hline(yintercept = 1) +
#   #geom_text(aes(x=1, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",max_Nstudies," (Wasting: ",min_Nstudies,")")), size=3,  hjust=0) +
#   scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, expand = c(0,0)) +
#   scale_colour_manual(values=tableau10[c(2,2,3,3,5)]) +
#   scale_shape_manual(values=c(16,21)) +
#   theme(strip.background = element_blank(),
#         legend.position="none",
#         axis.text.y = element_text(size=12),
#         strip.text.x = element_text(size=10),
#         axis.text.x = element_text(size=10, vjust = 1, hjust = 0.5),
#         panel.spacing = unit(0, "lines")) +
#   coord_flip(ylim = c(0.8, 3.5))
# 
# p_severecomp_old


data_pooled = plotdf %>% filter(pooled==1)
min(data_pooled$RR.CI1)
max(data_pooled$RR.CI2)

data = plotdf %>% filter(pooled==0)
min(data$RR)
max(data$RR)

plotdf <- plotdf %>% filter(!is.na(Outcome), !is.na(RFlabel_ref), !is.na(intervention_variable)) %>% droplevels()

set.seed(12234)
p_severecomp <- ggplot(plotdf %>% filter(region=="Pooled", pooled==1), 
                       aes(x=Outcome, group=intervention_level)) + 
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2.5, stroke=0, alpha=0.5,
             position=position_jitter(width=0.2), data = plotdf %>% filter(pooled==0)) +
  geom_point(aes(y=RR), color="#287D8EFF", size=3) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color="#287D8EFF"),
                 alpha=0.5, size = 1) +
  facet_wrap(~RFlabel_ref, scales="free_x", nrow = 1) +   #,  labeller = label_wrap) +
  labs(x = "Cumulative from birth to 24 months", y = "Adjusted cumulative incidence ratio\ncomparing highest to lowest risk strata") +
  geom_hline(yintercept = 1) +
  #geom_text(aes(x=1, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",max_Nstudies," (Wasting: ",min_Nstudies,")")), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, expand = c(0,0)) +
  scale_colour_manual(values=tableau10[c(2,2,3,3,5)]) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10, vjust = 1, hjust = 0.5),
        panel.spacing = unit(0, "lines")) +
  coord_flip(ylim = c(0.65, 3.5))
p_severecomp

ggsave(p_severecomp, file=paste0(BV_dir,"/figures/risk-factor/fig-wast-perswast-comp.png"), height=8, width=10)

saveRDS(list(p_severecomp, plotdf), file = paste0(BV_dir, "/results/fig-severe-outcome-comps.RDS"))




#Region specific
p_severecomp_SA <- ggplot(plotdf[plotdf$region=="South Asia",], aes(x=Outcome, group=intervention_level)) + 
  geom_point(aes(y=RR), color="#287D8EFF", size=3) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color="#287D8EFF"),
                 alpha=0.5, size = 1) +
  facet_wrap(~RFlabel_ref, scales="free_x", nrow = 1) +   #,  labeller = label_wrap) +
  labs(x = "Cumulative incidence of growth failure\noutcome from birth to 24 months", y = "Adjusted cumulative incidence ratio\ncomparing highest to lowest risk strata") +
  geom_hline(yintercept = 1) +
  #geom_text(aes(x=1, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",max_Nstudies," (Wasting: ",min_Nstudies,")")), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN,  expand = c(0,0)) +
  scale_colour_manual(values=tableau10[c(2,2,3,3,5)]) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10, vjust = 1, hjust = 0.5),
        panel.spacing = unit(0, "lines")) +
  coord_flip(ylim = c(0.8, 3.5))

p_severecomp_LA <- ggplot(plotdf[plotdf$region=="Latin America",], aes(x=Outcome, group=intervention_level)) + 
  geom_point(aes(y=RR), color="#287D8EFF", size=3) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color="#287D8EFF"),
                 alpha=0.5, size = 1) +
  facet_wrap(~RFlabel_ref, scales="free_x", nrow = 1) +   #,  labeller = label_wrap) +
  labs(x = "Cumulative incidence of growth failure\noutcome from birth to 24 months", y = "Adjusted cumulative incidence ratio\ncomparing highest to lowest risk strata") +
  geom_hline(yintercept = 1) +
  #geom_text(aes(x=1, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",max_Nstudies," (Wasting: ",min_Nstudies,")")), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, expand = c(0,0)) +
  scale_colour_manual(values=tableau10[c(2,2,3,3,5)]) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10, vjust = 1, hjust = 0.5),
        panel.spacing = unit(0, "lines")) +
  coord_flip(ylim = c(0.8, 3.5))

p_severecomp_Africa <- ggplot(plotdf[plotdf$region=="Africa",], aes(x=Outcome, group=intervention_level)) + 
  geom_point(aes(y=RR), color="#287D8EFF", size=3) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color="#287D8EFF"),
                 alpha=0.5, size = 1) +
  facet_wrap(~RFlabel_ref, scales="free_x", nrow = 1) +   #,  labeller = label_wrap) +
  labs(x = "Cumulative incidence of growth failure\noutcome from birth to 24 months", y = "Adjusted cumulative incidence ratio\ncomparing highest to lowest risk strata") +
  geom_hline(yintercept = 1) +
  #geom_text(aes(x=1, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",max_Nstudies," (Wasting: ",min_Nstudies,")")), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, expand = c(0,0)) +
  scale_colour_manual(values=tableau10[c(2,2,3,3,5)]) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10, vjust = 1, hjust = 0.5),
        panel.spacing = unit(0, "lines")) +
  coord_flip(ylim = c(0.8, 3.5))



ggsave(p_severecomp_SA, file=paste0(BV_dir,"/figures/risk-factor/fig-wast-perswast-comp-SA.png"), height=8, width=10)
ggsave(p_severecomp_LA, file=paste0(BV_dir,"/figures/risk-factor/fig-wast-perswast-comp-LA.png"), height=8, width=10)
ggsave(p_severecomp_Africa, file=paste0(BV_dir,"/figures/risk-factor/fig-wast-perswast-comp-Africa.png"), height=8, width=10)
