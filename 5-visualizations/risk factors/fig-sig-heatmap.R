
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
ate <- readRDS(paste0(here::here(),"/results/rf results/pooled_ATE_results.rds")) 
rr <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds"))

#Match columns names
rr <- rr %>% rename(est=RR, ci.lb=RR.CI1, ci.ub=RR.CI2)
ate <- ate %>% rename(est=ATE, ci.lb=CI1, ci.ub=CI2)


d <- bind_rows(rr, ate)

head(d)


#Drop reference levels
dim(d)
d <- d %>% filter(intervention_level != baseline_level)
dim(d)

#drop month and birthmonth
unique(d$intervention_variable)
d <- d %>% filter(!(intervention_variable %in% c("brthmon", "month")))

#Drop probit-specific Europe estimates
d <- d %>% filter(region!="N.America & Europe")
d <- d %>% mutate(region = factor(region, levels = c("Pooled","South Asia","Africa","Latin America")))

#keep overall pooled only in rare outcomes
d <- d %>% filter(!(outcome_variable %in% c("ever_co", "wast_rec90d") & region!="Pooled"))


#Drop secondary outcomes
table(d$outcome_variable)
d <- d %>% filter(outcome_variable %in% c("ever_stunted","stunted","ever_wasted","wasted","wast_rec90d","ever_co","haz","whz")) 
d$outcome_variable <- gsub("haz", "LAZ", d$outcome_variable)
d$outcome_variable <- gsub("whz", "WLZ", d$outcome_variable)
d$outcome_variable <- gsub("stunted", "Stunted", d$outcome_variable)
d$outcome_variable <- gsub("wasted", "Wasted", d$outcome_variable)
d$outcome_variable <- gsub("wast_rec90d", "Recovery\nfrom wasting", d$outcome_variable)
d$outcome_variable <- gsub("ever_co", "Stunted\nand wasted", d$outcome_variable)
d$outcome_variable <- gsub("ever_Stunted", "Ever\nstunted", d$outcome_variable)
d$outcome_variable <- gsub("ever_Wasted", "Ever\nwasted", d$outcome_variable)
d <- d %>% mutate(outcome_variable=factor(outcome_variable, levels = c("LAZ","WLZ","Stunted","Wasted","Ever\nstunted","Ever\nwasted","Recovery\nfrom wasting","Stunted\nand wasted")))
table(d$outcome_variable)
levels(d$outcome_variable)

#clean up agecats
d$agecat <- gsub(" \\(no birth st.\\)", "", d$agecat)
d$agecat <- gsub(" \\(no birth wast\\)", "", d$agecat)
unique(d$agecat)

#Keep just one breastfeeding indicator
d <- d %>% filter(!(intervention_variable %in% c("predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36"  )) )


#Calculate P-values
  #calculate the test statistic: z = Est/SE.
  d <- d %>% mutate(se = (ci.ub-ci.lb)/(2*1.96))
  d$se[!is.na(d$logRR.psi)] <-  NA
  d$Z <- ifelse(!is.na(d$logRR.psi), d$logRR.psi/d$logSE, d$est/d$se)
  
  #calculate the P value: P = exp(-0.717×z - 0.416×z^2).
  d$pval <- exp(-0.71*abs(d$Z) - 0.416*d$Z^2)
  summary(d$pval)
  
  d$sig <- ifelse(d$pval < 0.05, 1, 0)
  mean(d$sig)
  
  #Get direction of estimate
  d$sign <- sign(d$est)
  d$sign[!is.na(d$logRR.psi)] <- ifelse(exp(d$logRR.psi[!is.na(d$logRR.psi)]) >= 1, -1, 1)
  
  #Get significance category
  d$pval_cat <- cut(d$pval, breaks = c(-1,0.001, 0.05, 0.2, 2), labels = c("<0.001","<0.05","<0.2","0.2-1"))
  d$pval_cat <- ifelse(d$sign== -1, paste0(d$pval_cat, " increase risk"), paste0(d$pval_cat, " decrease risk"))
  d$pval_cat[d$pval_cat %in% c("0.2-1 decrease risk", "0.2-1 increase risk")] <- "0.2-1"
  table(d$pval_cat)
  d$pval_cat <- factor(d$pval_cat, levels = c("<0.001 decrease risk", "<0.05 decrease risk", "<0.2 decrease risk", "0.2-1", "<0.2 increase risk", "<0.05 increase risk", "<0.001 increase risk"))
  
  
  
  
#-----------------------------------
# Plot heatmaps
#-----------------------------------
  
  #Concatenate variable and level for the x-axis
  d$xvar <- paste0(d$intervention_variable,": ",d$intervention_level)
  
  d <- d %>% group_by(intervention_variable) %>%
    mutate(mean_pval = mean(sig)) %>% ungroup() %>%    
    arrange(-mean_pval) %>%
    mutate(xvar = factor(xvar, levels = unique(xvar))) %>%
    arrange(xvar)
  
  
  #Y axis is outcome, agecat, and region
  unique(d$agecat)
  unique(d$region)
  d <- d %>% mutate(
    agecat = factor(agecat, levels = c("0-24 months", "0-6 months","6-24 months", "Birth", "6 months", "24 months")),
    region = factor(region, levels = c("Pooled", "South Asia", "Africa","Latin America"))
  ) %>% 
    ungroup() %>% arrange(outcome_variable, rev(agecat), rev(region))
  d$yvar <- paste0(d$agecat,", ", d$region)
  unique(d$yvar)
  
  d$yvar <- factor(d$yvar, levels = unique(d$yvar))
  levels(d$yvar)
  
  table(d$outcome_variable, d$region)
  table(d$yvar, d$outcome_variable)
  
  #define a color for fonts
  textcol = "grey20"
  
  
  hm <- ggplot(d,aes(x=xvar, y=yvar, fill=pval_cat)) +
    facet_grid(outcome_variable~., scales = "free_y", space="free") +
    geom_tile(colour="white",size=0.25) +
    scale_y_discrete(expand=c(0,0))+
    theme_grey(base_size=10) +
    theme(
      #aspect.ratio = 1,
      legend.title=element_text(color=textcol,size=8),
      legend.margin = margin(grid::unit(0.1,"cm")),
      legend.text=element_text(colour=textcol,size=7,face="bold"),
      legend.key.height=grid::unit(0.2,"cm"),
      legend.key.width=grid::unit(1,"cm"),
      legend.position = "right",
      axis.text.x=element_text(size=8,colour=textcol,angle=45,hjust=1),
      axis.text.y=element_text(size=8,vjust = 0.2,colour=textcol),
      axis.ticks=element_line(size=0.4),
      plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
      strip.text.x = element_text(size=10),
      strip.text.y = element_text(angle=0,size=10),
      plot.background=element_blank(),
      panel.border=element_blank()
    ) + 
    labs(x="Exposure",y="",title="") +
    scale_fill_brewer(type = "div", palette = "Spectral", direction = -1, aesthetics = "fill", na.value="white")
    #scale_fill_brewer(type = "div", palette = "PuOr", direction = -1, aesthetics = "fill", na.value="white")
print(hm)  
  


  
# save plot 
ggsave(hm, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-sig-heatmap.png", height=10, width=14)

    