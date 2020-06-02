

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(survminer)
library(cowplot)

#read in mortality data
d <- readRDS(mortality_path)

#transform data to form for survfit() function
d <- d %>% mutate(status = dead+1) #%>%
          #filter(maxage <= 730)

d$maxage[d$maxage>730] <- 730

#Load wasting measures
load(paste0(ghapdata_dir,"mort_exposures.rdata"))


#Join in growth measures
wast_ci_0_6 <- subset(wast_ci_0_6, select = - c(maxage))
d <- full_join(d, wast_ci_0_6, by=c("studyid","country","subjid"))
d <- full_join(d, stunt_ci_0_6, by=c("studyid","country","subjid"))
d <- full_join(d, underweight_ci_0_6, by=c("studyid","country","subjid"))
d <- full_join(d, co_ci_0_6, by=c("studyid","country", "subjid"))


#Survival plot function
surv_plot <- function(df, Avar,  legend_labs= c("Not wasted <6mo", "Wasted <6mo")){

  colnames(df)[which(colnames(df)==Avar)] <-"Avar"
  
  fit <- survfit(Surv(maxage, status) ~ Avar, data = df)
  
  #Get min survival probability
  ymin <- min(summary(fit)$surv)
  
  
  # Customized survival curves
  p <- ggsurvplot(fit, data = df,
             surv.median.line = "hv", # Add medians survival
             # Change legends: title & labels
             legend.title = "Status:",
             legend.labs = legend_labs,
             xlab = "Child age (days)",
             # Add p-value and tervals
             pval = TRUE,
             conf.int = TRUE,
             censor=T,
             # Add risk table
             risk.table = TRUE,
             tables.height = 0.2,
             tables.theme = theme_cleantable(),
             # Color palettes. Use custom color: c("#E7B800", "#2E9FDF"),
             # or brewer color (e.g.: "Dark2"), or ggsci color (e.g.: "jco")
             palette = c("#2E9FDF", "#E7B800"),
             ylim=c(ymin-0.02, 1), xlim=c(0, 730),
             ggtheme = theme_bw() # Change ggplot2 theme
  )
  
  return(p)
}



p1 <- surv_plot(df=d, Avar="ever_wasted06",  legend_labs= c("Not wasted <6mo", "Wasted <6mo"))
p2 <- surv_plot(df=d, Avar="ever_swasted06",  legend_labs= c("Not severely wasted <6mo", "Severely wasted <6mo"))
p3 <- surv_plot(df=d, Avar="pers_wasted06",  legend_labs= c("Not persistently wasted <6mo", "Persistently wasted <6mo"))
p4 <- surv_plot(df=d, Avar="ever_stunted06",  legend_labs= c("Not stunted <6mo", "Stunted <6mo"))
p5 <- surv_plot(df=d, Avar="ever_sstunted06",  legend_labs= c("Not severely stunted <6mo", "Severely stunted <6mo"))
p6 <- surv_plot(df=d, Avar="ever_underweight06",  legend_labs= c("Not underwight <6mo", "Underweight <6mo"))
p7 <- surv_plot(df=d, Avar="ever_sunderweight06",  legend_labs= c("Not Severely underwight <6mo", "Severely underwight <6mo"))
p8 <- surv_plot(df=d, Avar="ever_co06",  legend_labs= c("Not wasted and stunted <6mo", "Wasted and stunted <6mo"))


saveRDS(list(p1, p2, p3, p4, p5, p6, p7, p8), file=paste0(here::here(),"/figures/plot-objects/kaplan_meier_objects.RDS"))


  