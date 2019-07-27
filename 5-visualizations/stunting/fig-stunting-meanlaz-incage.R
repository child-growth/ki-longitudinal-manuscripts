rm(list = ls())
source(paste0(here::here(), "/0-config.R"))

plotdf = readRDS(paste0(res_dir, "meanlaz_age_incage.RDS"))

plotdf = plotdf %>% filter(cohort == "pooled", region == "Overall")

plotdf = plotdf %>%
  filter(!is.na(agecat)) %>%
  mutate(agecat = if_else(agecat == "Two weeks", "0.5 months", agecat)) %>% 
  mutate(agecat = if_else(agecat == "One month", "1 months", agecat)) %>%
  mutate(agemonths = str_replace(agecat, " months", "")) %>%
  mutate(agemonths = as.numeric(agemonths)) 

levels(plotdf$stunt_inc_age) = c("Birth", "3 months", "6 months", "Never")

plotdf %>% filter(stunt_inc_age != "Never")

mean_laz_plot <- ggplot(plotdf,aes(y=est,x=agemonths, group=stunt_inc_age, color=stunt_inc_age)) +
  geom_line(size = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(limits = c(-3.1, 0)) + 
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  xlab("Child age, months")+
  ylab("Length-for-age Z-score") +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(plotdf$stunt_inc_age), 
                     name = 'Age of Incident Stunting') +
  ggtitle("") +
  theme(legend.position="right")

mean_laz_plot

ggsave(mean_laz_plot, file=paste0(fig_dir, "stunting/fig-meanlaz_age_incage.png"), width=10, height=4)

