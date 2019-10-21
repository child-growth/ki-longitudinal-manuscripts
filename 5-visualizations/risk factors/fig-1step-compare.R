

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Load data
load(paste0(here::here(),"/results/rf results/raw longbow results/results_1step_2019-10-08.rdata"))
head(results)



unique(results$type)
d <- results %>% filter(type=="PAR")
d <- droplevels(d)

#Drop non-included risk factors (treat h20, with very little variance, month and birth month, and secondry breastfeeding indicators)
d <- d %>% filter(!(intervention_variable %in% c("earlybf","anywast06", "enwast", "pers_wast", "enstunt","trth2o","predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36","brthmon","month")) )



RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest$region <- "Pooled"
RMAest <- RMAest %>% filter(!is.na(PAR))
RMAest_clean <- RMA_clean(RMAest, outcome="continuous")
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)

#load 2-step results 
fullPAR <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results_FE.rds"))

dim(RMAest_clean)
res <- left_join(RMAest_clean, fullPAR, by=c("outcome_variable","intervention_variable","intervention_level","agecat","region"))
dim(res)


res$Ydiff <- res$PAR.x - res$PAR.y
summary(res$PAR.y)
summary(res$Ydiff)
res$Ydiff_mean <- mean(res$Ydiff, na.rm=T)

# p <- ggplot(res, aes(x=intervention_variable, y=Ydiff)) + 
#   coord_flip() + 
#   geom_point() +
#   facet_grid(agecat~outcome_variable) +
#   geom_hline(yintercept = 0) +
#   ylab("Difference in Attributable Z-score difference")

p1 <- ggplot(res, aes(x=Ydiff)) + geom_density(fill=tableau10[8], alpha=0.5) + 
  geom_vline(xintercept = 0) + coord_cartesian(xlim = c(-0.3, 0.3), ylim = c(0, 10), expand = c(0.0)) +
  geom_vline(aes(xintercept = Ydiff_mean[1]), linetype="dashed") +
  geom_text(aes(x=Ydiff_mean-0.05, y=8, label=paste0("Mean\ndifference:\n",round(res$Ydiff_mean,2)))) +
  xlab("Difference between population-attributable difference\nestimated with 1-step and 2-step methods")  + ylab("Density") + 
  ggtitle("Empirical difference in parameters estimated using\n1-step targeted learning and 2-step targeted learning methods") 
  

#----------------------------------------------------------
# Compare efficiency/variance
#----------------------------------------------------------

res$se.x = (res$PAR.x - res$CI1.x)/1.96
res$se.y = (res$PAR.y - res$CI1.y)/1.96
res$se_diff = res$se.x - res$se.y
# 2-step is more efficient (Smaller SE's)
summary(res$se_diff)
res$se_diff_mean <- mean(res$se_diff, na.rm=T)


p2 <- ggplot(res, aes(x=se_diff)) + geom_density(fill=tableau10[8], alpha=0.5) + 
  geom_vline(xintercept = 0)+ coord_cartesian(ylim = c(0, 45), expand = c(0.0)) +
  geom_vline(aes(xintercept = se_diff_mean[1]), linetype="dashed") +
  geom_text(aes(x=se_diff_mean+0.01, y=33, label=paste0("Mean SE\ndifference:\n",round(res$se_diff_mean,2)))) +
  xlab("Difference between SE of population-attributable difference\nestimated with 1-step and 2-step methods")  + ylab("Density") + 
  ggtitle("Empirical difference in standard errors estimated using\n1-step targeted learning and 2-step targeted learning methods") 



#Compare confidence intervals
RMAest_clean$Analysis <- "1-Step"
fullPAR$Analysis <- "2-Step"
par <- bind_rows(RMAest_clean, fullPAR)

par <- par %>% filter(intervention_variable %in% unique(RMAest_clean$intervention_variable))



unique(par$intervention_level)
unique(par$intervention_variable)
par$intervention_level <- as.character(par$intervention_level)
par$intervention_level[par$intervention_level=="Full or late term"] <- "Full/late term"
par$intervention_level[par$intervention_level=="(0%, 5%]"] <- "(0%,5%]"
par$intervention_level[par$intervention_level=="No"] <- "None"
par$intervention_level[par$intervention_level=="Yes"] <- "All"
par$intervention_level[par$intervention_level=="1" & par$intervention_variable %in% c("brthmon","month")] <- "Jan."
par$intervention_level[par$intervention_level=="0" & par$intervention_variable %in% c("single")] <- "Partnered"
par$intervention_level[par$intervention_level=="1" & par$intervention_variable %in% c("parity")] <- "Firstborn"
par$intervention_level[par$intervention_level=="None" & par$intervention_variable %in% c("vagbrth")] <- "C-section"
par$intervention_level[par$intervention_level=="None" & par$intervention_variable %in% c("hdlvry")] <- "No"

