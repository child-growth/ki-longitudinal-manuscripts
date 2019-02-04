
rm(list=ls())
library(tidyverse)
try(setwd("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
load("results/desc_data_cleaned.Rdata")

#Quantile data (object: quantile_d)
load("results/quantile_data_stunting.Rdata")


d$nmeas.f <- clean_nmeans(d$nmeas)

# Rename region
asia_region <- which(levels(d$region) == 'Asia')
levels(d$region)[asia_region] = 'South Asia'

#-------------------------------------------------------------------------------------------
# Plot function
#-------------------------------------------------------------------------------------------
ki_desc_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                         Cohort="pooled",
                         xlabel="Age category",
                         ylabel="",
                         h1=0,
                         h2=3,
                         yrange=NULL){
  df <- d %>% filter(
    disease == Disease &
      measure == Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  # remove N= from labels
  df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub('N=', '', nstudy.f))
  
  # remove text from labels
  df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub(' studies', '', nstudy.f))
  
  # levels(df$agecat) <- gsub(" month.*", "", levels(df$agecat))
  
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0) +
    geom_point(aes(fill=region, color=region), size = 2) +
    geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 2) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
    xlab(xlabel)+
    ylab(ylabel) +
    geom_text(data=df, aes(x = agecat, y = h1, vjust =  1,
                           label = nmeas.f), size = 4) +
    geom_text(data=df, aes(x = agecat, y = h1, vjust = -1, 
                           label = nstudy.f), size = 4) +
    scale_x_discrete(expand = expand_scale(add = 2)) +
    annotate('text', x = -0.25, y = h1, label = 'Studies:', vjust = -1) +
    annotate('text', x = -0.25, y = h1, label = 'Children:', vjust = 1) +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    expand_limits(y = h2) +
    theme(strip.text = element_text(size=22)) +
    theme(axis.text.x = element_text(margin = 
                                       margin(t = -30, r = 0, b = 0, l = 0),
                                     size = 15)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 25, r = 0, b = 0, l = 0))) +
    # annotate("text",label=df$ptest.f,x=df$agecat,
    #          y=df$est,hjust=-2,size=3)+
    ggtitle("") +
    facet_wrap(~region) 
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  return(p)
}


#-------------------------------------------------------------------------------------------
# Mean LAZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "Stunting" &
    measure == "Mean LAZ" &
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)

df <- droplevels(df)

df$agecat <- factor(df$agecat, 
                    levels=c("Two weeks", "One month",
                             paste0(2:24," months")))

# levels(df$agecat) <- gsub(" month.*", "", levels(df$agecat))
# levels(df$agecat) <- gsub('One', '1', levels(df$agecat))

df <- df %>% 
  # mutate(agecat = gsub(' month.*', '', agecat)) %>%
  # mutate(agecat = gsub('One', '1', agecat)) %>%
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  filter(agecat != 'Two weeks')

#-------------------------------------------------------------------------------------------
# Mean LAZ by month 
#-------------------------------------------------------------------------------------------

p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  geom_smooth(aes(fill=region, color=region), se=F) +
  # geom_line(aes(color=region)) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                     limits = c(-2.2, 0.5)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  xlab("Age (months)")+
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = -40, r = 0, b = 0, l = 0),
                                   size = 15)) +
  theme(axis.title.x = element_text(margin = 
                                      margin(t = 35, r = 0, b = 0, l = 0))) +
  theme(legend.position="right")

ggsave(p, file="figures/stunting/LAZ_by_region.png", width=10, height=4)


#-------------------------------------------------------------------------------------------
# Mean LAZ by month with quantiles
#-------------------------------------------------------------------------------------------

df <- quantile_d

df$agecat <- factor(df$agecat, 
                    levels=c("Two weeks", "One month",
                             paste0(2:24," months")))

df <- df %>% 
  arrange(agecat) %>%
  filter(agecat != 'Two weeks') %>%
  filter(region!="Europe")
df <-droplevels(df)


