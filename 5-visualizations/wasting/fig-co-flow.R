##########################################
# ki longitudinal manuscripts
# wasting analysis

# figure: stacked bar chart showing 
# proportion of children who were newly wasted, 
# still wasted, relapsed, recovered, never wasted
##########################################

#-----------------------------------------
# Wasting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load data
co_pool = readRDS(paste0(res_dir, "co_flow_pooled.RDS"))

#Scale sum to 100
co_pool <- co_pool %>% group_by(agem) %>%
  mutate(sum=sum(est), est=est/sum, sum2=sum(est)) %>% ungroup()


#-----------------------------------------
# define color palette
#-----------------------------------------
n=8
viridis_cols = viridis(
  n = n,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "C"
)

plot_cols  = viridis_cols #[c(1,2, 4, 6, 8, 10, 11, 12)]

#-----------------------------------------
# stacked bar graphs using random effects pooled data
#-----------------------------------------
co_pool$label <- as.character(co_pool$label)
co_pool$label[co_pool$label=="Healthy"] <- "Never faltered"
co_pool$label[co_pool$label=="Wasted+Stunted"] <- "Wasted+Stunted+Underweight"
plot_data_pooled = co_pool %>%
  rename(classif = label) %>%
  select(agem, classif, est) %>%
  mutate(classif = factor(classif, levels = c("Never faltered", 
                                              "Recovered",
                                              "Stunted",
                                              "Underweight",       
                                              "Wasted",                                             
                                              "Stunted+Underweight",                                              
                                              "Wasted+Underweight",                                             
                                              "Wasted+Stunted+Underweight"
  )))



bar_plot_RE = ggplot(plot_data_pooled) +
  geom_bar(aes(x = agem, y = est, fill = classif), stat="identity", width=0.5) +
  scale_fill_manual("", values = plot_cols) +
  theme(legend.position = "bottom") +
  xlab("Child age, months") + ylab("Percentage of children")
bar_plot_RE

ggsave(bar_plot_RE, file="figures/wasting/fig-wasting-stacked-bar-RE.png", width=10, height=5)
