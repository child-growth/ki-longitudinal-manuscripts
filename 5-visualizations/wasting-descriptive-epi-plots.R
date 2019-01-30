
rm(list=ls())
library(tidyverse)


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
  
  # add line break to label columns
  df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub('N=', '', nstudy.f))
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_point(aes(fill=region, color=region), size = 4) +
    geom_linerange(aes(ymin=lb, ymax=1.3*ub, color=region),  alpha=0.5, size = 3) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
    xlab(xlabel)+
    ylab(ylabel) +
    geom_text(data=df, aes(x = agecat, y = h1, vjust =  1,
                           label = nmeas.f), size = 3, angle = 45) +
    geom_text(data=df, aes(x = agecat, y = h1, vjust = -1, 
                           label = nstudy.f), size = 3, angle = 45) +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
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
  geom_point(aes(fill=region, color=region), size = 4, shape=22) +
  geom_line(aes(color=region)) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                     limits = c(min(df$est), 1.5)) + 
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
  xlab("Age (months)") +
  ylab("Z-scores (WHO)") +
  ggtitle("Mean WLZ by child age and region") +
  theme(legend.position="right") +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = -30, r = 0, b = 0, l = 0),
                                   size = 15)) +
  theme(axis.title.x = element_text(margin = 
                                      margin(t = 25, r = 0, b = 0, l = 0)))

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
                   xlabel="Age category",
                   h1=25,
                   h2=28)


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
                   xlabel="Age category",
                   h1=36,
                   h2=42)


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
                   xlabel="Age category",
                   h1=4.5,
                   h2=5.25)


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
                   xlabel="Age category",
                   h1=120,
                   h2=10)


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
                   xlabel="Age category",
                   h1=22.5,
                   h2=5.25)


ggsave(p5, file="figures/wasting/pooled_pers.png", width=10, height=8)




#-------------------------------------------------------------------------------------------
# WLZ seasonality
#-------------------------------------------------------------------------------------------



#-------------------------------------------------------------------------------------------
# Prevalence of co-occurrence
#-------------------------------------------------------------------------------------------