p <- ggplot(df,aes(x=agecat, group=region)) +
  geom_smooth(aes(y=fiftieth_perc,fill=region, color=region), se=F) +
  geom_smooth(aes(y=fifth_perc,fill=region, color=region), linetype="dashed", se=F) +
  geom_smooth(aes(y=ninetyfifth_perc,fill=region, color=region), linetype="dashed", se=F) +
  facet_wrap(~region)+
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  xlab("Age (months)")+
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = -40, r = 0, b = 0, l = 0),
                                   size = 15)) +
  theme(axis.title.x = element_text(margin = 
                                      margin(t = 35, r = 0, b = 0, l = 0))) +
  theme(legend.position="none")

ggsave(p, file="figures/stunting/LAZ_quantiles_by_region.png", width=10, height=8)






#-------------------------------------------------------------------------------------------
# Stunting prevalence
#-------------------------------------------------------------------------------------------
p1 <- ki_desc_plot(d,
                   Disease="Stunting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age category",
                   h1=67,
                   h2=72)


ggsave(p1, file="figures/stunting/pooled_prev.png", width=10, height=8)



#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion
#-------------------------------------------------------------------------------------------

ki_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                         Cohort="pooled",
                         xlabel="Age category",
                         ylabel="",
                         h1=0,
                         h2=3,
                         yrange=NULL){
  
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
  
  # remove N= from labels
  df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub('N=', '', nstudy.f))
  
  # remove text from labels
  df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub(' studies', '', nstudy.f))
  
  # levels(df$agecat) <- gsub(" month.*", "", levels(df$agecat))
  
  # remove N= labels for incidence proportion
  df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence_proportion', '', nmeas.f)) %>%
    mutate(nstudy.f = ifelse(measure == 'Incidence_proportion', '', nstudy.f))
  
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, 
                      group=interaction(measure, region), ymin=lb, ymax=ub), 
                  width = 0) +
    geom_point(aes(shape=measure, fill=region, color=region
                   ), size = 2) +
    geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 2) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                      name = 'Measure', 
                      labels = c('Cumulative Incidence', 'Incidence Proportion')) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    theme(legend.position = 'right') +
    xlab(xlabel)+
    ylab(ylabel) +
    geom_text(data=df, aes(x = agecat, y = h1, vjust =  1,
                           label = nmeas.f), size = 4) +
    geom_text(data=df, aes(x = agecat, y = h1, vjust = -1, 
                           label = nstudy.f), size = 4) +
    scale_x_discrete(expand = expand_scale(add = 2)) +
    annotate('text', x = -0.25, y = h1, label = 'Studies:', vjust = -1) +
    annotate('text', x = -0.25, y = h1, label = 'Children:', vjust = 1) +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    expand_limits(y = h2) +
    theme(strip.text = element_text(size=22)) +
    theme(axis.text.x = element_text(margin = 
                                       margin(t = -45, r = 0, b = 0, l = 0),
                                     size = 15)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 35, r = 0, b = 0, l = 0))) +
    # annotate("text",label=df$ptest.f,x=df$agecat,
    #          y=df$est,hjust=-2,size=3)+
    ggtitle("") +
    facet_wrap(~region) 
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  return(p)
}

#XXXXXXXX
#TEMP - merge this plot in with the below
#Use different point shape, and only use numbers from plot p2
p_temp <- ki_combo_plot(d,
                   Disease="Stunting",
                   Measure=c("Cumulative incidence", "Incidence_proportion"), 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age category",
                   h1=85,
                   h2=90)



ggsave(p_temp, file="figures/stunting/pooled_ci.png", width=10, height=8)

#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion
#-------------------------------------------------------------------------------------------
df <- d %>% filter(
  disease == "Stunting" &
    measure == "Cumulative incidence" &
    birth == "yes" &
    severe == "no" &
    age_range == "3 months" &
    cohort == "pooled" &
    !is.na(region) & !is.na(agecat)
)
df2 <- df <- d %>% filter(
  disease == "Stunting" &
    measure == "Incidence Proportion" &
    birth == "yes" &
    severe == "no" &
    age_range == "3 months" &
    cohort == "pooled" &
    !is.na(region) & !is.na(agecat)
)
df2$measure <- "Incidence proportion"
df <- rbind(df, df2)

