
rm(list=ls())
library(tidyverse)


#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
load("results/desc_data_cleaned.Rdata")


d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)

# Rename region
unique(d$region)
d$region <- factor(d$region, levels=c("Overall", "Africa", "Latin America", "Asia"))
asia_region <- which(levels(d$region) == 'Asia')
levels(d$region)[asia_region] = 'South Asia'
levels(d$region)

Disease="Wasting"
Measure="Prevalence"
Birth="yes"
Severe="no" 
Age_range="3 months"
Cohort="pooled"
xlabel="Age in months"
h1=20
h2=22
#-------------------------------------------------------------------------------------------
# Plot function
#-------------------------------------------------------------------------------------------
# ki_desc_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
#                         Cohort="pooled",
#                         xlabel="Age (months)",
#                         ylabel="",
#                         h1=0,
#                         h2=3){
#   df <- d %>% filter(
#     disease == Disease &
#       measure == Measure &
#       birth == Birth &
#       severe == Severe &
#       age_range == Age_range &
#       cohort == Cohort &
#       !is.na(region) & !is.na(agecat)
#   ) 
#   df <- droplevels(df)
#   
#   empty <- data.frame( nstudy.f=rep("Studies:",4), nmeas.f=rep("Children:",4), agecat=rep("",4) , region=c("Overall", "Africa","Asia", "Latin America"))
#   df <- bind_rows(empty, df)
#   df$agecat <- factor(df$agecat, levels=unique(df$agecat))
#   df$region <- factor(df$region, levels=c("Overall", "Asia", "Africa","Latin America"))
#   
#   
#   # add line break to label columns
#   df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
#     mutate(nstudy.f = gsub('N=', '', nstudy.f))
#   
#   # remove text from labels
#   df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
#     mutate(nstudy.f = gsub(' studies', '', nstudy.f))
#   
#   # remove 'months' from age categories
#   # df <- df %>% mutate(agecat = gsub(' months', '', agecat))
# 
#   df <- df %>% arrange(agecat)
#   df$agecat <- as.character(df$agecat)
#   df$agecat <- gsub(" months", "", df$agecat)
#   df$agecat <- factor(df$agecat, levels=unique(df$agecat))
#   
#   p <- ggplot(df,aes(y=est,x=agecat)) +
#     geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0) +
#     geom_point(aes(fill=region, color=region), size = 2) +
#     geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 2) +
#     # geom_linerange(aes(ymin=lb, ymax=ub, color=region),  alpha=0.5, size = 3) +
#     scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
#     xlab(xlabel)+
#     ylab(ylabel) +
#     geom_text(data=df, aes(x = agecat, y = h1, vjust =  1,
#                            label = nmeas.f), size = 4) +
#     geom_text(data=df, aes(x = agecat, y = h1, vjust = -1, 
#                            label = nstudy.f), size = 4) +
#     #scale_x_discrete(expand = expand_scale(add = 2)) +
#     # annotate('text', x = -0.25, y = h1, label = 'Studies:', vjust = -1) +
#     # annotate('text', x = -0.25, y = h1, label = 'Children:', vjust = 1) +
#     scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
#     expand_limits(y = h2) +
#     # # annotate("blank", x = 0, y = h1) +
#     # theme(axis.text.x = element_text(margin = 
#     #                                    margin(t = -15, r = 0, b = 0, l = 0),
#     #                                  size = 15)) +
#     # theme(axis.title.x = element_text(margin = 
#     #                                     margin(t = 30, r = 0, b = 0, l = 0))) +
#     # theme(strip.text = element_text(margin=margin(t = 5))) +
#     # # annotate("text",label=df$ptest.f,x=df$agecat,
#     # #          y=df$est,hjust=-2,size=3)+
#     ggtitle("") +
#     facet_wrap(~region) 
#   
#   return(p)
# }



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

df$agecat <- factor(df$agecat, 
                    levels=c("Two weeks", "One month",
                             paste0(2:24," months")))
df <- df %>% arrange(agecat) %>%
  filter(!is.na(agecat))   

p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  geom_smooth(aes(fill = region, color = region), se=F) +
  # geom_line(aes(color=region)) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                     limits = c(-1, 1)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Region') +
  xlab("Age (months)") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(legend.position="right") +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = 4, r = 0, b = 0, l = 0),
                                   size = 15)) +
  theme(axis.title.x = element_text(margin = 
                                      margin(t = 14, r = 0, b = 0, l = 0)))

ggsave(p, file="figures/wasting/WLZ_by_region.png", width=10, height=4)


# What's supposed to be the x-axis here? Moved it to right place but need to clean axis label


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
p2 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Cumulative incidence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Cumulative incidence (95% CI)',
                   h1=65,
                   h2=70)


ggsave(p2, file="figures/wasting/pooled_ci.png", width=12, height=8)


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

p4 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Recovery", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="90 days", 
                   Cohort="pooled",
                   xlabel="Age in months",
                   ylabel='Percent recovered (95% CI)',
                   h1=105,
                   h2=110)


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

