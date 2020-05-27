


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))





#Load pooled tmle results 
tmlePAR <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))
head(tmlePAR)


#Load glm results
dglm <- readRDS(here("results","rf results","raw longbow results","results_cont_glm_2020-05-24.RDS"))



#Subset to outcomes of interest
tmlePAR <- tmlePAR %>% filter(outcome_variable %in% c("haz","whz")) 
dglm <- dglm %>% filter(outcome_variable %in% c("haz","whz"), type=="PAR", intervention_variable!="trth2o") 






RMAest <- dglm %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest$region <- "Pooled"
RMAest <- RMAest %>% filter(!is.na(PAR))
RMAest_clean <- RMA_clean(RMAest, outcome="continuous")
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)



dim(RMAest_clean)
res <- left_join(RMAest_clean, tmlePAR, by=c("outcome_variable","intervention_variable","intervention_level","agecat","region"))
dim(res)

res <- res %>% filter(agecat=="24 months")

res$Ydiff <- res$PAR.x - res$PAR.y
summary(res$PAR.y)
summary(res$Ydiff)

ggplot(res, aes(x=intervention_variable, y=Ydiff)) + 
  coord_flip() + 
  geom_point() +
  facet_grid(agecat~outcome_variable) +
  geom_hline(yintercept = 0) +
  ylab("Difference in Attributable Z-score difference")




#Compare confidence intervals
RMAest_clean$Analysis <- "GLM"
tmlePAR$Analysis <- "TMLE"
par <- bind_rows(RMAest_clean, tmlePAR)

par <- par %>% filter(intervention_variable %in% unique(tmlePAR$intervention_variable), intervention_variable %in% unique(RMAest_clean$intervention_variable))















dim(par)

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

#Bold the intervention variable
# https://stackoverflow.com/questions/37758050/ggplot-displaying-expression-in-x-axis
# 
#  as.expression(bold(par$RFlabel[1])~' shifted to '~bold(par$intervention_level[1]))
#  as.expression(bquote(bold(par$RFlabel[1])))
#  parse(text= paste("bold(par$RFlabel[", 1:7, "])", sep="") ) 


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


pPAR_laz <-  ggplot(plotdf_laz, aes(x=RFlabel_ref, shape=Analysis, group=Analysis)) + 
  geom_point(aes(y=-PAR), color="grey30", size = 4, position = position_dodge(0.4)) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2), color="grey30", position = position_dodge(0.4)) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  labs(#x = "Exposure, and to which level of exposure the cohorts are shifted",
    x = "Exposure",
    y = "Attributable difference in LAZ") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position=c(0.6,0.2),
        axis.text.y = element_text(size=, hjust = 1),
        axis.text.x = element_text(size=12)) +
  guides(color=FALSE)




#----------------------------------------------------------
# Plot WLZ PAR
#----------------------------------------------------------

plotdf_wlz <- dpool %>% filter(outcome_variable=="WLZ") %>%
  arrange(-PAR) 
rflevels = unique(plotdf_wlz$RFlabel_ref)
plotdf_wlz$RFlabel_ref=factor(plotdf_wlz$RFlabel_ref, levels = rflevels)


pPAR_wlz <-  ggplot(plotdf_wlz, aes(x=RFlabel_ref, shape=Analysis, group=Analysis)) + 
  geom_point(aes(y=-PAR), color="grey30", size = 4, position = position_dodge(0.4)) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2), color="grey30", position = position_dodge(0.4)) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  labs(x = "Exposure", y = "Attributable difference in WLZ") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position=c(0.6,0.2),
        axis.text.y = element_text(size=, hjust = 1),
        axis.text.x = element_text(size=12)) +
  guides(color=FALSE)





library(cowplot)

p <- grid.arrange(pPAR_laz, pPAR_wlz, ncol=2)

ggsave(p, file=here("/figures/risk-factor/fig-PAR-GLM-sensitivity.png"),  height=10, width=16)
