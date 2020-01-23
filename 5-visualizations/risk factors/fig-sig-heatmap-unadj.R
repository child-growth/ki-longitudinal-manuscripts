
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

rr <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results_unadj.rds"))

#Load data
ate <- readRDS(paste0(here::here(),"/results/rf results/pooled_ATE_results_unadj.rds")) 

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
d <- d %>% filter(outcome_variable %in% c("pers_wast","ever_stunted","stunted","ever_wasted","wasted","wast_rec90d","ever_co","haz","whz")) 
d$outcome_variable <- gsub("haz", "LAZ", d$outcome_variable)
d$outcome_variable <- gsub("whz", "WLZ", d$outcome_variable)
d$outcome_variable <- gsub("stunted", "Stunted", d$outcome_variable)
d$outcome_variable <- gsub("wasted", "Wasted", d$outcome_variable)
d$outcome_variable <- gsub("wast_rec90d", "Recovery\nfrom\nwasting", d$outcome_variable)
d$outcome_variable <- gsub("ever_co", "Stunted\nand wasted", d$outcome_variable)
d$outcome_variable <- gsub("ever_Stunted", "Ever\nstunted", d$outcome_variable)
d$outcome_variable <- gsub("ever_Wasted", "Ever\nwasted", d$outcome_variable)
d$outcome_variable <- gsub("pers_wast", "Persistently\nwasted", d$outcome_variable)
d <- d %>% mutate(outcome_variable=factor(outcome_variable, levels = c("LAZ","Stunted","Ever\nstunted","WLZ","Wasted","Ever\nwasted","Persistently\nwasted","Stunted\nand wasted", "Recovery\nfrom\nwasting")))
table(d$outcome_variable)
levels(d$outcome_variable)

#clean up agecats
d$agecat <- gsub(" \\(no birth st.\\)", "", d$agecat)
d$agecat <- gsub(" \\(no birth wast\\)", "", d$agecat)
unique(d$agecat)

#Drop exposures only used in secondary analyses
unique(d$intervention_variable)
d <- d %>% filter(!(intervention_variable %in% c("lag_WHZ_quart")))


#Calculate P-values

#calculate the test statistic: z = Est/SE.
d <- d %>% mutate(se = (ci.ub-ci.lb)/(2*1.96))
d$se[!is.na(d$logRR.psi)] <-  NA
d$Z <- ifelse(!is.na(d$logRR.psi), d$logRR.psi/d$logSE, d$est/d$se)

#calculate the P value: P = exp(-0.717×z - 0.416×z^2).
d$pval <- exp(-0.717*abs(d$Z) - 0.416*d$Z^2)
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
# Temporarily drop non-sensical combinations
# (Will change upstream)
#----------------------------------- 
unique(d$intervention_level)
d <- d %>% filter(intervention_level != "Q4")
  
#-----------------------------------
# Plot heatmaps
#-----------------------------------
  
d <- d %>% filter(!is.na(RFlabel))

#Concatenate variable and level for the x-axis
d$xvar <- paste0(d$RFlabel,": ",d$intervention_level)

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

d = d %>% mutate(agecat = case_when(
  agecat == "Birth" ~ "Birth prev.", 
  agecat ==  "6 months" ~ "6 prev.",
  agecat ==  "24 months" ~ "24 prev.",
  agecat ==  "0-24 months" ~ "0-24 CI",
  agecat ==  "0-6 months" ~ "0-6 CI",
  agecat ==  "6-24 months" ~ "6-24 CI"),
  agecat = factor(agecat, levels = list("Birth prev.", "6 prev.", "24 prev.", "0-24 CI", "0-6 CI", "6-24 CI")))

country_agecat_levels = list("Birth prev., Pooled", "6 prev., Pooled", "24 prev., Pooled", 
                             "Birth prev., Africa", "6 prev., Africa", "24 prev., Africa", 
                             "Birth prev., Latin America", "6 prev., Latin America", "24 prev., Latin America",
                             "Birth prev., South Asia", "6 prev., South Asia", "24 prev., South Asia",
                             "0-24 CI, Pooled", "0-6 CI, Pooled", "6-24 CI, Pooled",
                             "0-24 CI, Africa", "0-6 CI, Africa", "6-24 CI, Africa", 
                             "0-24 CI, Latin America", "0-6 CI, Latin America", "6-24 CI, Latin America", 
                             "0-24 CI, South Asia", "0-6 CI, South Asia", "6-24 CI, South Asia")   

