
rm(list=ls())
library(tidyverse)

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
d <- readRDS(paste0(here::here(),"/results/bw_longterm_res.rds"))

d <- d %>% filter(measure!="Severe wasting cumulative incidence")

d$born_wast_lab <- ifelse(d$born_wast==1, "Born wasted", "Not born wasted")

d$measure_lab <- as.character(d$measure)
d$measure_lab[d$measure=="Persistent wasting"] <- "Persistent\nwasting" 
d$measure_lab[d$measure=="Wasting cumulative incidence"] <- "Wasting\ncumulative\nincidence" 
d$measure_lab[d$measure=="Wasting incidence rate"] <- "Wasting\nincidence\nrate" 
d$measure_lab <- factor(d$measure_lab)

p <- ggplot(d,aes(y=est,x=born_wast_lab)) +
  geom_errorbar(aes(color=measure_lab, ymin=lb, ymax=ub), width = 0) +
  geom_point(aes(fill=measure_lab, color=measure_lab), size = 2) +
  #geom_text(aes(x = born_wast, y = est, label = round(est)), hjust = 1.5) +
  #scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
  xlab("xlabel")+
  ylab("ylabel") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  theme(strip.text = element_text(size=15, margin = margin(t = 0))) +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = 0, r = 0, b = 0, l = 0),
                                   size = 12,
                                   angle = 45, hjust = 0)) +
  theme(axis.title.y = element_text(size = 12)) +
  ggtitle("") +
  facet_wrap(~measure_lab, nrow=1, scales="free_y") 
print(p)

axis.text.x = element_text(angle = 90, hjust = 1)