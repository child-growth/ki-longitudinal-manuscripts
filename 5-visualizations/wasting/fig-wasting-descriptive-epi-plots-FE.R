
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds")) %>% filter(analysis=="Fixed effects")

#subset to regional and overall pooled estimates
d <- d %>% filter(cohort=="pooled", pooling!="country" | is.na(pooling))
  

d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)




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
                   xlabel="Child age, months",
                   ylabel='Point prevalence (95% CI)',
                   yrange=c(0,24),
                   returnData=T)

# prev_plot_africa <- ki_desc_plot(d,
#                           Disease="Wasting",
#                           Measure="Prevalence", 
#                           Birth="yes", 
#                           Severe="no", 
#                           Age_range="3 months", 
#                           Cohort="pooled",
#                           xlabel="Child age, months",
#                           ylabel='Point prevalence (95% CI)',
#                           yrange=c(0,24),
#                           returnData=T,
#                           Region="Africa")
# 
# prev_plot_lam <- ki_desc_plot(d,
#                                  Disease="Wasting",
#                                  Measure="Prevalence",
#                                  Birth="yes",
#                                  Severe="no",
#                                  Age_range="3 months",
#                                  Cohort="pooled",
#                                  xlabel="Child age, months",
#                                  ylabel='Point prevalence (95% CI)',
#                                  yrange=c(0,24),
#                                  returnData=T,
#                                  Region="Latin America")
# 
# prev_plot_sasia <- ki_desc_plot(d,
#                                  Disease="Wasting",
#                                  Measure="Prevalence",
#                                  Birth="yes",
#                                  Severe="no",
#                                  Age_range="3 months",
#                                  Cohort="pooled",
#                                  xlabel="Child age, months",
#                                  ylabel='Point prevalence (95% CI)',
#                                  yrange=c(0,24),
#                                  returnData=T,
#                                  Region="South Asia")

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
ggsave(prev_plot[[1]], file=paste0(here::here(),"/figures/wasting/FE/fig-",prev_plot_name, "_FE.png"), width=14, height=3)
# ggsave(prev_plot_africa$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","prev_plot_africa", "_FE.png"), width=10, height=5)
# ggsave(prev_plot_lam$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","prev_plot_lam", "_FE.png"), width=10, height=5)
# ggsave(prev_plot_sasia$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","prev_plot_sasia", "_FE.png"), width=10, height=5)

saveRDS(prev_plot[[2]], file=paste0(here::here(),"/figures/wasting/FE/figure-data/figdata-",prev_plot_name,"_FE.RDS"))



#-------------------------------------------------------------------------------------------
# Wasting cumulative incidence
#-------------------------------------------------------------------------------------------
ci_plot <- ki_combo_plot(d,
                        Disease="Wasting",
                        Measure=c("Cumulative incidence", "Incidence proportion"), 
                        Birth="yes", 
                        Severe="no", 
                        Age_range="3 months", 
                        Cohort="pooled",
                        xlabel="Child age, months",
                    yrange=c(0,55),
                    returnData=T)

ci_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "cumulative incidence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(ci_plot[[1]], file=paste0(here::here(),"/figures/wasting/FE/fig-",ci_plot_name, "_FE.png"), width=14, height=3)

saveRDS(ci_plot[[2]], file=paste0(here::here(),"/figures/wasting/FE/figure-data/figdata-",ci_plot_name,"_FE.RDS"))



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



