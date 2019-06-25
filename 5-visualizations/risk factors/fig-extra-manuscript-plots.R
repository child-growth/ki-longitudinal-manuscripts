
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

df <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))


yticks <- c(0.25, 0.5, 0.75, 1, 1.5, 2)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)


df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_stunted", "Ever Stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)
df$outcome_variable <- gsub("pers_wast", "Persistenly wasted", df$outcome_variable)
df$outcome_variable <- gsub("stunted", "Stunted", df$outcome_variable)



unique(df$region)
unique(df$outcome_variable)
unique(df$intervention_variable)

plotdf <- df %>% 
  filter(region=="Pooled",
         outcome_variable=="Stunted",
         intervention_variable == "lag_WHZ_quart") %>%
  filter(!is.na(intervention_variable))

#plotdf$agecat <- factor(plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months"))
plotdf$agecat <- factor(plotdf$agecat, levels = c("3 months", "6 months", "9 months", "12 months", "15 months", "18 months", "21 months"))

        p <- ggplot(plotdf, aes(x=intervention_level)) + 
          geom_point(aes(y=RR, fill=intervention_variable, color=intervention_variable), size = 3) +
          geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_variable),
                         alpha=0.5, size = 1) +
          facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
          labs(x = "Quartile of mean WLZ in the prior 3 months", y = "Relative risk of stunting") +
          geom_hline(yintercept = 1) +
          geom_text(aes(x=1.2, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
          scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
          scale_fill_manual(values=rep(tableau10,4)) +
          scale_colour_manual(values=rep(tableau10,4)) +
          theme(strip.background = element_blank(),
                legend.position="none",
                axis.text.y = element_text(size=12),
                strip.text.x = element_text(size=10),
                axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
                panel.spacing = unit(0, "lines")) #+
         # ggtitle(paste0("Outcome:", dpool$outcome_variable[1], "\nExposure:", dpool$intervention_variable[1],"\nRegion: ", dpool$region[1])) 
        
        
        #ggsave(p, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/RR/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$intervention_variable[1]), "-RR.png"), height=8, width=10)

        plotdf <- df %>% 
          filter(region=="Pooled",
                 outcome_variable=="Ever Stunted",
                 intervention_variable == "lag_WHZ_quart") %>%
          filter(!is.na(intervention_variable)) %>%
          filter(agecat!="15-18 months") #Drop agecat with only 1 study
        
        plotdf$agecat <- factor(plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months"))
        #plotdf$agecat <- factor(plotdf$agecat, levels = c("3 months", "6 months", "9 months", "12 months", "15 months", "18 months", "21 months"))
        
        p_lagwhz <- ggplot(plotdf, aes(x=intervention_level)) + 
          geom_point(aes(y=RR, fill=intervention_level, color=intervention_level), size = 3) +
          geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_level),
                         alpha=0.5, size = 1) +
          facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
          labs(x = "Quartile of mean WLZ in the prior 3 months", y = "Relative risk of stunting") +
          geom_hline(yintercept = 1) +
          geom_text(aes(x=1.2, y=(max(plotdf$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
          scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
          scale_fill_manual(values=rep(tableau10[1],4)) +
          scale_colour_manual(values=rep(tableau10[1],4)) +
          theme(strip.background = element_blank(),
                legend.position="none",
                axis.text.y = element_text(size=12),
                strip.text.x = element_text(size=10),
                axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
                panel.spacing = unit(0, "lines")) +
          ggtitle("Age-specific relative risk of stunting onset by prior mean WLZ")
        
ggsave(p_lagwhz, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-WLZ-quart-stunt-CI.png"), height=4, width=10)
        




plotdf <- df %>% 
  filter(region=="Pooled",
         outcome_variable=="Ever Stunted",
         intervention_variable %in% c("enwast","anywast06", "pers_wast"),
         agecat=="6-24 months") %>%
  filter(!is.na(intervention_variable)) %>%
  filter(intervention_level != baseline_level) %>% #drop reference level
  mutate(Xvar = case_when(
    intervention_variable=="enwast" ~ "Enrolled\nwasted",
    intervention_variable=="anywast06" ~ "Any wasting\nunder 6mo",
    intervention_variable=="pers_wast" ~ "Persistently wasted\nunder 6mo"))

plotdf$Xvar <- factor(plotdf$Xvar, levels = c("Enrolled\nwasted","Any wasting\nunder 6mo", "Persistently wasted\nunder 6mo"))
plotdf <- plotdf %>% arrange(Xvar)

yticks <- c(1, 1.1, 1.2, 1.3, 1.4, 1.5, 2)
p_earlywast <- ggplot(plotdf, aes(x=Xvar)) + 
  geom_point(aes(y=RR, fill=intervention_variable, color=intervention_variable), size = 3) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_variable),
                 alpha=0.5, size = 1) +
  labs(x = "Wasting exposure", y = "Cumulative incidence ratio:\nstunting 6-24 mo.") +
  geom_hline(yintercept = 1) +
  geom_text(aes(x=c(1, 2, 3), y=((plotdf$RR.CI2))+.02, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_fill_manual(values=rep(tableau10[1],4)) +
  scale_colour_manual(values=rep(tableau10[1],4)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
        panel.spacing = unit(0, "lines")) +
  ggtitle("Risk of stunting onset\nby measure of early wasting")

ggsave(p_earlywast, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-wasting-prior-to-stunting.png"), height=4, width=10)



save(p_lagwhz, p_earlywast, plotdf, file = c("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/fig-wasting-prior-to-stunting-plot-objects.Rdata"))