df <- droplevels(df)

# remove N= from labels
df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
  mutate(nstudy.f = gsub('N=', '', nstudy.f))

# remove text from labels
df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
  mutate(nstudy.f = gsub(' studies', '', nstudy.f))

h1=0
h2=3

p <- ggplot(df,aes(y=est,x=agecat)) +
  geom_jitter(height=0) +
  geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0) +
  geom_point(aes(fill=region, color=region), size = 2) +
  geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 2) +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
  xlab("Age category")+
  ylab("") +
  geom_text(data=df, aes(x = agecat, y = h1, vjust =  1,
                         label = nmeas.f), size = 4) +
  geom_text(data=df, aes(x = agecat, y = h1, vjust = -1, 
                         label = nstudy.f), size = 4) +
  scale_x_discrete(expand = expand_scale(add = 2)) +
  annotate('text', x = -0.25, y = h1, label = 'Studies:', vjust = -1) +
  annotate('text', x = -0.25, y = h1, label = 'Children:', vjust = 1) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  expand_limits(y = h2) +
  theme(strip.text = element_text(size=22)) +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = -30, r = 0, b = 0, l = 0),
                                   size = 15)) +
  theme(axis.title.x = element_text(margin = 
                                      margin(t = 25, r = 0, b = 0, l = 0))) +
  # annotate("text",label=df$ptest.f,x=df$agecat,
  #          y=df$est,hjust=-2,size=3)+
  ggtitle("") +
  facet_wrap(~region) 

#-------------------------------------------------------------------------------------------
# Stunting incidence rate
#-------------------------------------------------------------------------------------------
p3 <- ki_desc_plot(d,
                   Disease="Stunting",
                   Measure="Incidence rate", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="6 months", 
                   Cohort="pooled",
                   xlabel="Age category",
                   h1=5.5,
                   h2=6.5)


ggsave(p3, file="figures/stunting/pooled_ir.png", width=10, height=8)


#-------------------------------------------------------------------------------------------
# Stunting recovery
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "Stunting" &
    measure == "Recovery" &
    birth == "yes" &
    severe == "no" &
    age_range == "3 months" &
    cohort == "pooled" 
)
df <- droplevels(df)
df <- df %>% arrange(region)

p4 <- ki_desc_plot(df,
                   Disease="Stunting",
                   Measure="Recovery", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age category",
                   h1=26,
                   h2=28,
                   yrange=c(0,30))


ggsave(p4, file="figures/stunting/pooled_rec.png", width=10, height=8)



#------------------------------------------------------------------------------
#LAZ with percentiles
#------------------------------------------------------------------------------
df <- df %>% group_by(agecat, region) %>%
  summarise(fifth_perc = quantile(est, probs = c(0.05)[[1]]),
            fiftieth_perc = quantile(est, probs = c(0.5)[[1]]),
            ninetyfifth_perc = quantile(est, probs = c(0.95))[[1]]) %>%
  ungroup()
  # mutate(fifth_perc = quantile(est, probs = c(0.05)),
  #        fiftieth_perc = quantile(est, probs = c(0.5)),
  #        ninetyfifth_perc = quantile(est, probs = c(0.95))) 
p5 <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  geom_smooth(aes(fill=region, color=region)) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                     limits = c(-2.2, 1.5)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  xlab("Age (months)")+
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = -30, r = 0, b = 0, l = 0),
                                   size = 15)) +
  theme(axis.title.x = element_text(margin = 
                                      margin(t = 25, r = 0, b = 0, l = 0))) +
  theme(legend.position="right") +
  geom_line(aes(x=agecat, y=fifth_perc)) +
  geom_line(aes(x = agecat, y = fiftieth_perc)) +
  geom_line(aes(x = agecat, y = ninetyfifth_perc)) +
  facet_wrap(~region)
  # stat_summary(fun.y = "quantile", fun.args = list(probs = c(0.05, 0.5, 0.95)),
                 # aes(yintercept = est, group = region, x = agecat))

p5

ggsave(p5, file="figures/stunting/LAZ_by_region_perc.png", width=10, height=4)


