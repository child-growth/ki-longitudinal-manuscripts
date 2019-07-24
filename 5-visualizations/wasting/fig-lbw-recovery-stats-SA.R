
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
d <- readRDS(paste0(here::here(),"/results/lbw_longterm_res_India.rds"))

d <- d %>% filter(measure=="Persistent wasting"|
                  measure=="Wasting incidence rate"|
                    measure=="Co-occurrent wasting and stunting")

d$born_wast_lab <- ifelse(d$lbw==1, "Low birth\nweight", "Not low\nbirth weight")

d$measure_lab <- as.character(d$measure)
d$measure_lab[d$measure=="Co-occurrent wasting and stunting"] <- "Co-occurrent wasting\nand stunting" 
d$measure_lab[d$measure=="Wasting incidence rate"] <- "Wasting incidence rate\n(episodes per 1000 days)" 
d$measure_lab <- factor(d$measure_lab)
d$measure_lab <- relevel(d$measure_lab, ref="Wasting incidence rate\n(episodes per 1000 days)")


birthstrat_stats_plot <- ggplot(d,aes(y=est,x=born_wast_lab)) +
  geom_errorbar(aes(color=born_wast_lab, ymin=lb, ymax=ub), width = 0) +
  geom_point(aes(fill=born_wast_lab, color=born_wast_lab), size = 2) +
  #geom_text(aes(x = born_wast, y = est, label = round(est)), hjust = 1.5) +
  #scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
  xlab("")+
  ylab("") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  scale_color_manual(values=tableau10[c(5:6)]) + 
  scale_fill_manual(values=tableau10[c(5:6)]) + 
  theme(strip.text = element_text(size=15, margin = margin(t = 0))) +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = 0, r = 0, b = 0, l = 0),
                                   size = 12))+ #,
                                   #angle = 30, hjust = 0.5, vjust=0.5)) +
  theme(axis.title.y = element_text(size = 12)) +
  ggtitle("Outcomes among children 6-24 months, stratified by birthweight") +
  facet_wrap(~measure_lab, nrow=1, scales="free_y", strip.position = "left") +
  theme(strip.background = element_blank(), strip.placement = "outside")



# save plot and underlying data
ggsave(birthstrat_stats_plot, file=paste0("figures/India/wasting/fig-lbw-strat-stats-India.png"), width=8, height=5)

