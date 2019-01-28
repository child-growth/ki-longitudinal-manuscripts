
rm(list=ls())
library(tidyverse)


#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
load("results/desc_data_cleaned.Rdata")
d <- shiny_desc_data

d$nmeas.f <- clean_nmeans(d$nmeas)


#-------------------------------------------------------------------------------------------
# Plot function
#-------------------------------------------------------------------------------------------
ki_desc_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                        Cohort="pooled",
                        xlabel="Age category",
                        ylabel=""){
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
  
  # Rename region
  asia_region <- which(levels(df$region) == 'Asia')
  levels(df$region)[asia_region] = 'South Asia'
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_point(aes(fill=region, color=region), size = 4) +
    geom_linerange(aes(ymin=lb, ymax=ub, color=region),  alpha=0.5, size = 3) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
    xlab(xlabel)+
    ylab(ylabel) +
    geom_text(data=df, aes(x=agecat,y=38,label=nmeas.f),size=3)+
    geom_text(data=df, aes(x=agecat,y=41,label=nstudy.f),size=3)+
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
    theme(plot.subtitle = element_text(size=40)) +
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
  filter(!is.na(agecat)) %>%
  filter(region!="Overall")

p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  geom_point(aes(fill=region, color=region), size = 4, shape=22) +
  geom_line(aes(color=region)) +
  scale_fill_manual(values=tableau10, drop=TRUE, limits = levels(df$measure)) +
  scale_color_manual(values=tableau10, drop=TRUE, limits = levels(df$measure)) +
  xlab("Age (months)")+
  ylab("Z-scores (WHO)") +
  ggtitle("Mean WLZ by child age and region") +
  theme(legend.position="right")

ggsave(p, file="figures/wasting/WLZ_by_region.png", width=10, height=4)





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
                   xlabel="Age category")


ggsave(p1, file="figures/wasting/pooled_prev.png", width=10, height=8)



#-------------------------------------------------------------------------------------------
# Wasting cululative incidence
#-------------------------------------------------------------------------------------------
p2 <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Cumulative incidence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Age category")


ggsave(p2, file="figures/wasting/pooled_ci.png", width=10, height=8)


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
                   xlabel="Age category")


ggsave(p3, file="figures/wasting/pooled_ir.png", width=10, height=8)


