

rm(list=ls())
library(tidyverse)

load('C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/pool_paf.RData')
par <-d
load('C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/pool_paf.RData')

yticks <- c( 0.5,0.6,0.7, 0.8,0.9, 1.00)
#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)

  #df$agecat <- "0-24 months cumulative incidence\n(no birth stunting)"
  Ylab <- "Relative Risk of EBF compared to no EBF"
  
  
  
  
  p <-  ggplot(d, aes(x=RFlabel)) + 
    geom_point(aes( y=RR,  color=RFtype), size = 4) +
    geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=RFtype)) +
    coord_flip(ylim=range(0.5,1)) +
    labs(x = "Exposure", y = "Percent reduction in cumulative incidence of stunting\nassociated with assigning each variable optimally") +
    geom_hline(yintercept = 1) +
    scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
    scale_shape_manual(values=c(21, 23)) +
    scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
    scale_size_continuous(range = c(0.5, 1))+
    theme(strip.background = element_blank(),
          legend.position="right",
          strip.text.x = element_text(size=12),
          axis.text.x = element_text(size=12, angle = 45, hjust = 1)) +
    ggtitle("Exposures ranked by\nvariable importance metric") +guides(shape=FALSE)
  print(p)

setwd("~/figures")
ggsave(p, file="Stunting_par.png", width=6, height=5.6)
  














