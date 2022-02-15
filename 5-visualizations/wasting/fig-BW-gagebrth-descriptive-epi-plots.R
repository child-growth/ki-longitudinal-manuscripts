
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d.whz<- readRDS(paste0(ghapdata_dir,"/gagebrth_strat_wasting_desc_data.RDS"))
d.waz<- readRDS(paste0(ghapdata_dir,"/gagebrth_strat_underweight_desc_data.RDS"))
d <- bind_rows(d.whz, d.waz)

table(d$measure)



#convert cohort specific estimates to percents
d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent underweight", "Recovery" )] <-
  d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent underweight", "Recovery" )] * 100
d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent underweight", "Recovery" )] <-
  d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent underweight", "Recovery" )] * 100
d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent underweight", "Recovery" )] <-
  d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Incidence proportion","Persistent underweight", "Recovery" )] * 100

#d %>% filter(measure=="Prevalence", disease=="co-occurrence", cohort!="pooled")

d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)

d$gagebrth <- factor(d$gagebrth, levels = c("Full or late term","Early term","Preterm"))


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
# Plot function
#-------------------------------------------------------------------------------------------

# Disease="underweight"
# Measure="Prevalence"
# Vvar="birthwt and gagebrth"
# Vvar1="birthwt"
# Vvar2="gagebrth"
# Birth="yes"
# Severe="no"
# Age_range="3 months"
# xlabel="Child age, months"
# ylabel='Point prevalence - underweight (%)'
# yrange=c(0,75)
# returnData=T


ki_desc_strat_plot <- function(d, Disease, Measure, 
                               Vvar, 
                               Vvar1=Vvar,
                               Vvar2="region", 
                               Birth, Severe, Age_range, 
                               xlabel="Age category",
                               ylabel="",
                               Region=NULL,
                               h2=3,
                               strip.text.size=18,
                               yrange=NULL,
                               returnData=F) {
  
  df <- d %>% filter(
    disease == Disease &
      measure == Measure &
      V==Vvar & 
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      !is.na(region) & !is.na(agecat) 
  )
  dim(df)
  df <- droplevels(df)
  
  colnames(df)[colnames(df)==Vvar1] <- "Vvar1"
  colnames(df)[colnames(df)==Vvar2] <- "Vvar2"
  
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
    geom_point(aes(shape=measure, size=measure, fill=Vvar2, color=Vvar2), 
               size = 2, stroke = 0,
               data = df %>% filter(ispooled == "yes")) +
    
    geom_errorbar(aes(color=Vvar2, group=interaction(measure, Vvar2),
                      ymin=lb, ymax=ub), width = 0,
                  data = df %>% filter(ispooled == "yes")) +
    
    geom_text(data=df[df$measure ==Measure,] %>% 
                filter(ispooled == "yes"), 
              aes(x = agecat, y = est, label = round(est)),
              hjust = 1.5, 
              vjust = 0.5) + 
    
    geom_text(data=df[df$measure == Measure,] %>% 
                filter(ispooled == "yes"), 
              aes(x = agecat, y = est, label = round(est)),
              hjust = 1.5, 
              vjust = 0.5) + 
    
    # cohort-stratified 
    geom_point(color = "#878787", fill = "#878787", size = 1.5, 
               data = df %>% filter(ispooled == "no"),
               position = position_jitter(width = 0.15), alpha = 0.25) +
    
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_size_manual(values = c(2, 1.5), guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure')+
    scale_fill_manual(values=tableau11, guide = FALSE) +
    
    xlab(xlabel)+
    ylab(ylabel) +
    
    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
    theme_ki() +
    theme(
      axis.text.x = element_text(margin =
                                   margin(t = 0, r = 0, b = 0, l = 0),
                                 size = 14)) +
    theme(axis.title.y = element_text(size = 14)) +
    
    ggtitle("") + facet_grid(Vvar2~Vvar1)
  
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(list(plot=p))
  }
}

#-------------------------------------------------------------------------------------------
# Mean WAZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "underweight" &
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


