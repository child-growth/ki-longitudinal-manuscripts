
rm(list=ls())
library(tidyverse)
library(ggplot2)
library(dplyr)

#Plot themes
source(paste0(here::here(), "/5-visualizations/0-plot-themes.R"))
theme_set(theme_ki())

#Load data
load(paste0(here::here(),"/results/desc_data_cleaned.Rdata"))

#Quantile data (object: quantile_d)
load(paste0(here::here(),"/results/quantile_data_stunting.Rdata"))


d$nmeas.f <- clean_nmeans(d$nmeas)

# Rename region
# asia_region <- which(levels(d$region) == 'Asia')
# levels(d$region)[asia_region] = 'South Asia'

d = d %>% 
  mutate(region = ifelse(region=="Asia", "South Asia", region)) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))




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
  

#-------------------------------------------------------------------------------------------
# Mean LAZ by month 
#-------------------------------------------------------------------------------------------

p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 0.5) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                     limits = c(-2.2, 0.5)) + 
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(legend.position="right")

ggsave(p, file="figures/stunting/fig_stunt_mean_LAZ_region.png", width=10, height=4)


#-------------------------------------------------------------------------------------------
# Mean LAZ by month with quantiles
#-------------------------------------------------------------------------------------------

df <- quantile_d

df$agecat <- factor(df$agecat, 
                    levels=c("Two weeks", "One month",
                             paste0(2:24," months")))

df <- df %>% 
  arrange(agecat) %>%
  # filter(agecat != 'Two weeks') %>%
  filter(region!="Europe")
df <-droplevels(df)

# Remove 'months' from x axis labels  
# df <- df %>% arrange(agecat)
# df$agecat <- as.character(df$agecat)
# df$agecat <- gsub(" months", "", df$agecat)
# df$agecat <- gsub("One month", "1", df$agecat)
# df$agecat <- as.numeric(df$agecat)

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
  gather(`ninetyfifth_perc`, `fiftieth_perc`, `fifth_perc`, key = "interval", value = "LAZ") %>% 
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))
  
# NEED TO ADD LEGEND

p <- ggplot(df,aes(x = agecat, group = region)) +
  
  geom_smooth(aes(y = LAZ, color = region, group = interval, linetype = interval), se = F, span = 0.5) +
  
  
  # stat_smooth(aes(y = fiftieth_perc, fill = region, color = region), se=F, span = 0.5) +
  # stat_smooth(aes(y = fifth_perc, fill = region, color = region), linetype="dotted", se=F, span = 0.5) +
  # stat_smooth(aes(y = ninetyfifth_perc, fill = region, color = region), linetype="dashed", se=F, span = 0.5) +
  # 
  facet_wrap(~region) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  #scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
  #                  name = 'Region') +
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
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'), 
                                 keywidth = 3, keyheight = 1),
           colour = FALSE) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))

ggsave(p, file="figures/stunting/fig_stunt_mean_quantile_LAZ_region.png", width=10, height=8)






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
                   xlabel="Child age, months",
                   ylabel='Point Prevalence (95% CI)',
                   h1=69,
                   h2=72)
p1

ggsave(p1, file="figures/stunting/fig_stunt_prev_pooled.png", width=10, height=8)



#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion
#-------------------------------------------------------------------------------------------

# TO DO: implement Ben's request to move the legend into the body
# of the plot

# change incidence proportion to "% new incident cases"
# change 

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
  
  # Remove 'months' from x axis labels  
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))
  
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
    # theme(legend.position = 'right') +
    xlab(xlabel)+
    ylab(ylabel) +
    
    geom_text(data=df, aes(x = agecat, y = h1, vjust =  1,
                           label = nmeas.f), size = 3.5) +
    geom_text(data=df, aes(x = agecat, y = h1, vjust = -1, 
                           label = nstudy.f), size = 3.5) +
    scale_x_discrete(expand = expand_scale(add = 2)) +
    
    annotate('text', x = -0.2, y = h1, label = 'Studies:', vjust = -1, size = 3.5) +
    annotate('text', x = -0.2, y = h1, label = 'Children:', vjust = 1, size = 3.5) +
    
    # annotate('text', x = 5, y = 70, label = 'Cumulative % stunted', size = 3.5) +
    # annotate('text', x = 5, y = 15, label = '% new incident cases', size = 3.5) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    expand_limits(y = h2) +
    theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
    
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 10)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 25, r = 0, b = 0, l = 0),
                                      size = 15)) +
    theme(axis.title.y = element_text(size = 15)) +
    
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
                        xlabel="Child age, months",
                        h1=85,
                        h2=90)



