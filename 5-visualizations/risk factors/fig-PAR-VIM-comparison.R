


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
vim <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_VIM_results.rds"))
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))

head(vim)
dim(par)

par <- par %>% filter( agecat=="24 months", region=="Pooled", !is.na(PAR))
vim <- vim %>% filter(agecat=="24 months", region=="Pooled", !is.na(PAR))

vim2 <- vim %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel)) %>% rename(VIM=PAR, V.CI1=CI1, V.CI2=CI2)
par2 <- par %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel))  

v <- unique(vim2$intervention_variable)
p <- unique(par2$intervention_variable)
v[!(v %in% p)]
p[!(p %in% v)]

dim(par2)
dim(vim2)
df <- merge(par2, vim2, by=c("outcome_variable", "intervention_variable"))
dim(df)
df <- df %>% filter(!is.na(PAR))

df <- df %>% arrange(PAR)

df$measure <- NA
df$measure[df$outcome_variable=="haz"] <- "Height-for-age Z-score"
df$measure[df$outcome_variable=="whz"] <- "Weight-for-height Z-score"


p <- ggplot(df, aes(x=-PAR, y=-VIM)) + 
  geom_point(size = 4, alpha=0.5) +
  #geom_smooth(se=F, method="lm") +
  labs(x = "PAR", y = "VIM") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) +
  facet_wrap(~measure) +
  theme(strip.background = element_blank(),
        legend.position="right",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)

p



ggsave(p, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-VIM-PAR-comp.png"), height=8, width=10)














