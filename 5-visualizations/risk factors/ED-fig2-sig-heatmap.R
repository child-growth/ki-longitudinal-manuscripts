
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#Load data
ate <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results.rds")) 
rr <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds"))
par <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))

#Get PAR vs ATE diff for reviewer comments
ate %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", region=="Pooled", agecat=="6 months")
par %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", region=="Pooled", agecat=="6 months")

ate %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", region=="Pooled", agecat=="24 months")
par %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", region=="Pooled", agecat=="24 months")

ate %>% filter(intervention_variable=="predexfd6", outcome_variable=="haz", region=="Pooled", agecat=="6 months")
par %>% filter(intervention_variable=="predexfd6", outcome_variable=="haz", region=="Pooled", agecat=="6 months")

ate %>% filter(intervention_variable=="parity", outcome_variable=="haz", region=="Pooled", intervention_level =="3+")
rr %>% filter(intervention_variable=="parity", outcome_variable=="ever_stunted", region=="Pooled", intervention_level =="3+")
rr %>% filter(intervention_variable=="parity", outcome_variable=="ever_wasted", region=="Pooled", intervention_level =="3+")

#Match columns names
rr <- rr %>% rename(est=RR, CI.lb=RR.CI1, CI.ub=RR.CI2)
ate <- ate %>% rename(est=ATE, CI.lb=CI1, CI.ub=CI2)

pers <- rr[rr$outcome_variable=="pers_wast",]
table(pers$agecat)
rr  <- rr %>% filter(!(outcome_variable=="pers_wast" & agecat != "0-24 months"), outcome_variable!="s03rec24") %>% droplevels()

#Flip direction of RR for wasting recovery (so outcome is recovered, rather than still stunted)
# rr$est[rr$outcome_variable=="pers_wast"] <- 1/rr$est[rr$outcome_variable=="pers_wast"]
# rr$CI.lb[rr$outcome_variable=="pers_wast"] <- 1/rr$CI.ub[rr$outcome_variable=="pers_wast"]
# rr$CI.ub[rr$outcome_variable=="pers_wast"] <- 1/rr$CI.lb[rr$outcome_variable=="pers_wast"]

#rr[rr$outcome_variable=="pers_wast" & rr$intervention_variable=="mwtkg",]

d <- bind_rows(rr, ate)
head(d)

dsub <- d %>% filter(agecat=="Birth") 
table(dsub$intervention_variable, dsub$outcome_variable)

table(d$intervention_variable)
d <- d %>% filter(intervention_variable!="vagbrth", agecat!="18 months")

#temp fix fage
unique(d$intervention_level)
unique(d$baseline_level)
d$baseline_level[d$baseline_level==">38 years"] <- ">35 years"


#Drop reference levels
dim(d)
d <- d %>% filter(intervention_level != baseline_level)
dim(d)

#drop month and birthmonth and CGF exposures
unique(d$intervention_variable)
d <- d %>% filter(!(intervention_variable %in% c("brthmon", "month","anywast06","enstunt","enwast","pers_wast")))

#Drop probit-specific Europe estimates
d <- d %>% filter(region!="N.America & Europe")
d <- d %>% mutate(region = factor(region, levels = c("Pooled","South Asia","Africa","Latin America")))

#keep overall pooled only in rare outcomes
d <- d %>% filter(!(outcome_variable %in% c("ever_co", "wast_rec90d","s06rec1824") & region!="Pooled"))


#Drop secondary outcomes
table(d$outcome_variable)
d <- d %>% filter(outcome_variable %in% c("pers_wast","ever_stunted","stunted","ever_wasted","wasted","wast_rec90d","ever_co","haz","whz","s06rec1824")) 
d$outcome_variable <- gsub("haz", "LAZ", d$outcome_variable)
d$outcome_variable <- gsub("whz", "WLZ", d$outcome_variable)
d$outcome_variable <- gsub("stunted", "Stunted", d$outcome_variable)
d$outcome_variable <- gsub("wasted", "Wasted", d$outcome_variable)
d$outcome_variable <- gsub("wast_rec90d", "Recovery\nfrom\nwasting", d$outcome_variable)
d$outcome_variable <- gsub("ever_co", "Stunted\nand wasted", d$outcome_variable)
d$outcome_variable <- gsub("ever_Stunted", "Ever\nstunted", d$outcome_variable)
d$outcome_variable <- gsub("ever_Wasted", "Ever\nwasted", d$outcome_variable)
# d$outcome_variable <- gsub("pers_wast", "Pers\nwast", d$outcome_variable)
# d$outcome_variable <- gsub("s06rec1824", "Stunt\nrev.", d$outcome_variable)
d$outcome_variable <- gsub("pers_wast", "Pers\nwast", d$outcome_variable)
d$outcome_variable <- gsub("s06rec1824", "Stunt\nrev.", d$outcome_variable)