plot_gagebrth <- ggplot(df %>% filter(V=="gagebrth"),
            aes(y=est,x=agecat, group=gagebrth)) +
  stat_smooth(aes(fill=gagebrth, color=gagebrth), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-2, 0)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Gestational age') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Gestational age') +
  facet_wrap(~region) +
  xlab("Child age, months")+
  ylab("Weight-for-age Z-score") +
  ggtitle("") +
  theme_ki() +
  theme(legend.position="bottom")

plot_gagebrth

plot_birthwt <- ggplot(df %>% filter(V=="birthwt"),
                     aes(y=est,x=agecat, group=birthwt)) +
  stat_smooth(aes(fill=birthwt, color=birthwt), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-2.5, 0.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Birthweight') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Birthweight') +
  facet_wrap(~region) +
  xlab("Child age, months")+
  ylab("Weight-for-age Z-score") +
  ggtitle("") +
  theme_ki() +
  theme(legend.position="bottom")

plot_birthwt


df <- df %>% mutate(birthwt.gagebrth = paste0(birthwt," + ", gagebrth),
                    birthwt.gagebrth = factor(birthwt.gagebrth, 
                                              levels=c("Normal or high birthweight + Full or late term",
                                                       "Normal or high birthweight + Early term" ,
                                                       "Normal or high birthweight + Preterm", 
                                                       "Low birthweight + Full or late term" ,
                                                       "Low birthweight + Early term" ,
                                                       "Low birthweight + Preterm")))

plot_birthwt.gagebrth <- ggplot(df %>% filter(V=="birthwt and gagebrth"),
                    aes(y=est,x=agecat, group=birthwt.gagebrth)) +
  stat_smooth(aes(fill=birthwt.gagebrth, color=birthwt.gagebrth), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-4, 0.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Birthweight +\nGestational age') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Birthweight +\nGestational age') +
  facet_wrap(~region) +
  xlab("Child age, months")+
  ylab("Weight-for-age Z-score") +
  ggtitle("") +
  theme_ki() +
  theme(legend.position="bottom")

plot_birthwt.gagebrth



#-------------------------------------------------------------------------------------------
# Mean WLZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "wasting" &
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


plot_gagebrth_wlz <- ggplot(df %>% filter(V=="gagebrth"),
                        aes(y=est,x=agecat, group=gagebrth)) +
  stat_smooth(aes(fill=gagebrth, color=gagebrth), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-1.2, 0)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Gestational age') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Gestational age') +
  facet_wrap(~region) +
  xlab("Child age, months")+
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme_ki() +
  theme(legend.position="bottom")

plot_gagebrth_wlz

plot_birthwt_wlz <- ggplot(df %>% filter(V=="birthwt"),
                       aes(y=est,x=agecat, group=birthwt)) +
  stat_smooth(aes(fill=birthwt, color=birthwt), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-1.5, 0.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Birthweight') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Birthweight') +
  facet_wrap(~region) +
  xlab("Child age, months")+
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme_ki() +
  theme(legend.position="bottom")

plot_birthwt_wlz


df <- df %>% mutate(birthwt.gagebrth = paste0(birthwt," + ", gagebrth),
                    birthwt.gagebrth = factor(birthwt.gagebrth, 
                                              levels=c("Normal or high birthweight + Full or late term",
                                                       "Normal or high birthweight + Early term" ,
                                                       "Normal or high birthweight + Preterm", 
                                                       "Low birthweight + Full or late term" ,
                                                       "Low birthweight + Early term" ,
                                                       "Low birthweight + Preterm")))

plot_birthwt.gagebrth_wlz <- ggplot(df %>% filter(V=="birthwt and gagebrth"),
                                aes(y=est,x=agecat, group=birthwt.gagebrth)) +
  stat_smooth(aes(fill=birthwt.gagebrth, color=birthwt.gagebrth), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-1.5, 0)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Birthweight +\nGestational age') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Birthweight +\nGestational age') +
  facet_wrap(~region) +
  xlab("Child age, months")+
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme_ki() +
  theme(legend.position="bottom")

plot_birthwt.gagebrth_wlz





#-------------------------------------------------------------------------------------------
# Prevalence - underweight
#-------------------------------------------------------------------------------------------

