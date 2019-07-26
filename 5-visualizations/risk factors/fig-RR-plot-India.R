
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
d <- d %>% filter(outcome_variable %in% c("ever_wasted", "ever_co","pers_wast"),
                  agecat %in% c("0-6 months" , "6-24 months" , "0-6 months (no birth wast)", "0-24 months (no birth wast)", "0-24 months"))

unique(d$intervention_variable)
#d <- d %>% filter(intervention_variable %in% c("pers_wast","enwast","anywast06","lag_WHZ_quart"))

#Subset agecat
d <- droplevels(d)


yticks <- c(0.25, 0.5, 0.75, 1, 1.5, 2)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)

reverse_column_factors = function(table){
  table$intervention_level <<- fct_rev(table$intervention_level)
}

df <- d
df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_", "Ever ", df$outcome_variable)
df$agecat[df$agecat=="0-6 months (no birth wast)"] <- "0-6 months"
df$agecat[df$agecat=="0-24 months (no birth wast)"] <- "0-24 months"


unique(df$region)
unique(df$outcome_variable)
unique(df$intervention_variable)

plotdf <- df %>% 
  filter(region=="South Asia",
         intervention_variable %in% c("hfoodsec", "hhwealth_quart", "mage", 
                                      "meducyrs", "mhtcm", 
                                      "parity", "sex" )) %>%
  filter((outcome_variable=="Ever wasted" & agecat!="0-24 months") | (outcome_variable=="Ever co" & agecat=="0-24 months") | (outcome_variable=="pers_wast" & agecat=="0-24 months")) %>%
  filter(!is.na(intervention_variable), !is.na(agecat))
table(plotdf$outcome_variable, plotdf$agecat)

plotdf$agecat <- factor(plotdf$agecat, levels = c("0-6 months", "6-24 months", "0-24 months"))
plotdf$outcome_variable <- factor(plotdf$outcome_variable, levels = c("Ever wasted", "pers_wast", "Ever co"))
plotdf$Outcome_ref <- ifelse(plotdf$intervention_level == plotdf$baseline_level, "1", as.character(plotdf$outcome_variable))
plotdf$Outcome_ref[plotdf$intervention_level=="Q4"] <- "1"


plotdf = plotdf %>%
  mutate(RFlabel=replace(RFlabel, RFlabel=="Gestational age at birth", "Gestational\nage at birth"),
         RFlabel=replace(RFlabel, RFlabel=="Mother's education", "Mother's\neducation"), 
         RFlabel=replace(RFlabel, RFlabel=="Mother's height", "Mother's\nheight"), 
         RFlabel=replace(RFlabel, RFlabel=="HH food security", "HH food\nsecurity"),
         intervention_level = as.character(intervention_level),
         intervention_level=replace(intervention_level, intervention_level=="Food Secure", "Secure"),
         intervention_level=replace(intervention_level, intervention_level=="Mildly Food Insecure", "Mildly Insecure"),
         intervention_level=replace(intervention_level, intervention_level=="Food Insecure", "Insecure"),
         intervention_level=replace(intervention_level, intervention_level=="Full or late term", "Full or\nlate term")
  )

plotdf <- plotdf %>% group_by(RFlabel, agecat) %>% mutate(max_Nstudies = max(Nstudies), min_Nstudies = min(Nstudies))
plotdf$Outcome <- plotdf$outcome_variable 

plotdf <- droplevels(plotdf)

all_int_levels = unique(plotdf$intervention_level)
int_order = c(
  "1","2",  "3+",  "High", "Medium", "Low",
  "Full or\nlate term", "Early term", "Preterm", "Secure", "Mildly Insecure", "Insecure",
  "Q4", "Q3", "Q2", "Q1", ">=155 cm", "[151-155) cm", "<151 cm")

plotdf$intervention_level <- factor(plotdf$intervention_level, levels = c(int_order, all_int_levels[!(all_int_levels %in% int_order)] ))

unique(plotdf$intervention_variable)
plotdf$intervention_variable <- factor(plotdf$intervention_variable, levels = c("sex", "parity", "mhtcm", "meducyrs", "mage",  "hhwealth_quart", "hfoodsec", "nrooms"))
plotdf <- plotdf %>% arrange(intervention_variable)
plotdf$RFlabel <- factor(plotdf$RFlabel, levels = unique(plotdf$RFlabel))



pd <- position_dodge(0.4)

outcomes <- c(
  `Ever co` = "",
  `Ever wasted` = "",
  pers_wast= "")


p_ageRR <- ggplot(plotdf, aes(x=reorder(intervention_level, desc(intervention_level)))) + 
  geom_point(aes(y=RR, color=Outcome_ref), size = 3, position = pd) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Outcome_ref),
                 alpha=0.5, size = 1, position = pd) +
  facet_grid(RFlabel~ Outcome + agecat, scales="free", labeller = labeller(Outcome = outcomes), switch = "y")+
  labs(x = "Exposure level", y = "Adjusted RR") +
  geom_hline(yintercept = 1) +
  geom_text(aes(x=.7, y = 2.1, label=paste0("N studies: ",max_Nstudies)), size=2.5,  hjust=1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, limits = c(0.74,2.4)) +
  #coord_cartesian(ylim = c(0.8,2)) +
  scale_colour_manual(values=c("grey50",tableau10[c(2:4)])) +  
  #ggtitle("Ever wasted                           Ever wasted                        Persistently\n                                       and stunted                                     wasted")+
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=8, hjust = 1),
        strip.text.x = element_text(size=8, face = "bold"),
        strip.text.y = element_text(size=8, angle = 180, face = "bold"),
        strip.placement = "outside",
        axis.text.x = element_text(size=10, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black"), 
        title = element_text(margin=margin(0,0,-10,0))) +
 coord_flip()


ggsave(p_ageRR, file=paste0(here::here(), "/figures/India/fig-age-strat-wast.png"), height=5, width=9)




