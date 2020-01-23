
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Plot parameters
yticks <- c( 0.50, 1.00, 2.00, 4.00, 8.00)
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
Ylab <- "Relative Risk"
scaleFUN <- function(x) sprintf("%.0f", x)


clean_nmeans<-function(nmeas){
  nmeas <- round(nmeas/1000)
  nmeas.f <- paste0("N=",nmeas,"K children")
  return(nmeas.f)
}

clean_agecat<-function(agecat){
  agecat <- as.character(agecat)
  agecat <- gsub("months","mo.", agecat)
  agecat <- factor(agecat, levels=unique(agecat))
  return(agecat)
}


#Load data
d <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))
head(d)

d <- d %>% filter(region=="Pooled")

d <- d %>% filter(!(outcome_variable %in% c("dead0plus","dead624","dead6plus"))) %>%
  mutate(outcome_variable=factor(outcome_variable, 
                                 levels= c("stunted","wasted","sstunted","swasted","ever_wasted","ever_stunted","ever_sstunted","ever_swasted","ever_co","pers_wast","wast_rec90d"),
                                 labels=c("Stunt Prev.","Wast Prev.","Sev. Stunt Prev.","Sev. Wast Prev.","Wast CI","Stunt CI","Sev. Stunt CI","Sev. Wast CI","Wast+Stunt","Pers. Wast","Wast Recovery")))
d <- d %>% filter(!(agecat %in% c("15-18 months", "21-24 months","3-6 months",  "6-9 months",  "9-12 months",  "12-15 months"  ))) %>%
  mutate(agecat=factor(agecat, levels=c("Birth",   "6 months",  "24 months",  "0-24 months",   "0-6 months",     "6-24 months")))
         
d <- droplevels(d)

d <- d %>% arrange(outcome_variable, agecat) %>%
  mutate(contrast = paste0(outcome_variable,"\nAge: ",agecat),
        contrast=factor(contrast, levels=unique(contrast)))
unique(d$contrast) 

#mark reference
d$ref <- ifelse(d$intervention_level==d$baseline_level, "ref","")
d$ref <- factor(d$ref, levels=c("ref",""))

d2 <- d %>% filter(intervention_variable=="mwtkg")

RR_plot <- function(d2){

  p <- ggplot(d2, aes(x=intervention_level)) +
    geom_point(aes(y=RR, color=contrast, shape=ref), stroke=1) +
    geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=contrast)) +
    labs(y = "RR", x = "Exposure level") +
    geom_hline(yintercept = 1, linetype = "dashed") +
    scale_y_continuous(breaks=c(0.125, 0.25, 0.5, 1, 2, 4, 8, 16), trans='log10') +
    scale_colour_manual(values=rep(c(tableau10, "black"), each=3), drop=FALSE) +
    scale_fill_manual(values=rep(c(tableau10, "black"), each=3), drop=FALSE) +
    #scale_size_manual(values=c(4,5)) +
    scale_shape_manual(values=c(1, 16)) +
    theme(#strip.placement = "outside",
          panel.spacing = unit(0, "lines"),
          #plot.title = element_text(hjust = 0.5),
          strip.background = element_blank(),
          axis.text.x = element_text(size = 6),
          strip.text.x = element_text(size = 8),
          text = element_text(size=8), 
          legend.position = "none") + 
    facet_wrap(~contrast, strip.position = "top", ncol=9) +
    ggtitle(d2$RFlabel[1])

  ggsave(p, file=here(paste0("figures/risk-factor/RR-plots/fig-RR-",d2$intervention_variable[1],".png")), width=14, height=5.2)
  
  return(p)
}


# To do:
# #gridlines in back of plots


#Plots over all exposures
RRplotdf <- d %>% group_by(intervention_variable) %>% do(res=RR_plot(.))

saveRDS(RRplotdf, here("figures/plot-objects/risk-factor/RRplotdf.RDS"))