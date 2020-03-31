
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

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



plotdf2 <- df %>% 
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

plotdf2$Xvar <- factor(plotdf2$Xvar, levels = c("Enrolled\nwasted","Any wasting\nunder 6mo", "Persistently wasted\nunder 6mo"))
plotdf2 <- plotdf2 %>% arrange(Xvar)
plotdf2 <- droplevels(plotdf2)

yticks <- c(1, 1.1, 1.2, 1.3, 1.4, 1.5, 2)
p_earlywast <- ggplot(plotdf2, aes(x=Xvar)) + 
  geom_point(aes(y=RR, fill=intervention_variable, color=intervention_variable), size = 3) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_variable),
                 alpha=0.5, size = 1) +
  labs(x = "Wasting exposure", y = "Cumulative incidence\nratio: stunting 6-24 mo.") +
  geom_hline(yintercept = 1) +
  #geom_text(aes(x=c(1, 2, 3), y=((plotdf2$RR.CI2))+.02, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
  scale_fill_manual(values=rep(tableau10[1],4)) +
  scale_colour_manual(values=rep(tableau10[1],4)) +
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=12),
        strip.text.x = element_text(size=10),
        axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
        panel.spacing = unit(0, "lines")) #+
  #ggtitle("Risk of stunting onset\nby measure of early wasting")

ggsave(p_earlywast, file=here("figures/risk-factor/fig-wasting-prior-to-stunting.png"), height=4, width=4)

saveRDS(plotdf2, file=here("figures/risk-factor/figure-data/fig-wasting-prior-to-stunting.rds"))
saveRDS(p_earlywast, file=here("figures/plot-objects/risk-factor/fig-wasting-prior-to-stunting.rds"))