d <- d %>% mutate(outcome_variable=factor(outcome_variable, levels = c("LAZ","Stunted","Ever\nstunted","WLZ","Wasted","Ever\nwasted","Stunted\nand wasted", "Pers\nwast","Recovery\nfrom\nwasting","Stunt\nrev.")))
table(d$outcome_variable)
levels(d$outcome_variable)
table(d$outcome_variable, d$agecat)


#clean up agecats
d$agecat[d$outcome_variable=="Stunt\nrev."] <- "0-24 months"
d$agecat <- gsub(" \\(no birth st.\\)", "", d$agecat)
d$agecat <- gsub(" \\(no birth wast\\)", "", d$agecat)
unique(d$agecat)

#Drop exposures only used in secondary analyses
unique(d$intervention_variable)
d <- d %>% filter(!(intervention_variable %in% c("lag_WHZ_quart")))


#Calculate P-values

#calculate the test statistic: z = Est/SE.
d <- d %>% mutate(se = (CI.ub-CI.lb)/(2*1.96))
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

temp <- d %>% filter(intervention_variable=="parity", region=="Pooled")
  
#-----------------------------------
# Plot heatmaps
#-----------------------------------
  
d <- d %>% filter(!is.na(RFlabel))

#Concatenate variable and level for the x-axis
d$xvar <- paste0(d$RFlabel,":\n",d$intervention_level, " (ref: ",d$baseline_level,")")

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
  agecat == "Birth" ~ "Birth", 
  agecat ==  "6 months" ~ "6 mo",
  agecat ==  "24 months" ~ "24 mo",
  agecat ==  "0-24 months" ~ "0-24 mo",
  agecat ==  "0-6 months" ~ "0-6 mo",
  agecat ==  "6-24 months" ~ "6-24 mo"),
  agecat = factor(agecat, levels = list("Birth", "6 mo", "24 mo", "0-24 mo", "0-6 mo", "6-24 mo")))

country_agecat_levels = list("Birth, Pooled", "6 mo, Pooled", "24 mo, Pooled", 
                             "0-24 mo, Pooled", "0-6 mo, Pooled", "6-24 mo, Pooled",
                             "Birth, Africa", "Birth, Latin America", "Birth, South Asia", 
                             "6 mo, Africa", "6 mo, Latin America", "6 mo, South Asia", 
                             "24 mo, Africa", 
                             "24 mo, Latin America",
                             "24 mo, South Asia",
                             "0-24 mo, Africa", 
                             "0-24 mo, Latin America",  
                             "0-24 mo, South Asia", 
                             "0-6 mo, Africa", "0-6 mo, Latin America", "0-6 mo, South Asia", 
                             "6-24 mo, Africa", "6-24 mo, Latin America", "6-24 mo, South Asia")  

d = d %>% mutate(yvar = case_when(
  yvar == "Birth, Pooled" ~ "Birth, Pooled", 
  yvar == "24 months, Africa" ~ "24 mo, Africa",
  yvar == "6 months, Latin America" ~ "6 mo, Latin America",
  yvar == "Birth, Latin America" ~ "Birth, Latin America",
  yvar == "6 months, Africa" ~ "6 mo, Africa",
  yvar == "24 months, South Asia" ~ "24 mo, South Asia",     
  yvar == "Birth, Africa" ~ "Birth, Africa",   
  yvar == "6 months, South Asia" ~ "6 mo, South Asia",
  yvar == "Birth, South Asia" ~ "Birth, South Asia",   
  yvar == "24 months, Latin America" ~ "24 mo, Latin America",
  yvar == "24 months, Pooled" ~ "24 mo, Pooled", 
  yvar == "6 months, Pooled" ~ "6 mo, Pooled",       
  yvar == "6-24 months, South Asia" ~ "6-24 mo, South Asia",
  yvar == "0-24 months, Pooled" ~ "0-24 mo, Pooled",
  yvar == "6-24 months, Africa" ~ "6-24 mo, Africa",    
  yvar == "0-6 months, Africa" ~ "0-6 mo, Africa",   
  yvar == "0-6 months, Pooled" ~ "0-6 mo, Pooled",   
  yvar == "0-6 months, Latin America" ~ "0-6 mo, Latin America", 
  yvar == "6-24 months, Latin America" ~ "6-24 mo, Latin America",
  yvar == "0-24 months, South Asia" ~ "0-24 mo, South Asia",
  yvar == "0-6 months, South Asia" ~ "0-6 mo, South Asia", 
  yvar == "6-24 months, Pooled" ~ "6-24 mo, Pooled",
  yvar == "0-24 months, Africa" ~ "0-24 mo, Africa",     
  yvar == "0-24 months, Latin America" ~ "0-24 mo, Latin America"),
  yvar = factor(yvar, levels = country_agecat_levels))
  

