
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
load(paste0(here::here(),"/results/desc_data_cleaned.Rdata"))
load(paste0(here::here(),"/results/quantile_data_wasting.Rdata"))


d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)


#-------------------------------------------------------------------------------------------
# Mean WLZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "Wasting" &
    measure == "Mean WLZ" & 
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)
df <- droplevels(df)

df <- df %>% 
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) 


# p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
#   stat_smooth(aes(fill=region, color=region), se=F, span = 1) +
#   geom_hline(yintercept = 0, colour = "black") +
#   scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
#                      limits = c(-1, 0.5)) + 
#   scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
#   scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
#                     name = 'Region') +
#   scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
#                      name = 'Region') +
#   xlab("Child age, months")+
#   ylab("Weight-for-length Z-score") +
#   ggtitle("") +
#   theme(legend.position="right")
# 
# ggsave(p, file="figures/wasting/WLZ_by_region.png", width=10, height=4)



#-------------------------------------------------------------------------------------------
# Mean WLZ by month with quantiles
#-------------------------------------------------------------------------------------------

quantile_d_overall <- quantile_d_overall %>% mutate(region="Overall")
df <- rbind(quantile_d_overall, quantile_d)

df$agecat <- factor(df$agecat, 
                    levels=c("Two weeks", "One month",
                             paste0(2:24," months")))

df <- df %>% 
  arrange(agecat) %>%
  filter(region!="Europe")
df <-droplevels(df)

df <- df %>% 
  ungroup(agecat) %>%
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) %>%
  mutate(region = ifelse(region=="Asia", "South Asia", region)) %>% 
  gather(`ninetyfifth_perc`, `fiftieth_perc`, `fifth_perc`, key = "interval", value = "WLZ") %>% 
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

# NEED TO ADD LEGEND

mean_wlz_plot <- ggplot(df,aes(x = agecat, group = region)) +

  geom_smooth(aes(y = WLZ, color = region, group = interval, linetype = interval), se = F, span = 1) +
  facet_wrap(~region, nrow=1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  scale_linetype_manual(name = "interval", values = c("fiftieth_perc" = "solid",
                                                      "ninetyfifth_perc" = "dashed",
                                                      "fifth_perc" = "dotted"),
                        breaks = c("fiftieth_perc",
                                   "ninetyfifth_perc",
                                   "fifth_perc"),
                        labels = c("Mean", "95th percentile", "5th percentile")) +
  xlab("Child age, months") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'), 
                                 keywidth = 3, keyheight = 1),
         colour = FALSE) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))


# define standardized plot names
mean_wlz_plot_name = create_name(
  outcome = "wlz",
  cutoff = 2,
  measure = "mean",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(mean_wlz_plot, file=paste0("figures/wasting/fig-",mean_wlz_plot_name,".png"), width=14, height=4)
saveRDS(df, file=paste0("results/figure-data/figdata-",mean_wlz_plot_name,".RDS"))




#-------------------------------------------------------------------------------------------
# Wasting prevalence
#-------------------------------------------------------------------------------------------
prev_plot <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Point prevalence (95% CI)',
                   yrange=c(0,24),
                   returnData=T)


# define standardized plot names
prev_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "prevalence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(prev_plot[[1]], file=paste0("figures/wasting/fig-",prev_plot_name, ".png"), width=14, height=3)

saveRDS(prev_plot[[2]], file=paste0("results/figure-data/figdata-",prev_plot_name,".RDS"))




#-------------------------------------------------------------------------------------------
# Wasting cumulative incidence
#-------------------------------------------------------------------------------------------
p2 <- ki_combo_plot(d,
                        Disease="Wasting",
                        Measure=c("Cumulative incidence", "Incidence_proportion"), 
                        Birth="yes", 
                        Severe="no", 
                        Age_range="3 months", 
                        Cohort="pooled",
                        xlabel="Child age, months",
                    yrange=c(0,55),
                    returnData=T)

prev_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "prevalence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

ggsave(p2, file="figures/wasting/fig_wast_ci_inc_pooled.png", width=14, height=5)

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
    theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
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



p3 <- inc_combo_plot(d,
                   Disease="Wasting",
                   Measure="Incidence rate", 
                   Birth=c("yes","no"), 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Episodes per 1000\nperson-days at risk',
                   yrange=c(0,7.5),
                   legend.pos = c(.92,.8))

#ggsave(p3, file="figures/wasting/pooled_ir.png", width=14, height=3)


# define standardized plot names
prev_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "prevalence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(prev_plot[[1]], file=paste0("figures/wasting/fig-",prev_plot_name, ".png"), width=14, height=3)

saveRDS(prev_plot[[2]], file=paste0("results/figure-data/figdata-",prev_plot_name,".RDS"))




#-------------------------------------------------------------------------------------------
# Wasting recovery
#-------------------------------------------------------------------------------------------



