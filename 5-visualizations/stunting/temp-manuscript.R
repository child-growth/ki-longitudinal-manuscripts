
# Create a simple html or pdf table printout of the overall and regional
# pooled incidence rates and cumulative incidences by age of wasting. 
# Key note: don't round the estimates or confidence intervals in the printout.

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))
quantiles <- readRDS(paste0(here::here(),"/results/quantile_data_wasting.RDS"))

#Subset to primary analysis
d <- d %>% mutate(pooling=ifelse(cohort=="pooled" & is.na(pooling),region,pooling)) %>%
  filter(analysis=="Primary", (pooling!="country" | is.na(pooling)))

d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100
d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100
d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100

d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)

# scale cohort-specific estimates
scale_estimates <- function(d) {
  d = d %>% mutate(
    est = ifelse(cohort!="pooled", est*100, est),
    lb = ifelse(cohort!="pooled", lb*100, lb),
    ub = ifelse(cohort!="pooled", ub*100, ub)
  )
  return(d)
}




d_ci <- d %>% filter(measure=="Cumulative incidence")

d_ir <- d %>% filter(measure=="Incidence rate")












#-------------------------------------------------------------------------------------------
# Wasting incidence proportion
#-------------------------------------------------------------------------------------------

ip_plot_primary <- ki_ip_flurry_plot(scale_estimates(d),
                                     Disease="Wasting",
                                     Measure="Incidence proportion",
                                     Birth="yes",
                                     Severe="no",
                                     Age_range="3 months",
                                     xlabel="Child age, months",
                                     returnData=T)

ip_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "incidence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(ip_plot_primary[[1]], file=paste0(here::here(),"/figures/wasting/fig-",ip_plot_name, ".png"), width=14, height=3)

saveRDS(ip_plot_primary[[2]], file=paste0(figdata_dir_wasting,"figdata-",ip_plot_name,".RDS"))

#Save plot-objects for figure grid
saveRDS(list(mean_wlz_plot, prev_plot, ip_plot_primary), file=paste0(here::here(),"/figures/plot-objects/fig2_plot_objects.rds"))

ip_plot_primary[[2]] %>% filter(pooling=="overall") %>% subset(., select = c(measure, region, nstudies, nmeas, est, lb, ub, agecat)) %>% mutate(est=round(est,2), lb=round(lb,2), ub=round(ub,2))
ip_plot_primary[[2]] %>% filter(region=="South Asia") %>% subset(., select = c(measure, region, nstudies, nmeas, est, lb, ub, agecat)) %>% mutate(est=round(est,2), lb=round(lb,2), ub=round(ub,2))


#-------------------------------------------------------------------------------------------
# Wasting incidence -birthstrat
#-------------------------------------------------------------------------------------------

# TODO: add cumulative incidence plot
ip_plot <- ki_ip_flurry_plot(scale_estimates(d),
                             Disease="Wasting",
                             Measure="Incidence proportion",
                             # Measure=c("Cumulative incidence", "Incidence proportion"), 
                             Severe="no", 
                             Age_range="3 months", 
                             # Cohort="pooled",
                             xlabel="Child age, months",
                             Birth = "strat",
                             # yrange=c(0,60),
                             returnData=T)

ip_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "incidence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(ip_plot[[1]], file=paste0(here::here(),"/figures/wasting/fig-",ip_plot_name, "_birthstrat.png"), width=14, height=3)

saveRDS(ip_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",ip_plot_name,"_birthstrat.RDS"))

#ggsave(ci_plot[[1]] + ggtitle("Wasting incidence"), file=paste0(here::here(),"/figures/wasting/fig-",ci_plot_name, "_birthstrat_presentation.png"), width=13, height=3)



#-------------------------------------------------------------------------------------------
# Wasting incidence rate
#-------------------------------------------------------------------------------------------

inc_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                           Cohort="pooled",
                           xlabel="Age category",
                           ylabel="",
                           yrange=c(0,90),
                           legend.pos = c(.9,.32)){
  
  df <- d %>% filter(
    disease == Disease &
      measure == Measure &
      birth %in% Birth &
      severe == Severe &
      age_range %in% Age_range &
      cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
  df <- df %>% filter(birth=="yes" | agecat=="0-3 months")
  df <- droplevels(df)
  
  
  #Keep N studies and children from only one study
  df$nmeas.f[df$age_range!="30 days"] <- NA
  df$nstudy.f[df$age_range!="30 days"] <- NA
  
  # remove N= from labels
  df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub('N=', '', nstudy.f))
  
  # remove text from labels
  df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub(' studies', '', nstudy.f))
  
  # Remove 'months' from x axis labels  
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    facet_wrap(~region, nrow=1) +
    geom_errorbar(aes(color=region, 
                      group=interaction(birth, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(0.5)) +
    geom_point(aes(shape=birth, fill=region, color=region, group=interaction(birth, region)
    ), size = 2, position = position_dodge(0.5)) +
    scale_color_manual(values=tableau11, guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure', 
                       labels = c('Including wasting at birth', 'Excluding wasting at birth')) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    xlab(xlabel) + ylab(ylabel) +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=20, margin = margin(t = 5))) +
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 10)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 25, r = 0, b = 0, l = 0),
                                      size = 15)) +
    theme(axis.title.y = element_text(size = 15)) +
    ggtitle("") + guides(color = FALSE) 
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  p <- p +  theme(legend.position = legend.pos,
                  legend.title = element_blank(),
                  legend.background = element_blank(),
                  legend.box.background = element_rect(colour = "black"))
  return(list(plot=p,data=df))
}


d <- d %>% mutate(birth=factor(birth, levels=c("yes","no"))) %>% arrange(birth)



inc_plot_primary <- inc_combo_plot(d,
                                   Disease="Wasting",
                                   Measure="Incidence rate", 
                                   Birth=c("yes","no"), 
                                   Severe="no", 
                                   Age_range="3 months", 
                                   Cohort="pooled",
                                   xlabel="Child age, months",
                                   ylabel='Episodes per 1000\nperson-days at risk',
                                   yrange=c(0,7.5),
                                   legend.pos = c(.92,.8))


# define standardized plot names
inc_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "incidence rate",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(inc_plot_primary$plot, file=paste0(here::here(),"/figures/wasting/fig-",inc_plot_name, ".png"), width=14, height=3)

saveRDS(inc_plot_primary$data, file=paste0(figdata_dir_wasting,"figdata-",inc_plot_name,".RDS"))
saveRDS(inc_plot_primary, file=paste0(here::here(),"/figures/plot-objects/inc_plot_object.rds"))

inc_plot_primary$data %>% group_by(region) %>% summarize(min(nmeas), max(nmeas))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion
#-------------------------------------------------------------------------------------------

#duplicate of ip_plot (l. 292) - not updated
inc_plot <- ip_plot(
  d,
  Disease = "Wasting",
  Measure = "Incidence proportion",
  Birth = "yes",
  Severe = "no",
  Age_range = "3 months",
  Cohort = "pooled",
  xlabel = "Child age, months",
  h1 = 85,
  h2 = 90,
  returnData = T
)
inc_plot


# define standardized plot names
inc_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "incidence only",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(inc_plot$plot, file=paste0(here::here(),"/figures/wasting/fig-",inc_plot_name,".png"), width=14, height=4.5)

