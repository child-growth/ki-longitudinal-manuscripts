
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(ggiraph)

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))
quantiles <- readRDS(paste0(here::here(),"/results/quantile_data_wasting.RDS"))

#Subset to primary analysis
d <- d %>% mutate(pooling=ifelse(cohort=="pooled" & is.na(pooling),region,pooling)) %>%
  filter(analysis=="Primary", (pooling!="country" | is.na(pooling)))


d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100
d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100
d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100


d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)



#-------------------------------------------------------------------------------------------
# Wasting prevalence
#-------------------------------------------------------------------------------------------

Disease="Wasting"
Measure="Prevalence" 
Birth="yes"
Severe="no" 
Age_range="3 months"
Cohort="pooled"
xlabel="Child age, months"
ylabel='Point prevalence (95% CI)'
yrange=c(0,24)
returnData=T

         Region=NULL
         h1=0
         h2=3
         strip.text.size=18
         yrange=NULL
         returnData=F
  
  df <- d %>% filter(
    disease == Disease &
      measure == Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  
  # Remove 'months' from x axis labels
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))
  

  df$pooled <- factor(ifelse(df$cohort=="pooled", "pooled","cohort"), levels=c("pooled","cohort"))
  p <- ggplot(df,aes(y=est,x=agecat, group=cohort, ill=region, color=region, ymin=lb, ymax=ub, alpha=pooled)) +
    geom_pointrange_interactive(aes( tooltip = cohort, data_id = cohort), width = 0, position=position_dodge(0.5)) +
    #geom_point_interactive(aes( tooltip = cohort, data_id = cohort), width = 0, position=position_dodge(0.5)) +
    #geom_errorbar_interactive(aes( tooltip = cohort, data_id = cohort), width = 0, position=position_dodge(0.5)) +
    scale_alpha_manual_interactive(values=c(1,.3)) +
    scale_color_manual_interactive(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
    xlab(xlabel)+
    ylab(ylabel) +
    scale_x_discrete(expand = expand_scale(add = 1)) +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
    theme(
      axis.text.x = element_text(margin =
                                   margin(t = 0, r = 0, b = 0, l = 0),
                                 size = 14)) +
    theme(axis.title.y = element_text(size = 14)) +
    ggtitle("")+ facet_wrap(~region) +
      theme(strip.text = element_text(size=strip.text.size, margin = margin(t = 0)))

  # x <- girafe(ggobj = p)
  # x <- girafe_options(x,
  #                     opts_hover_key(girafe_css("fill:wheat;color:red;alpha:1;stroke:orange;r:5pt;", text="stroke:none;fill:red")))
  # print(x)
  # 
  # 
  # x <- girafe_options(x,
  #                     opts_hover(css = "") )
  
  girafe(ggobj = p,
         options = list(
           opts_hover_inv(css = "opacity:0.1;"),
           opts_hover(css = "fill:wheat;stroke:orange;r:3pt;opacity:1")
         ) )
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


  # library(ggplot2)
  # library(ggiraph)
  # data <- mtcars
  # data$carname <- row.names(data)
  # 
  # gg_point = ggplot(data = data) +
  #   geom_point_interactive(aes(x = wt, y = qsec, color = disp,
  #                              tooltip = carname, data_id = carname)) +
  #   theme_minimal()
  # 
  # girafe(ggobj = gg_point)
  # 
  # 
  # gg_point = ggplot(data = data) +
  #   geom_errorbar_interactive(aes(x = wt, ymin = qsec,  ymax = qsec, color = disp,
  #                              tooltip = carname, data_id = carname)) +
  #   theme_minimal()
  # 
  # girafe(ggobj = gg_point)
  # 

  # gg_point = ggplot(data = df, aes(x = agecat, ymin=lb, ymax=ub, y = est, color = region)) +
  #   #geom_point_interactive(aes(tooltip = cohort, data_id = cohort)) +
  #   geom_pointrange_interactive(aes( tooltip = cohort, data_id = cohort)) +
  #   facet_wrap(~region) +
  #   theme_minimal()
  # 
  # girafe(ggobj = gg_point)
  # 
  # 
  # # add interactive intervals -------
  # library(ggplot2)
  # library(ggiraph)
  # 
  # # Create a simple example dataset
  # df <- data.frame(
  #   trt = factor(c(1, 1, 2, 2)),
  #   resp = c(1, 5, 3, 4),
  #   group = factor(c(1, 2, 1, 2)),
  #   upper = c(1.1, 5.3, 3.3, 4.2),
  #   lower = c(0.8, 4.6, 2.4, 3.6)
  # )
  # 
  # p <- ggplot(df, aes(trt, resp, colour = group))
  # g <- p + geom_linerange_interactive(aes(ymin = lower, ymax = upper, tooltip = group))
  # x <- girafe(ggobj = g)
  # if( interactive() ) print(x)
  # 
  # g <- p + geom_pointrange_interactive(aes(ymin = lower, ymax = upper, tooltip = group))
  # x <- girafe(ggobj = g)
  # if( interactive() ) print(x)
  # 
  # g <- p + geom_crossbar_interactive(aes(ymin = lower, ymax = upper, tooltip = group), width = 0.2)
  # x <- girafe(ggobj = g)
  # if( interactive() ) print(x)
  # 
  # g <- p + geom_errorbar_interactive(aes(ymin = lower, ymax = upper, tooltip = group), width = 0.2)
  # x <- girafe(ggobj = g)
  # if( interactive() ) print(x)