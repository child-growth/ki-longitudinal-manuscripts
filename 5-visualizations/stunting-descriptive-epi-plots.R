
rm(list=ls())
library(tidyverse)
try(setwd("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
load("results/desc_data_cleaned.Rdata")


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
                         h2=3){
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
    # geom_point(aes(fill=region, color=region), size = 4) +
    # geom_linerange(aes(ymin=lb, ymax=ub, color=region),  alpha=0.5, size = 3) +
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



p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  geom_smooth(aes(fill=region, color=region)) +
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
# Stunting cululative incidence
#-------------------------------------------------------------------------------------------
p2 <- ki_desc_plot(d,
                   Disease="Stunting",
                   Measure="Cumulative incidence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age category",
                   h1=38,
                   h2=42)


ggsave(p2, file="figures/stunting/pooled_ci.png", width=10, height=8)


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
    age_range == "NA" &
    cohort == "pooled" 
)
df <- droplevels(df)
df <- df %>% arrange(region) %>%
  filter(region != 'Overall')

p4 <- ggplot(df,aes(y=est,x=region)) +
  geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0, size = 1) +
  geom_point(aes(fill=region, color=region), size = 2) +
  geom_text(aes(x = region, y = est, label = round(est)), hjust = 2) +
  # geom_point(aes(fill=region, color=region), size = 4) +
  # geom_linerange(aes(ymin=lb, ymax=ub, color=region),  alpha=0.5, size = 3) +
  scale_fill_manual(values=tableau10, drop=TRUE, limits = levels(df$measure),
                    name = 'Region') +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(df$measure),
                     name = 'Region') +
  xlab("Region")+
  ylab("Percent recovered") +
  ggtitle("Percentage of children who became stunted\nand were recovered at 24 months") +
  theme(legend.position="right") +
  theme(strip.text = element_text(size=22)) +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = -30, r = 0, b = 0, l = 0),
                                   size = 15)) +
  theme(axis.title.x = element_text(margin = 
                                      margin(t = 25, r = 0, b = 0, l = 0)))
p4

ggsave(p4, file="figures/stunting/pooled_rec.png", width=10, height=8)



#------------------------------------------------------------------------------
#LAZ with percentiles
#------------------------------------------------------------------------------
p5 <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  geom_point(aes(fill=region, color=region), size = 4, shape=22) +
  geom_line(aes(color=region)) +
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
  theme(legend.position="right")
  # stat_summary(fun.y = "quantile", fun.args = list(probs = c(0.05, 0.5, 0.95)), 
  #              geom = "hline", aes(yintercept = est))

ggsave(p5, file="figures/stunting/LAZ_by_region.png", width=10, height=4)
