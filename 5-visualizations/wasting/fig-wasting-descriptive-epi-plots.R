
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(BV_dir,"/results/desc_data_cleaned.rds"))
quantiles <- readRDS(paste0(BV_dir,"/results/quantile_data_wasting.RDS"))

d %>% filter(disease=="co-occurrence", measure==c("Incidence proportion"), is.na(pooling))

#Subset to primary analysis
d <- d %>% mutate(pooling=ifelse(cohort=="pooled" & is.na(pooling),region,pooling)) %>%
  filter(analysis=="Primary", (pooling!="country" | is.na(pooling)))

#convert cohort specific estimates to percents
d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent wasting", "Recovery" )] <-
  d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent wasting", "Recovery" )] * 100
d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent wasting", "Recovery" )] <-
  d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent wasting", "Recovery" )] * 100
d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent wasting", "Recovery" )] <-
  d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent wasting", "Recovery" )] * 100

#d %>% filter(measure=="Prevalence", disease=="co-occurrence", cohort!="pooled")

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
  mutate(agecat = as.numeric(agecat)) %>% 
  arrange(agecat) 


p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-1, 0.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(legend.position="right")

ggsave(p, file=paste0(fig_dir,"wasting/WLZ_by_region.png"), width=10, height=4)



#-------------------------------------------------------------------------------------------
# Mean WLZ by month with quantiles
#-------------------------------------------------------------------------------------------

quantile_d_overall <- quantiles$quantile_d_overall %>% mutate(region="Overall")
df <- rbind(quantile_d_overall, quantiles$quantile_d)

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
  outcome = "WLZ",
  cutoff = 2,
  measure = "mean",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(mean_wlz_plot, file=paste0(BV_dir,"/figures/wasting/fig-",mean_wlz_plot_name,".png"), width=14, height=3)
saveRDS(df, file=paste0(figdata_dir_wasting,"figdata-",mean_wlz_plot_name,".RDS"))




#-------------------------------------------------------------------------------------------
# Wasting prevalence
#-------------------------------------------------------------------------------------------
prev_plot <- ki_desc_flurry_plot(d,
                     Disease="Wasting",
                     Measure="Prevalence", 
                     Birth="yes", 
                     Severe="no", 
                     Age_range="3 months", 
                     xlabel="Child age, months",
                     ylabel='Point prevalence (%)',
                     yrange=c(0,24),
                     returnData=T)

temp<-prev_plot[[2]] %>% filter(region=="South Asia",agecat=="Birth")
temp<-prev_plot[[2]] %>% filter(region=="Overall",agecat=="24")

prev_plot_africa <- ki_desc_plot(d,
                          Disease="Wasting",
                          Measure="Prevalence", 
                          Birth="yes", 
                          Severe="no", 
                          Age_range="3 months", 
                          xlabel="Child age, months",
                          ylabel='Point prevalence (%)',
                          yrange=c(0,30),
                          Region="Africa",
                          returnData=T
                          )

prev_plot_lam <- ki_desc_plot(d,
                                 Disease="Wasting",
                                 Measure="Prevalence", 
                                 Birth="yes", 
                                 Severe="no", 
                                 Age_range="3 months", 
                                 xlabel="Child age, months",
                                 ylabel='Point prevalence (%)',
                                 yrange=c(0,30),
                                 returnData=T,
                                 Region="Latin America")