rec_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                          Cohort="pooled",
                          xlabel="Age at wasting episode onset",
                          ylabel="",
                          yrange=c(0,90),
                          legend.pos = c(.9,.32)){
  
  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range %in% Age_range &
      cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
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
                      group=interaction(age_range, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(0.5)) +
    geom_point(aes(shape=age_range, fill=region, color=region, group=interaction(age_range, region)
    ), size = 2, position = position_dodge(0.5)) +
    scale_color_manual(values=tableau11,
                       guide = FALSE) +
    scale_shape_manual(values = c(16, 17, 18),
                       name = 'Measure', 
                       labels = c('30 days', '60 days', '90 days')) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    xlab(xlabel)+
    ylab(ylabel) +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
    
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 10)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 25, r = 0, b = 0, l = 0),
                                      size = 15)) +
    theme(axis.title.y = element_text(size = 15)) +
    
    ggtitle("") +
    
    guides(color = FALSE) 
    
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  p <- p +  theme(legend.position = legend.pos,
                  legend.title = element_blank(),
                  legend.background = element_blank(),
                  legend.box.background = element_rect(colour = "black"))
  
  return(list(plot=p,data=df))
}



p4 <- rec_combo_plot(d,
                   Disease="Wasting",
                   Measure="Recovery", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range=c("30 days","60 days","90 days"), 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Percent recovered (95% CI)',
                   yrange=c(0,100),
                   legend.pos = c(.95,.88))

ggsave(p4, file="figures/wasting/pooled_rev.png", width=14, height=5)



#-------------------------------------------------------------------------------------------
# Persistent Wasting 
#-------------------------------------------------------------------------------------------

p5 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Persistent wasting", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="6 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel = 'Proportion (%)',
                   yrange=c(0,20),
                   returnData=T)


ggsave(p5, file="figures/wasting/pooled_pers.png", width=14, height=3)




#-------------------------------------------------------------------------------------------
# WLZ seasonality
#-------------------------------------------------------------------------------------------

#- Made in seperate script on GHAP

#-------------------------------------------------------------------------------------------
# Prevalence of co-occurrence
#-------------------------------------------------------------------------------------------
p6 <- ki_desc_plot(d,
                   Disease="co-occurrence",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Point prevalence (95% CI)',
                   yrange=c(0,12),
                   returnData=T)


ggsave(p6, file="figures/wasting/pooled_co_prev.png", width=14, height=3)

#-------------------------------------------------------------------------------------------
# Underweight prevalence 
#-------------------------------------------------------------------------------------------
p7 <- ki_desc_plot(d,
                   Disease="Underweight",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Point prevalence (95% CI)',
                   yrange=c(0,24))
ggsave(p7, file="figures/wasting/pooled_underweight_prev.png", width=14, height=3)


#-------------------------------------------------------------------------------------------
# Wasting prevalence -MUAC based
#-------------------------------------------------------------------------------------------

ki_combo_plot2 <- function(d, Disease, Measure, Birth, Severe, Age_range, 
         Cohort="pooled",
         xlabel="Age category",
         ylabel="Proportion (95% CI)",
         yrange=NULL,
         dodge=0,
         legend.pos = c(.1,.92)){
  
  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  # Remove 'months' from x axis labels  
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, 
                      group=interaction(measure, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(dodge)) +
    geom_point(aes(shape=measure, fill=region, color=region
    ), size = 2, position = position_dodge(dodge)) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure', 
                       labels = c('WLZ-based wasting', 'MUAC-based wasting')) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    xlab(xlabel)+
    ylab(ylabel) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=15, margin = margin(t = 0))) +
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 10)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 5, r = 0, b = 0, l = 0),
                                      size = 12)) +
    theme(axis.title.y = element_text(size = 12)) +
    facet_wrap(~region, nrow=1) +
    guides(color = FALSE) +
    theme(legend.position = legend.pos,
          legend.title = element_blank(),
          legend.background = element_blank(),
          legend.box.background = element_rect(colour = "black"))
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  return(list(plot=p,data=df))
}


p9 <- ki_combo_plot2(d,
              Disease="Wasting",
              Measure=c("MUAC  WHZ Prevalence", "MUAC Prevalence"), 
              Birth="yes", 
              Severe="no", 
              Age_range="3 months", 
              Cohort="pooled",
              xlabel="Child age, months",
              yrange=c(0,75), dodge = 0.5,
              legend.pos=c(.15,.92)) 

ggsave(p9, file="figures/wasting/pooled_muac_comp.png", width=14, height=5)


#-------------------------------------------------------------------------------------------
# Comparison of washout period for incidence rate.
#-------------------------------------------------------------------------------------------

d.ir<-readRDS(paste0(here::here(),"/results/wast_ir_sens_data.rds"))


p10 <- rec_combo_plot(d.ir,
                     Disease="Wasting",
                     Measure="Incidence rate", 
                     Birth="yes", 
                     Severe="no", 
                     Age_range=c("30 days","60 days","90 days"), 
                     Cohort="pooled",
                     xlabel="Age in months",
                     ylabel='Episodes per 1000 person-days at risk',
                     yrange=c(0,4),
                     legend.pos = c(.95,.8))

ggsave(p10, file="figures/wasting/ir_sens.png", width=14, height=5)





#-------------------------------------------------------------------------------------------
# Severe Wasting prevalence
#-------------------------------------------------------------------------------------------

p11 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="yes", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Point prevalence (95% CI)',
                   yrange=c(0,10),
                   returnData=T)


ggsave(p11, file="figures/wasting/pooled_sevprev.png", width=14, height=3)