prev_plot_birthweight <- ki_desc_strat_plot(d,
                                 Disease="underweight",
                                 Measure="Prevalence",
                                 Vvar="birthwt",
                                 Birth="yes",
                                 Severe="no",
                                 Age_range="3 months",
                                 xlabel="Child age, months",
                                 ylabel='Point prevalence - underweight (%)',
                                 yrange=c(0,75),
                                 returnData=T)

prev_plot_birthweight$plot


prev_plot_gagebrth <- ki_desc_strat_plot(d,
                                            Disease="underweight",
                                            Measure="Prevalence",
                                            Vvar="gagebrth",
                                            Birth="yes",
                                            Severe="no",
                                            Age_range="3 months",
                                            xlabel="Child age, months",
                                            ylabel='Point prevalence - underweight (%)',
                                            yrange=c(0,75),
                                            returnData=T)

prev_plot_gagebrth$plot

prev_plot_birthweight_gagebrth_overall <- ki_desc_strat_plot(d %>% filter(region=="Overall") %>% droplevels(),
                                            Disease="underweight",
                                            Measure="Prevalence",
                                            Vvar="birthwt and gagebrth",
                                            Vvar1="birthwt",
                                            Vvar2="gagebrth",
                                            Birth="yes",
                                            Severe="no",
                                            Age_range="3 months",
                                            xlabel="Child age, months",
                                            ylabel='Point prevalence - underweight (%)',
                                            #yrange=c(0,75),
                                            returnData=T)

prev_plot_birthweight_gagebrth_overall$plot

prev_plot_birthweight_gagebrth_africa <- ki_desc_strat_plot(d %>% filter(region=="Africa") %>% droplevels(),
                                                             Disease="underweight",
                                                             Measure="Prevalence",
                                                             Vvar="birthwt and gagebrth",
                                                             Vvar1="birthwt",
                                                             Vvar2="gagebrth",
                                                             Birth="yes",
                                                             Severe="no",
                                                             Age_range="3 months",
                                                             xlabel="Child age, months",
                                                             ylabel='Point prevalence - underweight (%)',
                                                             #yrange=c(0,75),
                                                             returnData=T)

prev_plot_birthweight_gagebrth_africa$plot

prev_plot_birthweight_gagebrth_asia <- ki_desc_strat_plot(d %>% filter(region=="South Asia") %>% droplevels(),
                                                             Disease="underweight",
                                                             Measure="Prevalence",
                                                             Vvar="birthwt and gagebrth",
                                                             Vvar1="birthwt",
                                                             Vvar2="gagebrth",
                                                             Birth="yes",
                                                             Severe="no",
                                                             Age_range="3 months",
                                                             xlabel="Child age, months",
                                                             ylabel='Point prevalence - underweight (%)',
                                                             #yrange=c(0,75),
                                                             returnData=T)

prev_plot_birthweight_gagebrth_asia$plot



#-------------------------------------------------------------------------------------------
# Prevalence - wasting
#-------------------------------------------------------------------------------------------

prev_plot_birthweight_wast <- ki_desc_strat_plot(d,
                                            Disease="wasting",
                                            Measure="Prevalence",
                                            Vvar="birthwt",
                                            Birth="yes",
                                            Severe="no",
                                            Age_range="3 months",
                                            xlabel="Child age, months",
                                            ylabel='Point prevalence - wasting (%)',
                                            yrange=c(0,75),
                                            returnData=T)

prev_plot_birthweight_wast$plot

d$gagebrth <- factor(d$gagebrth, levels = c("Full or late term","Early term","Preterm"))

prev_plot_gagebrth_wast <- ki_desc_strat_plot(d,
                                         Disease="wasting",
                                         Measure="Prevalence",
                                         Vvar="gagebrth",
                                         Birth="yes",
                                         Severe="no",
                                         Age_range="3 months",
                                         xlabel="Child age, months",
                                         ylabel='Point prevalence - wasting (%)',
                                         yrange=c(0,75),
                                         returnData=T)

prev_plot_gagebrth_wast$plot