d = d %>% mutate(yvar = case_when(
  yvar == "Birth, Pooled" ~ "Birth prev., Pooled", 
  yvar == "24 months, Africa" ~ "24 prev., Africa",
  yvar == "6 months, Latin America" ~ "6 prev., Latin America",
  yvar == "Birth, Latin America" ~ "Birth prev., Latin America",
  yvar == "6 months, Africa" ~ "6 prev., Africa",
  yvar == "24 months, South Asia" ~ "24 prev., South Asia",     
  yvar == "Birth, Africa" ~ "Birth prev., Africa",   
  yvar == "6 months, South Asia" ~ "6 prev., South Asia",
  yvar == "Birth, South Asia" ~ "Birth prev., South Asia",   
  yvar == "24 months, Latin America" ~ "24 prev., Latin America",
  yvar == "24 months, Pooled" ~ "24 prev., Pooled", 
  yvar == "6 months, Pooled" ~ "6 prev., Pooled",       
  yvar == "6-24 months, South Asia" ~ "6-24 CI, South Asia",
  yvar == "0-24 months, Pooled" ~ "0-24 CI, Pooled",
  yvar == "6-24 months, Africa" ~ "6-24 CI, Africa",    
  yvar == "0-6 months, Africa" ~ "0-6 CI, Africa",   
  yvar == "0-6 months, Pooled" ~ "0-6 CI, Pooled",   
  yvar == "0-6 months, Latin America" ~ "0-6 CI, Latin America", 
  yvar == "6-24 months, Latin America" ~ "6-24 CI, Latin America",
  yvar == "0-24 months, South Asia" ~ "0-24 CI, South Asia",
  yvar == "0-6 months, South Asia" ~ "0-6 CI, South Asia", 
  yvar == "6-24 months, Pooled" ~ "6-24 CI, Pooled",
  yvar == "0-24 months, Africa" ~ "0-24 CI, Africa",     
  yvar == "0-24 months, Latin America" ~ "0-24 CI, Latin America"),
  yvar = factor(yvar, levels = country_agecat_levels))
  

table(d$outcome_variable, d$region)
table(d$yvar, d$outcome_variable)


#define a color for fonts
textcol = "grey20"
cols = rev(brewer.pal(n = 7, name = "Spectral"))

levels(d$pval_cat) = c(levels(d$pval_cat), "Non-existent or rare contrast")
agecat_with_ranges = c(  "Ever\nstunted", "Ever\nwasted", "Persistently\nwasted", "Stunted\nand wasted","Recovery\nfrom\nwasting")

#Pooled estimates only 

pooled_data = d[d$region=="Pooled",]

# Manually add in N/A values to create legend entry for non-existent contrast - at least 1 N/A needed for legend entry
# Create N/A values for any missing pair of xvar and outcome_variable, arbitrarily set agecat to Birth prev.
# Filter data so no extra blank columns are displayed
pooled_data = pooled_data %>% 
                complete(xvar, outcome_variable, fill = list(agecat = "Birth prev.")) %>% 
                filter((outcome_variable %in% agecat_with_ranges & agecat != "Birth prev.") | !(outcome_variable %in% agecat_with_ranges)) %>% 
                replace_na(list(pval_cat = "Non-existent or rare contrast"))


hm <- ggplot(pooled_data, aes(x=xvar, y=agecat, fill=pval_cat)) +
  facet_grid(.~outcome_variable, scales = "free", space="free") +
  geom_tile(colour="grey80",size=0.25) +
  scale_x_discrete(limits = rev(levels(pooled_data$xvar)))+
  scale_y_discrete(expand=c(0,0))+
  theme_grey(base_size=10) +
  scale_fill_manual(labels = levels(pooled_data$pval_cat),
                    values = c(cols, "gray80"))+
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
    panel.border=element_blank(),
    strip.background = element_blank(),
    panel.background=element_rect(fill="grey80", colour="grey80"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  ) + 
  guides(fill = guide_legend("P-value strength", ncol=1)) + 
  labs(x="Exposure",y="Age category",title="") +
  coord_flip()
  
hm  
  
# save plot 
ggsave(hm, file=paste0(here::here(),"/figures/risk-factor/fig-sig-heatmap_unadj.png"), height=14, width=11.5)



