
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(BV_dir,"/results/bw_longterm_res.rds")) %>% mutate(data="Pooled")
d.cohort <- readRDS(paste0(BV_dir,"/results/bw_longterm_res_cohort.rds")) %>% mutate(data="Cohort")
RR.estimates <- readRDS(paste0(BV_dir,"/results/birthstrat_RR_estimates.rds")) 


d <- bind_rows(d, d.cohort)

d <- d %>% filter(measure=="Persistent wasting"|
                  measure=="Wasting cumulative incidence"|
                    measure=="Co-occurrent wasting and stunting")

d$born_wast_lab <- ifelse(d$born_wast==1, "Born\nwasted", "Not born\nwasted")

d$measure_lab <- as.character(d$measure)
d$measure_lab[d$measure=="Persistent wasting"] <- "Persistent wasting\nfrom 6-24 months"
d$measure_lab[d$measure=="Wasting cumulative incidence"] <- "Wasting cumulative incidence\nfrom 6-24 month"
d$measure_lab[d$measure=="Co-occurrent wasting and stunting"] <- "Concurrent wasting\nand stunting at 18 months" 
d$measure_lab <- factor(d$measure_lab)
d$measure_lab <- relevel(d$measure_lab, ref="Wasting cumulative incidence\nfrom 6-24 month")

RR.estimates$measure_lab <- NA 
RR.estimates$measure_lab[RR.estimates$outcome_variable=="co"] <- "Concurrent wasting\nand stunting at 18 months"
RR.estimates$measure_lab[RR.estimates$outcome_variable=="ever_wasted"] <- "Wasting cumulative incidence\nfrom 6-24 month"
RR.estimates$measure_lab[RR.estimates$outcome_variable=="pers_wast"] <- "Persistent wasting\nfrom 6-24 months"
RR.estimates <- RR.estimates %>% filter(!is.na(measure_lab)) %>% mutate(xpos=1.5, ypos=c(0,9,0))


d.cohort <- d %>% filter(data=="Cohort") 
d <- d %>% filter(data=="Pooled")

d <- left_join(d, RR.estimates, by=c("measure_lab"))

pd <- position_dodge(0.4)

birthstrat_stats_plot <- ggplot(d,aes(y=est,x=born_wast_lab)) +
  geom_errorbar(aes(color=born_wast_lab, ymin=lb, ymax=ub), width = 0.5) +
  geom_point(aes(fill=born_wast_lab, color=born_wast_lab), size = 3) +
  geom_point(aes(fill=born_wast_lab,group=cohort), color="#878787", size = 2, 
             position = pd,
             alpha = 0.5, data=d.cohort) +
  geom_text(aes(label=estimate, y=ypos, x=xpos), color="grey30", size=3.5) +
  xlab("")+
  ylab("") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  scale_color_manual(values=cbbPalette[-1]) + 
  scale_fill_manual(values=cbbPalette[-1]) + 
  theme(strip.text = element_text(size=15, margin = margin(t = 0))) +
  theme(axis.text.x = element_text(margin =  
                                     margin(t = 0, r = 0, b = 0, l = 0),
                                   size = 12))+ #,
                                   #angle = 30, hjust = 0.5, vjust=0.5)) +
  theme(axis.title.y = element_text(size = 12)) +
  facet_wrap(~measure_lab, nrow=1, scales="free_y", strip.position = "left") +
  theme(strip.background = element_blank(), strip.placement = "outside")
birthstrat_stats_plot




birthstrat_stats_plotno_cohort <- ggplot(d,aes(y=est,x=born_wast_lab)) +
  geom_errorbar(aes(color=born_wast_lab, ymin=lb, ymax=ub), width = 0.5) +
  geom_point(aes(fill=born_wast_lab, color=born_wast_lab), size = 3) +
  xlab("")+
  ggtitle("Outcome by birth status among children 6-24 months") +
  ylab("") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  scale_color_manual(values=cbbPalette[-1]) + 
  scale_fill_manual(values=cbbPalette[-1]) + 
  theme(strip.text = element_text(size=15, margin = margin(t = 0))) +
  theme(axis.text.x = element_text(margin =  
                                     margin(t = 0, r = 0, b = 0, l = 0),
                                   size = 12))+ #,
  #angle = 30, hjust = 0.5, vjust=0.5)) +
  theme(axis.title.y = element_text(size = 12)) +
  facet_wrap(~measure_lab, nrow=1, scales="free_y", strip.position = "left") +
  theme(strip.background = element_blank(), strip.placement = "outside")
birthstrat_stats_plotno_cohort



# save plot and underlying data
ggsave(birthstrat_stats_plot, file=paste0(BV_dir,"/figures/wasting/fig-birth-stratified-outcomes.png"), width=8, height=5)
ggsave(birthstrat_stats_plot, file=paste0(BV_dir,"/figures/wasting/fig-birth-stratified-outcomes_alt.png"), width=7, height=4)

saveRDS(d, file=paste0(BV_dir, "/results/figure-data/figdata-birth-stratified-outcomes.RDS"))

saveRDS(birthstrat_stats_plot, file=paste0(BV_dir,"/figures/plot-objects/birthstrat_stats_plot_object.rds"))


#Get I2 median/IQR
d %>% summarise(quantile = c("Median","Q1", "Q3"),
            I2 = quantile(I2, c(0.5, 0.25, 0.75), na.rm=TRUE)) %>%
  spread(quantile, I2) 