inc_plot <- inc_combo_plot(d,
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
ggsave(inc_plot[[1]], file=paste0(here::here(),"/figures/wasting/FE/fig-",inc_plot_name, "_FE.png"), width=14, height=3)

saveRDS(inc_plot[[2]], file=paste0(here::here(),"/figures/wasting/FE/figure-data/figdata-",inc_plot_name,"_FE.RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion
#-------------------------------------------------------------------------------------------
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

ggsave(inc_plot[[1]], file=paste0(here::here(),"/figures/wasting/FE/fig-",inc_plot_name,"_FE.png"), width=14, height=4.5)




#-------------------------------------------------------------------------------------------
# Wasting recovery
#-------------------------------------------------------------------------------------------



rec_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                          Cohort="pooled",
                          xlabel="Age at wasting episode onset",
                          ylabel="",
                          yrange=c(0,90),
                          legend.pos = c(.9,.32),
                          facet=T){
  
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
    
    guides(color = FALSE, shape=guide_legend(ncol=3)) 
    
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  if(facet){
    p <- p + facet_wrap(~region, nrow=1) 
  }
  
  p <- p +  theme(legend.position = legend.pos,
                  legend.title = element_blank(),
                  legend.background = element_blank(),
                  legend.box.background = element_rect(colour = "black"))
  
  return(list(plot=p,data=df))
}



rec_plot <- rec_combo_plot(d,
                   Disease="Wasting",
                   Measure="Recovery", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range=c("30 days","60 days","90 days"), 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Percent recovered\n(95% CI)',
                   yrange=c(0,100),
                   legend.pos = c(.1,.88))

# define standardized plot names
rec_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "recovery",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(rec_plot[[1]], file=paste0(here::here(),"/figures/wasting/FE/fig-",rec_plot_name, "_FE.png"), width=14, height=3)
saveRDS(rec_plot[[2]], file=paste0(here::here(),"/figures/wasting/FE/figure-data/figdata-",rec_plot_name,"_FE.RDS"))



#-------------------------------------------------------------------------------------------
# Persistent Wasting 
#-------------------------------------------------------------------------------------------

perswast_plot <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Persistent wasting", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="6 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel = 'Proportion (%)',
                   yrange=c(0,20),
                   returnData=T)

# perswast_plot_africa <- ki_desc_plot(d,
#                               Disease="Wasting",
#                               Measure="Persistent wasting", 
#                               Birth="yes", 
#                               Severe="no", 
#                               Age_range="6 months", 
#                               Cohort="pooled",
#                               xlabel="Child age, months",
#                               ylabel = 'Proportion (%)',
#                               yrange=c(0,20),
#                               returnData=T,
#                               Region="Africa")
# 
# perswast_plot_lam <- ki_desc_plot(d,
#                                      Disease="Wasting",
#                                      Measure="Persistent wasting", 
#                                      Birth="yes", 
#                                      Severe="no", 
#                                      Age_range="6 months", 
#                                      Cohort="pooled",
#                                      xlabel="Child age, months",
#                                      ylabel = 'Proportion (%)',
#                                      yrange=c(0,20),
#                                      returnData=T,
#                                      Region="Latin America")
# 
# perswast_plot_sasia <- ki_desc_plot(d,
#                                      Disease="Wasting",
#                                      Measure="Persistent wasting", 
#                                      Birth="yes", 
#                                      Severe="no", 
#                                      Age_range="6 months", 
#                                      Cohort="pooled",
#                                      xlabel="Child age, months",
#                                      ylabel = 'Proportion (%)',
#                                      yrange=c(0,20),
#                                      returnData=T,
#                                      Region="South Asia")


# define standardized plot names
perswast_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "persistent wasting",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(perswast_plot$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","perswast_plot", "_FE.png"), width=6, height=5)
# ggsave(perswast_plot_africa$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","perswast_plot_africa", "_FE.png"), width=10, height=5)
# ggsave(perswast_plot_lam$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","perswast_plot_lam", "_FE.png"), width=10, height=5)
# ggsave(perswast_plot_sasia$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","perswast_plot_sasia", "_FE.png"), width=10, height=5)

saveRDS(perswast_plot[[2]], file=paste0(here::here(),"/figures/wasting/FE/figure-data/figdata-",perswast_plot_name,"_FE.RDS"))





#-------------------------------------------------------------------------------------------
# Prevalence of co-occurrence
#-------------------------------------------------------------------------------------------
co_plot <- ki_desc_plot(d,
                   Disease="co-occurrence",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Point prevalence of co-occurrent\nwasting and stunting (95% CI)',
                   yrange=c(0,11),
                   returnData=T)

# co_plot_africa <- ki_desc_plot(d,
#                         Disease="co-occurrence",
#                         Measure="Prevalence", 
#                         Birth="yes", 
#                         Severe="no", 
#                         Age_range="3 months", 
#                         Cohort="pooled",
#                         xlabel="Child age, months",
#                         ylabel='Point prevalence of co-occurrent\nwasting and stunting (95% CI)',
#                         yrange=c(0,12),
#                         returnData=T,
#                         Region="Africa")
# 
# co_plot_lam <- ki_desc_plot(d,
#                                Disease="co-occurrence",
#                                Measure="Prevalence", 
#                                Birth="yes", 
#                                Severe="no", 
#                                Age_range="3 months", 
#                                Cohort="pooled",
#                                xlabel="Child age, months",
#                                ylabel='Point prevalence of co-occurrent\nwasting and stunting (95% CI)',
#                                yrange=c(0,12),
#                                returnData=T,
#                                Region="Latin America")
# 
# co_plot_sasia <- ki_desc_plot(d,
#                                Disease="co-occurrence",
#                                Measure="Prevalence", 
#                                Birth="yes", 
#                                Severe="no", 
#                                Age_range="3 months", 
#                                Cohort="pooled",
#                                xlabel="Child age, months",
#                                ylabel='Point prevalence of co-occurrent\nwasting and stunting (95% CI)',
#                                yrange=c(0,12),
#                                returnData=T,
#                                Region="South Asia")

# define standardized plot names
co_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "co-occurrence of wasting and stunting",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(co_plot[[1]], file=paste0(here::here(),"/figures/wasting/FE/fig-",co_plot_name, "_FE.png"), width=14, height=3)
# ggsave(co_plot_africa$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","co_plot_africa", "_FE.png"), width=10, height=5)
# ggsave(co_plot_lam$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","co_plot_lam", "_FE.png"), width=10, height=5)
# ggsave(co_plot_sasia$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","co_plot_sasia", "_FE.png"), width=10, height=5)

saveRDS(co_plot[[2]], file=paste0(here::here(),"/figures/wasting/FE/figure-data/figdata-",co_plot_name,"_FE.RDS"))



#-------------------------------------------------------------------------------------------
# Underweight prevalence 
#-------------------------------------------------------------------------------------------
underweight_plot <- ki_desc_plot(d,
                   Disease="Underweight",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Point prevalence (95% CI)',
                   returnData = T,
                   yrange=c(0,45))

# underweight_plot_africa <- ki_desc_plot(d,
#                                  Disease="Underweight",
#                                  Measure="Prevalence", 
#                                  Birth="yes", 
#                                  Severe="no", 
#                                  Age_range="3 months", 
#                                  Cohort="pooled",
#                                  xlabel="Child age, months",
#                                  ylabel='Point prevalence (95% CI)',
#                                  yrange=c(0,24),
#                                  Region="Africa")
# 
# underweight_plot_lam <- ki_desc_plot(d,
#                                  Disease="Underweight",
#                                  Measure="Prevalence", 
#                                  Birth="yes", 
#                                  Severe="no", 
#                                  Age_range="3 months", 
#                                  Cohort="pooled",
#                                  xlabel="Child age, months",
#                                  ylabel='Point prevalence (95% CI)',
#                                  yrange=c(0,24),
#                                  Region="Latin America")
# 
# underweight_plot_sasia <- ki_desc_plot(d,
#                                      Disease="Underweight",
#                                      Measure="Prevalence", 
#                                      Birth="yes", 
#                                      Severe="no", 
#                                      Age_range="3 months", 
#                                      Cohort="pooled",
#                                      xlabel="Child age, months",
#                                      ylabel='Point prevalence (95% CI)',
#                                      yrange=c(0,24),
#                                      Region="South Asia")

# define standardized plot names
underweight_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "underweight",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(underweight_plot[[1]], file=paste0(here::here(),"/figures/wasting/FE/fig-",underweight_plot_name, "_FE.png"), width=14, height=3)
# ggsave(underweight_plot_africa$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","underweight_plot_africa", "_FE.png"), width=10, height=5)
# ggsave(underweight_plot_lam$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","underweight_plot_lam", "_FE.png"), width=10, height=5)
# ggsave(underweight_plot_sasia$plot, file=paste0(here::here(),"/figures/wasting/FE/fig-","underweight_plot_sasia", "_FE.png"), width=10, height=5)

saveRDS(underweight_plot[[2]], file=paste0(here::here(),"/figures/wasting/FE/figure-data/figdata-",underweight_plot_name,"_FE.RDS"))



#-------------------------------------------------------------------------------------------
# Severe Wasting prevalence
#-------------------------------------------------------------------------------------------

sevwast_plot <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="yes", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Point prevalence (95% CI)',
                   yrange=c(0,10),
                   returnData=T)


# define standardized plot names
sevwast_plot_name = create_name(
  outcome = "wasting",
  cutoff = 3,
  measure = "prevalence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(sevwast_plot[[1]], file=paste0(here::here(),"/figures/wasting/FE/fig-",sevwast_plot_name, "_FE.png"), width=14, height=3)

saveRDS(sevwast_plot[[2]], file=paste0(here::here(),"/figures/wasting/FE/figure-data/figdata-",sevwast_plot_name,"_FE.RDS"))