prev_plot_birthweight_gagebrth_overall_wast <- ki_desc_strat_plot(d %>% filter(region=="Overall") %>% droplevels(),
                                                             Disease="wasting",
                                                             Measure="Prevalence",
                                                             Vvar="birthwt and gagebrth",
                                                             Vvar1="birthwt",
                                                             Vvar2="gagebrth",
                                                             Birth="yes",
                                                             Severe="no",
                                                             Age_range="3 months",
                                                             xlabel="Child age, months",
                                                             ylabel='Point prevalence - wasting (%)',
                                                             returnData=T)

prev_plot_birthweight_gagebrth_overall_wast$plot

prev_plot_birthweight_gagebrth_africa_wast <- ki_desc_strat_plot(d %>% filter(region=="Africa") %>% droplevels(),
                                                            Disease="wasting",
                                                            Measure="Prevalence",
                                                            Vvar="birthwt and gagebrth",
                                                            Vvar1="birthwt",
                                                            Vvar2="gagebrth",
                                                            Birth="yes",
                                                            Severe="no",
                                                            Age_range="3 months",
                                                            xlabel="Child age, months",
                                                            ylabel='Point prevalence - wasting (%)',
                                                            returnData=T)

prev_plot_birthweight_gagebrth_africa_wast$plot

prev_plot_birthweight_gagebrth_asia_wast <- ki_desc_strat_plot(d %>% filter(region=="South Asia") %>% droplevels(),
                                                          Disease="wasting",
                                                          Measure="Prevalence",
                                                          Vvar="birthwt and gagebrth",
                                                          Vvar1="birthwt",
                                                          Vvar2="gagebrth",
                                                          Birth="yes",
                                                          Severe="no",
                                                          Age_range="3 months",
                                                          xlabel="Child age, months",
                                                          ylabel='Point prevalence - wasting (%)',
                                                          returnData=T)

prev_plot_birthweight_gagebrth_asia_wast$plot



#-------------------------------------------------------------------------------------------
# Cumulative incidence - underweight
#-------------------------------------------------------------------------------------------

ci_plot_birthweight <- ki_desc_strat_plot(d,
                                          Disease="underweight",
                                          Measure="Cumulative incidence",
                                          Vvar="birthwt",
                                          Birth="yes",
                                          Severe="no",
                                          Age_range="3 months",
                                          xlabel="Child age, months",
                                          ylabel='Cumulative incidence- underweight (%)',
                                          yrange=c(0,100),
                                          returnData=T)

ci_plot_birthweight$plot


ci_plot_gagebrth <- ki_desc_strat_plot(d,
                                       Disease="underweight",
                                       Measure="Cumulative incidence",
                                       Vvar="gagebrth",
                                       Birth="yes",
                                       Severe="no",
                                       Age_range="3 months",
                                       xlabel="Child age, months",
                                       ylabel='Cumulative incidence- underweight (%)',
                                       yrange=c(0,75),
                                       returnData=T)

ci_plot_gagebrth$plot

ci_plot_birthweight_gagebrth_overall <- ki_desc_strat_plot(d %>% filter(region=="Overall") %>% droplevels(),
                                                           Disease="underweight",
                                                           Measure="Cumulative incidence",
                                                           Vvar="birthwt and gagebrth",
                                                           Vvar1="birthwt",
                                                           Vvar2="gagebrth",
                                                           Birth="yes",
                                                           Severe="no",
                                                           Age_range="3 months",
                                                           xlabel="Child age, months",
                                                           ylabel='Cumulative incidence- underweight (%)',
                                                           #yrange=c(0,75),
                                                           returnData=T)

ci_plot_birthweight_gagebrth_overall$plot

ci_plot_birthweight_gagebrth_africa <- ki_desc_strat_plot(d %>% filter(region=="Africa") %>% droplevels(),
                                                          Disease="underweight",
                                                          Measure="Cumulative incidence",
                                                          Vvar="birthwt and gagebrth",
                                                          Vvar1="birthwt",
                                                          Vvar2="gagebrth",
                                                          Birth="yes",
                                                          Severe="no",
                                                          Age_range="3 months",
                                                          xlabel="Child age, months",
                                                          ylabel='Cumulative incidence- underweight (%)',
                                                          #yrange=c(0,75),
                                                          returnData=T)

