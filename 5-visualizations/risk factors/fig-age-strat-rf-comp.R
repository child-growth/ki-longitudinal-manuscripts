
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
d <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))

unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="ever_wasted",
                  agecat %in% c("0-6 months" , "6-24 months" , "0-6 months (no birth wast)"),
                  adjusted==1)

unique(d$intervention_variable)
#d <- d %>% filter(intervention_variable %in% c("pers_wast","enwast","anywast06","lag_WHZ_quart"))

#Subset agecat
d <- droplevels(d)


yticks <- c(0.25, 0.5, 0.75, 1, 1.5, 2)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)



df <- d
df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_", "Ever ", df$outcome_variable)
df$agecat[df$agecat=="0-6 months (no birth wast)"] <- "0-6 months"
df$agecat[df$agecat=="0-6 months (no birth st.)"] <- "0-6 months"


unique(df$region)
unique(df$outcome_variable)
unique(df$intervention_variable)

plotdf <- df %>% 
  filter(region=="Pooled",
         intervention_variable %in% c("gagebrth", "hfoodsec", "hhwealth_quart", "meducyrs", "mhtcm", "parity" ),
         outcome_variable %in% c("Ever stunted", "Ever wasted"),
         agecat %in% c("0-6 months", "6-24 months")) %>%
  filter(!is.na(intervention_variable), !is.na(agecat))



#plotdf$agecat <- factor(plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months"))
plotdf$agecat <- factor(plotdf$agecat, levels = c("0-6 months", "6-24 months"))

plotdf <- plotdf %>% group_by(RFlabel, agecat) %>% mutate(max_Nstudies = max(Nstudies), min_Nstudies = min(Nstudies))
plotdf$Outcome <- plotdf$outcome_variable 
pd <- position_dodge(0.4)

p_ageRR <- ggplot(plotdf, aes(x=intervention_level)) + 
  geom_point(aes(y=RR, color=Outcome), size = 3, position = pd) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Outcome),
                 alpha=0.5, size = 1, position = pd) +
  facet_wrap(RFlabel~agecat, scales="free_x") +   #,  labeller = label_wrap) +
  labs(x = "Exposure level", y = "Adjusted relative risk") +
  geom_hline(yintercept = 1) +
  geom_text(aes(x=1, y=(min(plotdf$RR.CI1)), label=paste0("N studies: ",max_Nstudies," (Wasting: ",min_Nstudies,")")), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=tableau10[c(3, 2)]) +
  theme(strip.background = element_blank(),
        legend.position=c(0.08, 0.93),
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10, angle = 20, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black")) 


ggsave(p_ageRR, file=paste0(here::here(), "/figures/risk factor/fig-age-strat-wast.png"), height=8, width=10)

save(p_ageRR, plotdf, file = paste0(here::here(), "/results/fig-age-strat-wast-plot-objects.Rdata"))



