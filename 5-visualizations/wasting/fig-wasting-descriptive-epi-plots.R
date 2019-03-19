
rm(list=ls())
library(ggplot2)
library(dplyr)

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

ggsave(p, file="figures/wasting/WLZ_by_region.png", width=10, height=4)



#-------------------------------------------------------------------------------------------
# Mean WLZ by month with quantiles
#-------------------------------------------------------------------------------------------

df <- quantile_d

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
  gather(`ninetyfifth_perc`, `fiftieth_perc`, `fifth_perc`, key = "interval", value = "LAZ") %>% 
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))

# NEED TO ADD LEGEND

p <- ggplot(df,aes(x = agecat, group = region)) +

  geom_smooth(aes(y = LAZ, color = region, group = interval, linetype = interval), se = F, span = 1) +
  facet_wrap(~region) +
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

ggsave(p, file="figures/wasting/fig_wast_mean_quantile_WLZ_region.png", width=10, height=8)


#-------------------------------------------------------------------------------------------
# Wasting prevalence
#-------------------------------------------------------------------------------------------
p1 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Point prevalence (95% CI)',
                   h1=25,
                   h2=27)


ggsave(p1, file="figures/wasting/pooled_prev.png", width=12, height=8)



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
                        h1=60,
                        h2=62)


ggsave(p2, file="figures/wasting/fig_wast_ci_inc_pooled.png", width=12, height=8)

#-------------------------------------------------------------------------------------------
# Wasting incidence rate
#-------------------------------------------------------------------------------------------
p3 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Incidence rate", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="6 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Episodes per 1000 person-days at risk',
                   h1=4.4,
                   h2=4.8)


ggsave(p3, file="figures/wasting/pooled_ir.png", width=10, height=8)


#-------------------------------------------------------------------------------------------
# Wasting recovery
#-------------------------------------------------------------------------------------------



rec_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
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
  
  # remove N= labels for incidence proportion
  # df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence_proportion', '', nmeas.f)) %>%
  #   mutate(nstudy.f = ifelse(measure == 'Incidence_proportion', '', nstudy.f))
  
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    facet_wrap(~region) +
    geom_errorbar(aes(color=region, 
                      group=interaction(age_range, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(0.5)) +
    geom_point(aes(shape=age_range, fill=region, color=region, group=interaction(age_range, region)
    ), size = 2, position = position_dodge(0.5)) +
    #geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 2) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_shape_manual(values = c(16, 17, 18),
                       name = 'Measure', 
                       labels = c('30 days', '60 days', '90 days')) + 
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
    
    guides(color = FALSE) +
    
    theme(legend.position = c(.08,.87),
          legend.title = element_blank(),
          legend.background = element_blank(),
          legend.box.background = element_rect(colour = "black"))
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  return(p)
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
                   h1=105,
                   h2=110)
print(p4)

ggsave(p4, file="figures/wasting/pooled_rev.png", width=10, height=8)



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
                   h1=20,
                   h2=22)


ggsave(p5, file="figures/wasting/pooled_pers.png", width=10, height=8)




#-------------------------------------------------------------------------------------------
# WLZ seasonality
#-------------------------------------------------------------------------------------------



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
                   h1=9,
                   h2=10)


ggsave(p6, file="figures/wasting/pooled_co_prev.png", width=12, height=8)

#-------------------------------------------------------------------------------------------
# Underweight prevalence 
#-------------------------------------------------------------------------------------------
p7 <- ki_desc_plot(d,
                   Disease="Underweight",
                   Measure="Mean WAZ", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Mean Z',
                   h1=0,
                   h2=1)

#-------------------------------------------------------------------------------------------
# Wasting prevalence -MUAC based
#-------------------------------------------------------------------------------------------
p8 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="MUAC  WHZ Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Point prevalence (95% CI)',
                   h1=25,
                   h2=27)



#-------------------------------------------------------------------------------------------
# Wasting prevalence -MUAC subset
#-------------------------------------------------------------------------------------------
p9 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="MUAC Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Point prevalence (95% CI)',
                   h1=69,
                   h2=70)

#COMBINE INTO ONE PLOT
#ggsave(p1, file="figures/wasting/pooled_prev.png", width=12, height=8)


df <- d %>% filter(measure=="MUAC Prevalence" & cohort!="pooled")