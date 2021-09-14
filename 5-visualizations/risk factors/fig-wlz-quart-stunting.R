
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

df <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds"))
results <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds")) %>%
        filter(outcome_variable=="ever_stunted",
               intervention_variable == "lag_WHZ_quart")


cohortRR <- results %>% 
        filter(type=="RR") %>%
        select(studyid,country,intervention_variable, agecat,  intervention_level, baseline_level, outcome_variable, estimate, ci_lower,ci_upper) %>%
        rename(RR=estimate,  RR.CI1=ci_lower, RR.CI2=ci_upper) %>% mutate(cohort=1)

yticks <- c(0.25, 0.5, 0.75, 1, 1.5, 2, 4, 8)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)

df <- bind_rows(data.frame(df %>% mutate(cohort=0)), data.frame(cohortRR))


df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_stunted", "Ever Stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)
df$outcome_variable <- gsub("pers_wast", "Persistenly wasted", df$outcome_variable)
df$outcome_variable <- gsub("stunted", "Stunted", df$outcome_variable)



unique(df$region)
unique(df$outcome_variable)
unique(df$intervention_variable)




plotdf1 <- df %>% 
          filter(region=="Pooled" | is.na(region),
                 outcome_variable=="Ever Stunted",
                 intervention_variable == "lag_WHZ_quart") %>%
          filter(!is.na(intervention_variable))# %>%
         # filter(agecat!="15-18 months") #Drop agecat with only 1 study

        plotdf1$pooled <- factor(ifelse(plotdf1$agecat=="Unstratified","Yes","No"), levels=c("No","Yes"))
        plotdf1$agecat <- factor(plotdf1$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months", "18-21 months", "21-24 months","Unstratified"))
        plotdf1 <- droplevels(plotdf1)
        
        levels(plotdf1$agecat)[length(levels(plotdf1$agecat))] <- "Pooled, all ages"

        
        
        p_lagwhz <- ggplot(plotdf1 %>% filter(cohort==0), aes(x=intervention_level)) + 
          # geom_point(aes(y=RR, fill=intervention_level, fill=pooled, color=pooled#, shape=pooled
          #                ), size = 3) +
                geom_point(aes(y=RR, fill=intervention_variable), color="#878787", fill="#878787", size=2.5, stroke=0, alpha=0.25,
                           position=position_jitter(width=0.1), data=plotdf1 %>% filter(cohort==1)) +
                geom_point(aes(y=RR, fill=intervention_variable), size = 3, color="#287D8EFF") +
          geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF",
                         alpha=0.5, size = 1) +
          facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
          labs(x = "Quartile of mean WLZ in the prior 3 months", y = "Relative risk of stunting") +
          geom_hline(yintercept = 1) +
          geom_text(aes(x=1.2, y=(max(plotdf1$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
          scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
          scale_fill_manual(values=tableau11[c(9,1,1,1)]) +
          scale_colour_manual(values=tableau11[c(9,1,1,1)]) +
          theme(strip.background = element_blank(),
                legend.position="none",
                axis.text.y = element_text(size=12),
                strip.text.x = element_text(size=10),
                axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
                panel.spacing = unit(0, "lines")) #+
        p_lagwhz
        
ggsave(p_lagwhz, file=paste0(BV_dir,"/figures/risk-factor/fig-WLZ-quart-stunt-CI.png"), height=4, width=10)
        
saveRDS(p_lagwhz, file=paste0(BV_dir,"/figures/plot-objects/risk-factor/fig-WLZ-quart-stunt-CI.rds"))
saveRDS(plotdf1, file=paste0(BV_dir,"/figures/risk-factor/figure-data/fig-WLZ-quart-stunt-CI.rds"))



