rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(ggrepel)

d <- readRDS(wasting_data_path) %>% filter(measurefreq=="monthly", agedays<730) 
d$cohort <- paste0(d$studyid,"-", d$country)
length(unique(d$cohort))

d <- d %>% group_by(cohort) %>% mutate(cohort_lab=ifelse(row_number()==1,cohort,NA)) %>% droplevels()


K=NULL

#Overall fit
set.seed(12345)
di <- d %>% rename(est=whz)
fiti <- mgcv::gam(est ~ s(agedays, bs = "cr"), data = di)
newd <- data.frame(agedays = 1:730)
fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
dfit_overall <- data.frame(cohort="Overall", region = "Overall", agedays = 1:730, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)


region_fits <- foreach(rgn = levels(d$region), .combine = rbind)%do% {
    di <- d %>% filter(region == rgn) 
    names(di)[names(di) == "whz"] <- "est"
    
    if(is.null(K)){
      try(fiti <- mgcv::gam(est ~ s(agedays, bs = "cr"), data = di))
    }else{
      try(fiti <- mgcv::gam(est ~ s(agedays, bs = "cr", k=K), data = di))
    }
    newd <- data.frame(agedays = 1:730)
    fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
    try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
    dfit <- data.frame(cohort="Overall", region = rgn, agedays = 1:730, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
    dfit
  }

cohorts_fits <- foreach(rgn = unique(d$cohort), .combine = rbind)%do% {
  di <- d %>% filter(cohort == rgn) 
  names(di)[names(di) == "whz"] <- "est"
  
  age1=min(di$agedays)
  age2=max(di$agedays)
  
  if(is.null(K)){
    try(fiti <- mgcv::gam(est ~ s(agedays, bs = "cr"), data = di))
  }else{
    try(fiti <- mgcv::gam(est ~ s(agedays, bs = "cr", k=K), data = di))
  }
  newd <- data.frame(agedays = age1:age2)
  fitci<-data.frame(fit=NA, se.fit=NA, lwrS=NA, ci_l=NA, uprS=NA)
  try(fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000))
  dfit <- data.frame(cohort = rgn, region = di$region[1], agedays = age1:age2, fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
  dfit
}

df <- bind_rows(dfit_overall, region_fits, cohorts_fits)

df <- df %>% mutate(region=factor(region, levels=c("Overall","Africa", "Latin America", "South Asia")))
df1 <- df %>% filter(cohort=="Overall")
df2 <- df %>% filter(cohort!="Overall")

mean_wlz_plot <- ggplot(df1, aes(x = agedays, group = region)) +
  geom_ribbon(aes(ymin = fit_lb, ymax = fit_ub, fill = region), color=NA, alpha = 0.5) +
  geom_line( aes(x=agedays, y=fit, group=cohort),color="grey70", #linetype="dashed", 
             size=0.75, data=df2) +
  geom_line(aes(y = fit, color = region), size=1.25) +
  facet_wrap(~region, nrow=1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,730), breaks = seq(30,730,62), labels = c(1:12)*2, expand=c(0,0)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),  expand=c(0,0.1)) + 
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, name = 'Region')  +
  scale_fill_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, name = 'Region')  +
  xlab("Child age, months") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'), 
                                 keywidth = 3, keyheight = 1),
         colour = FALSE) +
  theme(legend.position = "none",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))
mean_wlz_plot

# save plot and underlying data
ggsave(mean_wlz_plot, file=paste0(BV_dir,"/figures/wasting/fig-cohort-wlz.png"), width=14, height=3)
saveRDS(mean_wlz_plot, paste0(BV_dir,"/figures/plot-objects/mean_wlz_plot_objects.rds"))
saveRDS(df, file=paste0(figdata_dir_wasting,"figdata-cohort-wlz.RDS"))



#,  expand=c(0,0)