ggsave(p_temp, file="figures/stunting/fig_stunt_ci_inc_pooled.png", width=12, height=8)

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
                   xlabel="Age (months)",
                   ylabel='Episodes per 1000 person-days at risk',
                   h1=5.5,
                   h2=6.5)


ggsave(p3, file="figures/stunting/fig_stunt_ir_pooled.png", width=10, height=8)


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
                   xlabel="Age (months)",
                   ylabel='Percent recovered (95% CI)', 
                   h1=89,
                   h2=93)


ggsave(p4, file="figures/stunting/fig_stunt_rec_pooled.png", width=10, height=8)


#-------------------------------------------------------------------------------------------
# Stunting recovery - overall/pooled only
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

ki_desc_plot_overall_only <- function(d, Disease, Measure, Birth, Severe, Age_range, 
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
      !is.na(region) & !is.na(agecat) &
      region == 'Overall'
  )
  df <- droplevels(df)
  
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
    theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
    theme(axis.text.x = element_text(margin = 
                                       margin(t = -15, r = 0, b = 0, l = 0),
                                     size = 15)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 25, r = 0, b = 0, l = 0))) +
    ggtitle("") 
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  return(p)
}

p7 <- ki_desc_plot_overall_only(df,
                   Disease="Stunting",
                   Measure="Recovery", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age (months)",
                   ylabel='Percent recovered (95% CI)', 
                   h1=26,
                   h2=28)


ggsave(p7, file="figures/stunting/fig_stunt_rec_pooled_only.png", width=10, height=8)


# #------------------------------------------------------------------------------
# #LAZ with percentiles
# #------------------------------------------------------------------------------
# df <- df %>% group_by(agecat, region) %>%
#   summarise(fifth_perc = quantile(est, probs = c(0.05)[[1]]),
#             fiftieth_perc = quantile(est, probs = c(0.5)[[1]]),
#             ninetyfifth_perc = quantile(est, probs = c(0.95))[[1]]) %>%
#   ungroup()
#   # mutate(fifth_perc = quantile(est, probs = c(0.05)),
#   #        fiftieth_perc = quantile(est, probs = c(0.5)),
#   #        ninetyfifth_perc = quantile(est, probs = c(0.95))) 
# p5 <- ggplot(df,aes(y=est,x=agecat, group=region)) +
#   geom_smooth(aes(fill=region, color=region)) +
#   geom_hline(yintercept = 0, colour = "black") +
#   scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
#                      limits = c(-2.2, 1.5)) + 
#   scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
#                     name = 'Region') +
#   scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
#                      name = 'Region') +
#   xlab("Age (months)")+
#   ylab("Length-for-age Z-score") +
#   ggtitle("") +
#   theme(axis.text.x = element_text(margin = 
#                                      margin(t = -30, r = 0, b = 0, l = 0),
#                                    size = 15)) +
#   theme(axis.title.x = element_text(margin = 
#                                       margin(t = 25, r = 0, b = 0, l = 0))) +
#   theme(legend.position="right") +
#   geom_line(aes(x=agecat, y=fifth_perc)) +
#   geom_line(aes(x = agecat, y = fiftieth_perc)) +
#   geom_line(aes(x = agecat, y = ninetyfifth_perc)) +
#   facet_wrap(~region)
#   # stat_summary(fun.y = "quantile", fun.args = list(probs = c(0.05, 0.5, 0.95)),
#                  # aes(yintercept = est, group = region, x = agecat))
# 
# p5
# 
# ggsave(p5, file="figures/stunting/LAZ_by_region_perc.png", width=10, height=4)









