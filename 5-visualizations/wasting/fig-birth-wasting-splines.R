

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))


plotdf <- readRDS(paste0(ghapdata_dir, "birthwast_strat_whz_plot_data.rds"))
plotdf$cohort = "pooled"
plotdf_strat <- readRDS(paste0(ghapdata_dir, "birthwast_and_cohort_strat_whz_plot_data.rds"))
plotdf_strat$cohort = paste0(plotdf_strat$studyid,"-",plotdf_strat$country)


p <- ggplot(data=plotdf, aes(x=agedays, y=fit, group=born_wast, color=born_wast,  fill=born_wast)) +
  geom_ribbon(aes(ymin=fit_lb, ymax=fit_ub), alpha=0.3, color=NA) +
  geom_line(size=2) +
  scale_color_manual(values=cbbPalette[-1], na.translate = F) + 
  scale_fill_manual(values=cbbPalette[-1], na.translate = F) + 
  ylab("Mean WLZ") + xlab("Age in months") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 1:24*30.4167-15.2, labels = 1:24) +
  #geom_text(data = ann_text,label =  c("Year 1","Year 2", "Year 3"), color="grey30") +
  #coord_cartesian(ylim=c(-1.25, 0)) + 
  guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=1)) + #guides(color = FALSE) + 
  theme(
    legend.position = c(.8,.2),
    legend.title = element_blank(),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "grey40"),
    legend.text=element_text(size=rel(1)))    
p



ggsave(p, file=paste0(BV_dir,"/figures/wasting/birthwast_strat_growth_curve.png"), width=7, height=5)
ggsave(p, file=paste0(BV_dir,"/figures/wasting/birthwast_strat_growth_curve_alt.png"), width=6, height=3)
saveRDS(p, file=paste0(BV_dir,"/figures/plot-objects/birthwast_strat_growth_curve_object.rds"))



#Difference
plotdf_diff = plotdf_strat %>% group_by(cohort, agedays) %>% arrange(born_wast) %>% 
  summarise(N=n(), diff=first(fit)-last(fit)) %>% 
  filter(N==2) %>% ungroup()

plotdf_diff_pooled = plotdf %>% group_by(agedays) %>% arrange(born_wast) %>% 
  summarise(N=n(), diff=first(fit)-last(fit), fit_lb=first(fit_lb)-last(fit_lb), fit_ub=first(fit_ub)-last(fit_ub)) %>% 
  filter(N==2) %>% mutate(cohort="pooled") %>% ungroup()


p <- ggplot(data=plotdf_diff, aes(x=agedays, y=diff, group=cohort, color=cohort,  fill=cohort)) +
  geom_line(size=1, alpha=0.5) +
  geom_ribbon(aes(ymin=fit_lb, ymax=fit_ub), alpha=0.3, color=NA, fill="black", data=plotdf_diff_pooled) +
  geom_line(size=1.5, color="black",  data=plotdf_diff_pooled) +
  geom_hline(yintercept=0, linetype="dashed") +
  ylab("WLZ difference") + xlab("Age in months") +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 1:24*30.4167-15.2, labels = 1:24) +
  guides(shape=guide_legend(ncol=2), color=guide_legend(ncol=1)) + #guides(color = FALSE) + 
  theme(
    legend.position = "none",
    legend.title = element_blank(),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    legend.text=element_text(size=rel(1)))    
p