prev_plot_sasia <- ki_desc_plot(d,
                                 Disease="Wasting",
                                 Measure="Prevalence", 
                                 Birth="yes", 
                                 Severe="no", 
                                 Age_range="3 months", 
                                 xlabel="Child age, months",
                                 ylabel='Point prevalence (%)',
                                 yrange=c(0,30),
                                 returnData=T,
                                 Region="South Asia")

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
ggsave(prev_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",prev_plot_name, ".png"), width=14, height=3)
ggsave(prev_plot_africa$plot, file=paste0(BV_dir,"/figures/wasting/fig-","prev_plot_africa", ".png"), width=10, height=5)
ggsave(prev_plot_lam$plot, file=paste0(BV_dir,"/figures/wasting/fig-","prev_plot_lam", ".png"), width=15, height=5)
ggsave(prev_plot_sasia$plot, file=paste0(BV_dir,"/figures/wasting/fig-","prev_plot_sasia", ".png"), width=18, height=10)

saveRDS(prev_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",prev_plot_name,".RDS"))


prev_plot[[2]] %>% filter(pooling=="overall") %>% subset(., select = c(region, nstudies, nmeas, est, lb, ub, agecat)) %>% mutate(est=round(est,2), lb=round(lb,2), ub=round(ub,2))

#ggsave(prev_plot[[1]] + ggtitle("Wasting prevalence"), file=paste0(BV_dir,"/figures/wasting/fig-",prev_plot_name, "_presentation.png"), width=13, height=3)


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion
#-------------------------------------------------------------------------------------------

ip_plot_primary <- ki_wast_ip_flurry_plot(d,
                        Disease="Wasting",
                        Measure=c("Cumulative incidence", "Incidence proportion"),
                        Birth="yes",
                        Severe="no",
                        dodge=0.5,
                        Age_range="3 months",
                        xlabel="Child age, months",
                        returnData=T,
                        legend.pos= c(.0605,.815))

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
ggsave(ip_plot_primary[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",ip_plot_name, ".png"), width=14, height=3)

saveRDS(ip_plot_primary[[2]], file=paste0(figdata_dir_wasting,"figdata-",ip_plot_name,".RDS"))

#Save plot-objects for figure grid
saveRDS(list(mean_wlz_plot, prev_plot, ip_plot_primary), file=paste0(BV_dir,"/figures/plot-objects/fig2_plot_objects.rds"))

ip_plot_primary[[2]] %>% filter(pooling=="overall") %>% subset(., select = c(measure, region, nstudies, nmeas, est, lb, ub, agecat)) %>% mutate(est=round(est,2), lb=round(lb,2), ub=round(ub,2))
ip_plot_primary[[2]] %>% filter(region=="South Asia",pooling=="regional") %>% subset(., select = c(measure, region, nstudies, nmeas, est, lb, ub, agecat)) %>% mutate(est=round(est,2), lb=round(lb,2), ub=round(ub,2))


#-------------------------------------------------------------------------------------------
# Wasting incidence -birthstrat
#-------------------------------------------------------------------------------------------

ip_plot <- ki_wast_ip_flurry_plot(d,
                         Disease="Wasting",
                         #Measure="Incidence proportion",
                          Measure=c("Cumulative incidence", "Incidence proportion"), 
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
ggsave(ip_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",ip_plot_name, "_birthstrat.png"), width=14, height=3)

saveRDS(ip_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",ip_plot_name,"_birthstrat.RDS"))

#ggsave(ci_plot[[1]] + ggtitle("Wasting incidence"), file=paste0(BV_dir,"/figures/wasting/fig-",ci_plot_name, "_birthstrat_presentation.png"), width=13, height=3)



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
      age_range %in% Age_range #&
      #cohort == Cohort &
     # !is.na(region) & !is.na(agecat)
  )
  df <- df %>% filter(birth=="yes" | agecat=="0-3 months")
  df <- droplevels(df)
  
  # #Get cohort specific estimates
  # df_cohort <- d %>% filter(
  #   disease == Disease &
  #     measure == Measure &
  #     birth %in% Birth &
  #     severe == Severe &
  #     age_range %in% Age_range &
  #     cohort != Cohort &
  #     !is.na(region) & !is.na(agecat)
  # )
  # df_cohort <- df_cohort %>% filter(birth=="yes" | agecat=="0-3 months")
  # df_cohort <- droplevels(df_cohort)
  
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
  
  df_cohort <- df %>% filter(cohort!="pooled")
  df_cohort <- mark_region(df_cohort)
  df <- df %>% filter(cohort=="pooled")
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    facet_wrap(~region, nrow=1) +
    geom_errorbar(aes(color=region, 
                      group=interaction(birth, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(0.5)) +
    geom_point(aes(shape=birth, fill=region, group=interaction(birth, region)
    ), color="#878787", size = 2, position = position_jitterdodge(jitter.width = 2, dodge.width=0.5), alpha = 0.25, data=df_cohort) +
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
  p
  
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
                   yrange=c(0,10),
                   legend.pos = c(.92,.8))
inc_plot_primary

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
ggsave(inc_plot_primary$plot, file=paste0(BV_dir,"/figures/wasting/fig-",inc_plot_name, ".png"), width=14, height=3)

saveRDS(inc_plot_primary$data, file=paste0(figdata_dir_wasting,"figdata-",inc_plot_name,".RDS"))
saveRDS(inc_plot_primary, file=paste0(BV_dir,"/figures/plot-objects/inc_plot_object.rds"))

inc_plot_primary$data %>% group_by(region) %>% summarize(min(nmeas), max(nmeas))
inc_plot_primary$data %>% arrange(region, agecat)
# 
# #-------------------------------------------------------------------------------------------
# # Wasting incidence proportion
# #-------------------------------------------------------------------------------------------
# 
# #duplicate of ip_plot (l. 292) - not updated
# inc_plot <- ip_plot(
#   d,
#   Disease = "Wasting",
#   Measure = "Incidence proportion",
#   Birth = "yes",
#   Severe = "no",
#   Age_range = "3 months",
#   Cohort = "pooled",
#   xlabel = "Child age, months",
#   h1 = 85,
#   h2 = 90,
#   returnData = T
# )
# inc_plot
# 
# 
# # define standardized plot names
# inc_plot_name = create_name(
#   outcome = "wasting",
#   cutoff = 2,
#   measure = "incidence only",
#   population = "overall and region-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(inc_plot$plot, file=paste0(BV_dir,"/figures/wasting/fig-",inc_plot_name,".png"), width=14, height=4.5)


#-------------------------------------------------------------------------------------------
# Wasting recovery
#-------------------------------------------------------------------------------------------

rec_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                          # Cohort="pooled",
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
      # cohort == Cohort &
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

  ### new
  df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))
  
  if (min(df$lb) < 0) {
    print("Warning: some lower bounds < 0")
  }
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    
    # pooled 
    geom_errorbar(aes(color=region, 
                      group=interaction(age_range, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(0.5),
                  data = df %>% filter(ispooled == "yes")) +
    geom_point(aes(shape=age_range, fill=region, color=region, group=interaction(age_range, region)), 
               size = 2, position = position_dodge(0.5),
               data = df %>% filter(ispooled == "yes")) +
    
    # cohort-stratified
    geom_point(aes(shape=age_range, group=interaction(age_range, region)),
               color = "#878787", fill = "#878787", size = 1.5, 
               data = df %>% filter(ispooled == "no"),
               position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.5),
               alpha = 0.25) +
    
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
    # theme(axis.title.x = element_text(margin = 
    #                                     margin(t = 25, r = 0, b = 0, l = 0),
    #                                   size = 15)) +
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
                   # Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Percent recovered',
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
ggsave(rec_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",rec_plot_name, ".png"), width=14, height=4.5)
saveRDS(rec_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",rec_plot_name,".RDS"))

saveRDS(rec_plot, file=paste0(BV_dir,"/figures/plot-objects/rec_plot_object.rds"))

rec_plot[[2]] %>% filter(region=="Overall") %>% subset(., select = c(age_range,measure, region, nstudies, nmeas, est, lb, ub, agecat)) %>% mutate(est=round(est,2), lb=round(lb,2), ub=round(ub,2))


#Plot just the overall facet for presentation slide
df <- d %>% filter(
    disease == "Wasting" &
    region == "Overall" &
    measure == "Recovery" &
    birth == "yes" &
    severe == "no" &
    age_range %in% c("30 days","60 days","90 days") &
    cohort == "pooled" &
    !is.na(region) & !is.na(agecat)
)
df <- droplevels(df)

p <- ggplot(df,aes(y=est,x=agecat)) +
  geom_errorbar(aes(color=age_range, 
                    group=interaction(age_range, region), ymin=lb, ymax=ub), 
                width = 0, position = position_dodge(0.5)) +
  geom_point(aes(color=age_range, group=interaction(age_range, region)
  ), size = 3, position = position_dodge(0.5)) +
  scale_color_manual(values=tableau10[c(7,9,10)],  name = 'Measure', 
                     labels = c('30 days', '60 days', '90 days')) +
  xlab("Child age, months") + ylab("Percent recovered") +
  ggtitle('Recovery within 30, 60, or 90 days of wasting onset') +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
  theme(axis.text.x = element_text(margin = margin(t = 0, r = 0, b = 0, l = 0),size = 10)) +
  theme(axis.title.x = element_text(margin =  margin(t = 25, r = 0, b = 0, l = 0), size = 15)) +
  theme(axis.title.y = element_text(size = 15)) +
  guides(color=guide_legend(ncol=3)) +
  coord_cartesian(ylim=c(0,80)) +
  theme(legend.position = c(.5,.1),
                legend.title = element_blank(),
                legend.background = element_blank(),
                legend.box.background = element_rect(colour = "black"))

# define standardized plot names
rec_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "recovery",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(p, file=paste0(BV_dir,"/figures/wasting/fig-",rec_plot_name, ".png"), width=8, height=5)

saveRDS(df, file=paste0(figdata_dir_wasting,"figdata-",rec_plot_name,".RDS"))

#-------------------------------------------------------------------------------------------
# Persistent Wasting 
#-------------------------------------------------------------------------------------------

perswast_plot <- ki_desc_flurry_plot(d,
                   Disease="Wasting",
                   Measure="Persistent wasting", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="6 months", 
                   xlabel="Child age, months",
                   ylabel = 'Proportion (%)',
                   yrange=c(0,20),
                   returnData=T)

perswast_plot_africa <- ki_desc_plot(d,
                              Disease="Wasting",
                              Measure="Persistent wasting", 
                              Birth="yes", 
                              Severe="no", 
                              Age_range="6 months", 
                              Cohort="pooled",
                              xlabel="Child age, months",
                              ylabel = 'Proportion (%)',
                              yrange=c(0,27),
                              returnData=T,
                              Region="Africa")

perswast_plot_lam <- ki_desc_plot(d,
                                     Disease="Wasting",
                                     Measure="Persistent wasting", 
                                     Birth="yes", 
                                     Severe="no", 
                                     Age_range="6 months", 
                                     Cohort="pooled",
                                     xlabel="Child age, months",
                                     ylabel = 'Proportion (%)',
                                     yrange=c(0,27),
                                     returnData=T,
                                     Region="Latin America")

perswast_plot_sasia <- ki_desc_plot(d,
                                     Disease="Wasting",
                                     Measure="Persistent wasting", 
                                     Birth="yes", 
                                     Severe="no", 
                                     Age_range="6 months", 
                                     Cohort="pooled",
                                     xlabel="Child age, months",
                                     ylabel = 'Proportion (%)',
                                     yrange=c(0,27),
                                     returnData=T,
                                     Region="South Asia")


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
ggsave(perswast_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",perswast_plot_name, ".png"), width=8, height=5)

ggsave(perswast_plot_africa$plot, file=paste0(BV_dir,"/figures/wasting/fig-","perswast_plot_africa", ".png"), width=7, height=5)
ggsave(perswast_plot_lam$plot, file=paste0(BV_dir,"/figures/wasting/fig-","perswast_plot_lam", ".png"), width=10, height=5)
ggsave(perswast_plot_sasia$plot, file=paste0(BV_dir,"/figures/wasting/fig-","perswast_plot_sasia", ".png"), width=15, height=8)

saveRDS(perswast_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",perswast_plot_name,".RDS"))





#-------------------------------------------------------------------------------------------
# Prevalence of co-occurrence
#-------------------------------------------------------------------------------------------
co_plot <- ki_desc_flurry_plot(d,
                   Disease="co-occurrence",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   xlabel="Child age, months",
                   ylabel='Point prevalence of concurrent\nwasting and stunting (%)',
                   yrange=c(0,11),
                   returnData=T)
co_plot[[2]] %>% filter(cohort=="pooled") %>% group_by(region) %>% summarise(min(nmeas), max(nmeas), min(nstudies), max(nstudies))


co_plot_africa <- ki_desc_plot(d,
                        Disease="co-occurrence",
                        Measure="Prevalence", 
                        Birth="yes", 
                        Severe="no", 
                        Age_range="3 months", 
                        Cohort="pooled",
                        xlabel="Child age, months",
                        ylabel='Point prevalence of concurrent\nwasting and stunting (%)',
                        yrange=c(0,20),
                        returnData=T,
                        Region="Africa")

co_plot_lam <- ki_desc_plot(d,
                               Disease="co-occurrence",
                               Measure="Prevalence", 
                               Birth="yes", 
                               Severe="no", 
                               Age_range="3 months", 
                               Cohort="pooled",
                               xlabel="Child age, months",
                               ylabel='Point prevalence of concurrent\nwasting and stunting (%)',
                               yrange=c(0,20),
                               returnData=T,
                               Region="Latin America")

co_plot_sasia <- ki_desc_plot(d,
                               Disease="co-occurrence",
                               Measure="Prevalence", 
                               Birth="yes", 
                               Severe="no", 
                               Age_range="3 months", 
                               Cohort="pooled",
                               xlabel="Child age, months",
                               ylabel='Point prevalence of concurrent\nwasting and stunting (%)',
                               yrange=c(0,20),
                               returnData=T,
                               Region= "South Asia")

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
ggsave(co_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",co_plot_name, ".png"), width=15, height=5)
ggsave(co_plot_africa$plot, file=paste0(BV_dir,"/figures/wasting/fig-","co_plot_africa", ".png"), width=15, height=5)
ggsave(co_plot_lam$plot, file=paste0(BV_dir,"/figures/wasting/fig-","co_plot_lam", ".png"), width=15, height=5)
ggsave(co_plot_sasia$plot, file=paste0(BV_dir,"/figures/wasting/fig-","co_plot_sasia", ".png"), width=20, height=8)

saveRDS(co_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",co_plot_name,".RDS"))

saveRDS(co_plot, file=paste0(BV_dir,"/figures/plot-objects/co_plot_object.rds"))



#-------------------------------------------------------------------------------------------
# Co-occurrence CI
#-------------------------------------------------------------------------------------------


ip_plot_co <- ki_wast_ip_flurry_plot(d,
                                          Disease="co-occurrence",
                                          Measure=c("Incidence proportion"),
                                          Birth="yes",
                                          Severe="no",
                                          dodge=0.5,
                                          Age_range="3 months",
                                          xlabel="Child age, months",
                                          returnData=T,
                                          legend.pos= "none")


# save plot and underlying data
ggsave(ip_plot_co[[1]], file=paste0(BV_dir,"/figures/wasting/fig-co-occurrence-ci.png"), width=14, height=3)
saveRDS(ip_plot_co[[2]], file=paste0(figdata_dir_wasting,"figdata-co-occurrence-ci.RDS"))




#-------------------------------------------------------------------------------------------
# Underweight prevalence 
#-------------------------------------------------------------------------------------------
underweight_plot <- ki_desc_flurry_plot(d,
                                 Disease="Underweight",
                                 Measure="Prevalence", 
                                 Birth="yes", 
                                 Severe="no", 
                                 Age_range="3 months", 
                                 xlabel="Child age, months",
                                 ylabel='Point prevalence (%)',
                                 returnData = T,
                                 yrange=c(0,45))

underweight_plot_africa <- ki_desc_plot(d,
                                 Disease="Underweight",
                                 Measure="Prevalence", 
                                 Birth="yes", 
                                 Severe="no", 
                                 Age_range="3 months", 
                                 Cohort="pooled",
                                 xlabel="Child age, months",
                                 ylabel='Point prevalence (%)',
                                 yrange=c(0,60),
                                 Region="Africa")

underweight_plot_lam <- ki_desc_plot(d,
                                 Disease="Underweight",
                                 Measure="Prevalence", 
                                 Birth="yes", 
                                 Severe="no", 
                                 Age_range="3 months", 
                                 Cohort="pooled",
                                 xlabel="Child age, months",
                                 ylabel='Point prevalence (%)',
                                 yrange=c(0,60),
                                 Region="Latin America")

underweight_plot_sasia <- ki_desc_plot(d,
                                     Disease="Underweight",
                                     Measure="Prevalence", 
                                     Birth="yes", 
                                     Severe="no", 
                                     Age_range="3 months", 
                                     Cohort="pooled",
                                     xlabel="Child age, months",
                                     ylabel='Point prevalence (%)',
                                     yrange=c(0,60),
                                     Region="South Asia")

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
ggsave(underweight_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",underweight_plot_name, ".png"), width=14, height=3)
ggsave(underweight_plot_africa$plot, file=paste0(BV_dir,"/figures/wasting/fig-","underweight_plot_africa", ".png"), width=10, height=5)
ggsave(underweight_plot_lam$plot, file=paste0(BV_dir,"/figures/wasting/fig-","underweight_plot_lam", ".png"), width=10, height=5)
ggsave(underweight_plot_sasia$plot, file=paste0(BV_dir,"/figures/wasting/fig-","underweight_plot_sasia", ".png"), width=20, height=8)

saveRDS(underweight_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",underweight_plot_name,".RDS"))

#-------------------------------------------------------------------------------------------
# Wasting prevalence - MUAC based
#-------------------------------------------------------------------------------------------

ki_combo_plot2 <- function(d, Disease, Measure, Birth, Severe, Age_range, 
         # Cohort="pooled",
         xlabel="Age category",
         ylabel="Proportion (%)",
         yrange=NULL,
         dodge=0,
         legend.pos = c(.1,.92)){
  
  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      # cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  # Remove 'months' from x axis labels  
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))
  
  df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))
  

  p <- ggplot(df,aes(y=est,x=agecat)) +
    
    # pooled 
    geom_errorbar(aes(color=region, 
                      group=interaction(measure, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(dodge),
                  data = df %>% filter(ispooled == "yes")) +
    geom_point(aes(shape=measure, fill=region, color=region), 
               size = 2, position = position_dodge(dodge),
               data = df %>% filter(ispooled == "yes")) +
    
    # cohort-stratified 
    geom_point(color = "#878787", fill = "#878787", size = 1.5, 
               data = df %>% filter(ispooled == "no"),
               position = position_jitter(width = 0.15), alpha = 0.25) +
    
    
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure', 
                       labels = c('MUAC-based wasting','WLZ-based wasting')) + 
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

muac_plot <- ki_combo_plot2(d,
              Disease="Wasting",
              Measure=c("MUAC WHZ Prevalence", "MUAC Prevalence"), 
              Birth="yes", 
              Severe="no", 
              Age_range="3 months", 
              # Cohort="pooled",
              xlabel="Child age, months",
              yrange=c(0,65), dodge = 0.5,
              legend.pos=c(.15,.92)) 

# define standardized plot names
muac_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "MUAC-based wasting",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(muac_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",muac_plot_name, ".png"), width=14, height=5)

saveRDS(muac_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",muac_plot_name,".RDS"))

#-------------------------------------------------------------------------------------------
# Comparison of washout period for incidence rate.
#-------------------------------------------------------------------------------------------

d.ir<-readRDS(paste0(BV_dir,"/results/wast_ir_sens_data.rds"))


ir_sens_plot <- rec_combo_plot(d.ir,
                     Disease="Wasting",
                     Measure="Incidence rate", 
                     Birth="yes", 
                     Severe="no", 
                     Age_range=c("30 days","60 days","90 days"), 
                     # Cohort="pooled",
                     xlabel="Child age, months",
                     ylabel='Episodes per 1000 person-days at risk',
                     yrange=c(0,4),
                     legend.pos = c(.1,.85))

# define standardized plot names
ir_sens_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "incidence rate",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "washout period sensitivity"
)

# save plot and underlying data
ggsave(ir_sens_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",ir_sens_plot_name, ".png"), width=14, height=5)

saveRDS(ir_sens_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",ir_sens_plot_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Severe Wasting prevalence
#-------------------------------------------------------------------------------------------

sevwast_plot <- ki_desc_flurry_plot(d,
                   Disease="Wasting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="yes", 
                   Age_range="3 months", 
                   xlabel="Child age, months",
                   ylabel='Point prevalence (%)',
                   yrange=c(0,13),
                   returnData=T)

sevwast_plot_africa <- ki_desc_plot(d,
                                    Disease="Wasting",
                                    Measure="Prevalence", 
                                    Birth="yes", 
                                    Severe="no", 
                                    Age_range="3 months", 
                                    Cohort="pooled",
                                    xlabel="Child age, months",
                                    ylabel='Point prevalence (%)',
                                    yrange=c(0,20),
                                    Region="Africa",
                                    returnData=T
)

sevwast_plot_lam <- ki_desc_plot(d,
                                 Disease="Wasting",
                                 Measure="Prevalence", 
                                 Birth="yes", 
                                 Severe="no", 
                                 Age_range="3 months", 
                                 Cohort="pooled",
                                 xlabel="Child age, months",
                                 ylabel='Point prevalence (%)',
                                 yrange=c(0,20),
                                 returnData=T,
                                 Region="Latin America")

sevwast_plot_sasia <- ki_desc_plot(d,
                                   Disease="Wasting",
                                   Measure="Prevalence", 
                                   Birth="yes", 
                                   Severe="yes", 
                                   Age_range="3 months", 
                                   Cohort="pooled",
                                   xlabel="Child age, months",
                                   ylabel='Point prevalence (%)',
                                   yrange=c(0,20),
                                   returnData=T,
                                   Region="South Asia")


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
ggsave(sevwast_plot[[1]], file=paste0(BV_dir,"/figures/wasting/fig-",sevwast_plot_name, ".png"), width=14, height=3)
ggsave(sevwast_plot_africa$plot, file=paste0(BV_dir,"/figures/wasting/fig-","sevwast_plot_africa", ".png"), width=10, height=5)
ggsave(sevwast_plot_lam$plot, file=paste0(BV_dir,"/figures/wasting/fig-","sevwast_plot_lam", ".png"), width=15, height=5)
ggsave(sevwast_plot_sasia$plot, file=paste0(BV_dir,"/figures/wasting/fig-","sevwast_plot_sasia", ".png"), width=18, height=8)


saveRDS(sevwast_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-",sevwast_plot_name,".RDS"))


#Get N's for figure captions
prev_plot[[2]] %>% filter(cohort=="pooled") %>% group_by(region) %>% summarise(min(nmeas), max(nmeas), min(nstudies), max(nstudies))
#ci_plot_primary[[2]] %>% group_by(region) %>% summarise(min(nmeas), max(nmeas), min(nstudies), max(nstudies))
inc_plot_primary$data %>% filter(cohort=="pooled") %>% group_by(region) %>% summarize(min(nmeas), max(nmeas))
rec_plot[[2]] %>% filter(cohort=="pooled") %>% group_by(region) %>% filter(age_range=="90 days") %>% summarize(min(nmeas), max(nmeas), sum(nmeas))
co_plot[[2]] %>% filter(cohort=="pooled") %>% group_by(region) %>% summarize(min(nmeas), max(nmeas))