table(d$outcome_variable, d$region)
table(d$yvar, d$outcome_variable)


#define a color for fonts
textcol = "grey20"
cols = rev(brewer.pal(n = 7, name = "Spectral"))

levels(d$pval_cat) = c(levels(d$pval_cat), "Not estimated")
agecat_with_ranges = c(  "Ever\nstunted", "Ever\nwasted", "Pers\nwast", "Stunted\nand wasted","Recovery\nfrom\nwasting")

#Pooled estimates only 

pooled_data = d[d$region=="Pooled",]

# Manually add in N/A values to create legend entry for non-existent contrast - at least 1 N/A needed for legend entry
# Create N/A values for any missing pair of xvar and outcome_variable, arbitrarily set agecat to Birth
# Filter data so no extra blank columns are displayed
# pooled_data = pooled_data %>% 
#                 complete(xvar, outcome_variable, fill = list(agecat = "Birth")) %>% 
#                 filter((outcome_variable %in% agecat_with_ranges & agecat != "Birth") | !(outcome_variable %in% agecat_with_ranges)) %>% 
#                 replace_na(list(pval_cat = "Not estimated"))


pooled_data <- pooled_data %>% filter(!(outcome_variable=="Stunt\nrev." & agecat == "Birth"))
pooled_data <- droplevels(pooled_data)

table(pooled_data$outcome_variable, pooled_data$agecat)



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
    legend.position = "bottom",
    axis.text.x=element_text(size=8,colour=textcol,angle=45,hjust=1),
    axis.text.y=element_text(size=8,vjust = 0.5,colour=textcol),
    axis.ticks=element_line(size=0.4),
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=0,size=10),
    plot.background=element_blank(),
    panel.border=element_blank(),
    #panel.spacing = unit(0.5, "lines"),
    strip.background = element_blank(),
    panel.background=element_rect(fill="grey80", colour="grey80"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  ) + 
  guides(fill = guide_legend("P-value strength", nrow=2)) + 
  labs(x="Exposure",y="Age category",title="") +
  coord_flip()

  
# save plot 
ggsave(hm, file=paste0(BV_dir,"/figures/risk-factor/fig-sig-heatmap.png"), height=14, width=11.5)
ggsave(plot = hm, width=14, height=11.5,
       filename=paste0(here::here(),"/figures/ED-pngs/C+C/ED-fig2.jpeg"), device='jpeg')







#Region stratified
#Pooled estimates only 

# Manually add in N/A values to create legend entry for non-existent contrast - at least one N/A value is needed for legend entry
# Create N/A values for any missing pair of xvar and outcome_variable, arbitrarily set agecat to 'Birth, Africa'
# Filter data so no extra blank columns are displayed
region_data = d[d$region!="Pooled",]

region_data  <- region_data %>% filter(!(outcome_variable=="pers_wast" & agecat != "0-24 months"), outcome_variable!="s03rec24") %>% droplevels()


# region_data = region_data %>% 
#   complete(xvar, outcome_variable, fill = list(yvar = "Birth, Africa")) %>% 
#   filter((outcome_variable %in% agecat_with_ranges & yvar != "Birth, Africa") | !(outcome_variable %in% agecat_with_ranges)) %>% 
#   replace_na(list(pval_cat = "Not estimated"))

hm_strat <- ggplot(region_data,aes(x=xvar, y=yvar, fill=pval_cat)) +
  facet_grid(. ~ outcome_variable, scales = "free", space="free") +
  geom_tile(colour="grey80",size=0.25) +
  scale_x_discrete(limits = rev(levels(region_data$xvar)))+
  scale_y_discrete(expand=c(0,0))+
  theme_grey(base_size=10) +
  scale_fill_manual(labels = levels(region_data$pval_cat),
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
  ) + guides(fill = guide_legend("P-value strength", ncol=1)) + 
  labs(x="Exposure and reference level",y="Age category",title="") +
  coord_flip()

hm_strat

# save plot 
ggsave(hm_strat, file=paste0(BV_dir, "/figures/risk-factor/fig-sig-heatmap_regionstrat.png"), height=10, width=14)