par$RFlabel[par$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
par$RFlabel[par$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
par$RFlabel[par$RFlabel=="Gestational age at birth"] <- "Gestational age"



par <- par %>% filter( agecat=="24 months", region=="Pooled", !is.na(PAR)) %>%
  #mutate(RFlabel_ref = expression(bold(RFlabel)~' shifted to '~bold(intervention_level)))
  #mutate(RFlabel_ref = gsub(", ref: "," shifted to ",RFlabel_ref))
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))



unique(par$RFlabel_ref)

df <- par %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel, RFlabel_ref, n_cell, n, Analysis)) %>% 
  filter(!is.na(PAR)) %>% mutate(measure="PAR")



#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Colors
color_vec = c("#7F7F7F", "#E377C2")



#----------------------------------------------------------
# Clean up plot dataframe
#----------------------------------------------------------

unique(df$outcome_variable)
df$outcome_variable <- gsub("y_rate_haz", "HAZ velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_len", "Length velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_wtkg", "Weight velocity", df$outcome_variable)
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WLZ", df$outcome_variable)


dpool <- df %>% ungroup() %>%
  filter(outcome_variable %in% c("LAZ", "WLZ" ),
         !is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           outcome_variable) 

#----------------------------------------------------------
# Plot LAZ PAR
#----------------------------------------------------------

plotdf_laz <- dpool %>% filter(outcome_variable=="LAZ") %>%
  arrange(-PAR) 
rflevels = unique(plotdf_laz$RFlabel_ref)
plotdf_laz$RFlabel_ref=factor(plotdf_laz$RFlabel_ref, levels=rflevels)


# pPAR_laz <- ggplot(plotdf_laz, aes(x=RFlabel_ref, shape=Analysis, group=Analysis)) + 
#   geom_point(aes(y=-PAR), color="grey30", size = 4, position = position_dodge(0.4)) +
#   geom_linerange(aes(ymin=-CI1, ymax=-CI2), color="grey30", position = position_dodge(0.4)) +
#   coord_flip(ylim=c(-0.4, 0.45)) +
#   labs(#x = "Exposure, and to which level of exposure the cohorts are shifted",
#     x = "Exposure",
#     y = "Attributable difference in LAZ") +
#   geom_hline(yintercept = 0) +
#   theme(strip.background = element_blank(),
#         legend.position=c(0.8,0.2),
#         axis.text.y = element_text(size=, hjust = 1),
#         axis.text.x = element_text(size=12)) +
#   guides(color=FALSE)




#----------------------------------------------------------
# Plot WLZ PAR
#----------------------------------------------------------

plotdf_wlz <- dpool %>% filter(outcome_variable=="WLZ") %>%
  arrange(-PAR) 
rflevels = unique(plotdf_wlz$RFlabel_ref)
plotdf_wlz$RFlabel_ref=factor(plotdf_wlz$RFlabel_ref, levels = rflevels)


# pPAR_wlz <- ggplot(plotdf_wlz, aes(x=RFlabel_ref, shape=Analysis, group=Analysis)) + 
#   geom_point(aes(y=-PAR), color="grey30", size = 4, position = position_dodge(0.4)) +
#   geom_linerange(aes(ymin=-CI1, ymax=-CI2), color="grey30", position = position_dodge(0.4)) +
#   coord_flip(ylim=c(-0.2, 0.4)) +
#   labs(x = "Exposure", y = "Attributable difference in WLZ") +
#   geom_hline(yintercept = 0) +
#   theme(strip.background = element_blank(),
#         legend.position=c(0.6,0.2),
#         axis.text.y = element_text(size=, hjust = 1),
#         axis.text.x = element_text(size=12)) +
#   guides(color=FALSE)




plotdf <- rbind(
  data.frame(plotdf_laz, outcome="Attributable difference in LAZ\nin children age 24 months"),
  data.frame(plotdf_wlz, outcome="Attributable difference in WLZ\nin children age 24 months")
)
plotdf <- plotdf %>%
  arrange(outcome, Analysis, PAR)
  
  
  
pPAR <- ggplot(plotdf, aes(x=RFlabel_ref, shape=Analysis, group=Analysis)) + 
  geom_point(aes(y=-PAR), color="grey30", size = 4, position = position_dodge(0.4)) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2), color="grey30", position = position_dodge(0.4)) +
  facet_wrap(~outcome) +
  coord_flip(ylim=c(-0.4, 0.45)) +
  labs(x = "Exposure", y = "Population Attributable difference") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position=c(0.1,0.2),
        axis.text.y = element_text(size=, hjust = 1),
        axis.text.x = element_text(size=12)) +
  guides(color=FALSE,
         shape =  guide_legend(reverse = TRUE))



library(cowplot)
#plot_grid(mean_wlz_plot, prev_p, ci_plot[[1]], labels = "AUTO", ncol = 1, align = 'v', axis = 'l')
ptop <- plot_grid(p1, p2, ncol=2, labels = c("A","B"))
p <- plot_grid(ptop, pPAR, nrow=2, rel_heights = c(1, 2), labels = c("","C"))
ggsave(p, file=paste0(here::here(), "/figures/risk factor/fig-PAR-1-step-sensitivity.png"), height=10, width=16)