ci_plot_birthweight_gagebrth_africa$plot

ci_plot_birthweight_gagebrth_asia <- ki_desc_strat_plot(d %>% filter(region=="South Asia") %>% droplevels(),
                                                        Disease="underweight",
                                                        Measure="Cumulative incidence",
                                                        Vvar="birthwt and gagebrth",
                                                        Vvar1="birthwt",
                                                        Vvar2="gagebrth",
                                                        Birth="yes",
                                                        Severe="no",
                                                        Age_range="3 months",
                                                        xlabel="Child age, months",
                                                        ylabel='Cumulative incidence- underweight (%)',
                                                        #yrange=c(0,75),
                                                        returnData=T)

ci_plot_birthweight_gagebrth_asia$plot



#-------------------------------------------------------------------------------------------
# Cumulative incidence - wasting
#-------------------------------------------------------------------------------------------

ci_plot_birthweight_wast <- ki_desc_strat_plot(d,
                                               Disease="wasting",
                                               Measure="Cumulative incidence",
                                               Vvar="birthwt",
                                               Birth="yes",
                                               Severe="no",
                                               Age_range="3 months",
                                               xlabel="Child age, months",
                                               ylabel='Cumulative incidence- wasting (%)',
                                               yrange=c(0,75),
                                               returnData=T)

ci_plot_birthweight_wast$plot

d$gagebrth <- factor(d$gagebrth, levels = c("Full or late term","Early term","Preterm"))

ci_plot_gagebrth_wast <- ki_desc_strat_plot(d,
                                            Disease="wasting",
                                            Measure="Cumulative incidence",
                                            Vvar="gagebrth",
                                            Birth="yes",
                                            Severe="no",
                                            Age_range="3 months",
                                            xlabel="Child age, months",
                                            ylabel='Cumulative incidence- wasting (%)',
                                            yrange=c(0,75),
                                            returnData=T)

ci_plot_gagebrth_wast$plot

ci_plot_birthweight_gagebrth_overall_wast <- ki_desc_strat_plot(d %>% filter(region=="Overall") %>% droplevels(),
                                                                Disease="wasting",
                                                                Measure="Cumulative incidence",
                                                                Vvar="birthwt and gagebrth",
                                                                Vvar1="birthwt",
                                                                Vvar2="gagebrth",
                                                                Birth="yes",
                                                                Severe="no",
                                                                Age_range="3 months",
                                                                xlabel="Child age, months",
                                                                ylabel='Cumulative incidence- wasting (%)',
                                                                returnData=T)

ci_plot_birthweight_gagebrth_overall_wast$plot

ci_plot_birthweight_gagebrth_africa_wast <- ki_desc_strat_plot(d %>% filter(region=="Africa") %>% droplevels(),
                                                               Disease="wasting",
                                                               Measure="Cumulative incidence",
                                                               Vvar="birthwt and gagebrth",
                                                               Vvar1="birthwt",
                                                               Vvar2="gagebrth",
                                                               Birth="yes",
                                                               Severe="no",
                                                               Age_range="3 months",
                                                               xlabel="Child age, months",
                                                               ylabel='Cumulative incidence- wasting (%)',
                                                               returnData=T)

ci_plot_birthweight_gagebrth_africa_wast$plot

ci_plot_birthweight_gagebrth_asia_wast <- ki_desc_strat_plot(d %>% filter(region=="South Asia") %>% droplevels(),
                                                             Disease="wasting",
                                                             Measure="Cumulative incidence",
                                                             Vvar="birthwt and gagebrth",
                                                             Vvar1="birthwt",
                                                             Vvar2="gagebrth",
                                                             Birth="yes",
                                                             Severe="no",
                                                             Age_range="3 months",
                                                             xlabel="Child age, months",
                                                             ylabel='Cumulative incidence- wasting (%)',
                                                             returnData=T)

ci_plot_birthweight_gagebrth_asia_wast$plot





save(list=ls(pattern="plot_"), file=paste0(figdata_dir_underweight,"BW_strat_figs.Rdata"))


